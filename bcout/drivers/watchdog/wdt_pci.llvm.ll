; ModuleID = '../bcout/drivers/watchdog/wdt_pci.llvm.bc'
source_filename = "drivers/watchdog/wdt_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_wdtpci_driver_init6:\09\09\09"
module asm ".long\09wdtpci_driver_init - .\09\09\09"
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
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
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
%struct.miscdevice = type { i32, i8*, %struct.file_operations*, %struct.list_head, %struct.device*, %struct.device*, %struct.attribute_group**, i8*, i16 }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.paravirt_patch_template = type { %struct.pv_init_ops, %struct.pv_time_ops, %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_init_ops = type { i32 (i8, i8*, i64, i32)* }
%struct.pv_time_ops = type { i64 ()*, i64 (i32)* }
%struct.pv_cpu_ops = type { void ()*, i64 (i32)*, void (i32, i64)*, i64 ()*, void (i64)*, void (i64)*, void ()*, void (%struct.desc_ptr*)*, void (%struct.desc_ptr*)*, void (i8*, i32)*, i64 ()*, void (%struct.thread_struct*, i32)*, void (i32)*, void (%struct.desc_struct*, i32, i8*)*, void (%struct.desc_struct*, i32, i8*, i32)*, void (%struct.gate_struct*, i32, %struct.gate_struct*)*, void (%struct.desc_struct*, i32)*, void (%struct.desc_struct*, i32)*, void (i64)*, void ()*, void ()*, void ()*, void (i32*, i32*, i32*, i32*)*, i64 (i32)*, void (i32, i32, i32)*, i64 (i32, i32*)*, i32 (i32, i32, i32)*, i64 (i32)*, void ()*, void ()*, void ()*, void (%struct.task_struct*)*, void (%struct.task_struct*)* }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.flush_tlb_info = type opaque
%struct.mmu_gather = type opaque
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.watchdog_info = type { i32, i32, [32 x i8] }

@__param_str_heartbeat = internal constant [18 x i8] c"wdt_pci.heartbeat\00", align 16, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@heartbeat = internal global i32 60, align 4, !dbg !260
@__param_heartbeat = internal constant %struct.kernel_param { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__param_str_heartbeat, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @heartbeat to i8*) } }, section "__param", align 8, !dbg !119
@__UNIQUE_ID_heartbeattype234 = internal constant [31 x i8] c"wdt_pci.parmtype=heartbeat:int\00", section ".modinfo", align 1, !dbg !186
@__UNIQUE_ID_heartbeat235 = internal constant [86 x i8] c"wdt_pci.parm=heartbeat:Watchdog heartbeat in seconds. (0<heartbeat<65536, default=60)\00", section ".modinfo", align 1, !dbg !191
@__param_str_nowayout = internal constant [17 x i8] c"wdt_pci.nowayout\00", align 16, !dbg !262
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@nowayout = internal global i8 0, align 1, !dbg !267
@__param_nowayout = internal constant %struct.kernel_param { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__param_str_nowayout, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon { i8* @nowayout } }, section "__param", align 8, !dbg !196
@__UNIQUE_ID_nowayouttype236 = internal constant [31 x i8] c"wdt_pci.parmtype=nowayout:bool\00", section ".modinfo", align 1, !dbg !198
@__UNIQUE_ID_nowayout237 = internal constant [74 x i8] c"wdt_pci.parm=nowayout:Watchdog cannot be stopped once started (default=0)\00", section ".modinfo", align 1, !dbg !200
@__param_str_tachometer = internal constant [19 x i8] c"wdt_pci.tachometer\00", align 16, !dbg !272
@tachometer = internal global i32 0, align 4, !dbg !258
@__param_tachometer = internal constant %struct.kernel_param { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__param_str_tachometer, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @tachometer to i8*) } }, section "__param", align 8, !dbg !205
@__UNIQUE_ID_tachometertype238 = internal constant [32 x i8] c"wdt_pci.parmtype=tachometer:int\00", section ".modinfo", align 1, !dbg !207
@__UNIQUE_ID_tachometer239 = internal constant [81 x i8] c"wdt_pci.parm=tachometer:PCI-WDT501 Fan Tachometer support (0=disable, default=0)\00", section ".modinfo", align 1, !dbg !212
@__param_str_type = internal constant [13 x i8] c"wdt_pci.type\00", align 1, !dbg !277
@type = internal global i32 500, align 4, !dbg !282
@__param_type = internal constant %struct.kernel_param { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__param_str_type, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @type to i8*) } }, section "__param", align 8, !dbg !217
@__UNIQUE_ID_typetype240 = internal constant [26 x i8] c"wdt_pci.parmtype=type:int\00", section ".modinfo", align 1, !dbg !219
@__UNIQUE_ID_type241 = internal constant [66 x i8] c"wdt_pci.parm=type:PCI-WDT501 Card type (500 or 501 , default=500)\00", section ".modinfo", align 1, !dbg !224
@__UNIQUE_ID___addressable_wdtpci_driver_init242 = internal global i8* bitcast (i32 ()* @wdtpci_driver_init to i8*), section ".discard.addressable", align 8, !dbg !229
@wdtpci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([2 x %struct.pci_device_id], [2 x %struct.pci_device_id]* @wdtpci_pci_tbl, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @wdtpci_init_one, void (%struct.pci_dev*)* @wdtpci_remove_one, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !284
@__exitcall_wdtpci_driver_exit = internal global void ()* @wdtpci_driver_exit, section ".exitcall.exit", align 8, !dbg !231
@__UNIQUE_ID_author243 = internal constant [37 x i8] c"wdt_pci.author=JP Nollmann, Alan Cox\00", section ".modinfo", align 1, !dbg !238
@__UNIQUE_ID_description244 = internal constant [69 x i8] c"wdt_pci.description=Driver for the ICS PCI-WDT500/501 watchdog cards\00", section ".modinfo", align 1, !dbg !243
@__UNIQUE_ID_file245 = internal constant [38 x i8] c"wdt_pci.file=drivers/watchdog/wdt_pci\00", section ".modinfo", align 1, !dbg !248
@__UNIQUE_ID_license246 = internal constant [20 x i8] c"wdt_pci.license=GPL\00", section ".modinfo", align 1, !dbg !253
@.str = private unnamed_addr constant [8 x i8] c"wdt_pci\00", align 1
@wdtpci_pci_tbl = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 18767, i32 8896, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4156
@dev_count = internal global i32 0, align 4, !dbg !4159
@.str.1 = private unnamed_addr constant [49 x i8] c"\013wdt_pci: This driver only supports one device\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"\013wdt_pci: unknown card type '%d'\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\013wdt_pci: Not possible to enable PCI Device\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"\013wdt_pci: No I/O-Address for card detected\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"\013wdt_pci: I/O address 0x%llx already in use\0A\00", align 1
@irq = internal global i32 0, align 4, !dbg !4161
@io = internal global i64 0, align 8, !dbg !4163
@wdtpci_miscdev = internal global %struct.miscdevice { i32 130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), %struct.file_operations* @wdtpci_fops, %struct.list_head zeroinitializer, %struct.device* null, %struct.device* null, %struct.attribute_group** null, i8* null, i16 0 }, align 8, !dbg !4167
@.str.6 = private unnamed_addr constant [31 x i8] c"\013wdt_pci: IRQ %d is not free\0A\00", align 1
@.str.7 = private unnamed_addr constant [78 x i8] c"\016wdt_pci: PCI-WDT500/501 (PCI-WDG-CSM) driver 0.10 at 0x%llx (Interrupt %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"\016wdt_pci: heartbeat value must be 0 < heartbeat < 65536, using %d\0A\00", align 1
@wdtpci_notifier = internal global %struct.notifier_block { i32 (%struct.notifier_block*, i64, i8*)* @wdtpci_notify_sys, %struct.notifier_block* null, i32 0 }, align 8, !dbg !4189
@.str.9 = private unnamed_addr constant [53 x i8] c"\013wdt_pci: cannot register reboot notifier (err=%d)\0A\00", align 1
@temp_miscdev = internal global %struct.miscdevice { i32 131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), %struct.file_operations* @wdtpci_temp_fops, %struct.list_head zeroinitializer, %struct.device* null, %struct.device* null, %struct.attribute_group** null, i8* null, i16 0 }, align 8, !dbg !4202
@.str.10 = private unnamed_addr constant [57 x i8] c"\013wdt_pci: cannot register miscdev on minor=%d (err=%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"\016wdt_pci: initialized. heartbeat=%d sec (nowayout=%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"\016wdt_pci: Fan Tachometer is %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@wdtpci_lock = internal global %struct.spinlock undef, align 1, !dbg !4165
@.str.15 = private unnamed_addr constant [22 x i8] c"\012wdt_pci: status %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"\012wdt_pci: Overheat alarm (%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"\012wdt_pci: PSU over voltage\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"\012wdt_pci: PSU under voltage\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"\012wdt_pci: Possible fan fault\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"\012wdt_pci: Reset in 5ms\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@wdtpci_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @no_llseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* @wdtpci_write, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* @wdtpci_ioctl, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @wdtpci_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @wdtpci_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !4181
@expect_close = internal global i8 0, align 1, !dbg !4183
@wd_heartbeat = internal global i32 0, align 4, !dbg !4185
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@__const.wdtpci_ioctl.ident = private unnamed_addr constant %struct.watchdog_info { i32 33152, i32 1, [32 x i8] c"PCI-WDT500/501\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@.str.22 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@open_lock = internal global i64 0, align 8, !dbg !4187
@.str.24 = private unnamed_addr constant [50 x i8] c"\012wdt_pci: Unexpected close, not stopping timer!\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@wdtpci_temp_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @no_llseek, i64 (%struct.file*, i8*, i64, i64*)* @wdtpci_temp_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @wdtpci_temp_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @wdtpci_temp_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !4204
@llvm.used = appending global [19 x i8*] [i8* bitcast (%struct.kernel_param* @__param_heartbeat to i8*), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__UNIQUE_ID_heartbeattype234, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @__UNIQUE_ID_heartbeat235, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_nowayout to i8*), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__UNIQUE_ID_nowayouttype236, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @__UNIQUE_ID_nowayout237, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_tachometer to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_tachometertype238, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__UNIQUE_ID_tachometer239, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_type to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__UNIQUE_ID_typetype240, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__UNIQUE_ID_type241, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_wdtpci_driver_init242 to i8*), i8* bitcast (void ()* @wdtpci_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_wdtpci_driver_exit to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__UNIQUE_ID_author243, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__UNIQUE_ID_description244, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_file245, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license246, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @wdtpci_driver_init() #0 section ".init.text" !dbg !4215 {
entry:
  %call = call i32 @__pci_register_driver(%struct.pci_driver* @wdtpci_driver, %struct.module* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #9, !dbg !4218
  ret i32 %call, !dbg !4218
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @wdtpci_driver_exit() #0 section ".exit.text" !dbg !4219 {
entry:
  call void @pci_unregister_driver(%struct.pci_driver* @wdtpci_driver) #9, !dbg !4220
  ret void, !dbg !4220
}

; Function Attrs: noredzone
declare dso_local void @pci_unregister_driver(%struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__pci_register_driver(%struct.pci_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @wdtpci_init_one(%struct.pci_dev* %dev, %struct.pci_device_id* %ent) #2 !dbg !4221 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %ent.addr = alloca %struct.pci_device_id*, align 8
  %ret = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4222, metadata !DIExpression()), !dbg !4223
  store %struct.pci_device_id* %ent, %struct.pci_device_id** %ent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %ent.addr, metadata !4224, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4226, metadata !DIExpression()), !dbg !4227
  store i32 -5, i32* %ret, align 4, !dbg !4227
  %0 = load i32, i32* @dev_count, align 4, !dbg !4228
  %inc = add i32 %0, 1, !dbg !4228
  store i32 %inc, i32* @dev_count, align 4, !dbg !4228
  %1 = load i32, i32* @dev_count, align 4, !dbg !4229
  %cmp = icmp sgt i32 %1, 1, !dbg !4231
  br i1 %cmp, label %if.then, label %if.end, !dbg !4232

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0)) #10, !dbg !4233
  store i32 -19, i32* %retval, align 4, !dbg !4235
  br label %return, !dbg !4235

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @type, align 4, !dbg !4236
  %cmp1 = icmp ne i32 %2, 500, !dbg !4238
  br i1 %cmp1, label %land.lhs.true, label %if.end5, !dbg !4239

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* @type, align 4, !dbg !4240
  %cmp2 = icmp ne i32 %3, 501, !dbg !4241
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !4242

if.then3:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* @type, align 4, !dbg !4243
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %4) #10, !dbg !4243
  store i32 -19, i32* %retval, align 4, !dbg !4245
  br label %return, !dbg !4245

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4246
  %call6 = call i32 @pci_enable_device(%struct.pci_dev* %5) #9, !dbg !4248
  %tobool = icmp ne i32 %call6, 0, !dbg !4248
  br i1 %tobool, label %if.then7, label %if.end9, !dbg !4249

if.then7:                                         ; preds = %if.end5
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !4250
  store i32 -19, i32* %retval, align 4, !dbg !4252
  br label %return, !dbg !4252

if.end9:                                          ; preds = %if.end5
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4253
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 44, !dbg !4253
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 2, !dbg !4253
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !4253
  %7 = load i64, i64* %start, align 8, !dbg !4253
  %cmp10 = icmp eq i64 %7, 0, !dbg !4255
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !4256

if.then11:                                        ; preds = %if.end9
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !4257
  store i32 -19, i32* %ret, align 4, !dbg !4259
  br label %out_pci, !dbg !4260

if.end13:                                         ; preds = %if.end9
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4261
  %call14 = call i32 @pci_request_region(%struct.pci_dev* %8, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #9, !dbg !4263
  %tobool15 = icmp ne i32 %call14, 0, !dbg !4263
  br i1 %tobool15, label %if.then16, label %if.end21, !dbg !4264

if.then16:                                        ; preds = %if.end13
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4265
  %resource17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 44, !dbg !4265
  %arrayidx18 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource17, i64 0, i64 2, !dbg !4265
  %start19 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx18, i32 0, i32 0, !dbg !4265
  %10 = load i64, i64* %start19, align 8, !dbg !4265
  %call20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i64 %10) #10, !dbg !4265
  br label %out_pci, !dbg !4267

if.end21:                                         ; preds = %if.end13
  %11 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4268
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 43, !dbg !4269
  %12 = load i32, i32* %irq, align 4, !dbg !4269
  store i32 %12, i32* @irq, align 4, !dbg !4270
  %13 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4271
  %resource22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 44, !dbg !4271
  %arrayidx23 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource22, i64 0, i64 2, !dbg !4271
  %start24 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx23, i32 0, i32 0, !dbg !4271
  %14 = load i64, i64* %start24, align 8, !dbg !4271
  store i64 %14, i64* @io, align 8, !dbg !4272
  %15 = load i32, i32* @irq, align 4, !dbg !4273
  %call25 = call i32 @request_irq(i32 %15, i32 (i32, i8*)* @wdtpci_interrupt, i64 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* bitcast (%struct.miscdevice* @wdtpci_miscdev to i8*)) #9, !dbg !4275
  %tobool26 = icmp ne i32 %call25, 0, !dbg !4275
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !4276

if.then27:                                        ; preds = %if.end21
  %16 = load i32, i32* @irq, align 4, !dbg !4277
  %call28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %16) #10, !dbg !4277
  br label %out_reg, !dbg !4279

if.end29:                                         ; preds = %if.end21
  %17 = load i64, i64* @io, align 8, !dbg !4280
  %18 = load i32, i32* @irq, align 4, !dbg !4280
  %call30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.7, i64 0, i64 0), i64 %17, i32 %18) #10, !dbg !4280
  %19 = load i32, i32* @heartbeat, align 4, !dbg !4281
  %call31 = call i32 @wdtpci_set_heartbeat(i32 %19) #9, !dbg !4283
  %tobool32 = icmp ne i32 %call31, 0, !dbg !4283
  br i1 %tobool32, label %if.then33, label %if.end36, !dbg !4284

if.then33:                                        ; preds = %if.end29
  %call34 = call i32 @wdtpci_set_heartbeat(i32 60) #9, !dbg !4285
  %call35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0), i32 60) #10, !dbg !4287
  br label %if.end36, !dbg !4288

if.end36:                                         ; preds = %if.then33, %if.end29
  %call37 = call i32 @register_reboot_notifier(%struct.notifier_block* @wdtpci_notifier) #9, !dbg !4289
  store i32 %call37, i32* %ret, align 4, !dbg !4290
  %20 = load i32, i32* %ret, align 4, !dbg !4291
  %tobool38 = icmp ne i32 %20, 0, !dbg !4291
  br i1 %tobool38, label %if.then39, label %if.end41, !dbg !4293

if.then39:                                        ; preds = %if.end36
  %21 = load i32, i32* %ret, align 4, !dbg !4294
  %call40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i32 %21) #10, !dbg !4294
  br label %out_irq, !dbg !4296

if.end41:                                         ; preds = %if.end36
  %22 = load i32, i32* @type, align 4, !dbg !4297
  %cmp42 = icmp eq i32 %22, 501, !dbg !4299
  br i1 %cmp42, label %if.then43, label %if.end49, !dbg !4300

if.then43:                                        ; preds = %if.end41
  %call44 = call i32 @misc_register(%struct.miscdevice* @temp_miscdev) #9, !dbg !4301
  store i32 %call44, i32* %ret, align 4, !dbg !4303
  %23 = load i32, i32* %ret, align 4, !dbg !4304
  %tobool45 = icmp ne i32 %23, 0, !dbg !4304
  br i1 %tobool45, label %if.then46, label %if.end48, !dbg !4306

if.then46:                                        ; preds = %if.then43
  %24 = load i32, i32* %ret, align 4, !dbg !4307
  %call47 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i32 131, i32 %24) #10, !dbg !4307
  br label %out_rbt, !dbg !4309

if.end48:                                         ; preds = %if.then43
  br label %if.end49, !dbg !4310

if.end49:                                         ; preds = %if.end48, %if.end41
  %call50 = call i32 @misc_register(%struct.miscdevice* @wdtpci_miscdev) #9, !dbg !4311
  store i32 %call50, i32* %ret, align 4, !dbg !4312
  %25 = load i32, i32* %ret, align 4, !dbg !4313
  %tobool51 = icmp ne i32 %25, 0, !dbg !4313
  br i1 %tobool51, label %if.then52, label %if.end54, !dbg !4315

if.then52:                                        ; preds = %if.end49
  %26 = load i32, i32* %ret, align 4, !dbg !4316
  %call53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i32 130, i32 %26) #10, !dbg !4316
  br label %out_misc, !dbg !4318

if.end54:                                         ; preds = %if.end49
  %27 = load i32, i32* @heartbeat, align 4, !dbg !4319
  %28 = load i8, i8* @nowayout, align 1, !dbg !4319
  %tobool55 = trunc i8 %28 to i1, !dbg !4319
  %conv = zext i1 %tobool55 to i32, !dbg !4319
  %call56 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i32 %27, i32 %conv) #10, !dbg !4319
  %29 = load i32, i32* @type, align 4, !dbg !4320
  %cmp57 = icmp eq i32 %29, 501, !dbg !4322
  br i1 %cmp57, label %if.then59, label %if.end62, !dbg !4323

if.then59:                                        ; preds = %if.end54
  %30 = load i32, i32* @tachometer, align 4, !dbg !4324
  %tobool60 = icmp ne i32 %30, 0, !dbg !4324
  %31 = zext i1 %tobool60 to i64, !dbg !4324
  %cond = select i1 %tobool60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), !dbg !4324
  %call61 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i8* %cond) #10, !dbg !4324
  br label %if.end62, !dbg !4324

if.end62:                                         ; preds = %if.then59, %if.end54
  store i32 0, i32* %ret, align 4, !dbg !4325
  br label %out, !dbg !4326

out:                                              ; preds = %out_pci, %if.end62
  call void @llvm.dbg.label(metadata !4327), !dbg !4328
  %32 = load i32, i32* %ret, align 4, !dbg !4329
  store i32 %32, i32* %retval, align 4, !dbg !4330
  br label %return, !dbg !4330

out_misc:                                         ; preds = %if.then52
  call void @llvm.dbg.label(metadata !4331), !dbg !4332
  %33 = load i32, i32* @type, align 4, !dbg !4333
  %cmp63 = icmp eq i32 %33, 501, !dbg !4335
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !4336

if.then65:                                        ; preds = %out_misc
  call void @misc_deregister(%struct.miscdevice* @temp_miscdev) #9, !dbg !4337
  br label %if.end66, !dbg !4337

if.end66:                                         ; preds = %if.then65, %out_misc
  br label %out_rbt, !dbg !4338

out_rbt:                                          ; preds = %if.end66, %if.then46
  call void @llvm.dbg.label(metadata !4339), !dbg !4340
  %call67 = call i32 @unregister_reboot_notifier(%struct.notifier_block* @wdtpci_notifier) #9, !dbg !4341
  br label %out_irq, !dbg !4341

out_irq:                                          ; preds = %out_rbt, %if.then39
  call void @llvm.dbg.label(metadata !4342), !dbg !4343
  %34 = load i32, i32* @irq, align 4, !dbg !4344
  %call68 = call i8* @free_irq(i32 %34, i8* bitcast (%struct.miscdevice* @wdtpci_miscdev to i8*)) #9, !dbg !4345
  br label %out_reg, !dbg !4345

out_reg:                                          ; preds = %out_irq, %if.then27
  call void @llvm.dbg.label(metadata !4346), !dbg !4347
  %35 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4348
  call void @pci_release_region(%struct.pci_dev* %35, i32 2) #9, !dbg !4349
  br label %out_pci, !dbg !4349

out_pci:                                          ; preds = %out_reg, %if.then16, %if.then11
  call void @llvm.dbg.label(metadata !4350), !dbg !4351
  %36 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4352
  call void @pci_disable_device(%struct.pci_dev* %36) #9, !dbg !4353
  br label %out, !dbg !4354

return:                                           ; preds = %out, %if.then7, %if.then3, %if.then
  %37 = load i32, i32* %retval, align 4, !dbg !4355
  ret i32 %37, !dbg !4355
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @wdtpci_remove_one(%struct.pci_dev* %pdev) #2 !dbg !4356 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4357, metadata !DIExpression()), !dbg !4358
  call void @misc_deregister(%struct.miscdevice* @wdtpci_miscdev) #9, !dbg !4359
  %0 = load i32, i32* @type, align 4, !dbg !4360
  %cmp = icmp eq i32 %0, 501, !dbg !4362
  br i1 %cmp, label %if.then, label %if.end, !dbg !4363

if.then:                                          ; preds = %entry
  call void @misc_deregister(%struct.miscdevice* @temp_miscdev) #9, !dbg !4364
  br label %if.end, !dbg !4364

if.end:                                           ; preds = %if.then, %entry
  %call = call i32 @unregister_reboot_notifier(%struct.notifier_block* @wdtpci_notifier) #9, !dbg !4365
  %1 = load i32, i32* @irq, align 4, !dbg !4366
  %call1 = call i8* @free_irq(i32 %1, i8* bitcast (%struct.miscdevice* @wdtpci_miscdev to i8*)) #9, !dbg !4367
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4368
  call void @pci_release_region(%struct.pci_dev* %2, i32 2) #9, !dbg !4369
  %3 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4370
  call void @pci_disable_device(%struct.pci_dev* %3) #9, !dbg !4371
  %4 = load i32, i32* @dev_count, align 4, !dbg !4372
  %dec = add i32 %4, -1, !dbg !4372
  store i32 %dec, i32* @dev_count, align 4, !dbg !4372
  ret void, !dbg !4373
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

; Function Attrs: noredzone
declare dso_local i32 @pci_request_region(%struct.pci_dev*, i32, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #2 !dbg !4374 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4382, metadata !DIExpression()), !dbg !4383
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !4384, metadata !DIExpression()), !dbg !4385
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4386, metadata !DIExpression()), !dbg !4387
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4388, metadata !DIExpression()), !dbg !4389
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !4390, metadata !DIExpression()), !dbg !4391
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4392
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !4393
  %2 = load i64, i64* %flags.addr, align 8, !dbg !4394
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4395
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !4396
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #9, !dbg !4397
  ret i32 %call, !dbg !4398
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @wdtpci_interrupt(i32 %irq, i8* %dev_id) #2 !dbg !4399 {
entry:
  %lock.addr.i39 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i39, metadata !4400, metadata !DIExpression()), !dbg !4405
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4407, metadata !DIExpression()), !dbg !4409
  %irq.addr = alloca i32, align 4
  %dev_id.addr = alloca i8*, align 8
  %status = alloca i8, align 1
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4411, metadata !DIExpression()), !dbg !4412
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !4413, metadata !DIExpression()), !dbg !4414
  call void @llvm.dbg.declare(metadata i8* %status, metadata !4415, metadata !DIExpression()), !dbg !4416
  store %struct.spinlock* @wdtpci_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4417, !srcloc !4419
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4420
  %1 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %0, i32 0, i32 0, !dbg !4420
  %rlock.i = bitcast %union.anon.4* %1 to %struct.raw_spinlock*, !dbg !4420
  %2 = load i64, i64* @io, align 8, !dbg !4422
  %add = add i64 %2, 4, !dbg !4422
  %conv = trunc i64 %add to i32, !dbg !4422
  %call = call zeroext i8 @inb(i32 %conv) #9, !dbg !4423
  store i8 %call, i8* %status, align 1, !dbg !4424
  call void @__const_udelay(i64 34360) #9, !dbg !4425
  %3 = load i8, i8* %status, align 1, !dbg !4430
  %conv1 = zext i8 %3 to i32, !dbg !4430
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %conv1) #10, !dbg !4430
  %4 = load i32, i32* @type, align 4, !dbg !4431
  %cmp = icmp eq i32 %4, 501, !dbg !4433
  br i1 %cmp, label %if.then, label %if.end32, !dbg !4434

if.then:                                          ; preds = %entry
  %5 = load i8, i8* %status, align 1, !dbg !4435
  %conv4 = zext i8 %5 to i32, !dbg !4435
  %and = and i32 %conv4, 2, !dbg !4438
  %tobool = icmp ne i32 %and, 0, !dbg !4438
  br i1 %tobool, label %if.end, label %if.then5, !dbg !4439

if.then5:                                         ; preds = %if.then
  %6 = load i64, i64* @io, align 8, !dbg !4440
  %add6 = add i64 %6, 5, !dbg !4440
  %conv7 = trunc i64 %add6 to i32, !dbg !4440
  %call8 = call zeroext i8 @inb(i32 %conv7) #9, !dbg !4440
  %conv9 = zext i8 %call8 to i32, !dbg !4440
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 %conv9) #10, !dbg !4440
  call void @__const_udelay(i64 34360) #9, !dbg !4442
  br label %if.end, !dbg !4447

if.end:                                           ; preds = %if.then5, %if.then
  %7 = load i8, i8* %status, align 1, !dbg !4448
  %conv11 = zext i8 %7 to i32, !dbg !4448
  %and12 = and i32 %conv11, 32, !dbg !4450
  %tobool13 = icmp ne i32 %and12, 0, !dbg !4450
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !4451

if.then14:                                        ; preds = %if.end
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0)) #10, !dbg !4452
  br label %if.end16, !dbg !4452

if.end16:                                         ; preds = %if.then14, %if.end
  %8 = load i8, i8* %status, align 1, !dbg !4453
  %conv17 = zext i8 %8 to i32, !dbg !4453
  %and18 = and i32 %conv17, 64, !dbg !4455
  %tobool19 = icmp ne i32 %and18, 0, !dbg !4455
  br i1 %tobool19, label %if.end22, label %if.then20, !dbg !4456

if.then20:                                        ; preds = %if.end16
  %call21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !4457
  br label %if.end22, !dbg !4457

if.end22:                                         ; preds = %if.then20, %if.end16
  %9 = load i32, i32* @tachometer, align 4, !dbg !4458
  %tobool23 = icmp ne i32 %9, 0, !dbg !4458
  br i1 %tobool23, label %if.then24, label %if.end31, !dbg !4460

if.then24:                                        ; preds = %if.end22
  %10 = load i8, i8* %status, align 1, !dbg !4461
  %conv25 = zext i8 %10 to i32, !dbg !4461
  %and26 = and i32 %conv25, 16, !dbg !4464
  %tobool27 = icmp ne i32 %and26, 0, !dbg !4464
  br i1 %tobool27, label %if.end30, label %if.then28, !dbg !4465

if.then28:                                        ; preds = %if.then24
  %call29 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0)) #10, !dbg !4466
  br label %if.end30, !dbg !4466

if.end30:                                         ; preds = %if.then28, %if.then24
  br label %if.end31, !dbg !4467

if.end31:                                         ; preds = %if.end30, %if.end22
  br label %if.end32, !dbg !4468

if.end32:                                         ; preds = %if.end31, %entry
  %11 = load i8, i8* %status, align 1, !dbg !4469
  %conv33 = zext i8 %11 to i32, !dbg !4469
  %and34 = and i32 %conv33, 1, !dbg !4471
  %tobool35 = icmp ne i32 %and34, 0, !dbg !4471
  br i1 %tobool35, label %if.end38, label %if.then36, !dbg !4472

if.then36:                                        ; preds = %if.end32
  %call37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0)) #10, !dbg !4473
  br label %if.end38, !dbg !4475

if.end38:                                         ; preds = %if.then36, %if.end32
  store %struct.spinlock* @wdtpci_lock, %struct.spinlock** %lock.addr.i39, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4476, !srcloc !4478
  %12 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i39, align 8, !dbg !4479
  %13 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %12, i32 0, i32 0, !dbg !4479
  %rlock.i40 = bitcast %union.anon.4* %13 to %struct.raw_spinlock*, !dbg !4479
  ret i32 1, !dbg !4481
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @wdtpci_set_heartbeat(i32 %t) #2 !dbg !4482 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca i32, align 4
  store i32 %t, i32* %t.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %t.addr, metadata !4483, metadata !DIExpression()), !dbg !4484
  %0 = load i32, i32* %t.addr, align 4, !dbg !4485
  %cmp = icmp slt i32 %0, 1, !dbg !4487
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4488

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %t.addr, align 4, !dbg !4489
  %cmp1 = icmp sgt i32 %1, 65535, !dbg !4490
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4491

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !4492
  br label %return, !dbg !4492

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %t.addr, align 4, !dbg !4493
  store i32 %2, i32* @heartbeat, align 4, !dbg !4494
  %3 = load i32, i32* %t.addr, align 4, !dbg !4495
  %mul = mul i32 %3, 100, !dbg !4496
  store i32 %mul, i32* @wd_heartbeat, align 4, !dbg !4497
  store i32 0, i32* %retval, align 4, !dbg !4498
  br label %return, !dbg !4498

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !4499
  ret i32 %4, !dbg !4499
}

; Function Attrs: noredzone
declare dso_local i32 @register_reboot_notifier(%struct.notifier_block*) #1

; Function Attrs: noredzone
declare dso_local i32 @misc_register(%struct.miscdevice*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @misc_deregister(%struct.miscdevice*) #1

; Function Attrs: noredzone
declare dso_local i32 @unregister_reboot_notifier(%struct.notifier_block*) #1

; Function Attrs: noredzone
declare dso_local i8* @free_irq(i32, i8*) #1

; Function Attrs: noredzone
declare dso_local void @pci_release_region(%struct.pci_dev*, i32) #1

; Function Attrs: noredzone
declare dso_local void @pci_disable_device(%struct.pci_dev*) #1

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb(i32 %port) #2 !dbg !4500 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4504, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.declare(metadata i8* %value, metadata !4506, metadata !DIExpression()), !dbg !4505
  %0 = load i32, i32* %port.addr, align 4, !dbg !4505
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #6, !dbg !4505, !srcloc !4507
  store i8 %1, i8* %value, align 1, !dbg !4505
  %2 = load i8, i8* %value, align 1, !dbg !4505
  ret i8 %2, !dbg !4505
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #1

; Function Attrs: noredzone
declare dso_local i64 @no_llseek(%struct.file*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @wdtpci_write(%struct.file* %file, i8* %buf, i64 %count, i64* %ppos) #2 !dbg !4508 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca i64*, align 8
  %i = alloca i64, align 8
  %c = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i8, align 1
  %tmp5 = alloca i64, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4509, metadata !DIExpression()), !dbg !4510
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4511, metadata !DIExpression()), !dbg !4512
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4513, metadata !DIExpression()), !dbg !4514
  store i64* %ppos, i64** %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ppos.addr, metadata !4515, metadata !DIExpression()), !dbg !4516
  %0 = load i64, i64* %count.addr, align 8, !dbg !4517
  %tobool = icmp ne i64 %0, 0, !dbg !4517
  br i1 %tobool, label %if.then, label %if.end14, !dbg !4519

if.then:                                          ; preds = %entry
  %1 = load i8, i8* @nowayout, align 1, !dbg !4520
  %tobool1 = trunc i8 %1 to i1, !dbg !4520
  br i1 %tobool1, label %if.end13, label %if.then2, !dbg !4523

if.then2:                                         ; preds = %if.then
  call void @llvm.dbg.declare(metadata i64* %i, metadata !4524, metadata !DIExpression()), !dbg !4526
  store i8 0, i8* @expect_close, align 1, !dbg !4527
  store i64 0, i64* %i, align 8, !dbg !4528
  br label %for.cond, !dbg !4530

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i64, i64* %i, align 8, !dbg !4531
  %3 = load i64, i64* %count.addr, align 8, !dbg !4533
  %cmp = icmp ne i64 %2, %3, !dbg !4534
  br i1 %cmp, label %for.body, label %for.end, !dbg !4535

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8* %c, metadata !4536, metadata !DIExpression()), !dbg !4538
  call void @might_fault() #9, !dbg !4539
  call void @llvm.dbg.declare(metadata i32* %__ret_gu, metadata !4542, metadata !DIExpression()), !dbg !4544
  call void @llvm.dbg.declare(metadata i8* %__val_gu, metadata !4545, metadata !DIExpression()), !dbg !4544
  %4 = call i64 @llvm.read_register.i64(metadata !4209), !dbg !4544
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4544
  %6 = load i64, i64* %i, align 8, !dbg !4544
  %add.ptr = getelementptr i8, i8* %5, i64 %6, !dbg !4544
  %7 = call { i8*, i8, i64 } asm sideeffect "call __get_user_${4:P}", "={ax},={rdx},={rsp},0,i,2,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr, i64 1, i64 %4) #6, !dbg !4544, !srcloc !4546
  %asmresult = extractvalue { i8*, i8, i64 } %7, 0, !dbg !4544
  %asmresult3 = extractvalue { i8*, i8, i64 } %7, 1, !dbg !4544
  %asmresult4 = extractvalue { i8*, i8, i64 } %7, 2, !dbg !4544
  %8 = ptrtoint i8* %asmresult to i64, !dbg !4544
  %9 = trunc i64 %8 to i32, !dbg !4544
  store i32 %9, i32* %__ret_gu, align 4, !dbg !4544
  store i8 %asmresult3, i8* %__val_gu, align 1, !dbg !4544
  call void @llvm.write_register.i64(metadata !4209, i64 %asmresult4), !dbg !4544
  %10 = load i8, i8* %__val_gu, align 1, !dbg !4544
  store i8 %10, i8* %c, align 1, !dbg !4544
  %11 = load i32, i32* %__ret_gu, align 4, !dbg !4544
  %conv = sext i32 %11 to i64, !dbg !4544
  store i64 %conv, i64* %tmp5, align 8, !dbg !4544
  %12 = load i64, i64* %tmp5, align 8, !dbg !4544
  store i64 %12, i64* %tmp, align 8, !dbg !4539
  %13 = load i64, i64* %tmp, align 8, !dbg !4539
  %tobool6 = icmp ne i64 %13, 0, !dbg !4547
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !4548

if.then7:                                         ; preds = %for.body
  store i64 -14, i64* %retval, align 8, !dbg !4549
  br label %return, !dbg !4549

if.end:                                           ; preds = %for.body
  %14 = load i8, i8* %c, align 1, !dbg !4550
  %conv8 = sext i8 %14 to i32, !dbg !4550
  %cmp9 = icmp eq i32 %conv8, 86, !dbg !4552
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !4553

if.then11:                                        ; preds = %if.end
  store i8 42, i8* @expect_close, align 1, !dbg !4554
  br label %if.end12, !dbg !4555

if.end12:                                         ; preds = %if.then11, %if.end
  br label %for.inc, !dbg !4556

for.inc:                                          ; preds = %if.end12
  %15 = load i64, i64* %i, align 8, !dbg !4557
  %inc = add i64 %15, 1, !dbg !4557
  store i64 %inc, i64* %i, align 8, !dbg !4557
  br label %for.cond, !dbg !4558, !llvm.loop !4559

for.end:                                          ; preds = %for.cond
  br label %if.end13, !dbg !4561

if.end13:                                         ; preds = %for.end, %if.then
  %call = call i32 @wdtpci_ping() #9, !dbg !4562
  br label %if.end14, !dbg !4563

if.end14:                                         ; preds = %if.end13, %entry
  %16 = load i64, i64* %count.addr, align 8, !dbg !4564
  store i64 %16, i64* %retval, align 8, !dbg !4565
  br label %return, !dbg !4565

return:                                           ; preds = %if.end14, %if.then7
  %17 = load i64, i64* %retval, align 8, !dbg !4566
  ret i64 %17, !dbg !4566
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @wdtpci_ioctl(%struct.file* %file, i32 %cmd, i64 %arg) #2 !dbg !4567 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4568, metadata !DIExpression()), !dbg !4573
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4582, metadata !DIExpression()), !dbg !4583
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4584, metadata !DIExpression()), !dbg !4585
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4586, metadata !DIExpression()), !dbg !4587
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4588, metadata !DIExpression()), !dbg !4591
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4592, metadata !DIExpression()), !dbg !4593
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4594, metadata !DIExpression()), !dbg !4595
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4596, metadata !DIExpression()), !dbg !4597
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %argp = alloca i8*, align 8
  %p = alloca i32*, align 8
  %new_heartbeat = alloca i32, align 4
  %status = alloca i32, align 4
  %ident = alloca %struct.watchdog_info, align 4
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca i8*, align 8
  %__val_pu = alloca i32, align 4
  %tmp11 = alloca i64, align 8
  %tmp14 = alloca i64, align 8
  %__ret_pu15 = alloca i32, align 4
  %__ptr_pu16 = alloca i8*, align 8
  %__val_pu17 = alloca i32, align 4
  %tmp20 = alloca i64, align 8
  %tmp25 = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %tmp29 = alloca i64, align 8
  %tmp40 = alloca i64, align 8
  %__ret_pu41 = alloca i32, align 4
  %__ptr_pu42 = alloca i8*, align 8
  %__val_pu43 = alloca i32, align 4
  %tmp46 = alloca i64, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4598, metadata !DIExpression()), !dbg !4599
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !4600, metadata !DIExpression()), !dbg !4601
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !4602, metadata !DIExpression()), !dbg !4603
  call void @llvm.dbg.declare(metadata i8** %argp, metadata !4604, metadata !DIExpression()), !dbg !4605
  %0 = load i64, i64* %arg.addr, align 8, !dbg !4606
  %1 = inttoptr i64 %0 to i8*, !dbg !4607
  store i8* %1, i8** %argp, align 8, !dbg !4605
  call void @llvm.dbg.declare(metadata i32** %p, metadata !4608, metadata !DIExpression()), !dbg !4609
  %2 = load i8*, i8** %argp, align 8, !dbg !4610
  %3 = bitcast i8* %2 to i32*, !dbg !4610
  store i32* %3, i32** %p, align 8, !dbg !4609
  call void @llvm.dbg.declare(metadata i32* %new_heartbeat, metadata !4611, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4613, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.declare(metadata %struct.watchdog_info* %ident, metadata !4615, metadata !DIExpression()), !dbg !4623
  %4 = bitcast %struct.watchdog_info* %ident to i8*, !dbg !4623
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.watchdog_info* @__const.wdtpci_ioctl.ident to i8*), i64 40, i1 false), !dbg !4623
  %options = getelementptr inbounds %struct.watchdog_info, %struct.watchdog_info* %ident, i32 0, i32 0, !dbg !4624
  %5 = load i32, i32* %options, align 4, !dbg !4625
  %or = or i32 %5, 12, !dbg !4625
  store i32 %or, i32* %options, align 4, !dbg !4625
  %6 = load i32, i32* @type, align 4, !dbg !4626
  %cmp = icmp eq i32 %6, 501, !dbg !4628
  br i1 %cmp, label %if.then, label %if.end6, !dbg !4629

if.then:                                          ; preds = %entry
  %options1 = getelementptr inbounds %struct.watchdog_info, %struct.watchdog_info* %ident, i32 0, i32 0, !dbg !4630
  %7 = load i32, i32* %options1, align 4, !dbg !4632
  %or2 = or i32 %7, 81, !dbg !4632
  store i32 %or2, i32* %options1, align 4, !dbg !4632
  %8 = load i32, i32* @tachometer, align 4, !dbg !4633
  %tobool = icmp ne i32 %8, 0, !dbg !4633
  br i1 %tobool, label %if.then3, label %if.end, !dbg !4635

if.then3:                                         ; preds = %if.then
  %options4 = getelementptr inbounds %struct.watchdog_info, %struct.watchdog_info* %ident, i32 0, i32 0, !dbg !4636
  %9 = load i32, i32* %options4, align 4, !dbg !4637
  %or5 = or i32 %9, 2, !dbg !4637
  store i32 %or5, i32* %options4, align 4, !dbg !4637
  br label %if.end, !dbg !4638

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !4639

if.end6:                                          ; preds = %if.end, %entry
  %10 = load i32, i32* %cmd.addr, align 4, !dbg !4640
  switch i32 %10, label %sw.default [
    i32 -2144839936, label %sw.bb
    i32 -2147199231, label %sw.bb8
    i32 -2147199230, label %sw.bb13
    i32 -2147199227, label %sw.bb22
    i32 -1073457402, label %sw.bb24
    i32 -2147199225, label %sw.bb39
  ], !dbg !4641

sw.bb:                                            ; preds = %if.end6
  %11 = load i8*, i8** %argp, align 8, !dbg !4642
  %12 = bitcast %struct.watchdog_info* %ident to i8*, !dbg !4643
  store i8* %11, i8** %to.addr.i, align 8
  store i8* %12, i8** %from.addr.i, align 8
  store i64 40, i64* %n.addr.i, align 8
  %13 = load i8*, i8** %from.addr.i, align 8, !dbg !4644
  %14 = load i64, i64* %n.addr.i, align 8, !dbg !4644
  store i8* %13, i8** %addr.addr.i.i, align 8
  store i64 %14, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !4587
  %15 = load i32, i32* %sz.i.i, align 4, !dbg !4645
  %cmp.i.i = icmp sge i32 %15, 0, !dbg !4645
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !4645

land.rhs.i.i:                                     ; preds = %sw.bb
  %16 = load i32, i32* %sz.i.i, align 4, !dbg !4645
  %conv.i.i = sext i32 %16 to i64, !dbg !4645
  %17 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4645
  %cmp1.i.i = icmp ult i64 %conv.i.i, %17, !dbg !4645
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %sw.bb
  %18 = phi i1 [ false, %sw.bb ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !4647
  %lnot.i.i = xor i1 %18, true, !dbg !4645
  %lnot.ext.i.i = zext i1 %18 to i32, !dbg !4645
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4645
  br i1 %18, label %if.then.i.i, label %if.end10.i.i, !dbg !4648

if.then.i.i:                                      ; preds = %land.end.i.i
  %19 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4649
  %20 = call i1 @llvm.is.constant.i64(i64 %19) #6, !dbg !4652
  br i1 %20, label %if.else.i.i, label %if.then5.i.i, !dbg !4653

if.then5.i.i:                                     ; preds = %if.then.i.i
  %21 = load i32, i32* %sz.i.i, align 4, !dbg !4654
  %22 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4655
  call void @copy_overflow(i32 %21, i64 %22) #11, !dbg !4656
  br label %if.end9.i.i, !dbg !4656

if.else.i.i:                                      ; preds = %if.then.i.i
  %23 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4657
  %tobool6.i.i = trunc i8 %23 to i1, !dbg !4657
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !4659

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #11, !dbg !4660
  br label %if.end.i.i, !dbg !4660

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #11, !dbg !4661
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4662
  br label %check_copy_size.exit.i, !dbg !4662

if.end10.i.i:                                     ; preds = %land.end.i.i
  %24 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4591
  %cmp11.i.i = icmp ugt i64 %24, 2147483647, !dbg !4591
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !4591
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !4591
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !4591
  %25 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4663
  %tobool17.i.i = icmp ne i32 %25, 0, !dbg !4663
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !4663
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !4663
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !4663
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !4591

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i32 150, i32 2307, i64 12) #6, !dbg !4665, !srcloc !4668
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #6, !dbg !4669, !srcloc !4671
  br label %if.end31.i.i, !dbg !4672

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %26 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4591
  %tobool32.i.i = icmp ne i32 %26, 0, !dbg !4591
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !4591
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !4591
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !4591
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !4663
  %27 = load i64, i64* %tmp.i.i, align 8, !dbg !4591
  %tobool38.i.i = icmp ne i64 %27, 0, !dbg !4673
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !4674

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4675
  br label %check_copy_size.exit.i, !dbg !4675

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %28 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !4676
  %29 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4677
  %30 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4678
  %tobool41.i.i = trunc i8 %30 to i1, !dbg !4678
  call void @check_object_size(i8* %28, i64 %29, i1 zeroext %tobool41.i.i) #11, !dbg !4679
  store i1 true, i1* %retval.i.i, align 1, !dbg !4680
  br label %check_copy_size.exit.i, !dbg !4680

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %31 = load i1, i1* %retval.i.i, align 1, !dbg !4681
  %lnot.i = xor i1 %31, true, !dbg !4644
  %lnot.ext.i = zext i1 %31 to i32, !dbg !4644
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !4644
  br i1 %31, label %if.then.i, label %copy_to_user.exit, !dbg !4682

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %32 = load i8*, i8** %to.addr.i, align 8, !dbg !4683
  %33 = load i8*, i8** %from.addr.i, align 8, !dbg !4684
  %34 = load i64, i64* %n.addr.i, align 8, !dbg !4685
  %call2.i = call i64 @_copy_to_user(i8* %32, i8* %33, i64 %34) #11, !dbg !4686
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !4687
  br label %copy_to_user.exit, !dbg !4688

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %35 = load i64, i64* %n.addr.i, align 8, !dbg !4689
  %tobool7 = icmp ne i64 %35, 0, !dbg !4690
  %36 = zext i1 %tobool7 to i64, !dbg !4690
  %cond = select i1 %tobool7, i32 -14, i32 0, !dbg !4690
  %conv = sext i32 %cond to i64, !dbg !4690
  store i64 %conv, i64* %retval, align 8, !dbg !4691
  br label %return, !dbg !4691

sw.bb8:                                           ; preds = %if.end6
  %call9 = call i32 @wdtpci_get_status(i32* %status) #9, !dbg !4692
  call void @might_fault() #9, !dbg !4693
  call void @llvm.dbg.declare(metadata i32* %__ret_pu, metadata !4695, metadata !DIExpression()), !dbg !4697
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu, metadata !4698, metadata !DIExpression()), !dbg !4697
  call void @llvm.dbg.declare(metadata i32* %__val_pu, metadata !4699, metadata !DIExpression()), !dbg !4697
  %37 = load i32*, i32** %p, align 8, !dbg !4697
  %38 = bitcast i32* %37 to i8*, !dbg !4697
  store i8* %38, i8** %__ptr_pu, align 8, !dbg !4697
  %39 = load i32, i32* %status, align 4, !dbg !4697
  store i32 %39, i32* %__val_pu, align 4, !dbg !4697
  %40 = call i64 @llvm.read_register.i64(metadata !4209), !dbg !4697
  %41 = load i8*, i8** %__ptr_pu, align 8, !dbg !4697
  %42 = load i32, i32* %__val_pu, align 4, !dbg !4697
  %43 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %41, i32 %42, i64 4, i64 %40) #6, !dbg !4697, !srcloc !4700
  %asmresult = extractvalue { i8*, i64 } %43, 0, !dbg !4697
  %asmresult10 = extractvalue { i8*, i64 } %43, 1, !dbg !4697
  %44 = ptrtoint i8* %asmresult to i64, !dbg !4697
  %45 = trunc i64 %44 to i32, !dbg !4697
  store i32 %45, i32* %__ret_pu, align 4, !dbg !4697
  call void @llvm.write_register.i64(metadata !4209, i64 %asmresult10), !dbg !4697
  %46 = load i32, i32* %__ret_pu, align 4, !dbg !4697
  %conv12 = sext i32 %46 to i64, !dbg !4697
  store i64 %conv12, i64* %tmp11, align 8, !dbg !4697
  %47 = load i64, i64* %tmp11, align 8, !dbg !4697
  store i64 %47, i64* %tmp, align 8, !dbg !4693
  %48 = load i64, i64* %tmp, align 8, !dbg !4693
  store i64 %48, i64* %retval, align 8, !dbg !4701
  br label %return, !dbg !4701

sw.bb13:                                          ; preds = %if.end6
  call void @might_fault() #9, !dbg !4702
  call void @llvm.dbg.declare(metadata i32* %__ret_pu15, metadata !4704, metadata !DIExpression()), !dbg !4706
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu16, metadata !4707, metadata !DIExpression()), !dbg !4706
  call void @llvm.dbg.declare(metadata i32* %__val_pu17, metadata !4708, metadata !DIExpression()), !dbg !4706
  %49 = load i32*, i32** %p, align 8, !dbg !4706
  %50 = bitcast i32* %49 to i8*, !dbg !4706
  store i8* %50, i8** %__ptr_pu16, align 8, !dbg !4706
  store i32 0, i32* %__val_pu17, align 4, !dbg !4706
  %51 = call i64 @llvm.read_register.i64(metadata !4209), !dbg !4706
  %52 = load i8*, i8** %__ptr_pu16, align 8, !dbg !4706
  %53 = load i32, i32* %__val_pu17, align 4, !dbg !4706
  %54 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %52, i32 %53, i64 4, i64 %51) #6, !dbg !4706, !srcloc !4709
  %asmresult18 = extractvalue { i8*, i64 } %54, 0, !dbg !4706
  %asmresult19 = extractvalue { i8*, i64 } %54, 1, !dbg !4706
  %55 = ptrtoint i8* %asmresult18 to i64, !dbg !4706
  %56 = trunc i64 %55 to i32, !dbg !4706
  store i32 %56, i32* %__ret_pu15, align 4, !dbg !4706
  call void @llvm.write_register.i64(metadata !4209, i64 %asmresult19), !dbg !4706
  %57 = load i32, i32* %__ret_pu15, align 4, !dbg !4706
  %conv21 = sext i32 %57 to i64, !dbg !4706
  store i64 %conv21, i64* %tmp20, align 8, !dbg !4706
  %58 = load i64, i64* %tmp20, align 8, !dbg !4706
  store i64 %58, i64* %tmp14, align 8, !dbg !4702
  %59 = load i64, i64* %tmp14, align 8, !dbg !4702
  store i64 %59, i64* %retval, align 8, !dbg !4710
  br label %return, !dbg !4710

sw.bb22:                                          ; preds = %if.end6
  %call23 = call i32 @wdtpci_ping() #9, !dbg !4711
  store i64 0, i64* %retval, align 8, !dbg !4712
  br label %return, !dbg !4712

sw.bb24:                                          ; preds = %if.end6
  call void @might_fault() #9, !dbg !4713
  call void @llvm.dbg.declare(metadata i32* %__ret_gu, metadata !4716, metadata !DIExpression()), !dbg !4718
  call void @llvm.dbg.declare(metadata i32* %__val_gu, metadata !4719, metadata !DIExpression()), !dbg !4718
  %60 = call i64 @llvm.read_register.i64(metadata !4209), !dbg !4718
  %61 = load i32*, i32** %p, align 8, !dbg !4718
  %62 = call { i32*, i32, i64 } asm sideeffect "call __get_user_${4:P}", "={ax},={rdx},={rsp},0,i,2,~{dirflag},~{fpsr},~{flags}"(i32* %61, i64 4, i64 %60) #6, !dbg !4718, !srcloc !4720
  %asmresult26 = extractvalue { i32*, i32, i64 } %62, 0, !dbg !4718
  %asmresult27 = extractvalue { i32*, i32, i64 } %62, 1, !dbg !4718
  %asmresult28 = extractvalue { i32*, i32, i64 } %62, 2, !dbg !4718
  %63 = ptrtoint i32* %asmresult26 to i64, !dbg !4718
  %64 = trunc i64 %63 to i32, !dbg !4718
  store i32 %64, i32* %__ret_gu, align 4, !dbg !4718
  store i32 %asmresult27, i32* %__val_gu, align 4, !dbg !4718
  call void @llvm.write_register.i64(metadata !4209, i64 %asmresult28), !dbg !4718
  %65 = load i32, i32* %__val_gu, align 4, !dbg !4718
  store i32 %65, i32* %new_heartbeat, align 4, !dbg !4718
  %66 = load i32, i32* %__ret_gu, align 4, !dbg !4718
  %conv30 = sext i32 %66 to i64, !dbg !4718
  store i64 %conv30, i64* %tmp29, align 8, !dbg !4718
  %67 = load i64, i64* %tmp29, align 8, !dbg !4718
  store i64 %67, i64* %tmp25, align 8, !dbg !4713
  %68 = load i64, i64* %tmp25, align 8, !dbg !4713
  %tobool31 = icmp ne i64 %68, 0, !dbg !4721
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !4722

if.then32:                                        ; preds = %sw.bb24
  store i64 -14, i64* %retval, align 8, !dbg !4723
  br label %return, !dbg !4723

if.end33:                                         ; preds = %sw.bb24
  %69 = load i32, i32* %new_heartbeat, align 4, !dbg !4724
  %call34 = call i32 @wdtpci_set_heartbeat(i32 %69) #9, !dbg !4726
  %tobool35 = icmp ne i32 %call34, 0, !dbg !4726
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !4727

if.then36:                                        ; preds = %if.end33
  store i64 -22, i64* %retval, align 8, !dbg !4728
  br label %return, !dbg !4728

if.end37:                                         ; preds = %if.end33
  %call38 = call i32 @wdtpci_ping() #9, !dbg !4729
  br label %sw.bb39, !dbg !4729

sw.bb39:                                          ; preds = %if.end6, %if.end37
  call void @might_fault() #9, !dbg !4730
  call void @llvm.dbg.declare(metadata i32* %__ret_pu41, metadata !4732, metadata !DIExpression()), !dbg !4734
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu42, metadata !4735, metadata !DIExpression()), !dbg !4734
  call void @llvm.dbg.declare(metadata i32* %__val_pu43, metadata !4736, metadata !DIExpression()), !dbg !4734
  %70 = load i32*, i32** %p, align 8, !dbg !4734
  %71 = bitcast i32* %70 to i8*, !dbg !4734
  store i8* %71, i8** %__ptr_pu42, align 8, !dbg !4734
  %72 = load i32, i32* @heartbeat, align 4, !dbg !4734
  store i32 %72, i32* %__val_pu43, align 4, !dbg !4734
  %73 = call i64 @llvm.read_register.i64(metadata !4209), !dbg !4734
  %74 = load i8*, i8** %__ptr_pu42, align 8, !dbg !4734
  %75 = load i32, i32* %__val_pu43, align 4, !dbg !4734
  %76 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %74, i32 %75, i64 4, i64 %73) #6, !dbg !4734, !srcloc !4737
  %asmresult44 = extractvalue { i8*, i64 } %76, 0, !dbg !4734
  %asmresult45 = extractvalue { i8*, i64 } %76, 1, !dbg !4734
  %77 = ptrtoint i8* %asmresult44 to i64, !dbg !4734
  %78 = trunc i64 %77 to i32, !dbg !4734
  store i32 %78, i32* %__ret_pu41, align 4, !dbg !4734
  call void @llvm.write_register.i64(metadata !4209, i64 %asmresult45), !dbg !4734
  %79 = load i32, i32* %__ret_pu41, align 4, !dbg !4734
  %conv47 = sext i32 %79 to i64, !dbg !4734
  store i64 %conv47, i64* %tmp46, align 8, !dbg !4734
  %80 = load i64, i64* %tmp46, align 8, !dbg !4734
  store i64 %80, i64* %tmp40, align 8, !dbg !4730
  %81 = load i64, i64* %tmp40, align 8, !dbg !4730
  store i64 %81, i64* %retval, align 8, !dbg !4738
  br label %return, !dbg !4738

sw.default:                                       ; preds = %if.end6
  store i64 -25, i64* %retval, align 8, !dbg !4739
  br label %return, !dbg !4739

return:                                           ; preds = %sw.default, %sw.bb39, %if.then36, %if.then32, %sw.bb22, %sw.bb13, %sw.bb8, %copy_to_user.exit
  %82 = load i64, i64* %retval, align 8, !dbg !4740
  ret i64 %82, !dbg !4740
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @wdtpci_open(%struct.inode* %inode, %struct.file* %file) #2 !dbg !4741 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !4742, metadata !DIExpression()), !dbg !4743
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4744, metadata !DIExpression()), !dbg !4745
  %call = call zeroext i1 @test_and_set_bit(i64 0, i64* @open_lock) #9, !dbg !4746
  br i1 %call, label %if.then, label %if.end, !dbg !4748

if.then:                                          ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !4749
  br label %return, !dbg !4749

if.end:                                           ; preds = %entry
  %0 = load i8, i8* @nowayout, align 1, !dbg !4750
  %tobool = trunc i8 %0 to i1, !dbg !4750
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !4752

if.then1:                                         ; preds = %if.end
  call void @__module_get(%struct.module* null) #9, !dbg !4753
  br label %if.end2, !dbg !4753

if.end2:                                          ; preds = %if.then1, %if.end
  %call3 = call i32 @wdtpci_start() #9, !dbg !4754
  %1 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !4755
  %2 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4756
  %call4 = call i32 @stream_open(%struct.inode* %1, %struct.file* %2) #9, !dbg !4757
  store i32 %call4, i32* %retval, align 4, !dbg !4758
  br label %return, !dbg !4758

return:                                           ; preds = %if.end2, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !4759
  ret i32 %3, !dbg !4759
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @wdtpci_release(%struct.inode* %inode, %struct.file* %file) #2 !dbg !4760 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !4761, metadata !DIExpression()), !dbg !4762
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4763, metadata !DIExpression()), !dbg !4764
  %0 = load i8, i8* @expect_close, align 1, !dbg !4765
  %conv = sext i8 %0 to i32, !dbg !4765
  %cmp = icmp eq i32 %conv, 42, !dbg !4767
  br i1 %cmp, label %if.then, label %if.else, !dbg !4768

if.then:                                          ; preds = %entry
  %call = call i32 @wdtpci_stop() #9, !dbg !4769
  br label %if.end, !dbg !4771

if.else:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !4772
  %call3 = call i32 @wdtpci_ping() #9, !dbg !4774
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i8 0, i8* @expect_close, align 1, !dbg !4775
  call void @clear_bit(i64 0, i64* @open_lock) #9, !dbg !4776
  ret i32 0, !dbg !4777
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @might_fault() #2 !dbg !4778 {
entry:
  ret void, !dbg !4780
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @wdtpci_ping() #2 !dbg !4781 {
entry:
  %lock.addr.i23 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i23, metadata !4782, metadata !DIExpression()), !dbg !4786
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4788, metadata !DIExpression()), !dbg !4789
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4790, metadata !DIExpression()), !dbg !4795
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4802, metadata !DIExpression()), !dbg !4803
  br label %do.body, !dbg !4804

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4805

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4806, metadata !DIExpression()), !dbg !4808
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4809, metadata !DIExpression()), !dbg !4808
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4808
  %conv = zext i1 %cmp to i32, !dbg !4808
  store i32 1, i32* %tmp, align 4, !dbg !4808
  %0 = load i32, i32* %tmp, align 4, !dbg !4808
  br label %do.body2, !dbg !4810

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4811

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4812

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4814, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4818, metadata !DIExpression()), !dbg !4817
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4817
  %conv8 = zext i1 %cmp7 to i32, !dbg !4817
  store i32 1, i32* %tmp9, align 4, !dbg !4817
  %1 = load i32, i32* %tmp9, align 4, !dbg !4817
  %call = call i64 @arch_local_irq_save() #9, !dbg !4819
  store i64 %call, i64* %flags, align 8, !dbg !4819
  br label %do.end, !dbg !4819

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4812

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4811

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4820, !srcloc !4821
  br label %do.body12, !dbg !4820

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @wdtpci_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4822
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !4823
  %rlock.i = bitcast %union.anon.4* %3 to %struct.raw_spinlock*, !dbg !4823
  br label %do.end14, !dbg !4824

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4820

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4811

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4810

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4805

do.end18:                                         ; preds = %do.end17
  %4 = load i64, i64* @io, align 8, !dbg !4825
  %add = add i64 %4, 7, !dbg !4825
  %conv19 = trunc i64 %add to i32, !dbg !4825
  %call20 = call zeroext i8 @inb(i32 %conv19) #9, !dbg !4826
  call void @__const_udelay(i64 34360) #9, !dbg !4827
  call void @wdtpci_ctr_mode(i32 1, i32 2) #9, !dbg !4832
  %5 = load i32, i32* @wd_heartbeat, align 4, !dbg !4833
  call void @wdtpci_ctr_load(i32 1, i32 %5) #9, !dbg !4834
  %6 = load i64, i64* @io, align 8, !dbg !4835
  %add21 = add i64 %6, 7, !dbg !4835
  %conv22 = trunc i64 %add21 to i32, !dbg !4835
  call void @outb(i8 zeroext 0, i32 %conv22) #9, !dbg !4836
  call void @__const_udelay(i64 34360) #9, !dbg !4837
  %7 = load i64, i64* %flags, align 8, !dbg !4842
  store %struct.spinlock* @wdtpci_lock, %struct.spinlock** %lock.addr.i23, align 8
  store i64 %7, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !428, metadata !4843, metadata !DIExpression()) #6, !dbg !4846
  call void @llvm.dbg.declare(metadata !428, metadata !4847, metadata !DIExpression()) #6, !dbg !4846
  store i32 1, i32* %tmp.i, align 4, !dbg !4846
  %8 = load i32, i32* %tmp.i, align 4, !dbg !4846
  call void @llvm.dbg.declare(metadata !428, metadata !4848, metadata !DIExpression()) #6, !dbg !4853
  call void @llvm.dbg.declare(metadata !428, metadata !4854, metadata !DIExpression()) #6, !dbg !4853
  store i32 1, i32* %tmp8.i, align 4, !dbg !4853
  %9 = load i32, i32* %tmp8.i, align 4, !dbg !4853
  %10 = load i64, i64* %flags.addr.i, align 8, !dbg !4855
  call void @arch_local_irq_restore(i64 %10) #11, !dbg !4855
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4856, !srcloc !4858
  %11 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i23, align 8, !dbg !4859
  %12 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %11, i32 0, i32 0, !dbg !4859
  %rlock.i24 = bitcast %union.anon.4* %12 to %struct.raw_spinlock*, !dbg !4859
  ret i32 0, !dbg !4861
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #2 !dbg !4862 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !4866, metadata !DIExpression()), !dbg !4867
  %call = call i64 @arch_local_save_flags() #9, !dbg !4868
  store i64 %call, i64* %f, align 8, !dbg !4869
  call void @arch_local_irq_disable() #9, !dbg !4870
  %0 = load i64, i64* %f, align 8, !dbg !4871
  ret i64 %0, !dbg !4872
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @wdtpci_ctr_mode(i32 %ctr, i32 %mode) #2 !dbg !4873 {
entry:
  %ctr.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  store i32 %ctr, i32* %ctr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ctr.addr, metadata !4876, metadata !DIExpression()), !dbg !4877
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !4878, metadata !DIExpression()), !dbg !4879
  %0 = load i32, i32* %ctr.addr, align 4, !dbg !4880
  %shl = shl i32 %0, 6, !dbg !4880
  store i32 %shl, i32* %ctr.addr, align 4, !dbg !4880
  %1 = load i32, i32* %ctr.addr, align 4, !dbg !4881
  %or = or i32 %1, 48, !dbg !4881
  store i32 %or, i32* %ctr.addr, align 4, !dbg !4881
  %2 = load i32, i32* %mode.addr, align 4, !dbg !4882
  %shl1 = shl i32 %2, 1, !dbg !4883
  %3 = load i32, i32* %ctr.addr, align 4, !dbg !4884
  %or2 = or i32 %3, %shl1, !dbg !4884
  store i32 %or2, i32* %ctr.addr, align 4, !dbg !4884
  %4 = load i32, i32* %ctr.addr, align 4, !dbg !4885
  %conv = trunc i32 %4 to i8, !dbg !4885
  %5 = load i64, i64* @io, align 8, !dbg !4886
  %add = add i64 %5, 3, !dbg !4886
  %conv3 = trunc i64 %add to i32, !dbg !4886
  call void @outb(i8 zeroext %conv, i32 %conv3) #9, !dbg !4887
  call void @__const_udelay(i64 34360) #9, !dbg !4888
  ret void, !dbg !4893
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @wdtpci_ctr_load(i32 %ctr, i32 %val) #2 !dbg !4894 {
entry:
  %ctr.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store i32 %ctr, i32* %ctr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ctr.addr, metadata !4895, metadata !DIExpression()), !dbg !4896
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4897, metadata !DIExpression()), !dbg !4898
  %0 = load i32, i32* %val.addr, align 4, !dbg !4899
  %and = and i32 %0, 255, !dbg !4900
  %conv = trunc i32 %and to i8, !dbg !4899
  %1 = load i64, i64* @io, align 8, !dbg !4901
  %add = add i64 %1, 0, !dbg !4901
  %2 = load i32, i32* %ctr.addr, align 4, !dbg !4902
  %conv1 = sext i32 %2 to i64, !dbg !4902
  %add2 = add i64 %add, %conv1, !dbg !4903
  %conv3 = trunc i64 %add2 to i32, !dbg !4901
  call void @outb(i8 zeroext %conv, i32 %conv3) #9, !dbg !4904
  call void @__const_udelay(i64 34360) #9, !dbg !4905
  %3 = load i32, i32* %val.addr, align 4, !dbg !4910
  %shr = ashr i32 %3, 8, !dbg !4911
  %conv4 = trunc i32 %shr to i8, !dbg !4910
  %4 = load i64, i64* @io, align 8, !dbg !4912
  %add5 = add i64 %4, 0, !dbg !4912
  %5 = load i32, i32* %ctr.addr, align 4, !dbg !4913
  %conv6 = sext i32 %5 to i64, !dbg !4913
  %add7 = add i64 %add5, %conv6, !dbg !4914
  %conv8 = trunc i64 %add7 to i32, !dbg !4912
  call void @outb(i8 zeroext %conv4, i32 %conv8) #9, !dbg !4915
  call void @__const_udelay(i64 34360) #9, !dbg !4916
  ret void, !dbg !4921
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb(i8 zeroext %value, i32 %port) #2 !dbg !4922 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !4925, metadata !DIExpression()), !dbg !4926
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4927, metadata !DIExpression()), !dbg !4926
  %0 = load i8, i8* %value.addr, align 1, !dbg !4926
  %1 = load i32, i32* %port.addr, align 4, !dbg !4926
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i32 %1) #6, !dbg !4926, !srcloc !4928
  ret void, !dbg !4926
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #2 !dbg !4929 {
entry:
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !4930, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4933, metadata !DIExpression()), !dbg !4932
  %0 = load i64, i64* %__edi, align 8, !dbg !4932
  store i64 %0, i64* %__edi, align 8, !dbg !4932
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4934, metadata !DIExpression()), !dbg !4932
  %1 = load i64, i64* %__esi, align 8, !dbg !4932
  store i64 %1, i64* %__esi, align 8, !dbg !4932
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4935, metadata !DIExpression()), !dbg !4932
  %2 = load i64, i64* %__edx, align 8, !dbg !4932
  store i64 %2, i64* %__edx, align 8, !dbg !4932
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4936, metadata !DIExpression()), !dbg !4932
  %3 = load i64, i64* %__ecx, align 8, !dbg !4932
  store i64 %3, i64* %__ecx, align 8, !dbg !4932
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4937, metadata !DIExpression()), !dbg !4932
  %4 = load i64, i64* %__eax, align 8, !dbg !4932
  store i64 %4, i64* %__eax, align 8, !dbg !4932
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !4932
  %6 = call i64 @llvm.read_register.i64(metadata !4209), !dbg !4938
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #6, !dbg !4938, !srcloc !4941
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4938
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4938
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4938
  call void @llvm.write_register.i64(metadata !4209, i64 %asmresult1), !dbg !4938
  %8 = load i64, i64* %__eax, align 8, !dbg !4938
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !4942, metadata !DIExpression()), !dbg !4944
  store i64 -1, i64* %__mask, align 8, !dbg !4944
  %9 = load i64, i64* %__mask, align 8, !dbg !4944
  store i64 %9, i64* %tmp, align 8, !dbg !4944
  %10 = load i64, i64* %tmp, align 8, !dbg !4944
  %and = and i64 %8, %10, !dbg !4938
  store i64 %and, i64* %__ret, align 8, !dbg !4938
  %11 = load i64, i64* %__ret, align 8, !dbg !4932
  store i64 %11, i64* %tmp2, align 8, !dbg !4945
  %12 = load i64, i64* %tmp2, align 8, !dbg !4932
  ret i64 %12, !dbg !4946
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #2 !dbg !4947 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4948, metadata !DIExpression()), !dbg !4950
  %0 = load i64, i64* %__edi, align 8, !dbg !4950
  store i64 %0, i64* %__edi, align 8, !dbg !4950
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4951, metadata !DIExpression()), !dbg !4950
  %1 = load i64, i64* %__esi, align 8, !dbg !4950
  store i64 %1, i64* %__esi, align 8, !dbg !4950
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4952, metadata !DIExpression()), !dbg !4950
  %2 = load i64, i64* %__edx, align 8, !dbg !4950
  store i64 %2, i64* %__edx, align 8, !dbg !4950
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4953, metadata !DIExpression()), !dbg !4950
  %3 = load i64, i64* %__ecx, align 8, !dbg !4950
  store i64 %3, i64* %__ecx, align 8, !dbg !4950
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4954, metadata !DIExpression()), !dbg !4950
  %4 = load i64, i64* %__eax, align 8, !dbg !4950
  store i64 %4, i64* %__eax, align 8, !dbg !4950
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !4950
  %6 = call i64 @llvm.read_register.i64(metadata !4209), !dbg !4950
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #6, !dbg !4950, !srcloc !4955
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4950
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4950
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4950
  call void @llvm.write_register.i64(metadata !4209, i64 %asmresult1), !dbg !4950
  ret void, !dbg !4956
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #2 !dbg !4957 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !4960, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4962, metadata !DIExpression()), !dbg !4964
  %0 = load i64, i64* %__edi, align 8, !dbg !4964
  store i64 %0, i64* %__edi, align 8, !dbg !4964
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4965, metadata !DIExpression()), !dbg !4964
  %1 = load i64, i64* %__esi, align 8, !dbg !4964
  store i64 %1, i64* %__esi, align 8, !dbg !4964
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4966, metadata !DIExpression()), !dbg !4964
  %2 = load i64, i64* %__edx, align 8, !dbg !4964
  store i64 %2, i64* %__edx, align 8, !dbg !4964
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4967, metadata !DIExpression()), !dbg !4964
  %3 = load i64, i64* %__ecx, align 8, !dbg !4964
  store i64 %3, i64* %__ecx, align 8, !dbg !4964
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4968, metadata !DIExpression()), !dbg !4964
  %4 = load i64, i64* %__eax, align 8, !dbg !4964
  store i64 %4, i64* %__eax, align 8, !dbg !4964
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !4964
  %6 = call i64 @llvm.read_register.i64(metadata !4209), !dbg !4964
  %7 = load i64, i64* %f.addr, align 8, !dbg !4964
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #6, !dbg !4964, !srcloc !4969
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !4964
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !4964
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4964
  call void @llvm.write_register.i64(metadata !4209, i64 %asmresult1), !dbg !4964
  ret void, !dbg !4970
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @wdtpci_get_status(i32* %status) #2 !dbg !4971 {
entry:
  %lock.addr.i59 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i59, metadata !4782, metadata !DIExpression()), !dbg !4974
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4788, metadata !DIExpression()), !dbg !4976
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4790, metadata !DIExpression()), !dbg !4977
  %status.addr = alloca i32*, align 8
  %new_status = alloca i8, align 1
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !4984, metadata !DIExpression()), !dbg !4985
  call void @llvm.dbg.declare(metadata i8* %new_status, metadata !4986, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4988, metadata !DIExpression()), !dbg !4989
  br label %do.body, !dbg !4990

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4991

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4992, metadata !DIExpression()), !dbg !4994
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4995, metadata !DIExpression()), !dbg !4994
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4994
  %conv = zext i1 %cmp to i32, !dbg !4994
  store i32 1, i32* %tmp, align 4, !dbg !4994
  %0 = load i32, i32* %tmp, align 4, !dbg !4994
  br label %do.body2, !dbg !4996

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4997

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4998

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5000, metadata !DIExpression()), !dbg !5003
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5004, metadata !DIExpression()), !dbg !5003
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5003
  %conv8 = zext i1 %cmp7 to i32, !dbg !5003
  store i32 1, i32* %tmp9, align 4, !dbg !5003
  %1 = load i32, i32* %tmp9, align 4, !dbg !5003
  %call = call i64 @arch_local_irq_save() #9, !dbg !5005
  store i64 %call, i64* %flags, align 8, !dbg !5005
  br label %do.end, !dbg !5005

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4998

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4997

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5006, !srcloc !5007
  br label %do.body12, !dbg !5006

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @wdtpci_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5008
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !5009
  %rlock.i = bitcast %union.anon.4* %3 to %struct.raw_spinlock*, !dbg !5009
  br label %do.end14, !dbg !5010

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5006

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4997

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4996

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4991

do.end18:                                         ; preds = %do.end17
  %4 = load i64, i64* @io, align 8, !dbg !5011
  %add = add i64 %4, 4, !dbg !5011
  %conv19 = trunc i64 %add to i32, !dbg !5011
  %call20 = call zeroext i8 @inb(i32 %conv19) #9, !dbg !5012
  store i8 %call20, i8* %new_status, align 1, !dbg !5013
  %5 = load i64, i64* %flags, align 8, !dbg !5014
  store %struct.spinlock* @wdtpci_lock, %struct.spinlock** %lock.addr.i59, align 8
  store i64 %5, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !428, metadata !4843, metadata !DIExpression()) #6, !dbg !5015
  call void @llvm.dbg.declare(metadata !428, metadata !4847, metadata !DIExpression()) #6, !dbg !5015
  store i32 1, i32* %tmp.i, align 4, !dbg !5015
  %6 = load i32, i32* %tmp.i, align 4, !dbg !5015
  call void @llvm.dbg.declare(metadata !428, metadata !4848, metadata !DIExpression()) #6, !dbg !5016
  call void @llvm.dbg.declare(metadata !428, metadata !4854, metadata !DIExpression()) #6, !dbg !5016
  store i32 1, i32* %tmp8.i, align 4, !dbg !5016
  %7 = load i32, i32* %tmp8.i, align 4, !dbg !5016
  %8 = load i64, i64* %flags.addr.i, align 8, !dbg !5017
  call void @arch_local_irq_restore(i64 %8) #11, !dbg !5017
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5018, !srcloc !4858
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i59, align 8, !dbg !5019
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !5019
  %rlock.i60 = bitcast %union.anon.4* %10 to %struct.raw_spinlock*, !dbg !5019
  %11 = load i32*, i32** %status.addr, align 8, !dbg !5020
  store i32 0, i32* %11, align 4, !dbg !5021
  %12 = load i8, i8* %new_status, align 1, !dbg !5022
  %conv21 = zext i8 %12 to i32, !dbg !5022
  %and = and i32 %conv21, 4, !dbg !5024
  %tobool = icmp ne i32 %and, 0, !dbg !5024
  br i1 %tobool, label %if.then, label %if.end, !dbg !5025

if.then:                                          ; preds = %do.end18
  %13 = load i32*, i32** %status.addr, align 8, !dbg !5026
  %14 = load i32, i32* %13, align 4, !dbg !5027
  %or = or i32 %14, 4, !dbg !5027
  store i32 %or, i32* %13, align 4, !dbg !5027
  br label %if.end, !dbg !5028

if.end:                                           ; preds = %if.then, %do.end18
  %15 = load i8, i8* %new_status, align 1, !dbg !5029
  %conv22 = zext i8 %15 to i32, !dbg !5029
  %and23 = and i32 %conv22, 8, !dbg !5031
  %tobool24 = icmp ne i32 %and23, 0, !dbg !5031
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !5032

if.then25:                                        ; preds = %if.end
  %16 = load i32*, i32** %status.addr, align 8, !dbg !5033
  %17 = load i32, i32* %16, align 4, !dbg !5034
  %or26 = or i32 %17, 8, !dbg !5034
  store i32 %or26, i32* %16, align 4, !dbg !5034
  br label %if.end27, !dbg !5035

if.end27:                                         ; preds = %if.then25, %if.end
  %18 = load i32, i32* @type, align 4, !dbg !5036
  %cmp28 = icmp eq i32 %18, 501, !dbg !5038
  br i1 %cmp28, label %if.then30, label %if.end58, !dbg !5039

if.then30:                                        ; preds = %if.end27
  %19 = load i8, i8* %new_status, align 1, !dbg !5040
  %conv31 = zext i8 %19 to i32, !dbg !5040
  %and32 = and i32 %conv31, 2, !dbg !5043
  %tobool33 = icmp ne i32 %and32, 0, !dbg !5043
  br i1 %tobool33, label %if.end36, label %if.then34, !dbg !5044

if.then34:                                        ; preds = %if.then30
  %20 = load i32*, i32** %status.addr, align 8, !dbg !5045
  %21 = load i32, i32* %20, align 4, !dbg !5046
  %or35 = or i32 %21, 1, !dbg !5046
  store i32 %or35, i32* %20, align 4, !dbg !5046
  br label %if.end36, !dbg !5047

if.end36:                                         ; preds = %if.then34, %if.then30
  %22 = load i8, i8* %new_status, align 1, !dbg !5048
  %conv37 = zext i8 %22 to i32, !dbg !5048
  %and38 = and i32 %conv37, 32, !dbg !5050
  %tobool39 = icmp ne i32 %and38, 0, !dbg !5050
  br i1 %tobool39, label %if.end42, label %if.then40, !dbg !5051

if.then40:                                        ; preds = %if.end36
  %23 = load i32*, i32** %status.addr, align 8, !dbg !5052
  %24 = load i32, i32* %23, align 4, !dbg !5053
  %or41 = or i32 %24, 64, !dbg !5053
  store i32 %or41, i32* %23, align 4, !dbg !5053
  br label %if.end42, !dbg !5054

if.end42:                                         ; preds = %if.then40, %if.end36
  %25 = load i8, i8* %new_status, align 1, !dbg !5055
  %conv43 = zext i8 %25 to i32, !dbg !5055
  %and44 = and i32 %conv43, 64, !dbg !5057
  %tobool45 = icmp ne i32 %and44, 0, !dbg !5057
  br i1 %tobool45, label %if.end48, label %if.then46, !dbg !5058

if.then46:                                        ; preds = %if.end42
  %26 = load i32*, i32** %status.addr, align 8, !dbg !5059
  %27 = load i32, i32* %26, align 4, !dbg !5060
  %or47 = or i32 %27, 16, !dbg !5060
  store i32 %or47, i32* %26, align 4, !dbg !5060
  br label %if.end48, !dbg !5061

if.end48:                                         ; preds = %if.then46, %if.end42
  %28 = load i32, i32* @tachometer, align 4, !dbg !5062
  %tobool49 = icmp ne i32 %28, 0, !dbg !5062
  br i1 %tobool49, label %if.then50, label %if.end57, !dbg !5064

if.then50:                                        ; preds = %if.end48
  %29 = load i8, i8* %new_status, align 1, !dbg !5065
  %conv51 = zext i8 %29 to i32, !dbg !5065
  %and52 = and i32 %conv51, 16, !dbg !5068
  %tobool53 = icmp ne i32 %and52, 0, !dbg !5068
  br i1 %tobool53, label %if.end56, label %if.then54, !dbg !5069

if.then54:                                        ; preds = %if.then50
  %30 = load i32*, i32** %status.addr, align 8, !dbg !5070
  %31 = load i32, i32* %30, align 4, !dbg !5071
  %or55 = or i32 %31, 2, !dbg !5071
  store i32 %or55, i32* %30, align 4, !dbg !5071
  br label %if.end56, !dbg !5072

if.end56:                                         ; preds = %if.then54, %if.then50
  br label %if.end57, !dbg !5073

if.end57:                                         ; preds = %if.end56, %if.end48
  br label %if.end58, !dbg !5074

if.end58:                                         ; preds = %if.end57, %if.end27
  ret i32 0, !dbg !5075
}

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #2 !dbg !5076 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5079, metadata !DIExpression()), !dbg !5080
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5081, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5083, metadata !DIExpression()), !dbg !5085
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !5085
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !5086
  %tobool = icmp ne i32 %0, 0, !dbg !5086
  %lnot = xor i1 %tobool, true, !dbg !5086
  %lnot1 = xor i1 %lnot, true, !dbg !5086
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5086
  %conv = sext i32 %lnot.ext to i64, !dbg !5086
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5086
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5085

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5086

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !5088

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !5090

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !5088
  %2 = load i64, i64* %count.addr, align 8, !dbg !5088
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i64 0, i64 0), i32 %1, i64 %2) #9, !dbg !5088
  br label %do.body4, !dbg !5088

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !5092

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5094

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !5092

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i32 134, i32 2313, i64 12) #6, !dbg !5096, !srcloc !5098
  br label %do.end8, !dbg !5096

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #6, !dbg !5099, !srcloc !5101
  br label %do.body9, !dbg !5092

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5102

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !5092

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !5088

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !5104

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !5088

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !5088

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !5085
  %tobool15 = icmp ne i32 %3, 0, !dbg !5085
  %lnot16 = xor i1 %tobool15, true, !dbg !5085
  %lnot18 = xor i1 %lnot16, true, !dbg !5085
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5085
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5085
  store i64 %conv20, i64* %tmp, align 8, !dbg !5086
  %4 = load i64, i64* %tmp, align 8, !dbg !5085
  ret void, !dbg !5106
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #1

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #2 !dbg !5107 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5110, metadata !DIExpression()), !dbg !5111
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5112, metadata !DIExpression()), !dbg !5113
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !5114, metadata !DIExpression()), !dbg !5115
  ret void, !dbg !5116
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_set_bit(i64 %nr, i64* %addr) #2 !dbg !5117 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5123, metadata !DIExpression()), !dbg !5126
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5128, metadata !DIExpression()), !dbg !5129
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !5130, metadata !DIExpression()), !dbg !5132
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5133, metadata !DIExpression()), !dbg !5141
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5143, metadata !DIExpression()), !dbg !5144
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5145, metadata !DIExpression()), !dbg !5146
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5147, metadata !DIExpression()), !dbg !5148
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5149
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5150
  %div = sdiv i64 %1, 64, !dbg !5150
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5151
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5149
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5152
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5153
  %conv.i = trunc i64 %4 to i32, !dbg !5153
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !5154
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5155
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5155
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #11, !dbg !5155
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5156
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5157
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !5132
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !5132
  %11 = call i8 asm sideeffect " btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #6, !dbg !5132, !srcloc !5158
  store i8 %11, i8* %c.i, align 1, !dbg !5132
  %12 = load i8, i8* %c.i, align 1, !dbg !5132
  %tobool.i = trunc i8 %12 to i1, !dbg !5132
  %frombool.i = zext i1 %tobool.i to i8, !dbg !5132
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !5132
  %13 = load i8, i8* %tmp.i, align 1, !dbg !5132
  %tobool1.i = trunc i8 %13 to i1, !dbg !5132
  ret i1 %tobool1.i, !dbg !5159
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__module_get(%struct.module* %module) #2 !dbg !5160 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !5164, metadata !DIExpression()), !dbg !5165
  ret void, !dbg !5166
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @wdtpci_start() #2 !dbg !5167 {
entry:
  %lock.addr.i42 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i42, metadata !4782, metadata !DIExpression()), !dbg !5168
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4788, metadata !DIExpression()), !dbg !5170
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4790, metadata !DIExpression()), !dbg !5171
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5178, metadata !DIExpression()), !dbg !5179
  br label %do.body, !dbg !5180

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5181

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5182, metadata !DIExpression()), !dbg !5184
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5185, metadata !DIExpression()), !dbg !5184
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5184
  %conv = zext i1 %cmp to i32, !dbg !5184
  store i32 1, i32* %tmp, align 4, !dbg !5184
  %0 = load i32, i32* %tmp, align 4, !dbg !5184
  br label %do.body2, !dbg !5186

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5187

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5188

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5190, metadata !DIExpression()), !dbg !5193
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5194, metadata !DIExpression()), !dbg !5193
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5193
  %conv8 = zext i1 %cmp7 to i32, !dbg !5193
  store i32 1, i32* %tmp9, align 4, !dbg !5193
  %1 = load i32, i32* %tmp9, align 4, !dbg !5193
  %call = call i64 @arch_local_irq_save() #9, !dbg !5195
  store i64 %call, i64* %flags, align 8, !dbg !5195
  br label %do.end, !dbg !5195

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5188

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5187

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5196, !srcloc !5197
  br label %do.body12, !dbg !5196

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @wdtpci_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5198
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !5199
  %rlock.i = bitcast %union.anon.4* %3 to %struct.raw_spinlock*, !dbg !5199
  br label %do.end14, !dbg !5200

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5196

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5187

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5186

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5181

do.end18:                                         ; preds = %do.end17
  %4 = load i64, i64* @io, align 8, !dbg !5201
  %add = add i64 %4, 7, !dbg !5201
  %conv19 = trunc i64 %add to i32, !dbg !5201
  %call20 = call zeroext i8 @inb(i32 %conv19) #9, !dbg !5202
  call void @__const_udelay(i64 34360) #9, !dbg !5203
  call void @wdtpci_ctr_mode(i32 2, i32 0) #9, !dbg !5208
  %5 = load i64, i64* @io, align 8, !dbg !5209
  %add21 = add i64 %5, 7, !dbg !5209
  %conv22 = trunc i64 %add21 to i32, !dbg !5209
  call void @outb(i8 zeroext 0, i32 %conv22) #9, !dbg !5210
  call void @__const_udelay(i64 34360) #9, !dbg !5211
  %6 = load i64, i64* @io, align 8, !dbg !5216
  %add23 = add i64 %6, 7, !dbg !5216
  %conv24 = trunc i64 %add23 to i32, !dbg !5216
  %call25 = call zeroext i8 @inb(i32 %conv24) #9, !dbg !5217
  call void @__const_udelay(i64 34360) #9, !dbg !5218
  %7 = load i64, i64* @io, align 8, !dbg !5223
  %add26 = add i64 %7, 12, !dbg !5223
  %conv27 = trunc i64 %add26 to i32, !dbg !5223
  call void @outb(i8 zeroext 0, i32 %conv27) #9, !dbg !5224
  call void @__const_udelay(i64 34360) #9, !dbg !5225
  %8 = load i64, i64* @io, align 8, !dbg !5230
  %add28 = add i64 %8, 6, !dbg !5230
  %conv29 = trunc i64 %add28 to i32, !dbg !5230
  %call30 = call zeroext i8 @inb(i32 %conv29) #9, !dbg !5231
  call void @__const_udelay(i64 34360) #9, !dbg !5232
  %9 = load i64, i64* @io, align 8, !dbg !5237
  %add31 = add i64 %9, 13, !dbg !5237
  %conv32 = trunc i64 %add31 to i32, !dbg !5237
  %call33 = call zeroext i8 @inb(i32 %conv32) #9, !dbg !5238
  call void @__const_udelay(i64 34360) #9, !dbg !5239
  %10 = load i64, i64* @io, align 8, !dbg !5244
  %add34 = add i64 %10, 14, !dbg !5244
  %conv35 = trunc i64 %add34 to i32, !dbg !5244
  %call36 = call zeroext i8 @inb(i32 %conv35) #9, !dbg !5245
  call void @__const_udelay(i64 34360) #9, !dbg !5246
  %11 = load i64, i64* @io, align 8, !dbg !5251
  %add37 = add i64 %11, 15, !dbg !5251
  %conv38 = trunc i64 %add37 to i32, !dbg !5251
  %call39 = call zeroext i8 @inb(i32 %conv38) #9, !dbg !5252
  call void @__const_udelay(i64 34360) #9, !dbg !5253
  call void @wdtpci_ctr_mode(i32 0, i32 3) #9, !dbg !5258
  call void @wdtpci_ctr_mode(i32 1, i32 2) #9, !dbg !5259
  call void @wdtpci_ctr_mode(i32 2, i32 1) #9, !dbg !5260
  call void @wdtpci_ctr_load(i32 0, i32 20833) #9, !dbg !5261
  %12 = load i32, i32* @wd_heartbeat, align 4, !dbg !5262
  call void @wdtpci_ctr_load(i32 1, i32 %12) #9, !dbg !5263
  %13 = load i64, i64* @io, align 8, !dbg !5264
  %add40 = add i64 %13, 7, !dbg !5264
  %conv41 = trunc i64 %add40 to i32, !dbg !5264
  call void @outb(i8 zeroext 0, i32 %conv41) #9, !dbg !5265
  call void @__const_udelay(i64 34360) #9, !dbg !5266
  %14 = load i64, i64* %flags, align 8, !dbg !5271
  store %struct.spinlock* @wdtpci_lock, %struct.spinlock** %lock.addr.i42, align 8
  store i64 %14, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !428, metadata !4843, metadata !DIExpression()) #6, !dbg !5272
  call void @llvm.dbg.declare(metadata !428, metadata !4847, metadata !DIExpression()) #6, !dbg !5272
  store i32 1, i32* %tmp.i, align 4, !dbg !5272
  %15 = load i32, i32* %tmp.i, align 4, !dbg !5272
  call void @llvm.dbg.declare(metadata !428, metadata !4848, metadata !DIExpression()) #6, !dbg !5273
  call void @llvm.dbg.declare(metadata !428, metadata !4854, metadata !DIExpression()) #6, !dbg !5273
  store i32 1, i32* %tmp8.i, align 4, !dbg !5273
  %16 = load i32, i32* %tmp8.i, align 4, !dbg !5273
  %17 = load i64, i64* %flags.addr.i, align 8, !dbg !5274
  call void @arch_local_irq_restore(i64 %17) #11, !dbg !5274
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5275, !srcloc !4858
  %18 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i42, align 8, !dbg !5276
  %19 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %18, i32 0, i32 0, !dbg !5276
  %rlock.i43 = bitcast %union.anon.4* %19 to %struct.raw_spinlock*, !dbg !5276
  ret i32 0, !dbg !5277
}

; Function Attrs: noredzone
declare dso_local i32 @stream_open(%struct.inode*, %struct.file*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !5278 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5282, metadata !DIExpression()), !dbg !5283
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5284, metadata !DIExpression()), !dbg !5285
  ret i1 true, !dbg !5286
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !5287 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5291, metadata !DIExpression()), !dbg !5292
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5293, metadata !DIExpression()), !dbg !5294
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5295, metadata !DIExpression()), !dbg !5296
  ret void, !dbg !5297
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @wdtpci_stop() #2 !dbg !5298 {
entry:
  %lock.addr.i21 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i21, metadata !4782, metadata !DIExpression()), !dbg !5299
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4788, metadata !DIExpression()), !dbg !5301
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4790, metadata !DIExpression()), !dbg !5302
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5309, metadata !DIExpression()), !dbg !5310
  br label %do.body, !dbg !5311

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5312

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5313, metadata !DIExpression()), !dbg !5315
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5316, metadata !DIExpression()), !dbg !5315
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5315
  %conv = zext i1 %cmp to i32, !dbg !5315
  store i32 1, i32* %tmp, align 4, !dbg !5315
  %0 = load i32, i32* %tmp, align 4, !dbg !5315
  br label %do.body2, !dbg !5317

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5318

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5319

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5321, metadata !DIExpression()), !dbg !5324
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5325, metadata !DIExpression()), !dbg !5324
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5324
  %conv8 = zext i1 %cmp7 to i32, !dbg !5324
  store i32 1, i32* %tmp9, align 4, !dbg !5324
  %1 = load i32, i32* %tmp9, align 4, !dbg !5324
  %call = call i64 @arch_local_irq_save() #9, !dbg !5326
  store i64 %call, i64* %flags, align 8, !dbg !5326
  br label %do.end, !dbg !5326

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5319

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5318

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5327, !srcloc !5328
  br label %do.body12, !dbg !5327

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @wdtpci_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5329
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !5330
  %rlock.i = bitcast %union.anon.4* %3 to %struct.raw_spinlock*, !dbg !5330
  br label %do.end14, !dbg !5331

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5327

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5318

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5317

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5312

do.end18:                                         ; preds = %do.end17
  %4 = load i64, i64* @io, align 8, !dbg !5332
  %add = add i64 %4, 7, !dbg !5332
  %conv19 = trunc i64 %add to i32, !dbg !5332
  %call20 = call zeroext i8 @inb(i32 %conv19) #9, !dbg !5333
  call void @__const_udelay(i64 34360) #9, !dbg !5334
  call void @wdtpci_ctr_load(i32 2, i32 0) #9, !dbg !5339
  %5 = load i64, i64* %flags, align 8, !dbg !5340
  store %struct.spinlock* @wdtpci_lock, %struct.spinlock** %lock.addr.i21, align 8
  store i64 %5, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !428, metadata !4843, metadata !DIExpression()) #6, !dbg !5341
  call void @llvm.dbg.declare(metadata !428, metadata !4847, metadata !DIExpression()) #6, !dbg !5341
  store i32 1, i32* %tmp.i, align 4, !dbg !5341
  %6 = load i32, i32* %tmp.i, align 4, !dbg !5341
  call void @llvm.dbg.declare(metadata !428, metadata !4848, metadata !DIExpression()) #6, !dbg !5342
  call void @llvm.dbg.declare(metadata !428, metadata !4854, metadata !DIExpression()) #6, !dbg !5342
  store i32 1, i32* %tmp8.i, align 4, !dbg !5342
  %7 = load i32, i32* %tmp8.i, align 4, !dbg !5342
  %8 = load i64, i64* %flags.addr.i, align 8, !dbg !5343
  call void @arch_local_irq_restore(i64 %8) #11, !dbg !5343
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5344, !srcloc !4858
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i21, align 8, !dbg !5345
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !5345
  %rlock.i22 = bitcast %union.anon.4* %10 to %struct.raw_spinlock*, !dbg !5345
  ret i32 0, !dbg !5346
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #2 !dbg !5347 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5350, metadata !DIExpression()), !dbg !5352
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5354, metadata !DIExpression()), !dbg !5355
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5356, metadata !DIExpression()), !dbg !5358
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5360, metadata !DIExpression()), !dbg !5361
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5362, metadata !DIExpression()), !dbg !5363
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5364, metadata !DIExpression()), !dbg !5365
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5366
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5367
  %div = sdiv i64 %1, 64, !dbg !5367
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5368
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5366
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5369
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5370
  %conv.i = trunc i64 %4 to i32, !dbg !5370
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !5371
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5372
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5372
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #11, !dbg !5372
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5373
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5374
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5375
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #6, !dbg !5377
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !5378

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !5379
  %12 = bitcast i64* %11 to i8*, !dbg !5379
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5379
  %shr.i = ashr i64 %13, 3, !dbg !5379
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !5379
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !5381
  %and.i = and i64 %14, 7, !dbg !5381
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !5381
  %shl.i = shl i32 1, %sh_prom.i, !dbg !5381
  %neg.i = xor i32 %shl.i, -1, !dbg !5382
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #6, !dbg !5383, !srcloc !5384
  br label %arch_clear_bit.exit, !dbg !5385

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5386
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5388
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #6, !dbg !5389, !srcloc !5390
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5391
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @wdtpci_notify_sys(%struct.notifier_block* %this, i64 %code, i8* %unused) #2 !dbg !5392 {
entry:
  %this.addr = alloca %struct.notifier_block*, align 8
  %code.addr = alloca i64, align 8
  %unused.addr = alloca i8*, align 8
  store %struct.notifier_block* %this, %struct.notifier_block** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %this.addr, metadata !5393, metadata !DIExpression()), !dbg !5394
  store i64 %code, i64* %code.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %code.addr, metadata !5395, metadata !DIExpression()), !dbg !5396
  store i8* %unused, i8** %unused.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %unused.addr, metadata !5397, metadata !DIExpression()), !dbg !5398
  %0 = load i64, i64* %code.addr, align 8, !dbg !5399
  %cmp = icmp eq i64 %0, 1, !dbg !5401
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5402

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %code.addr, align 8, !dbg !5403
  %cmp1 = icmp eq i64 %1, 2, !dbg !5404
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5405

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 @wdtpci_stop() #9, !dbg !5406
  br label %if.end, !dbg !5406

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret i32 0, !dbg !5407
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @wdtpci_temp_read(%struct.file* %file, i8* %buf, i64 %count, i64* %ptr) #2 !dbg !5408 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4568, metadata !DIExpression()), !dbg !5409
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4582, metadata !DIExpression()), !dbg !5413
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4584, metadata !DIExpression()), !dbg !5414
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4586, metadata !DIExpression()), !dbg !5415
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4588, metadata !DIExpression()), !dbg !5416
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4592, metadata !DIExpression()), !dbg !5417
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4594, metadata !DIExpression()), !dbg !5418
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4596, metadata !DIExpression()), !dbg !5419
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %ptr.addr = alloca i64*, align 8
  %temperature = alloca i32, align 4
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5420, metadata !DIExpression()), !dbg !5421
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5422, metadata !DIExpression()), !dbg !5423
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5424, metadata !DIExpression()), !dbg !5425
  store i64* %ptr, i64** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ptr.addr, metadata !5426, metadata !DIExpression()), !dbg !5427
  call void @llvm.dbg.declare(metadata i32* %temperature, metadata !5428, metadata !DIExpression()), !dbg !5429
  %call = call i32 @wdtpci_get_temperature(i32* %temperature) #9, !dbg !5430
  %tobool = icmp ne i32 %call, 0, !dbg !5430
  br i1 %tobool, label %if.then, label %if.end, !dbg !5432

if.then:                                          ; preds = %entry
  store i64 -14, i64* %retval, align 8, !dbg !5433
  br label %return, !dbg !5433

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !5434
  %1 = bitcast i32* %temperature to i8*, !dbg !5435
  store i8* %0, i8** %to.addr.i, align 8
  store i8* %1, i8** %from.addr.i, align 8
  store i64 1, i64* %n.addr.i, align 8
  %2 = load i8*, i8** %from.addr.i, align 8, !dbg !5436
  %3 = load i64, i64* %n.addr.i, align 8, !dbg !5436
  store i8* %2, i8** %addr.addr.i.i, align 8
  store i64 %3, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !5415
  %4 = load i32, i32* %sz.i.i, align 4, !dbg !5437
  %cmp.i.i = icmp sge i32 %4, 0, !dbg !5437
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !5437

land.rhs.i.i:                                     ; preds = %if.end
  %5 = load i32, i32* %sz.i.i, align 4, !dbg !5437
  %conv.i.i = sext i32 %5 to i64, !dbg !5437
  %6 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5437
  %cmp1.i.i = icmp ult i64 %conv.i.i, %6, !dbg !5437
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end
  %7 = phi i1 [ false, %if.end ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !5438
  %lnot.i.i = xor i1 %7, true, !dbg !5437
  %lnot.ext.i.i = zext i1 %7 to i32, !dbg !5437
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5437
  br i1 %7, label %if.then.i.i, label %if.end10.i.i, !dbg !5439

if.then.i.i:                                      ; preds = %land.end.i.i
  %8 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5440
  %9 = call i1 @llvm.is.constant.i64(i64 %8) #6, !dbg !5441
  br i1 %9, label %if.else.i.i, label %if.then5.i.i, !dbg !5442

if.then5.i.i:                                     ; preds = %if.then.i.i
  %10 = load i32, i32* %sz.i.i, align 4, !dbg !5443
  %11 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5444
  call void @copy_overflow(i32 %10, i64 %11) #11, !dbg !5445
  br label %if.end9.i.i, !dbg !5445

if.else.i.i:                                      ; preds = %if.then.i.i
  %12 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5446
  %tobool6.i.i = trunc i8 %12 to i1, !dbg !5446
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !5447

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #11, !dbg !5448
  br label %if.end.i.i, !dbg !5448

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #11, !dbg !5449
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5450
  br label %check_copy_size.exit.i, !dbg !5450

if.end10.i.i:                                     ; preds = %land.end.i.i
  %13 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5416
  %cmp11.i.i = icmp ugt i64 %13, 2147483647, !dbg !5416
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !5416
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !5416
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !5416
  %14 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5451
  %tobool17.i.i = icmp ne i32 %14, 0, !dbg !5451
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !5451
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !5451
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !5451
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !5416

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i32 150, i32 2307, i64 12) #6, !dbg !5452, !srcloc !4668
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #6, !dbg !5453, !srcloc !4671
  br label %if.end31.i.i, !dbg !5454

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %15 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5416
  %tobool32.i.i = icmp ne i32 %15, 0, !dbg !5416
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !5416
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !5416
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !5416
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !5451
  %16 = load i64, i64* %tmp.i.i, align 8, !dbg !5416
  %tobool38.i.i = icmp ne i64 %16, 0, !dbg !5455
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !5456

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5457
  br label %check_copy_size.exit.i, !dbg !5457

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %17 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !5458
  %18 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5459
  %19 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5460
  %tobool41.i.i = trunc i8 %19 to i1, !dbg !5460
  call void @check_object_size(i8* %17, i64 %18, i1 zeroext %tobool41.i.i) #11, !dbg !5461
  store i1 true, i1* %retval.i.i, align 1, !dbg !5462
  br label %check_copy_size.exit.i, !dbg !5462

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %20 = load i1, i1* %retval.i.i, align 1, !dbg !5463
  %lnot.i = xor i1 %20, true, !dbg !5436
  %lnot.ext.i = zext i1 %20 to i32, !dbg !5436
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !5436
  br i1 %20, label %if.then.i, label %copy_to_user.exit, !dbg !5464

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %21 = load i8*, i8** %to.addr.i, align 8, !dbg !5465
  %22 = load i8*, i8** %from.addr.i, align 8, !dbg !5466
  %23 = load i64, i64* %n.addr.i, align 8, !dbg !5467
  %call2.i = call i64 @_copy_to_user(i8* %21, i8* %22, i64 %23) #11, !dbg !5468
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !5469
  br label %copy_to_user.exit, !dbg !5470

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %24 = load i64, i64* %n.addr.i, align 8, !dbg !5471
  %tobool2 = icmp ne i64 %24, 0, !dbg !5472
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5473

if.then3:                                         ; preds = %copy_to_user.exit
  store i64 -14, i64* %retval, align 8, !dbg !5474
  br label %return, !dbg !5474

if.end4:                                          ; preds = %copy_to_user.exit
  store i64 1, i64* %retval, align 8, !dbg !5475
  br label %return, !dbg !5475

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %25 = load i64, i64* %retval, align 8, !dbg !5476
  ret i64 %25, !dbg !5476
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @wdtpci_temp_open(%struct.inode* %inode, %struct.file* %file) #2 !dbg !5477 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5478, metadata !DIExpression()), !dbg !5479
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5480, metadata !DIExpression()), !dbg !5481
  %0 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !5482
  %1 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5483
  %call = call i32 @stream_open(%struct.inode* %0, %struct.file* %1) #9, !dbg !5484
  ret i32 %call, !dbg !5485
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @wdtpci_temp_release(%struct.inode* %inode, %struct.file* %file) #2 !dbg !5486 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5487, metadata !DIExpression()), !dbg !5488
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5489, metadata !DIExpression()), !dbg !5490
  ret i32 0, !dbg !5491
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @wdtpci_get_temperature(i32* %temperature) #2 !dbg !5492 {
entry:
  %lock.addr.i24 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i24, metadata !4782, metadata !DIExpression()), !dbg !5493
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4788, metadata !DIExpression()), !dbg !5495
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4790, metadata !DIExpression()), !dbg !5496
  %temperature.addr = alloca i32*, align 8
  %c = alloca i16, align 2
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store i32* %temperature, i32** %temperature.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %temperature.addr, metadata !5503, metadata !DIExpression()), !dbg !5504
  call void @llvm.dbg.declare(metadata i16* %c, metadata !5505, metadata !DIExpression()), !dbg !5506
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5507, metadata !DIExpression()), !dbg !5508
  br label %do.body, !dbg !5509

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5510

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5511, metadata !DIExpression()), !dbg !5513
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5514, metadata !DIExpression()), !dbg !5513
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5513
  %conv = zext i1 %cmp to i32, !dbg !5513
  store i32 1, i32* %tmp, align 4, !dbg !5513
  %0 = load i32, i32* %tmp, align 4, !dbg !5513
  br label %do.body2, !dbg !5515

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5516

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5517

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5519, metadata !DIExpression()), !dbg !5522
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5523, metadata !DIExpression()), !dbg !5522
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5522
  %conv8 = zext i1 %cmp7 to i32, !dbg !5522
  store i32 1, i32* %tmp9, align 4, !dbg !5522
  %1 = load i32, i32* %tmp9, align 4, !dbg !5522
  %call = call i64 @arch_local_irq_save() #9, !dbg !5524
  store i64 %call, i64* %flags, align 8, !dbg !5524
  br label %do.end, !dbg !5524

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5517

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5516

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5525, !srcloc !5526
  br label %do.body12, !dbg !5525

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @wdtpci_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5527
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !5528
  %rlock.i = bitcast %union.anon.4* %3 to %struct.raw_spinlock*, !dbg !5528
  br label %do.end14, !dbg !5529

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5525

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5516

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5515

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5510

do.end18:                                         ; preds = %do.end17
  %4 = load i64, i64* @io, align 8, !dbg !5530
  %add = add i64 %4, 5, !dbg !5530
  %conv19 = trunc i64 %add to i32, !dbg !5530
  %call20 = call zeroext i8 @inb(i32 %conv19) #9, !dbg !5531
  %conv21 = zext i8 %call20 to i16, !dbg !5531
  store i16 %conv21, i16* %c, align 2, !dbg !5532
  call void @__const_udelay(i64 34360) #9, !dbg !5533
  %5 = load i64, i64* %flags, align 8, !dbg !5538
  store %struct.spinlock* @wdtpci_lock, %struct.spinlock** %lock.addr.i24, align 8
  store i64 %5, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !428, metadata !4843, metadata !DIExpression()) #6, !dbg !5539
  call void @llvm.dbg.declare(metadata !428, metadata !4847, metadata !DIExpression()) #6, !dbg !5539
  store i32 1, i32* %tmp.i, align 4, !dbg !5539
  %6 = load i32, i32* %tmp.i, align 4, !dbg !5539
  call void @llvm.dbg.declare(metadata !428, metadata !4848, metadata !DIExpression()) #6, !dbg !5540
  call void @llvm.dbg.declare(metadata !428, metadata !4854, metadata !DIExpression()) #6, !dbg !5540
  store i32 1, i32* %tmp8.i, align 4, !dbg !5540
  %7 = load i32, i32* %tmp8.i, align 4, !dbg !5540
  %8 = load i64, i64* %flags.addr.i, align 8, !dbg !5541
  call void @arch_local_irq_restore(i64 %8) #11, !dbg !5541
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5542, !srcloc !4858
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i24, align 8, !dbg !5543
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !5543
  %rlock.i25 = bitcast %union.anon.4* %10 to %struct.raw_spinlock*, !dbg !5543
  %11 = load i16, i16* %c, align 2, !dbg !5544
  %conv22 = zext i16 %11 to i32, !dbg !5544
  %mul = mul i32 %conv22, 11, !dbg !5545
  %div = sdiv i32 %mul, 15, !dbg !5546
  %add23 = add i32 %div, 7, !dbg !5547
  %12 = load i32*, i32** %temperature.addr, align 8, !dbg !5548
  store i32 %add23, i32* %12, align 4, !dbg !5549
  ret i32 0, !dbg !5550
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4209}
!llvm.module.flags = !{!4210, !4211, !4212, !4213}
!llvm.ident = !{!4214}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_heartbeat", scope: !2, file: !3, line: 72, type: !4206, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !104, globals: !118, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/watchdog/wdt_pci.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !99}
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !94, line: 11, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !100, line: 10, baseType: !7, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!101 = !{!102, !103}
!102 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!104 = !{!105, !108, !109, !110, !111, !112, !113, !115}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !107, line: 76, flags: DIFlagFwdDecl)
!107 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!108 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!109 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!110 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!112 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !109)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !117)
!117 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!118 = !{!119, !186, !191, !196, !198, !200, !205, !207, !212, !217, !219, !224, !229, !231, !238, !243, !248, !253, !258, !0, !260, !262, !267, !272, !277, !282, !284, !4156, !4159, !4161, !4163, !4165, !4167, !4181, !4183, !4185, !4187, !4189, !4202, !4204}
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "__param_heartbeat", scope: !2, file: !3, line: 72, type: !121, isLocal: true, isDefinition: true, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !123, line: 69, size: 320, elements: !124)
!123 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!124 = !{!125, !128, !129, !149, !156, !160, !164}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !122, file: !123, line: 70, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !122, file: !123, line: 71, baseType: !105, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !122, file: !123, line: 72, baseType: !130, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !123, line: 47, size: 256, elements: !133)
!133 = !{!134, !135, !140, !145}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !132, file: !123, line: 49, baseType: !7, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !132, file: !123, line: 51, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!112, !126, !139}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !132, file: !123, line: 53, baseType: !141, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!112, !144, !139}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !132, file: !123, line: 55, baseType: !146, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !111}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !122, file: !123, line: 73, baseType: !150, size: 16, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !152, line: 19, baseType: !153)
!152 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !154, line: 24, baseType: !155)
!154 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!155 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !122, file: !123, line: 74, baseType: !157, size: 8, offset: 208)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !152, line: 16, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !154, line: 20, baseType: !159)
!159 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !122, file: !123, line: 75, baseType: !161, size: 8, offset: 216)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !152, line: 17, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !154, line: 21, baseType: !163)
!163 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!164 = !DIDerivedType(tag: DW_TAG_member, scope: !122, file: !123, line: 76, baseType: !165, size: 64, offset: 256)
!165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !122, file: !123, line: 76, size: 64, elements: !166)
!166 = !{!167, !168, !175}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !165, file: !123, line: 77, baseType: !111, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !165, file: !123, line: 78, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !123, line: 86, size: 128, elements: !172)
!172 = !{!173, !174}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !171, file: !123, line: 87, baseType: !7, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !171, file: !123, line: 88, baseType: !144, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !165, file: !123, line: 79, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !123, line: 92, size: 256, elements: !179)
!179 = !{!180, !181, !182, !184, !185}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !178, file: !123, line: 94, baseType: !7, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !178, file: !123, line: 95, baseType: !7, size: 32, offset: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !178, file: !123, line: 96, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !178, file: !123, line: 97, baseType: !130, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !178, file: !123, line: 98, baseType: !111, size: 64, offset: 192)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_heartbeattype234", scope: !2, file: !3, line: 72, type: !188, isLocal: true, isDefinition: true, align: 8)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 248, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 31)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_heartbeat235", scope: !2, file: !3, line: 73, type: !193, isLocal: true, isDefinition: true, align: 8)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 688, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 86)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "__param_nowayout", scope: !2, file: !3, line: 78, type: !121, isLocal: true, isDefinition: true, align: 64)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_nowayouttype236", scope: !2, file: !3, line: 78, type: !188, isLocal: true, isDefinition: true, align: 8)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_nowayout237", scope: !2, file: !3, line: 79, type: !202, isLocal: true, isDefinition: true, align: 8)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 592, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 74)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "__param_tachometer", scope: !2, file: !3, line: 85, type: !121, isLocal: true, isDefinition: true, align: 64)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_tachometertype238", scope: !2, file: !3, line: 85, type: !209, isLocal: true, isDefinition: true, align: 8)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 32)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_tachometer239", scope: !2, file: !3, line: 86, type: !214, isLocal: true, isDefinition: true, align: 8)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 648, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 81)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "__param_type", scope: !2, file: !3, line: 90, type: !121, isLocal: true, isDefinition: true, align: 64)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_typetype240", scope: !2, file: !3, line: 90, type: !221, isLocal: true, isDefinition: true, align: 8)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 208, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 26)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_type241", scope: !2, file: !3, line: 91, type: !226, isLocal: true, isDefinition: true, align: 8)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 528, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 66)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_wdtpci_driver_init242", scope: !2, file: !3, line: 738, type: !111, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "__exitcall_wdtpci_driver_exit", scope: !2, file: !3, line: 738, type: !233, isLocal: true, isDefinition: true)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !234, line: 117, baseType: !235)
!234 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{null}
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author243", scope: !2, file: !3, line: 740, type: !240, isLocal: true, isDefinition: true, align: 8)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 296, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 37)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description244", scope: !2, file: !3, line: 741, type: !245, isLocal: true, isDefinition: true, align: 8)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 552, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 69)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file245", scope: !2, file: !3, line: 742, type: !250, isLocal: true, isDefinition: true, align: 8)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 304, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 38)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license246", scope: !2, file: !3, line: 742, type: !255, isLocal: true, isDefinition: true, align: 8)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 160, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 20)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(name: "tachometer", scope: !2, file: !3, line: 84, type: !112, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "heartbeat", scope: !2, file: !3, line: 70, type: !112, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "__param_str_nowayout", scope: !2, file: !3, line: 78, type: !264, isLocal: true, isDefinition: true)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 136, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 17)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(name: "nowayout", scope: !2, file: !3, line: 77, type: !269, isLocal: true, isDefinition: true)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !270, line: 30, baseType: !271)
!270 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!271 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "__param_str_tachometer", scope: !2, file: !3, line: 85, type: !274, isLocal: true, isDefinition: true)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 152, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 19)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(name: "__param_str_type", scope: !2, file: !3, line: 90, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 104, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 13)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "type", scope: !2, file: !3, line: 89, type: !112, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(name: "wdtpci_driver", scope: !2, file: !3, line: 731, type: !286, isLocal: true, isDefinition: true)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !287, line: 858, size: 2048, elements: !288)
!287 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!288 = !{!289, !295, !296, !311, !4114, !4118, !4122, !4126, !4127, !4131, !4149, !4150, !4151}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !286, file: !287, line: 859, baseType: !290, size: 128)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !270, line: 178, size: 128, elements: !291)
!291 = !{!292, !294}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !290, file: !270, line: 179, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !290, file: !270, line: 179, baseType: !293, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !286, file: !287, line: 860, baseType: !126, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !286, file: !287, line: 861, baseType: !297, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !300, line: 38, size: 256, elements: !301)
!300 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!301 = !{!302, !304, !305, !306, !307, !308, !309}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !299, file: !300, line: 39, baseType: !303, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !154, line: 27, baseType: !7)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !299, file: !300, line: 39, baseType: !303, size: 32, offset: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !299, file: !300, line: 40, baseType: !303, size: 32, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !299, file: !300, line: 40, baseType: !303, size: 32, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !299, file: !300, line: 41, baseType: !303, size: 32, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !299, file: !300, line: 41, baseType: !303, size: 32, offset: 160)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !299, file: !300, line: 42, baseType: !310, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !300, line: 14, baseType: !110)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !286, file: !287, line: 862, baseType: !312, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!112, !315, !297}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !287, line: 309, size: 19264, elements: !317)
!317 = !{!318, !319, !3979, !3980, !3981, !3982, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4010, !4012, !4013, !4014, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4038, !4039, !4040, !4041, !4043, !4044, !4045, !4046, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4087, !4088, !4090, !4091, !4092, !4093, !4095, !4096, !4097, !4100, !4107, !4108, !4109, !4110, !4111, !4112, !4113}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !316, file: !287, line: 310, baseType: !290, size: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !316, file: !287, line: 311, baseType: !320, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !287, line: 605, size: 8064, elements: !322)
!322 = !{!323, !324, !325, !326, !327, !328, !329, !349, !350, !351, !377, !380, !381, !385, !386, !387, !388, !389, !393, !394, !396, !3975, !3976, !3977, !3978}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !321, file: !287, line: 606, baseType: !290, size: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !321, file: !287, line: 607, baseType: !320, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !321, file: !287, line: 608, baseType: !290, size: 128, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !321, file: !287, line: 609, baseType: !290, size: 128, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !321, file: !287, line: 610, baseType: !315, size: 64, offset: 448)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !321, file: !287, line: 611, baseType: !290, size: 128, offset: 512)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !321, file: !287, line: 613, baseType: !330, size: 256, offset: 640)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 256, elements: !347)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !333, line: 20, size: 512, elements: !334)
!333 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!334 = !{!335, !340, !341, !342, !343, !344, !345, !346}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !332, file: !333, line: 21, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !270, line: 158, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !270, line: 153, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !152, line: 23, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !154, line: 31, baseType: !108)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !332, file: !333, line: 22, baseType: !336, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !332, file: !333, line: 23, baseType: !126, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !333, line: 24, baseType: !110, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !332, file: !333, line: 25, baseType: !110, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !332, file: !333, line: 26, baseType: !331, size: 64, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !332, file: !333, line: 26, baseType: !331, size: 64, offset: 384)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !332, file: !333, line: 26, baseType: !331, size: 64, offset: 448)
!347 = !{!348}
!348 = !DISubrange(count: 4)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !321, file: !287, line: 614, baseType: !290, size: 128, offset: 896)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !321, file: !287, line: 615, baseType: !332, size: 512, offset: 1024)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !321, file: !287, line: 617, baseType: !352, size: 64, offset: 1536)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !287, line: 731, size: 320, elements: !354)
!354 = !{!355, !359, !363, !367, !373}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !353, file: !287, line: 732, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!112, !320}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !353, file: !287, line: 733, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !320}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !353, file: !287, line: 734, baseType: !364, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!111, !320, !7, !112}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !353, file: !287, line: 735, baseType: !368, size: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!112, !320, !7, !112, !112, !371}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !152, line: 21, baseType: !303)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !353, file: !287, line: 736, baseType: !374, size: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!112, !320, !7, !112, !112, !372}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !321, file: !287, line: 618, baseType: !378, size: 64, offset: 1600)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !287, line: 537, flags: DIFlagFwdDecl)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !321, file: !287, line: 619, baseType: !111, size: 64, offset: 1664)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !321, file: !287, line: 620, baseType: !382, size: 64, offset: 1728)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !384, line: 123, flags: DIFlagFwdDecl)
!384 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!385 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !321, file: !287, line: 622, baseType: !163, size: 8, offset: 1792)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !321, file: !287, line: 623, baseType: !163, size: 8, offset: 1800)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !321, file: !287, line: 624, baseType: !163, size: 8, offset: 1808)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !321, file: !287, line: 625, baseType: !163, size: 8, offset: 1816)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !321, file: !287, line: 630, baseType: !390, size: 384, offset: 1824)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 384, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 48)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !321, file: !287, line: 632, baseType: !155, size: 16, offset: 2208)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !321, file: !287, line: 633, baseType: !395, size: 16, offset: 2224)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !287, line: 237, baseType: !155)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !321, file: !287, line: 634, baseType: !397, size: 64, offset: 2240)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !399)
!399 = !{!400, !3531, !3532, !3535, !3536, !3587, !3676, !3677, !3678, !3679, !3680, !3689, !3794, !3807, !3810, !3811, !3815, !3817, !3818, !3819, !3823, !3829, !3830, !3833, !3837, !3927, !3928, !3929, !3930, !3931, !3963, !3964, !3965, !3968, !3971, !3972, !3973, !3974}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !398, file: !73, line: 462, baseType: !401, size: 512)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !402, line: 64, size: 512, elements: !403)
!402 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!403 = !{!404, !405, !406, !408, !467, !3382, !3521, !3526, !3527, !3528, !3529, !3530}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !401, file: !402, line: 65, baseType: !126, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !401, file: !402, line: 66, baseType: !290, size: 128, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !401, file: !402, line: 67, baseType: !407, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !401, file: !402, line: 68, baseType: !409, size: 64, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !402, line: 192, size: 704, elements: !411)
!411 = !{!412, !413, !429, !430}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !410, file: !402, line: 193, baseType: !290, size: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !410, file: !402, line: 194, baseType: !414, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !415, line: 83, baseType: !416)
!415 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !415, line: 71, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !415, line: 72, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !415, line: 72, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !419, file: !415, line: 73, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !415, line: 20, elements: !423)
!423 = !{!424}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !422, file: !415, line: 21, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !426, line: 25, baseType: !427)
!426 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !426, line: 25, elements: !428)
!428 = !{}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !410, file: !402, line: 195, baseType: !401, size: 512, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !410, file: !402, line: 196, baseType: !431, size: 64, offset: 640)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !402, line: 156, size: 192, elements: !434)
!434 = !{!435, !440, !445}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !433, file: !402, line: 157, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!112, !409, !407}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !433, file: !402, line: 158, baseType: !441, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!126, !409, !407}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !433, file: !402, line: 159, baseType: !446, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!112, !409, !407, !450}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !402, line: 148, size: 20736, elements: !452)
!452 = !{!453, !457, !461, !462, !466}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !451, file: !402, line: 149, baseType: !454, size: 192)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 192, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 3)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !451, file: !402, line: 150, baseType: !458, size: 4096, offset: 192)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 4096, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !451, file: !402, line: 151, baseType: !112, size: 32, offset: 4288)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !451, file: !402, line: 152, baseType: !463, size: 16384, offset: 4320)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 16384, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 2048)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !451, file: !402, line: 153, baseType: !112, size: 32, offset: 20704)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !401, file: !402, line: 69, baseType: !468, size: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !402, line: 138, size: 448, elements: !470)
!470 = !{!471, !475, !502, !504, !3344, !3372, !3376}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !469, file: !402, line: 139, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !407}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !469, file: !402, line: 140, baseType: !476, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !479, line: 230, size: 128, elements: !480)
!479 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!480 = !{!481, !495}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !478, file: !479, line: 231, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!485, !407, !489, !144}
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !270, line: 60, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !487, line: 73, baseType: !488)
!487 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !487, line: 15, baseType: !117)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !479, line: 30, size: 128, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !490, file: !479, line: 31, baseType: !126, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !490, file: !479, line: 32, baseType: !494, size: 16, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !270, line: 19, baseType: !155)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !478, file: !479, line: 232, baseType: !496, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!485, !407, !489, !126, !499}
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !270, line: 55, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !487, line: 72, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !487, line: 16, baseType: !110)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !469, file: !402, line: 141, baseType: !503, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !469, file: !402, line: 142, baseType: !505, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !479, line: 84, size: 320, elements: !509)
!509 = !{!510, !511, !515, !3341, !3342}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !508, file: !479, line: 85, baseType: !126, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !508, file: !479, line: 86, baseType: !512, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!494, !407, !489, !112}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !508, file: !479, line: 88, baseType: !516, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!494, !407, !519, !112}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !479, line: 168, size: 448, elements: !521)
!521 = !{!522, !523, !524, !525, !3336, !3337}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !520, file: !479, line: 169, baseType: !490, size: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !520, file: !479, line: 170, baseType: !499, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !520, file: !479, line: 171, baseType: !111, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !520, file: !479, line: 172, baseType: !526, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!485, !529, !407, !519, !144, !695, !499}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !531)
!531 = !{!532, !550, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3319, !3320, !3329, !3330, !3331, !3332, !3333, !3334, !3335}
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
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !270, line: 216, size: 128, align: 64, elements: !543)
!543 = !{!544, !546}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !542, file: !270, line: 217, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !542, file: !270, line: 218, baseType: !547, size: 64, offset: 64)
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
!561 = !{!562, !563, !573, !581, !582, !597, !3269, !3271, !3283, !3284, !3285, !3286, !3287, !3293, !3294, !3295}
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
!591 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !589, file: !557, line: 50, baseType: !372, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !589, file: !557, line: 50, baseType: !372, size: 32, offset: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !586, file: !557, line: 52, baseType: !338, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !583, file: !557, line: 54, baseType: !595, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !560, file: !557, line: 96, baseType: !598, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !600)
!600 = !{!601, !602, !603, !611, !618, !619, !762, !2972, !2973, !2974, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3237, !3245, !3246, !3247, !3265, !3266, !3267, !3268}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !599, file: !44, line: 611, baseType: !494, size: 16)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !599, file: !44, line: 612, baseType: !155, size: 16, offset: 16)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !599, file: !44, line: 613, baseType: !604, size: 32, offset: 32)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !605, line: 23, baseType: !606)
!605 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !605, line: 21, size: 32, elements: !607)
!607 = !{!608}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !606, file: !605, line: 22, baseType: !609, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !270, line: 32, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !487, line: 49, baseType: !7)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !599, file: !44, line: 614, baseType: !612, size: 32, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !605, line: 28, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !605, line: 26, size: 32, elements: !614)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !613, file: !605, line: 27, baseType: !616, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !270, line: 33, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !487, line: 50, baseType: !7)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !599, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !599, file: !44, line: 622, baseType: !620, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !623)
!623 = !{!624, !628, !638, !642, !648, !652, !656, !660, !664, !668, !672, !673, !679, !683, !709, !738, !742, !748, !753, !757, !758}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !622, file: !44, line: 1865, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!559, !598, !559, !7}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !622, file: !44, line: 1866, baseType: !629, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!126, !559, !598, !632}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !634, line: 10, size: 128, elements: !635)
!634 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !633, file: !634, line: 11, baseType: !146, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !633, file: !634, line: 12, baseType: !111, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !622, file: !44, line: 1867, baseType: !639, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!112, !598, !112}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !622, file: !44, line: 1868, baseType: !643, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!646, !598, !112}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !622, file: !44, line: 1870, baseType: !649, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!112, !559, !144, !112}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !622, file: !44, line: 1872, baseType: !653, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!112, !598, !559, !494, !269}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !622, file: !44, line: 1873, baseType: !657, size: 64, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!112, !559, !598, !559}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !622, file: !44, line: 1874, baseType: !661, size: 64, offset: 448)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!112, !598, !559}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !622, file: !44, line: 1875, baseType: !665, size: 64, offset: 512)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!112, !598, !559, !126}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !622, file: !44, line: 1876, baseType: !669, size: 64, offset: 576)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!112, !598, !559, !494}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !622, file: !44, line: 1877, baseType: !661, size: 64, offset: 640)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !622, file: !44, line: 1878, baseType: !674, size: 64, offset: 704)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!112, !598, !559, !494, !677}
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !270, line: 16, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !270, line: 13, baseType: !372)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !622, file: !44, line: 1879, baseType: !680, size: 64, offset: 768)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!112, !598, !559, !598, !559, !7}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !622, file: !44, line: 1881, baseType: !684, size: 64, offset: 832)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!112, !559, !687}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !689)
!689 = !{!690, !691, !692, !693, !694, !698, !706, !707, !708}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !688, file: !44, line: 220, baseType: !7, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !688, file: !44, line: 221, baseType: !494, size: 16, offset: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !688, file: !44, line: 222, baseType: !604, size: 32, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !688, file: !44, line: 223, baseType: !612, size: 32, offset: 96)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !688, file: !44, line: 224, baseType: !695, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !270, line: 46, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !487, line: 88, baseType: !697)
!697 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !688, file: !44, line: 225, baseType: !699, size: 128, offset: 192)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !700, line: 13, size: 128, elements: !701)
!700 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!701 = !{!702, !705}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !699, file: !700, line: 14, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !700, line: 8, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !154, line: 30, baseType: !697)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !699, file: !700, line: 15, baseType: !117, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !688, file: !44, line: 226, baseType: !699, size: 128, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !688, file: !44, line: 227, baseType: !699, size: 128, offset: 448)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !688, file: !44, line: 234, baseType: !529, size: 64, offset: 576)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !622, file: !44, line: 1882, baseType: !710, size: 64, offset: 896)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!112, !713, !715, !372, !7}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !717, line: 22, size: 1152, elements: !718)
!717 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!718 = !{!719, !720, !721, !722, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !716, file: !717, line: 23, baseType: !372, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !716, file: !717, line: 24, baseType: !494, size: 16, offset: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !716, file: !717, line: 25, baseType: !7, size: 32, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !716, file: !717, line: 26, baseType: !723, size: 32, offset: 96)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !270, line: 104, baseType: !372)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !716, file: !717, line: 27, baseType: !338, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !716, file: !717, line: 28, baseType: !338, size: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !716, file: !717, line: 37, baseType: !338, size: 64, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !716, file: !717, line: 38, baseType: !677, size: 32, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !716, file: !717, line: 39, baseType: !677, size: 32, offset: 352)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !716, file: !717, line: 40, baseType: !604, size: 32, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !716, file: !717, line: 41, baseType: !612, size: 32, offset: 416)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !716, file: !717, line: 42, baseType: !695, size: 64, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !716, file: !717, line: 43, baseType: !699, size: 128, offset: 512)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !716, file: !717, line: 44, baseType: !699, size: 128, offset: 640)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !716, file: !717, line: 45, baseType: !699, size: 128, offset: 768)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !716, file: !717, line: 46, baseType: !699, size: 128, offset: 896)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !716, file: !717, line: 47, baseType: !338, size: 64, offset: 1024)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !716, file: !717, line: 48, baseType: !338, size: 64, offset: 1088)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !622, file: !44, line: 1883, baseType: !739, size: 64, offset: 960)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!485, !559, !144, !499}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !622, file: !44, line: 1884, baseType: !743, size: 64, offset: 1024)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!112, !598, !746, !338, !338}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !622, file: !44, line: 1886, baseType: !749, size: 64, offset: 1088)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!112, !598, !752, !112}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !622, file: !44, line: 1887, baseType: !754, size: 64, offset: 1152)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!112, !598, !559, !529, !7, !494}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !622, file: !44, line: 1890, baseType: !669, size: 64, offset: 1216)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !622, file: !44, line: 1891, baseType: !759, size: 64, offset: 1280)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!112, !598, !646, !112}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !599, file: !44, line: 623, baseType: !763, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !765)
!765 = !{!766, !767, !768, !769, !770, !771, !818, !2580, !2662, !2745, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2761, !2765, !2766, !2769, !2770, !2773, !2774, !2775, !2816, !2842, !2843, !2844, !2845, !2846, !2847, !2850, !2852, !2859, !2860, !2862, !2863, !2864, !2923, !2924, !2939, !2940, !2941, !2942, !2943, !2946, !2947, !2948, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !764, file: !44, line: 1417, baseType: !290, size: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !764, file: !44, line: 1418, baseType: !677, size: 32, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !764, file: !44, line: 1419, baseType: !163, size: 8, offset: 160)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !764, file: !44, line: 1420, baseType: !110, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !764, file: !44, line: 1421, baseType: !695, size: 64, offset: 256)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !764, file: !44, line: 1422, baseType: !772, size: 64, offset: 320)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !774)
!774 = !{!775, !776, !777, !784, !788, !792, !796, !797, !798, !808, !811, !812, !813, !815, !816, !817}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !773, file: !44, line: 2229, baseType: !126, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !773, file: !44, line: 2230, baseType: !112, size: 32, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !773, file: !44, line: 2238, baseType: !778, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!112, !781}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !783, line: 28, flags: DIFlagFwdDecl)
!783 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!784 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !773, file: !44, line: 2239, baseType: !785, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !787)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !773, file: !44, line: 2240, baseType: !789, size: 64, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!559, !772, !112, !126, !111}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !773, file: !44, line: 2242, baseType: !793, size: 64, offset: 320)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !763}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !773, file: !44, line: 2243, baseType: !105, size: 64, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !773, file: !44, line: 2244, baseType: !772, size: 64, offset: 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !773, file: !44, line: 2245, baseType: !799, size: 64, offset: 512)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !270, line: 182, size: 64, elements: !800)
!800 = !{!801}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !799, file: !270, line: 183, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !270, line: 186, size: 128, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !803, file: !270, line: 187, baseType: !802, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !803, file: !270, line: 187, baseType: !807, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !773, file: !44, line: 2247, baseType: !809, offset: 576)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !810, line: 187, elements: !428)
!810 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!811 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !773, file: !44, line: 2248, baseType: !809, offset: 576)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !773, file: !44, line: 2249, baseType: !809, offset: 576)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !773, file: !44, line: 2250, baseType: !814, offset: 576)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !809, elements: !455)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !773, file: !44, line: 2252, baseType: !809, offset: 576)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !773, file: !44, line: 2253, baseType: !809, offset: 576)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !773, file: !44, line: 2254, baseType: !809, offset: 576)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !764, file: !44, line: 1423, baseType: !819, size: 64, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !821)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !822)
!822 = !{!823, !827, !831, !832, !836, !842, !846, !847, !848, !852, !856, !857, !858, !859, !865, !870, !871, !878, !879, !880, !881, !2564, !2579}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !821, file: !44, line: 1936, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!598, !763}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !821, file: !44, line: 1937, baseType: !828, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !598}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !821, file: !44, line: 1938, baseType: !828, size: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !821, file: !44, line: 1940, baseType: !833, size: 64, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !598, !112}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !821, file: !44, line: 1941, baseType: !837, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!112, !598, !840}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 289, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !821, file: !44, line: 1942, baseType: !843, size: 64, offset: 320)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!112, !598}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !821, file: !44, line: 1943, baseType: !828, size: 64, offset: 384)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !821, file: !44, line: 1944, baseType: !793, size: 64, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !821, file: !44, line: 1945, baseType: !849, size: 64, offset: 512)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!112, !763, !112}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !821, file: !44, line: 1946, baseType: !853, size: 64, offset: 576)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!112, !763}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !821, file: !44, line: 1947, baseType: !853, size: 64, offset: 640)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !821, file: !44, line: 1948, baseType: !853, size: 64, offset: 704)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !821, file: !44, line: 1949, baseType: !853, size: 64, offset: 768)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !821, file: !44, line: 1950, baseType: !860, size: 64, offset: 832)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!112, !559, !863}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !821, file: !44, line: 1951, baseType: !866, size: 64, offset: 896)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!112, !763, !869, !144}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !821, file: !44, line: 1952, baseType: !793, size: 64, offset: 960)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !821, file: !44, line: 1954, baseType: !872, size: 64, offset: 1024)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!112, !875, !559}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !877, line: 539, flags: DIFlagFwdDecl)
!877 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!878 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !821, file: !44, line: 1955, baseType: !872, size: 64, offset: 1088)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !821, file: !44, line: 1956, baseType: !872, size: 64, offset: 1152)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !821, file: !44, line: 1957, baseType: !872, size: 64, offset: 1216)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !821, file: !44, line: 1963, baseType: !882, size: 64, offset: 1280)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!112, !763, !885, !908}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !887, line: 68, size: 512, align: 128, elements: !888)
!887 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!888 = !{!889, !890, !2556, !2563}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !886, file: !887, line: 69, baseType: !110, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !886, file: !887, line: 77, baseType: !891, size: 320, offset: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !886, file: !887, line: 77, size: 320, elements: !892)
!892 = !{!893, !1079, !1084, !1112, !1120, !1126, !2487, !2555}
!893 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !887, line: 78, baseType: !894, size: 320)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !891, file: !887, line: 78, size: 320, elements: !895)
!895 = !{!896, !897, !1077, !1078}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !894, file: !887, line: 84, baseType: !290, size: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !894, file: !887, line: 86, baseType: !898, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !900)
!900 = !{!901, !902, !910, !911, !916, !931, !947, !948, !949, !950, !1070, !1071, !1074, !1075, !1076}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !899, file: !44, line: 452, baseType: !598, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !899, file: !44, line: 453, baseType: !903, size: 128, offset: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !904, line: 292, size: 128, elements: !905)
!904 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!905 = !{!906, !907, !909}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !903, file: !904, line: 293, baseType: !414)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !903, file: !904, line: 295, baseType: !908, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !270, line: 148, baseType: !7)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !903, file: !904, line: 296, baseType: !111, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !899, file: !44, line: 454, baseType: !908, size: 32, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !899, file: !44, line: 455, baseType: !912, size: 32, offset: 224)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !270, line: 168, baseType: !913)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !270, line: 166, size: 32, elements: !914)
!914 = !{!915}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !913, file: !270, line: 167, baseType: !112, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !899, file: !44, line: 460, baseType: !917, size: 128, offset: 256)
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
!927 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !925, file: !918, line: 25, baseType: !110, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !925, file: !918, line: 26, baseType: !924, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !925, file: !918, line: 27, baseType: !924, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !917, file: !918, line: 127, baseType: !924, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !899, file: !44, line: 461, baseType: !932, size: 256, offset: 384)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !933, line: 35, size: 256, elements: !934)
!933 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!934 = !{!935, !943, !944, !946}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !932, file: !933, line: 36, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !937, line: 13, baseType: !938)
!937 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !270, line: 175, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !270, line: 173, size: 64, elements: !940)
!940 = !{!941}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !939, file: !270, line: 174, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !152, line: 22, baseType: !704)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !932, file: !933, line: 42, baseType: !936, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !932, file: !933, line: 46, baseType: !945, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !415, line: 29, baseType: !422)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !932, file: !933, line: 47, baseType: !290, size: 128, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !899, file: !44, line: 462, baseType: !110, size: 64, offset: 640)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !899, file: !44, line: 463, baseType: !110, size: 64, offset: 704)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !899, file: !44, line: 464, baseType: !110, size: 64, offset: 768)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !899, file: !44, line: 465, baseType: !951, size: 64, offset: 832)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !953)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !954)
!954 = !{!955, !959, !963, !967, !971, !975, !981, !987, !991, !996, !1000, !1004, !1008, !1034, !1038, !1044, !1045, !1046, !1050, !1055, !1059, !1066}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !953, file: !44, line: 368, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!112, !885, !840}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !953, file: !44, line: 369, baseType: !960, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{!112, !529, !885}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !953, file: !44, line: 372, baseType: !964, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{!112, !898, !840}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !953, file: !44, line: 375, baseType: !968, size: 64, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!112, !885}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !953, file: !44, line: 381, baseType: !972, size: 64, offset: 256)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!112, !529, !898, !293, !7}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !953, file: !44, line: 383, baseType: !976, size: 64, offset: 320)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !979}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !953, file: !44, line: 385, baseType: !982, size: 64, offset: 384)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!112, !529, !898, !695, !7, !7, !985, !986}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !953, file: !44, line: 388, baseType: !988, size: 64, offset: 448)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!112, !529, !898, !695, !7, !7, !885, !111}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !953, file: !44, line: 393, baseType: !992, size: 64, offset: 512)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!995, !898, !995}
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !270, line: 125, baseType: !338)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !953, file: !44, line: 394, baseType: !997, size: 64, offset: 576)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{null, !885, !7, !7}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !953, file: !44, line: 395, baseType: !1001, size: 64, offset: 640)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!112, !885, !908}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !953, file: !44, line: 396, baseType: !1005, size: 64, offset: 704)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{null, !885}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !953, file: !44, line: 397, baseType: !1009, size: 64, offset: 768)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!485, !1012, !1032}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !1014)
!1014 = !{!1015, !1016, !1017, !1021, !1022, !1023, !1024, !1025}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1013, file: !44, line: 321, baseType: !529, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1013, file: !44, line: 326, baseType: !695, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1013, file: !44, line: 327, baseType: !1018, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null, !1012, !117, !117}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1013, file: !44, line: 328, baseType: !111, size: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1013, file: !44, line: 329, baseType: !112, size: 32, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1013, file: !44, line: 330, baseType: !151, size: 16, offset: 288)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1013, file: !44, line: 331, baseType: !151, size: 16, offset: 304)
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
!1037 = !{!112, !898, !885, !885, !5}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !953, file: !44, line: 404, baseType: !1039, size: 64, offset: 896)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!269, !885, !1042}
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1043, line: 305, baseType: !7)
!1043 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !953, file: !44, line: 405, baseType: !1005, size: 64, offset: 960)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !953, file: !44, line: 406, baseType: !968, size: 64, offset: 1024)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !953, file: !44, line: 407, baseType: !1047, size: 64, offset: 1088)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!112, !885, !110, !110}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !953, file: !44, line: 409, baseType: !1051, size: 64, offset: 1152)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{null, !885, !1054, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !953, file: !44, line: 410, baseType: !1056, size: 64, offset: 1216)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!112, !898, !885}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !953, file: !44, line: 413, baseType: !1060, size: 64, offset: 1280)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!112, !1063, !529, !1065}
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !953, file: !44, line: 415, baseType: !1067, size: 64, offset: 1344)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !529}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !899, file: !44, line: 466, baseType: !110, size: 64, offset: 896)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !899, file: !44, line: 467, baseType: !1072, size: 32, offset: 960)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1073, line: 8, baseType: !372)
!1073 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !899, file: !44, line: 468, baseType: !414, offset: 992)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !899, file: !44, line: 469, baseType: !290, size: 128, offset: 1024)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !899, file: !44, line: 470, baseType: !111, size: 64, offset: 1152)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !894, file: !887, line: 87, baseType: !110, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !894, file: !887, line: 94, baseType: !110, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !887, line: 96, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !891, file: !887, line: 96, size: 64, elements: !1081)
!1081 = !{!1082}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1080, file: !887, line: 101, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !270, line: 143, baseType: !338)
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !887, line: 103, baseType: !1085, size: 320)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !891, file: !887, line: 103, size: 320, elements: !1086)
!1086 = !{!1087, !1097, !1100, !1101}
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !887, line: 104, baseType: !1088, size: 128)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1085, file: !887, line: 104, size: 128, elements: !1089)
!1089 = !{!1090, !1091}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1088, file: !887, line: 105, baseType: !290, size: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !887, line: 106, baseType: !1092, size: 128)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !887, line: 106, size: 128, elements: !1093)
!1093 = !{!1094, !1095, !1096}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1092, file: !887, line: 107, baseType: !885, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1092, file: !887, line: 109, baseType: !112, size: 32, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1092, file: !887, line: 110, baseType: !112, size: 32, offset: 96)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1085, file: !887, line: 117, baseType: !1098, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !887, line: 117, flags: DIFlagFwdDecl)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1085, file: !887, line: 119, baseType: !111, size: 64, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !887, line: 120, baseType: !1102, size: 64, offset: 256)
!1102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1085, file: !887, line: 120, size: 64, elements: !1103)
!1103 = !{!1104, !1105, !1106}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1102, file: !887, line: 121, baseType: !111, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1102, file: !887, line: 122, baseType: !110, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !1102, file: !887, line: 123, baseType: !1107, size: 32)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1102, file: !887, line: 123, size: 32, elements: !1108)
!1108 = !{!1109, !1110, !1111}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1107, file: !887, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1107, file: !887, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1107, file: !887, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1112 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !887, line: 130, baseType: !1113, size: 192)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !891, file: !887, line: 130, size: 192, elements: !1114)
!1114 = !{!1115, !1116, !1117, !1118, !1119}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1113, file: !887, line: 131, baseType: !110, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1113, file: !887, line: 134, baseType: !163, size: 8, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1113, file: !887, line: 135, baseType: !163, size: 8, offset: 72)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1113, file: !887, line: 136, baseType: !912, size: 32, offset: 96)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1113, file: !887, line: 137, baseType: !7, size: 32, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !887, line: 139, baseType: !1121, size: 256)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !891, file: !887, line: 139, size: 256, elements: !1122)
!1122 = !{!1123, !1124, !1125}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1121, file: !887, line: 140, baseType: !110, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1121, file: !887, line: 141, baseType: !912, size: 32, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1121, file: !887, line: 143, baseType: !290, size: 128, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !887, line: 145, baseType: !1127, size: 256)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !891, file: !887, line: 145, size: 256, elements: !1128)
!1128 = !{!1129, !1130, !1132, !1133, !2486}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1127, file: !887, line: 146, baseType: !110, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1127, file: !887, line: 147, baseType: !1131, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !877, line: 509, baseType: !885)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1127, file: !887, line: 148, baseType: !110, size: 64, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !887, line: 149, baseType: !1134, size: 64, offset: 192)
!1134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1127, file: !887, line: 149, size: 64, elements: !1135)
!1135 = !{!1136, !2485}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1134, file: !887, line: 150, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !887, line: 388, size: 7296, elements: !1139)
!1139 = !{!1140, !2481}
!1140 = !DIDerivedType(tag: DW_TAG_member, scope: !1138, file: !887, line: 389, baseType: !1141, size: 7296)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1138, file: !887, line: 389, size: 7296, elements: !1142)
!1142 = !{!1143, !1261, !1262, !1263, !1267, !1268, !1269, !1270, !1271, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1312, !1318, !1321, !1367, !1368, !2465, !2466, !2469, !2470, !2471, !2474, !2475, !2476, !2479, !2480}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1141, file: !887, line: 390, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !887, line: 305, size: 1472, elements: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1161, !1162, !1167, !1168, !1171, !1255, !1256, !1257, !1258, !1259}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1145, file: !887, line: 308, baseType: !110, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1145, file: !887, line: 309, baseType: !110, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1145, file: !887, line: 313, baseType: !1144, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1145, file: !887, line: 313, baseType: !1144, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1145, file: !887, line: 315, baseType: !925, size: 192, align: 64, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1145, file: !887, line: 323, baseType: !110, size: 64, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1145, file: !887, line: 327, baseType: !1137, size: 64, offset: 512)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1145, file: !887, line: 333, baseType: !1155, size: 64, offset: 576)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !877, line: 284, baseType: !1156)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !877, line: 284, size: 64, elements: !1157)
!1157 = !{!1158}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1156, file: !877, line: 284, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1160, line: 19, baseType: !110)
!1160 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1145, file: !887, line: 334, baseType: !110, size: 64, offset: 640)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1145, file: !887, line: 343, baseType: !1163, size: 256, offset: 704)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1145, file: !887, line: 340, size: 256, elements: !1164)
!1164 = !{!1165, !1166}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1163, file: !887, line: 341, baseType: !925, size: 192, align: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1163, file: !887, line: 342, baseType: !110, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1145, file: !887, line: 351, baseType: !290, size: 128, offset: 960)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1145, file: !887, line: 353, baseType: !1169, size: 64, offset: 1088)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !887, line: 353, flags: DIFlagFwdDecl)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1145, file: !887, line: 356, baseType: !1172, size: 64, offset: 1152)
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
!1184 = !{!112, !1144, !110}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1174, file: !14, line: 561, baseType: !1186, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!112, !1144}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1174, file: !14, line: 562, baseType: !1190, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!1193, !1194}
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !887, line: 682, baseType: !7)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1196)
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1202, !1209, !1216, !1222, !1223, !1224, !1226, !1228}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1195, file: !14, line: 509, baseType: !1144, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1195, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1195, file: !14, line: 511, baseType: !908, size: 32, offset: 96)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1195, file: !14, line: 512, baseType: !110, size: 64, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1195, file: !14, line: 513, baseType: !110, size: 64, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1195, file: !14, line: 514, baseType: !1203, size: 64, offset: 256)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !877, line: 385, baseType: !1205)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !877, line: 385, size: 64, elements: !1206)
!1206 = !{!1207}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1205, file: !877, line: 385, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1160, line: 15, baseType: !110)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1195, file: !14, line: 516, baseType: !1210, size: 64, offset: 320)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !877, line: 359, baseType: !1212)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !877, line: 359, size: 64, elements: !1213)
!1213 = !{!1214}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1212, file: !877, line: 359, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1160, line: 16, baseType: !110)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1195, file: !14, line: 519, baseType: !1217, size: 64, offset: 384)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1160, line: 21, baseType: !1218)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1160, line: 21, size: 64, elements: !1219)
!1219 = !{!1220}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1218, file: !1160, line: 21, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1160, line: 14, baseType: !110)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1195, file: !14, line: 521, baseType: !885, size: 64, offset: 448)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1195, file: !14, line: 522, baseType: !885, size: 64, offset: 512)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1195, file: !14, line: 528, baseType: !1225, size: 64, offset: 576)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1195, file: !14, line: 532, baseType: !1227, size: 64, offset: 640)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1195, file: !14, line: 536, baseType: !1131, size: 64, offset: 704)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1174, file: !14, line: 563, baseType: !1230, size: 64, offset: 320)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!1193, !1194, !13}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1174, file: !14, line: 565, baseType: !1234, size: 64, offset: 384)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null, !1194, !110, !110}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1174, file: !14, line: 567, baseType: !1238, size: 64, offset: 448)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!110, !1144}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1174, file: !14, line: 571, baseType: !1190, size: 64, offset: 512)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1174, file: !14, line: 574, baseType: !1190, size: 64, offset: 576)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1174, file: !14, line: 579, baseType: !1244, size: 64, offset: 640)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!112, !1144, !110, !111, !112, !112}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1174, file: !14, line: 585, baseType: !1248, size: 64, offset: 704)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!126, !1144}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1174, file: !14, line: 615, baseType: !1252, size: 64, offset: 768)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!885, !1144, !110}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1145, file: !887, line: 359, baseType: !110, size: 64, offset: 1216)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1145, file: !887, line: 361, baseType: !529, size: 64, offset: 1280)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1145, file: !887, line: 362, baseType: !111, size: 64, offset: 1344)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1145, file: !887, line: 365, baseType: !936, size: 64, offset: 1408)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1145, file: !887, line: 373, baseType: !1260, offset: 1472)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !887, line: 296, elements: !428)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1141, file: !887, line: 391, baseType: !921, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1141, file: !887, line: 392, baseType: !338, size: 64, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1141, file: !887, line: 394, baseType: !1264, size: 64, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!110, !529, !110, !110, !110, !110}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1141, file: !887, line: 398, baseType: !110, size: 64, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1141, file: !887, line: 399, baseType: !110, size: 64, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1141, file: !887, line: 405, baseType: !110, size: 64, offset: 384)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1141, file: !887, line: 406, baseType: !110, size: 64, offset: 448)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1141, file: !887, line: 407, baseType: !1272, size: 64, offset: 512)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !877, line: 286, baseType: !1274)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !877, line: 286, size: 64, elements: !1275)
!1275 = !{!1276}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1274, file: !877, line: 286, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1160, line: 18, baseType: !110)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1141, file: !887, line: 416, baseType: !912, size: 32, offset: 576)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1141, file: !887, line: 428, baseType: !912, size: 32, offset: 608)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1141, file: !887, line: 437, baseType: !912, size: 32, offset: 640)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1141, file: !887, line: 447, baseType: !912, size: 32, offset: 672)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1141, file: !887, line: 450, baseType: !936, size: 64, offset: 704)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1141, file: !887, line: 452, baseType: !112, size: 32, offset: 768)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1141, file: !887, line: 454, baseType: !414, offset: 800)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1141, file: !887, line: 457, baseType: !932, size: 256, offset: 832)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1141, file: !887, line: 459, baseType: !290, size: 128, offset: 1088)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1141, file: !887, line: 466, baseType: !110, size: 64, offset: 1216)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1141, file: !887, line: 467, baseType: !110, size: 64, offset: 1280)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1141, file: !887, line: 469, baseType: !110, size: 64, offset: 1344)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1141, file: !887, line: 470, baseType: !110, size: 64, offset: 1408)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1141, file: !887, line: 471, baseType: !938, size: 64, offset: 1472)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1141, file: !887, line: 472, baseType: !110, size: 64, offset: 1536)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1141, file: !887, line: 473, baseType: !110, size: 64, offset: 1600)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1141, file: !887, line: 474, baseType: !110, size: 64, offset: 1664)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1141, file: !887, line: 475, baseType: !110, size: 64, offset: 1728)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1141, file: !887, line: 477, baseType: !414, offset: 1792)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1141, file: !887, line: 478, baseType: !110, size: 64, offset: 1792)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1141, file: !887, line: 478, baseType: !110, size: 64, offset: 1856)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1141, file: !887, line: 478, baseType: !110, size: 64, offset: 1920)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1141, file: !887, line: 478, baseType: !110, size: 64, offset: 1984)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1141, file: !887, line: 479, baseType: !110, size: 64, offset: 2048)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1141, file: !887, line: 479, baseType: !110, size: 64, offset: 2112)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1141, file: !887, line: 479, baseType: !110, size: 64, offset: 2176)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1141, file: !887, line: 480, baseType: !110, size: 64, offset: 2240)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1141, file: !887, line: 480, baseType: !110, size: 64, offset: 2304)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1141, file: !887, line: 480, baseType: !110, size: 64, offset: 2368)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1141, file: !887, line: 480, baseType: !110, size: 64, offset: 2432)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1141, file: !887, line: 482, baseType: !1309, size: 2816, offset: 2496)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 2816, elements: !1310)
!1310 = !{!1311}
!1311 = !DISubrange(count: 44)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1141, file: !887, line: 488, baseType: !1313, size: 256, offset: 5312)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1314, line: 60, size: 256, elements: !1315)
!1314 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1315 = !{!1316}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1313, file: !1314, line: 61, baseType: !1317, size: 256)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !936, size: 256, elements: !347)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1141, file: !887, line: 490, baseType: !1319, size: 64, offset: 5568)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !887, line: 490, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1141, file: !887, line: 493, baseType: !1322, size: 896, offset: 5632)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1323, line: 53, baseType: !1324)
!1323 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1323, line: 13, size: 896, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1329, !1332, !1333, !1340, !1341, !1361, !1362, !1363}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1324, file: !1323, line: 18, baseType: !338, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1324, file: !1323, line: 28, baseType: !938, size: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1324, file: !1323, line: 31, baseType: !932, size: 256, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1324, file: !1323, line: 32, baseType: !1330, size: 64, offset: 384)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1323, line: 32, flags: DIFlagFwdDecl)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1324, file: !1323, line: 37, baseType: !155, size: 16, offset: 448)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1324, file: !1323, line: 40, baseType: !1334, size: 192, offset: 512)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1335, line: 53, size: 192, elements: !1336)
!1335 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1336 = !{!1337, !1338, !1339}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1334, file: !1335, line: 54, baseType: !936, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1334, file: !1335, line: 55, baseType: !414, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1334, file: !1335, line: 59, baseType: !290, size: 128, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1324, file: !1323, line: 41, baseType: !111, size: 64, offset: 704)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1324, file: !1323, line: 42, baseType: !1342, size: 64, offset: 768)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1344)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1345, line: 13, size: 896, elements: !1346)
!1345 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1344, file: !1345, line: 14, baseType: !111, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1344, file: !1345, line: 15, baseType: !110, size: 64, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1344, file: !1345, line: 17, baseType: !110, size: 64, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1344, file: !1345, line: 17, baseType: !110, size: 64, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1344, file: !1345, line: 19, baseType: !117, size: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1344, file: !1345, line: 21, baseType: !117, size: 64, offset: 320)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1344, file: !1345, line: 22, baseType: !117, size: 64, offset: 384)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1344, file: !1345, line: 23, baseType: !117, size: 64, offset: 448)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1344, file: !1345, line: 24, baseType: !117, size: 64, offset: 512)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1344, file: !1345, line: 25, baseType: !117, size: 64, offset: 576)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1344, file: !1345, line: 26, baseType: !117, size: 64, offset: 640)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1344, file: !1345, line: 27, baseType: !117, size: 64, offset: 704)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1344, file: !1345, line: 28, baseType: !117, size: 64, offset: 768)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1344, file: !1345, line: 29, baseType: !117, size: 64, offset: 832)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1324, file: !1323, line: 44, baseType: !912, size: 32, offset: 832)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1324, file: !1323, line: 50, baseType: !151, size: 16, offset: 864)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1324, file: !1323, line: 51, baseType: !1364, size: 16, offset: 880)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !152, line: 18, baseType: !1365)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !154, line: 23, baseType: !1366)
!1366 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1141, file: !887, line: 495, baseType: !110, size: 64, offset: 6528)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1141, file: !887, line: 497, baseType: !1369, size: 64, offset: 6592)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !887, line: 381, size: 384, elements: !1371)
!1371 = !{!1372, !1373, !2464}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1370, file: !887, line: 382, baseType: !912, size: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1370, file: !887, line: 383, baseType: !1374, size: 128, offset: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !887, line: 376, size: 128, elements: !1375)
!1375 = !{!1376, !2462}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1374, file: !887, line: 377, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1379, line: 640, size: 48640, elements: !1380)
!1379 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1380 = !{!1381, !1387, !1388, !1389, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1406, !1424, !1435, !1518, !1519, !1520, !1531, !1532, !1534, !1535, !1536, !1537, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1615, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1653, !1655, !1656, !1657, !1669, !1670, !1671, !1672, !1673, !1674, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1698, !1703, !1887, !1888, !1889, !1890, !1894, !1897, !1900, !1903, !1906, !1910, !2011, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2055, !2056, !2057, !2058, !2059, !2064, !2065, !2066, !2069, !2070, !2073, !2076, !2079, !2082, !2125, !2128, !2129, !2208, !2209, !2212, !2213, !2216, !2217, !2218, !2222, !2223, !2224, !2237, !2238, !2239, !2249, !2254, !2257, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1378, file: !1379, line: 646, baseType: !1382, size: 128)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1383, line: 56, size: 128, elements: !1384)
!1383 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1384 = !{!1385, !1386}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1382, file: !1383, line: 57, baseType: !110, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1382, file: !1383, line: 58, baseType: !372, size: 32, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1378, file: !1379, line: 649, baseType: !116, size: 64, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1378, file: !1379, line: 657, baseType: !111, size: 64, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1378, file: !1379, line: 658, baseType: !1390, size: 32, offset: 256)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1391, line: 113, baseType: !1392)
!1391 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1391, line: 111, size: 32, elements: !1393)
!1393 = !{!1394}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1392, file: !1391, line: 112, baseType: !912, size: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1378, file: !1379, line: 660, baseType: !7, size: 32, offset: 288)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1378, file: !1379, line: 661, baseType: !7, size: 32, offset: 320)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1378, file: !1379, line: 684, baseType: !112, size: 32, offset: 352)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1378, file: !1379, line: 686, baseType: !112, size: 32, offset: 384)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1378, file: !1379, line: 687, baseType: !112, size: 32, offset: 416)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1378, file: !1379, line: 688, baseType: !112, size: 32, offset: 448)
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
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1410, file: !1379, line: 326, baseType: !110, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1410, file: !1379, line: 327, baseType: !372, size: 32, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1407, file: !1379, line: 454, baseType: !925, size: 192, align: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1407, file: !1379, line: 455, baseType: !290, size: 128, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1407, file: !1379, line: 456, baseType: !7, size: 32, offset: 448)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1407, file: !1379, line: 458, baseType: !338, size: 64, offset: 512)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1407, file: !1379, line: 459, baseType: !338, size: 64, offset: 576)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1407, file: !1379, line: 460, baseType: !338, size: 64, offset: 640)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1407, file: !1379, line: 461, baseType: !338, size: 64, offset: 704)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1407, file: !1379, line: 463, baseType: !338, size: 64, offset: 768)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1407, file: !1379, line: 465, baseType: !1423, offset: 832)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1379, line: 415, elements: !428)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1378, file: !1379, line: 693, baseType: !1425, size: 384, offset: 1408)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1379, line: 489, size: 384, elements: !1426)
!1426 = !{!1427, !1428, !1429, !1430, !1431, !1432, !1433}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1425, file: !1379, line: 490, baseType: !290, size: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1425, file: !1379, line: 491, baseType: !110, size: 64, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1425, file: !1379, line: 492, baseType: !110, size: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1425, file: !1379, line: 493, baseType: !7, size: 32, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1425, file: !1379, line: 494, baseType: !155, size: 16, offset: 288)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1425, file: !1379, line: 495, baseType: !155, size: 16, offset: 304)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1425, file: !1379, line: 497, baseType: !1434, size: 64, offset: 320)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1378, file: !1379, line: 697, baseType: !1436, size: 1792, offset: 1792)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1379, line: 507, size: 1792, elements: !1437)
!1437 = !{!1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1515, !1516}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1436, file: !1379, line: 508, baseType: !925, size: 192, align: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1436, file: !1379, line: 515, baseType: !338, size: 64, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1436, file: !1379, line: 516, baseType: !338, size: 64, offset: 256)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1436, file: !1379, line: 517, baseType: !338, size: 64, offset: 320)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1436, file: !1379, line: 518, baseType: !338, size: 64, offset: 384)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1436, file: !1379, line: 519, baseType: !338, size: 64, offset: 448)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1436, file: !1379, line: 526, baseType: !942, size: 64, offset: 512)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1436, file: !1379, line: 527, baseType: !338, size: 64, offset: 576)
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
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1455, file: !1456, line: 10, baseType: !925, size: 192, align: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1455, file: !1456, line: 11, baseType: !1460, size: 64, offset: 192)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1461, line: 29, baseType: !942)
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
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1474, file: !20, line: 215, baseType: !945)
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
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !270, line: 27, baseType: !1495)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !487, line: 96, baseType: !112)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1470, file: !20, line: 163, baseType: !1497, size: 32, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !565, line: 276, baseType: !1498)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !565, line: 276, size: 32, elements: !1499)
!1499 = !{!1500}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1498, file: !565, line: 276, baseType: !569, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1470, file: !20, line: 164, baseType: !1467, size: 64, offset: 192)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1470, file: !20, line: 165, baseType: !1503, size: 128, offset: 256)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1456, line: 14, size: 128, elements: !1504)
!1504 = !{!1505}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1503, file: !1456, line: 15, baseType: !917, size: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1470, file: !20, line: 166, baseType: !1507, size: 64, offset: 384)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!1460}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1470, file: !20, line: 167, baseType: !1460, size: 64, offset: 448)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1452, file: !20, line: 123, baseType: !161, size: 8, offset: 448)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1452, file: !20, line: 124, baseType: !161, size: 8, offset: 456)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1452, file: !20, line: 125, baseType: !161, size: 8, offset: 464)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1452, file: !20, line: 126, baseType: !161, size: 8, offset: 472)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1436, file: !1379, line: 572, baseType: !1452, size: 512, offset: 1216)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1436, file: !1379, line: 580, baseType: !1517, size: 64, offset: 1728)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1378, file: !1379, line: 721, baseType: !7, size: 32, offset: 3584)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1378, file: !1379, line: 722, baseType: !112, size: 32, offset: 3616)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1378, file: !1379, line: 723, baseType: !1521, size: 64, offset: 3648)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1523)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1524, line: 17, baseType: !1525)
!1524 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1524, line: 17, size: 64, elements: !1526)
!1526 = !{!1527}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1525, file: !1524, line: 17, baseType: !1528, size: 64)
!1528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 64, elements: !1529)
!1529 = !{!1530}
!1530 = !DISubrange(count: 1)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1378, file: !1379, line: 724, baseType: !1523, size: 64, offset: 3712)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1378, file: !1379, line: 749, baseType: !1533, offset: 3776)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1379, line: 290, elements: !428)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1378, file: !1379, line: 751, baseType: !290, size: 128, offset: 3776)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1378, file: !1379, line: 757, baseType: !1137, size: 64, offset: 3904)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1378, file: !1379, line: 758, baseType: !1137, size: 64, offset: 3968)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1378, file: !1379, line: 761, baseType: !1538, size: 320, offset: 4032)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1314, line: 34, size: 320, elements: !1539)
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1538, file: !1314, line: 35, baseType: !338, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1538, file: !1314, line: 36, baseType: !1542, size: 256, offset: 64)
!1542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1144, size: 256, elements: !347)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1378, file: !1379, line: 766, baseType: !112, size: 32, offset: 4352)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1378, file: !1379, line: 767, baseType: !112, size: 32, offset: 4384)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1378, file: !1379, line: 768, baseType: !112, size: 32, offset: 4416)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1378, file: !1379, line: 770, baseType: !112, size: 32, offset: 4448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1378, file: !1379, line: 772, baseType: !110, size: 64, offset: 4480)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1378, file: !1379, line: 775, baseType: !7, size: 32, offset: 4544)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1378, file: !1379, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1378, file: !1379, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1378, file: !1379, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1378, file: !1379, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1378, file: !1379, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1378, file: !1379, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1378, file: !1379, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1378, file: !1379, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1378, file: !1379, line: 831, baseType: !110, size: 64, offset: 4672)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1378, file: !1379, line: 833, baseType: !1559, size: 384, offset: 4736)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1560)
!1560 = !{!1561, !1566}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1559, file: !25, line: 26, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!117, !1565}
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !25, line: 27, baseType: !1567, size: 320, offset: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !25, line: 27, size: 320, elements: !1568)
!1568 = !{!1569, !1578, !1605}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1567, file: !25, line: 36, baseType: !1570, size: 320)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1567, file: !25, line: 29, size: 320, elements: !1571)
!1571 = !{!1572, !1573, !1574, !1575, !1576, !1577}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1570, file: !25, line: 30, baseType: !371, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1570, file: !25, line: 31, baseType: !372, size: 32, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1570, file: !25, line: 32, baseType: !372, size: 32, offset: 96)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1570, file: !25, line: 33, baseType: !372, size: 32, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1570, file: !25, line: 34, baseType: !338, size: 64, offset: 192)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1570, file: !25, line: 35, baseType: !371, size: 64, offset: 256)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1567, file: !25, line: 46, baseType: !1579, size: 192)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1567, file: !25, line: 38, size: 192, elements: !1580)
!1580 = !{!1581, !1582, !1583, !1604}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1579, file: !25, line: 39, baseType: !1494, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1579, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, scope: !1579, file: !25, line: 41, baseType: !1584, size: 64, offset: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1579, file: !25, line: 41, size: 64, elements: !1585)
!1585 = !{!1586, !1594}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1584, file: !25, line: 42, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1589, line: 7, size: 128, elements: !1590)
!1589 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1590 = !{!1591, !1593}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1588, file: !1589, line: 8, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !487, line: 93, baseType: !697)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1588, file: !1589, line: 9, baseType: !697, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1584, file: !25, line: 43, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1597, line: 7, size: 64, elements: !1598)
!1597 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1598 = !{!1599, !1603}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1596, file: !1597, line: 8, baseType: !1600, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1597, line: 5, baseType: !1601)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !152, line: 20, baseType: !1602)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !154, line: 26, baseType: !112)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1596, file: !1597, line: 9, baseType: !1601, size: 32, offset: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1579, file: !25, line: 45, baseType: !338, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1567, file: !25, line: 54, baseType: !1606, size: 256)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1567, file: !25, line: 48, size: 256, elements: !1607)
!1607 = !{!1608, !1611, !1612, !1613, !1614}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1606, file: !25, line: 49, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1606, file: !25, line: 50, baseType: !112, size: 32, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1606, file: !25, line: 51, baseType: !112, size: 32, offset: 96)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1606, file: !25, line: 52, baseType: !110, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1606, file: !25, line: 53, baseType: !110, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1378, file: !1379, line: 835, baseType: !1616, size: 32, offset: 5120)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !270, line: 22, baseType: !1617)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !487, line: 28, baseType: !112)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1378, file: !1379, line: 836, baseType: !1616, size: 32, offset: 5152)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1378, file: !1379, line: 840, baseType: !110, size: 64, offset: 5184)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1378, file: !1379, line: 849, baseType: !1377, size: 64, offset: 5248)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1378, file: !1379, line: 852, baseType: !1377, size: 64, offset: 5312)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1378, file: !1379, line: 857, baseType: !290, size: 128, offset: 5376)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1378, file: !1379, line: 858, baseType: !290, size: 128, offset: 5504)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1378, file: !1379, line: 859, baseType: !1377, size: 64, offset: 5632)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1378, file: !1379, line: 867, baseType: !290, size: 128, offset: 5696)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1378, file: !1379, line: 868, baseType: !290, size: 128, offset: 5824)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1378, file: !1379, line: 871, baseType: !1628, size: 64, offset: 5952)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1630)
!1630 = !{!1631, !1632, !1633, !1634, !1636, !1637, !1644, !1645}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1629, file: !53, line: 61, baseType: !1390, size: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1629, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1629, file: !53, line: 63, baseType: !414, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1629, file: !53, line: 65, baseType: !1635, size: 256, offset: 64)
!1635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !799, size: 256, elements: !347)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1629, file: !53, line: 66, baseType: !799, size: 64, offset: 320)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1629, file: !53, line: 68, baseType: !1638, size: 128, offset: 384)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1639, line: 40, baseType: !1640)
!1639 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1639, line: 36, size: 128, elements: !1641)
!1641 = !{!1642, !1643}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1640, file: !1639, line: 37, baseType: !414)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1640, file: !1639, line: 38, baseType: !290, size: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1629, file: !53, line: 69, baseType: !542, size: 128, align: 64, offset: 512)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1629, file: !53, line: 70, baseType: !1646, size: 128, offset: 640)
!1646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1647, size: 128, elements: !1529)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1648)
!1648 = !{!1649, !1650}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1647, file: !53, line: 55, baseType: !112, size: 32)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1647, file: !53, line: 56, baseType: !1651, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1378, file: !1379, line: 872, baseType: !1654, size: 512, offset: 6016)
!1654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 512, elements: !347)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1378, file: !1379, line: 873, baseType: !290, size: 128, offset: 6528)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1378, file: !1379, line: 874, baseType: !290, size: 128, offset: 6656)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1378, file: !1379, line: 876, baseType: !1658, size: 64, offset: 6784)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1660, line: 26, size: 192, elements: !1661)
!1660 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1661 = !{!1662, !1663}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1659, file: !1660, line: 27, baseType: !7, size: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1659, file: !1660, line: 28, baseType: !1664, size: 128, offset: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1665, line: 43, size: 128, elements: !1666)
!1665 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1666 = !{!1667, !1668}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1664, file: !1665, line: 44, baseType: !945)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1664, file: !1665, line: 45, baseType: !290, size: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1378, file: !1379, line: 879, baseType: !869, size: 64, offset: 6848)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1378, file: !1379, line: 882, baseType: !869, size: 64, offset: 6912)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1378, file: !1379, line: 884, baseType: !338, size: 64, offset: 6976)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1378, file: !1379, line: 885, baseType: !338, size: 64, offset: 7040)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1378, file: !1379, line: 890, baseType: !338, size: 64, offset: 7104)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1378, file: !1379, line: 891, baseType: !1675, size: 128, offset: 7168)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1379, line: 242, size: 128, elements: !1676)
!1676 = !{!1677, !1678, !1679}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1675, file: !1379, line: 244, baseType: !338, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1675, file: !1379, line: 245, baseType: !338, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1675, file: !1379, line: 246, baseType: !945, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1378, file: !1379, line: 900, baseType: !110, size: 64, offset: 7296)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1378, file: !1379, line: 901, baseType: !110, size: 64, offset: 7360)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1378, file: !1379, line: 904, baseType: !338, size: 64, offset: 7424)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1378, file: !1379, line: 907, baseType: !338, size: 64, offset: 7488)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1378, file: !1379, line: 910, baseType: !110, size: 64, offset: 7552)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1378, file: !1379, line: 911, baseType: !110, size: 64, offset: 7616)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1378, file: !1379, line: 914, baseType: !1687, size: 640, offset: 7680)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1688, line: 123, size: 640, elements: !1689)
!1688 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1689 = !{!1690, !1696, !1697}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1687, file: !1688, line: 124, baseType: !1691, size: 576)
!1691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1692, size: 576, elements: !455)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1688, line: 108, size: 192, elements: !1693)
!1693 = !{!1694, !1695}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1692, file: !1688, line: 109, baseType: !338, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1692, file: !1688, line: 110, baseType: !1503, size: 128, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1687, file: !1688, line: 125, baseType: !7, size: 32, offset: 576)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1687, file: !1688, line: 126, baseType: !7, size: 32, offset: 608)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1378, file: !1379, line: 917, baseType: !1699, size: 192, offset: 8320)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1688, line: 134, size: 192, elements: !1700)
!1700 = !{!1701, !1702}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1699, file: !1688, line: 135, baseType: !542, size: 128, align: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1699, file: !1688, line: 136, baseType: !7, size: 32, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1378, file: !1379, line: 923, baseType: !1704, size: 64, offset: 8512)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1706)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1707, line: 111, size: 1280, elements: !1708)
!1707 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1708 = !{!1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1728, !1729, !1730, !1731, !1732, !1733, !1840, !1841, !1842, !1843, !1869, !1872, !1882}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1706, file: !1707, line: 112, baseType: !912, size: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1706, file: !1707, line: 120, baseType: !604, size: 32, offset: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1706, file: !1707, line: 121, baseType: !612, size: 32, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1706, file: !1707, line: 122, baseType: !604, size: 32, offset: 96)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1706, file: !1707, line: 123, baseType: !612, size: 32, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1706, file: !1707, line: 124, baseType: !604, size: 32, offset: 160)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1706, file: !1707, line: 125, baseType: !612, size: 32, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1706, file: !1707, line: 126, baseType: !604, size: 32, offset: 224)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1706, file: !1707, line: 127, baseType: !612, size: 32, offset: 256)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1706, file: !1707, line: 128, baseType: !7, size: 32, offset: 288)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1706, file: !1707, line: 129, baseType: !1720, size: 64, offset: 320)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1721, line: 26, baseType: !1722)
!1721 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1721, line: 24, size: 64, elements: !1723)
!1723 = !{!1724}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1722, file: !1721, line: 25, baseType: !1725, size: 64)
!1725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 64, elements: !1726)
!1726 = !{!1727}
!1727 = !DISubrange(count: 2)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1706, file: !1707, line: 130, baseType: !1720, size: 64, offset: 384)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1706, file: !1707, line: 131, baseType: !1720, size: 64, offset: 448)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1706, file: !1707, line: 132, baseType: !1720, size: 64, offset: 512)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1706, file: !1707, line: 133, baseType: !1720, size: 64, offset: 576)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1706, file: !1707, line: 135, baseType: !163, size: 8, offset: 640)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1706, file: !1707, line: 137, baseType: !1734, size: 64, offset: 704)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1736, line: 189, size: 1664, elements: !1737)
!1736 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1737 = !{!1738, !1739, !1742, !1747, !1748, !1751, !1752, !1757, !1758, !1759, !1760, !1762, !1763, !1764, !1765, !1766, !1804, !1825}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1735, file: !1736, line: 190, baseType: !1390, size: 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1735, file: !1736, line: 191, baseType: !1740, size: 32, offset: 32)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1736, line: 28, baseType: !1741)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !270, line: 98, baseType: !1601)
!1742 = !DIDerivedType(tag: DW_TAG_member, scope: !1735, file: !1736, line: 192, baseType: !1743, size: 192, offset: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1735, file: !1736, line: 192, size: 192, elements: !1744)
!1744 = !{!1745, !1746}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1743, file: !1736, line: 193, baseType: !290, size: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1743, file: !1736, line: 194, baseType: !925, size: 192, align: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1735, file: !1736, line: 199, baseType: !932, size: 256, offset: 256)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1735, file: !1736, line: 200, baseType: !1749, size: 64, offset: 512)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1736, line: 200, flags: DIFlagFwdDecl)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1735, file: !1736, line: 201, baseType: !111, size: 64, offset: 576)
!1752 = !DIDerivedType(tag: DW_TAG_member, scope: !1735, file: !1736, line: 202, baseType: !1753, size: 64, offset: 640)
!1753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1735, file: !1736, line: 202, size: 64, elements: !1754)
!1754 = !{!1755, !1756}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1753, file: !1736, line: 203, baseType: !703, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1753, file: !1736, line: 204, baseType: !703, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1735, file: !1736, line: 206, baseType: !703, size: 64, offset: 704)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1735, file: !1736, line: 207, baseType: !604, size: 32, offset: 768)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1735, file: !1736, line: 208, baseType: !612, size: 32, offset: 800)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1735, file: !1736, line: 209, baseType: !1761, size: 32, offset: 832)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1736, line: 31, baseType: !723)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1735, file: !1736, line: 210, baseType: !155, size: 16, offset: 864)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1735, file: !1736, line: 211, baseType: !155, size: 16, offset: 880)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1735, file: !1736, line: 215, baseType: !1366, size: 16, offset: 896)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1735, file: !1736, line: 222, baseType: !110, size: 64, offset: 960)
!1766 = !DIDerivedType(tag: DW_TAG_member, scope: !1735, file: !1736, line: 239, baseType: !1767, size: 320, offset: 1024)
!1767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1735, file: !1736, line: 239, size: 320, elements: !1768)
!1768 = !{!1769, !1796}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1767, file: !1736, line: 240, baseType: !1770, size: 320)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1736, line: 108, size: 320, elements: !1771)
!1771 = !{!1772, !1773, !1785, !1788, !1795}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1770, file: !1736, line: 110, baseType: !110, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !1736, line: 111, baseType: !1774, size: 64, offset: 64)
!1774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1770, file: !1736, line: 111, size: 64, elements: !1775)
!1775 = !{!1776, !1784}
!1776 = !DIDerivedType(tag: DW_TAG_member, scope: !1774, file: !1736, line: 112, baseType: !1777, size: 64)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1774, file: !1736, line: 112, size: 64, elements: !1778)
!1778 = !{!1779, !1780}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1777, file: !1736, line: 114, baseType: !151, size: 16)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1777, file: !1736, line: 115, baseType: !1781, size: 48, offset: 16)
!1781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 48, elements: !1782)
!1782 = !{!1783}
!1783 = !DISubrange(count: 6)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1774, file: !1736, line: 121, baseType: !110, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1770, file: !1736, line: 123, baseType: !1786, size: 64, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1736, line: 96, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1770, file: !1736, line: 124, baseType: !1789, size: 64, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1736, line: 102, size: 192, elements: !1791)
!1791 = !{!1792, !1793, !1794}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1790, file: !1736, line: 103, baseType: !542, size: 128, align: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1790, file: !1736, line: 104, baseType: !1390, size: 32, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1790, file: !1736, line: 105, baseType: !269, size: 8, offset: 160)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1770, file: !1736, line: 125, baseType: !126, size: 64, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_member, scope: !1767, file: !1736, line: 241, baseType: !1797, size: 320)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1767, file: !1736, line: 241, size: 320, elements: !1798)
!1798 = !{!1799, !1800, !1801, !1802, !1803}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1797, file: !1736, line: 242, baseType: !110, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1797, file: !1736, line: 243, baseType: !110, size: 64, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1797, file: !1736, line: 244, baseType: !1786, size: 64, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1797, file: !1736, line: 245, baseType: !1789, size: 64, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1797, file: !1736, line: 246, baseType: !144, size: 64, offset: 256)
!1804 = !DIDerivedType(tag: DW_TAG_member, scope: !1735, file: !1736, line: 254, baseType: !1805, size: 256, offset: 1344)
!1805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1735, file: !1736, line: 254, size: 256, elements: !1806)
!1806 = !{!1807, !1813}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1805, file: !1736, line: 255, baseType: !1808, size: 256)
!1808 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1736, line: 128, size: 256, elements: !1809)
!1809 = !{!1810, !1811}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1808, file: !1736, line: 129, baseType: !111, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1808, file: !1736, line: 130, baseType: !1812, size: 256)
!1812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 256, elements: !347)
!1813 = !DIDerivedType(tag: DW_TAG_member, scope: !1805, file: !1736, line: 256, baseType: !1814, size: 256)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1805, file: !1736, line: 256, size: 256, elements: !1815)
!1815 = !{!1816, !1817}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1814, file: !1736, line: 258, baseType: !290, size: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1814, file: !1736, line: 259, baseType: !1818, size: 128, offset: 128)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1819, line: 22, size: 128, elements: !1820)
!1819 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1820 = !{!1821, !1824}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1818, file: !1819, line: 23, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1819, line: 23, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1818, file: !1819, line: 24, baseType: !110, size: 64, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1735, file: !1736, line: 274, baseType: !1826, size: 64, offset: 1600)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1736, line: 170, size: 192, elements: !1828)
!1828 = !{!1829, !1838, !1839}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1827, file: !1736, line: 171, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1736, line: 165, baseType: !1831)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!112, !1734, !1834, !1836, !1734}
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1787)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1808)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1827, file: !1736, line: 172, baseType: !1734, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1827, file: !1736, line: 173, baseType: !1786, size: 64, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1706, file: !1707, line: 138, baseType: !1734, size: 64, offset: 768)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1706, file: !1707, line: 139, baseType: !1734, size: 64, offset: 832)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1706, file: !1707, line: 140, baseType: !1734, size: 64, offset: 896)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1706, file: !1707, line: 145, baseType: !1844, size: 64, offset: 960)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1846, line: 13, size: 896, elements: !1847)
!1846 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1847 = !{!1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1845, file: !1846, line: 14, baseType: !1390, size: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1845, file: !1846, line: 15, baseType: !912, size: 32, offset: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1845, file: !1846, line: 16, baseType: !912, size: 32, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1845, file: !1846, line: 21, baseType: !936, size: 64, offset: 128)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1845, file: !1846, line: 27, baseType: !110, size: 64, offset: 192)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1845, file: !1846, line: 28, baseType: !110, size: 64, offset: 256)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1845, file: !1846, line: 29, baseType: !936, size: 64, offset: 320)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1845, file: !1846, line: 32, baseType: !803, size: 128, offset: 384)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1845, file: !1846, line: 33, baseType: !604, size: 32, offset: 512)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1845, file: !1846, line: 37, baseType: !936, size: 64, offset: 576)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1845, file: !1846, line: 44, baseType: !1859, size: 256, offset: 640)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1860, line: 15, size: 256, elements: !1861)
!1860 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1861 = !{!1862, !1863, !1864, !1865, !1866, !1867, !1868}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1859, file: !1860, line: 16, baseType: !945)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1859, file: !1860, line: 18, baseType: !112, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1859, file: !1860, line: 19, baseType: !112, size: 32, offset: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1859, file: !1860, line: 20, baseType: !112, size: 32, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1859, file: !1860, line: 21, baseType: !112, size: 32, offset: 96)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1859, file: !1860, line: 22, baseType: !110, size: 64, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1859, file: !1860, line: 23, baseType: !110, size: 64, offset: 192)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1706, file: !1707, line: 146, baseType: !1870, size: 64, offset: 1024)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !605, line: 18, flags: DIFlagFwdDecl)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1706, file: !1707, line: 147, baseType: !1873, size: 64, offset: 1088)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1707, line: 25, size: 64, elements: !1875)
!1875 = !{!1876, !1877, !1878}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1874, file: !1707, line: 26, baseType: !912, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1874, file: !1707, line: 27, baseType: !112, size: 32, offset: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1874, file: !1707, line: 28, baseType: !1879, offset: 64)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, elements: !1880)
!1880 = !{!1881}
!1881 = !DISubrange(count: 0)
!1882 = !DIDerivedType(tag: DW_TAG_member, scope: !1706, file: !1707, line: 149, baseType: !1883, size: 128, offset: 1152)
!1883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1706, file: !1707, line: 149, size: 128, elements: !1884)
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1883, file: !1707, line: 150, baseType: !112, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1883, file: !1707, line: 151, baseType: !542, size: 128, align: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1378, file: !1379, line: 926, baseType: !1704, size: 64, offset: 8576)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1378, file: !1379, line: 929, baseType: !1704, size: 64, offset: 8640)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1378, file: !1379, line: 933, baseType: !1734, size: 64, offset: 8704)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1378, file: !1379, line: 943, baseType: !1891, size: 128, offset: 8768)
!1891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 128, elements: !1892)
!1892 = !{!1893}
!1893 = !DISubrange(count: 16)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1378, file: !1379, line: 945, baseType: !1895, size: 64, offset: 8896)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1379, line: 49, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1378, file: !1379, line: 956, baseType: !1898, size: 64, offset: 8960)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1379, line: 45, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1378, file: !1379, line: 959, baseType: !1901, size: 64, offset: 9024)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1379, line: 959, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1378, file: !1379, line: 962, baseType: !1904, size: 64, offset: 9088)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1379, line: 66, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1378, file: !1379, line: 966, baseType: !1907, size: 64, offset: 9152)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1909, line: 35, flags: DIFlagFwdDecl)
!1909 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1378, file: !1379, line: 969, baseType: !1911, size: 64, offset: 9216)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1913, line: 82, size: 7296, elements: !1914)
!1913 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1914 = !{!1915, !1916, !1917, !1918, !1919, !1920, !1921, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1950, !1959, !1960, !1962, !1963, !1964, !1967, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1997, !1998, !2005, !2006, !2007, !2008, !2009, !2010}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1912, file: !1913, line: 83, baseType: !1390, size: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1912, file: !1913, line: 84, baseType: !912, size: 32, offset: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1912, file: !1913, line: 85, baseType: !112, size: 32, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1912, file: !1913, line: 86, baseType: !290, size: 128, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1912, file: !1913, line: 88, baseType: !1638, size: 128, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1912, file: !1913, line: 91, baseType: !1377, size: 64, offset: 384)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1912, file: !1913, line: 94, baseType: !1922, size: 192, offset: 448)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1923, line: 30, size: 192, elements: !1924)
!1923 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1924 = !{!1925, !1926}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1922, file: !1923, line: 31, baseType: !290, size: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1922, file: !1923, line: 32, baseType: !1927, size: 64, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1928, line: 25, baseType: !1929)
!1928 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1928, line: 23, size: 64, elements: !1930)
!1930 = !{!1931}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1929, file: !1928, line: 24, baseType: !1528, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1912, file: !1913, line: 97, baseType: !799, size: 64, offset: 640)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1912, file: !1913, line: 100, baseType: !112, size: 32, offset: 704)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1912, file: !1913, line: 106, baseType: !112, size: 32, offset: 736)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1912, file: !1913, line: 107, baseType: !1377, size: 64, offset: 768)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1912, file: !1913, line: 110, baseType: !112, size: 32, offset: 832)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1912, file: !1913, line: 111, baseType: !7, size: 32, offset: 864)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1912, file: !1913, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1912, file: !1913, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1912, file: !1913, line: 128, baseType: !112, size: 32, offset: 928)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1912, file: !1913, line: 129, baseType: !290, size: 128, offset: 960)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1912, file: !1913, line: 132, baseType: !1452, size: 512, offset: 1088)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1912, file: !1913, line: 133, baseType: !1460, size: 64, offset: 1600)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1912, file: !1913, line: 140, baseType: !1945, size: 256, offset: 1664)
!1945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1946, size: 256, elements: !1726)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1913, line: 38, size: 128, elements: !1947)
!1947 = !{!1948, !1949}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1946, file: !1913, line: 39, baseType: !338, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1946, file: !1913, line: 40, baseType: !338, size: 64, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1912, file: !1913, line: 146, baseType: !1951, size: 192, offset: 1920)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1913, line: 66, size: 192, elements: !1952)
!1952 = !{!1953}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1951, file: !1913, line: 67, baseType: !1954, size: 192)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1913, line: 47, size: 192, elements: !1955)
!1955 = !{!1956, !1957, !1958}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1954, file: !1913, line: 48, baseType: !938, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1954, file: !1913, line: 49, baseType: !938, size: 64, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1954, file: !1913, line: 50, baseType: !938, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1912, file: !1913, line: 150, baseType: !1687, size: 640, offset: 2112)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1912, file: !1913, line: 153, baseType: !1961, size: 256, offset: 2752)
!1961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1628, size: 256, elements: !347)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1912, file: !1913, line: 159, baseType: !1628, size: 64, offset: 3008)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1912, file: !1913, line: 162, baseType: !112, size: 32, offset: 3072)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1912, file: !1913, line: 164, baseType: !1965, size: 64, offset: 3136)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1913, line: 164, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1912, file: !1913, line: 175, baseType: !1968, size: 32, offset: 3200)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !565, line: 805, baseType: !1969)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !565, line: 798, size: 32, elements: !1970)
!1970 = !{!1971, !1972}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1969, file: !565, line: 803, baseType: !564, size: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1969, file: !565, line: 804, baseType: !414, offset: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1912, file: !1913, line: 176, baseType: !338, size: 64, offset: 3264)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1912, file: !1913, line: 176, baseType: !338, size: 64, offset: 3328)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1912, file: !1913, line: 176, baseType: !338, size: 64, offset: 3392)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1912, file: !1913, line: 176, baseType: !338, size: 64, offset: 3456)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1912, file: !1913, line: 177, baseType: !338, size: 64, offset: 3520)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1912, file: !1913, line: 178, baseType: !338, size: 64, offset: 3584)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1912, file: !1913, line: 179, baseType: !1675, size: 128, offset: 3648)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1912, file: !1913, line: 180, baseType: !110, size: 64, offset: 3776)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1912, file: !1913, line: 180, baseType: !110, size: 64, offset: 3840)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1912, file: !1913, line: 180, baseType: !110, size: 64, offset: 3904)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1912, file: !1913, line: 180, baseType: !110, size: 64, offset: 3968)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1912, file: !1913, line: 181, baseType: !110, size: 64, offset: 4032)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1912, file: !1913, line: 181, baseType: !110, size: 64, offset: 4096)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1912, file: !1913, line: 181, baseType: !110, size: 64, offset: 4160)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1912, file: !1913, line: 181, baseType: !110, size: 64, offset: 4224)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1912, file: !1913, line: 182, baseType: !110, size: 64, offset: 4288)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1912, file: !1913, line: 182, baseType: !110, size: 64, offset: 4352)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1912, file: !1913, line: 182, baseType: !110, size: 64, offset: 4416)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1912, file: !1913, line: 182, baseType: !110, size: 64, offset: 4480)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1912, file: !1913, line: 183, baseType: !110, size: 64, offset: 4544)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1912, file: !1913, line: 183, baseType: !110, size: 64, offset: 4608)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1912, file: !1913, line: 184, baseType: !1995, offset: 4672)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1996, line: 12, elements: !428)
!1996 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1912, file: !1913, line: 192, baseType: !108, size: 64, offset: 4672)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1912, file: !1913, line: 203, baseType: !1999, size: 2048, offset: 4736)
!1999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2000, size: 2048, elements: !1892)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2001, line: 43, size: 128, elements: !2002)
!2001 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2002 = !{!2003, !2004}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2000, file: !2001, line: 44, baseType: !501, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2000, file: !2001, line: 45, baseType: !501, size: 64, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1912, file: !1913, line: 220, baseType: !269, size: 8, offset: 6784)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1912, file: !1913, line: 221, baseType: !1366, size: 16, offset: 6800)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1912, file: !1913, line: 222, baseType: !1366, size: 16, offset: 6816)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1912, file: !1913, line: 224, baseType: !1137, size: 64, offset: 6848)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1912, file: !1913, line: 227, baseType: !1334, size: 192, offset: 6912)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1912, file: !1913, line: 233, baseType: !1334, size: 192, offset: 7104)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1378, file: !1379, line: 970, baseType: !2012, size: 64, offset: 9280)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1913, line: 20, size: 16576, elements: !2014)
!2014 = !{!2015, !2016, !2017, !2018}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2013, file: !1913, line: 21, baseType: !414)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2013, file: !1913, line: 22, baseType: !1390, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2013, file: !1913, line: 23, baseType: !1638, size: 128, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2013, file: !1913, line: 24, baseType: !2019, size: 16384, offset: 192)
!2019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2020, size: 16384, elements: !459)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1923, line: 49, size: 256, elements: !2021)
!2021 = !{!2022}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2020, file: !1923, line: 50, baseType: !2023, size: 256)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1923, line: 35, size: 256, elements: !2024)
!2024 = !{!2025, !2032, !2033, !2037}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2023, file: !1923, line: 37, baseType: !2026, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2027, line: 19, baseType: !2028)
!2027 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2027, line: 18, baseType: !2030)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !112}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2023, file: !1923, line: 38, baseType: !110, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2023, file: !1923, line: 44, baseType: !2034, size: 64, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2027, line: 22, baseType: !2035)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2027, line: 21, baseType: !236)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2023, file: !1923, line: 46, baseType: !1927, size: 64, offset: 192)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1378, file: !1379, line: 971, baseType: !1927, size: 64, offset: 9344)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1378, file: !1379, line: 972, baseType: !1927, size: 64, offset: 9408)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1378, file: !1379, line: 974, baseType: !1927, size: 64, offset: 9472)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1378, file: !1379, line: 975, baseType: !1922, size: 192, offset: 9536)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1378, file: !1379, line: 976, baseType: !110, size: 64, offset: 9728)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1378, file: !1379, line: 977, baseType: !499, size: 64, offset: 9792)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1378, file: !1379, line: 978, baseType: !7, size: 32, offset: 9856)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1378, file: !1379, line: 980, baseType: !545, size: 64, offset: 9920)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1378, file: !1379, line: 989, baseType: !2047, size: 128, offset: 9984)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2048, line: 35, size: 128, elements: !2049)
!2048 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2049 = !{!2050, !2051, !2052}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2047, file: !2048, line: 36, baseType: !112, size: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2047, file: !2048, line: 37, baseType: !912, size: 32, offset: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2047, file: !2048, line: 38, baseType: !2053, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2048, line: 23, flags: DIFlagFwdDecl)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1378, file: !1379, line: 992, baseType: !338, size: 64, offset: 10112)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1378, file: !1379, line: 993, baseType: !338, size: 64, offset: 10176)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1378, file: !1379, line: 996, baseType: !414, offset: 10240)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1378, file: !1379, line: 999, baseType: !945, offset: 10240)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1378, file: !1379, line: 1001, baseType: !2060, size: 64, offset: 10240)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1379, line: 636, size: 64, elements: !2061)
!2061 = !{!2062}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2060, file: !1379, line: 637, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1378, file: !1379, line: 1005, baseType: !917, size: 128, offset: 10304)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1378, file: !1379, line: 1007, baseType: !1377, size: 64, offset: 10432)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1378, file: !1379, line: 1009, baseType: !2067, size: 64, offset: 10496)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1379, line: 1009, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1378, file: !1379, line: 1043, baseType: !111, size: 64, offset: 10560)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1378, file: !1379, line: 1046, baseType: !2071, size: 64, offset: 10624)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1379, line: 41, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1378, file: !1379, line: 1050, baseType: !2074, size: 64, offset: 10688)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1379, line: 42, flags: DIFlagFwdDecl)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1378, file: !1379, line: 1054, baseType: !2077, size: 64, offset: 10752)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1379, line: 55, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1378, file: !1379, line: 1056, baseType: !2080, size: 64, offset: 10816)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1379, line: 40, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1378, file: !1379, line: 1058, baseType: !2083, size: 64, offset: 10880)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2085, line: 99, size: 704, elements: !2086)
!2085 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2086 = !{!2087, !2088, !2089, !2090, !2091, !2092, !2093, !2112, !2113}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2084, file: !2085, line: 100, baseType: !936, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2084, file: !2085, line: 101, baseType: !912, size: 32, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2084, file: !2085, line: 102, baseType: !912, size: 32, offset: 96)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2084, file: !2085, line: 105, baseType: !414, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2084, file: !2085, line: 107, baseType: !155, size: 16, offset: 128)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2084, file: !2085, line: 109, baseType: !903, size: 128, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2084, file: !2085, line: 110, baseType: !2094, size: 64, offset: 320)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2085, line: 73, size: 448, elements: !2096)
!2096 = !{!2097, !2100, !2101, !2106, !2111}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2095, file: !2085, line: 74, baseType: !2098, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2085, line: 74, flags: DIFlagFwdDecl)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2095, file: !2085, line: 75, baseType: !2083, size: 64, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, scope: !2095, file: !2085, line: 83, baseType: !2102, size: 128, offset: 128)
!2102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2095, file: !2085, line: 83, size: 128, elements: !2103)
!2103 = !{!2104, !2105}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2102, file: !2085, line: 84, baseType: !290, size: 128)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2102, file: !2085, line: 85, baseType: !1098, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, scope: !2095, file: !2085, line: 87, baseType: !2107, size: 128, offset: 256)
!2107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2095, file: !2085, line: 87, size: 128, elements: !2108)
!2108 = !{!2109, !2110}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2107, file: !2085, line: 88, baseType: !803, size: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2107, file: !2085, line: 89, baseType: !542, size: 128, align: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2095, file: !2085, line: 92, baseType: !7, size: 32, offset: 384)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2084, file: !2085, line: 111, baseType: !799, size: 64, offset: 384)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2084, file: !2085, line: 113, baseType: !2114, size: 256, offset: 448)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2115, line: 102, size: 256, elements: !2116)
!2115 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2116 = !{!2117, !2118, !2119}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2114, file: !2115, line: 103, baseType: !936, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2114, file: !2115, line: 104, baseType: !290, size: 128, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2114, file: !2115, line: 105, baseType: !2120, size: 64, offset: 192)
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2115, line: 21, baseType: !2121)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{null, !2124}
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1378, file: !1379, line: 1061, baseType: !2126, size: 64, offset: 10944)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1379, line: 43, flags: DIFlagFwdDecl)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1378, file: !1379, line: 1064, baseType: !110, size: 64, offset: 11008)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1378, file: !1379, line: 1065, baseType: !2130, size: 64, offset: 11072)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1923, line: 14, baseType: !2132)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1923, line: 12, size: 384, elements: !2133)
!2133 = !{!2134}
!2134 = !DIDerivedType(tag: DW_TAG_member, scope: !2132, file: !1923, line: 13, baseType: !2135, size: 384)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2132, file: !1923, line: 13, size: 384, elements: !2136)
!2136 = !{!2137, !2138, !2139, !2140}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2135, file: !1923, line: 13, baseType: !112, size: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2135, file: !1923, line: 13, baseType: !112, size: 32, offset: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2135, file: !1923, line: 13, baseType: !112, size: 32, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2135, file: !1923, line: 13, baseType: !2141, size: 256, offset: 128)
!2141 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2142, line: 32, size: 256, elements: !2143)
!2142 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2143 = !{!2144, !2149, !2162, !2168, !2177, !2197, !2202}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2141, file: !2142, line: 37, baseType: !2145, size: 64)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2141, file: !2142, line: 34, size: 64, elements: !2146)
!2146 = !{!2147, !2148}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2145, file: !2142, line: 35, baseType: !1617, size: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2145, file: !2142, line: 36, baseType: !610, size: 32, offset: 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2141, file: !2142, line: 45, baseType: !2150, size: 192)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2141, file: !2142, line: 40, size: 192, elements: !2151)
!2151 = !{!2152, !2154, !2155, !2161}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2150, file: !2142, line: 41, baseType: !2153, size: 32)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !487, line: 95, baseType: !112)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2150, file: !2142, line: 42, baseType: !112, size: 32, offset: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2150, file: !2142, line: 43, baseType: !2156, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2142, line: 11, baseType: !2157)
!2157 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2142, line: 8, size: 64, elements: !2158)
!2158 = !{!2159, !2160}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2157, file: !2142, line: 9, baseType: !112, size: 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2157, file: !2142, line: 10, baseType: !111, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2150, file: !2142, line: 44, baseType: !112, size: 32, offset: 128)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2141, file: !2142, line: 52, baseType: !2163, size: 128)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2141, file: !2142, line: 48, size: 128, elements: !2164)
!2164 = !{!2165, !2166, !2167}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2163, file: !2142, line: 49, baseType: !1617, size: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2163, file: !2142, line: 50, baseType: !610, size: 32, offset: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2163, file: !2142, line: 51, baseType: !2156, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2141, file: !2142, line: 61, baseType: !2169, size: 256)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2141, file: !2142, line: 55, size: 256, elements: !2170)
!2170 = !{!2171, !2172, !2173, !2174, !2176}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2169, file: !2142, line: 56, baseType: !1617, size: 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2169, file: !2142, line: 57, baseType: !610, size: 32, offset: 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2169, file: !2142, line: 58, baseType: !112, size: 32, offset: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2169, file: !2142, line: 59, baseType: !2175, size: 64, offset: 128)
!2175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !487, line: 94, baseType: !488)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2169, file: !2142, line: 60, baseType: !2175, size: 64, offset: 192)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2141, file: !2142, line: 95, baseType: !2178, size: 256)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2141, file: !2142, line: 64, size: 256, elements: !2179)
!2179 = !{!2180, !2181}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2178, file: !2142, line: 65, baseType: !111, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, scope: !2178, file: !2142, line: 77, baseType: !2182, size: 192, offset: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2178, file: !2142, line: 77, size: 192, elements: !2183)
!2183 = !{!2184, !2185, !2192}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2182, file: !2142, line: 82, baseType: !1366, size: 16)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2182, file: !2142, line: 88, baseType: !2186, size: 192)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2182, file: !2142, line: 84, size: 192, elements: !2187)
!2187 = !{!2188, !2190, !2191}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2186, file: !2142, line: 85, baseType: !2189, size: 64)
!2189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 64, elements: !1490)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2186, file: !2142, line: 86, baseType: !111, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2186, file: !2142, line: 87, baseType: !111, size: 64, offset: 128)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2182, file: !2142, line: 93, baseType: !2193, size: 96)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2182, file: !2142, line: 90, size: 96, elements: !2194)
!2194 = !{!2195, !2196}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2193, file: !2142, line: 91, baseType: !2189, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2193, file: !2142, line: 92, baseType: !303, size: 32, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2141, file: !2142, line: 101, baseType: !2198, size: 128)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2141, file: !2142, line: 98, size: 128, elements: !2199)
!2199 = !{!2200, !2201}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2198, file: !2142, line: 99, baseType: !117, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2198, file: !2142, line: 100, baseType: !112, size: 32, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2141, file: !2142, line: 108, baseType: !2203, size: 128)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2141, file: !2142, line: 104, size: 128, elements: !2204)
!2204 = !{!2205, !2206, !2207}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2203, file: !2142, line: 105, baseType: !111, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2203, file: !2142, line: 106, baseType: !112, size: 32, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2203, file: !2142, line: 107, baseType: !7, size: 32, offset: 96)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1378, file: !1379, line: 1067, baseType: !1995, offset: 11136)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1378, file: !1379, line: 1099, baseType: !2210, size: 64, offset: 11136)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1379, line: 56, flags: DIFlagFwdDecl)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1378, file: !1379, line: 1103, baseType: !290, size: 128, offset: 11200)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1378, file: !1379, line: 1104, baseType: !2214, size: 64, offset: 11328)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1379, line: 46, flags: DIFlagFwdDecl)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1378, file: !1379, line: 1105, baseType: !1334, size: 192, offset: 11392)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1378, file: !1379, line: 1106, baseType: !7, size: 32, offset: 11584)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1378, file: !1379, line: 1109, baseType: !2219, size: 128, offset: 11648)
!2219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2220, size: 128, elements: !1726)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1379, line: 51, flags: DIFlagFwdDecl)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1378, file: !1379, line: 1110, baseType: !1334, size: 192, offset: 11776)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1378, file: !1379, line: 1111, baseType: !290, size: 128, offset: 11968)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1378, file: !1379, line: 1173, baseType: !2225, size: 64, offset: 12096)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2227, line: 62, size: 256, align: 256, elements: !2228)
!2227 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2228 = !{!2229, !2230, !2231, !2236}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2226, file: !2227, line: 75, baseType: !303, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2226, file: !2227, line: 90, baseType: !303, size: 32, offset: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2226, file: !2227, line: 124, baseType: !2232, size: 64, offset: 64)
!2232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2226, file: !2227, line: 109, size: 64, elements: !2233)
!2233 = !{!2234, !2235}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2232, file: !2227, line: 110, baseType: !339, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2232, file: !2227, line: 112, baseType: !339, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2226, file: !2227, line: 144, baseType: !303, size: 32, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1378, file: !1379, line: 1174, baseType: !372, size: 32, offset: 12160)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1378, file: !1379, line: 1179, baseType: !110, size: 64, offset: 12224)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1378, file: !1379, line: 1182, baseType: !2240, size: 128, offset: 12288)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1314, line: 76, size: 128, elements: !2241)
!2241 = !{!2242, !2247, !2248}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2240, file: !1314, line: 85, baseType: !2243, size: 64)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2244, line: 7, size: 64, elements: !2245)
!2244 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2245 = !{!2246}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2243, file: !2244, line: 12, baseType: !1525, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2240, file: !1314, line: 88, baseType: !269, size: 8, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2240, file: !1314, line: 95, baseType: !269, size: 8, offset: 72)
!2249 = !DIDerivedType(tag: DW_TAG_member, scope: !1378, file: !1379, line: 1184, baseType: !2250, size: 128, offset: 12416)
!2250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1378, file: !1379, line: 1184, size: 128, elements: !2251)
!2251 = !{!2252, !2253}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2250, file: !1379, line: 1185, baseType: !1390, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2250, file: !1379, line: 1186, baseType: !542, size: 128, align: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1378, file: !1379, line: 1190, baseType: !2255, size: 64, offset: 12544)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1379, line: 53, flags: DIFlagFwdDecl)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1378, file: !1379, line: 1192, baseType: !2258, size: 128, offset: 12608)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1314, line: 64, size: 128, elements: !2259)
!2259 = !{!2260, !2261, !2262}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2258, file: !1314, line: 65, baseType: !885, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2258, file: !1314, line: 67, baseType: !303, size: 32, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2258, file: !1314, line: 68, baseType: !303, size: 32, offset: 96)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1378, file: !1379, line: 1206, baseType: !112, size: 32, offset: 12736)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1378, file: !1379, line: 1207, baseType: !112, size: 32, offset: 12768)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1378, file: !1379, line: 1209, baseType: !110, size: 64, offset: 12800)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1378, file: !1379, line: 1219, baseType: !338, size: 64, offset: 12864)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1378, file: !1379, line: 1220, baseType: !338, size: 64, offset: 12928)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1378, file: !1379, line: 1317, baseType: !112, size: 32, offset: 12992)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1378, file: !1379, line: 1319, baseType: !1377, size: 64, offset: 13056)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1378, file: !1379, line: 1322, baseType: !2271, size: 64, offset: 13120)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2273, line: 56, size: 512, elements: !2274)
!2273 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2274 = !{!2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2272, file: !2273, line: 57, baseType: !2271, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2272, file: !2273, line: 58, baseType: !111, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2272, file: !2273, line: 59, baseType: !110, size: 64, offset: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2272, file: !2273, line: 60, baseType: !110, size: 64, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2272, file: !2273, line: 61, baseType: !985, size: 64, offset: 256)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2272, file: !2273, line: 62, baseType: !7, size: 32, offset: 320)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2272, file: !2273, line: 63, baseType: !337, size: 64, offset: 384)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2272, file: !2273, line: 64, baseType: !2283, size: 64, offset: 448)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1378, file: !1379, line: 1326, baseType: !1390, size: 32, offset: 13184)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1378, file: !1379, line: 1342, baseType: !111, size: 64, offset: 13248)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1378, file: !1379, line: 1343, baseType: !339, size: 64, offset: 13312)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1378, file: !1379, line: 1344, baseType: !338, size: 64, offset: 13376)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1378, file: !1379, line: 1345, baseType: !339, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1378, file: !1379, line: 1346, baseType: !339, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1378, file: !1379, line: 1347, baseType: !339, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1378, file: !1379, line: 1348, baseType: !542, size: 128, align: 64, offset: 13504)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1378, file: !1379, line: 1358, baseType: !2294, size: 34816, offset: 13824)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2295, line: 485, size: 34816, elements: !2296)
!2295 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2296 = !{!2297, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2326, !2327, !2328, !2329, !2330, !2331, !2334, !2335, !2336}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2294, file: !2295, line: 487, baseType: !2298, size: 192)
!2298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2299, size: 192, elements: !455)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2300, line: 16, size: 64, elements: !2301)
!2300 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2301 = !{!2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2299, file: !2300, line: 17, baseType: !151, size: 16)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2299, file: !2300, line: 18, baseType: !151, size: 16, offset: 16)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2299, file: !2300, line: 19, baseType: !151, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2299, file: !2300, line: 19, baseType: !151, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2299, file: !2300, line: 19, baseType: !151, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2299, file: !2300, line: 19, baseType: !151, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2299, file: !2300, line: 19, baseType: !151, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2299, file: !2300, line: 20, baseType: !151, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2299, file: !2300, line: 20, baseType: !151, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2299, file: !2300, line: 20, baseType: !151, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2299, file: !2300, line: 20, baseType: !151, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2299, file: !2300, line: 20, baseType: !151, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2299, file: !2300, line: 20, baseType: !151, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2294, file: !2295, line: 491, baseType: !110, size: 64, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2294, file: !2295, line: 495, baseType: !155, size: 16, offset: 256)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2294, file: !2295, line: 496, baseType: !155, size: 16, offset: 272)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2294, file: !2295, line: 497, baseType: !155, size: 16, offset: 288)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2294, file: !2295, line: 498, baseType: !155, size: 16, offset: 304)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2294, file: !2295, line: 502, baseType: !110, size: 64, offset: 320)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2294, file: !2295, line: 503, baseType: !110, size: 64, offset: 384)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2294, file: !2295, line: 514, baseType: !2323, size: 256, offset: 448)
!2323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2324, size: 256, elements: !347)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2295, line: 483, flags: DIFlagFwdDecl)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2294, file: !2295, line: 516, baseType: !110, size: 64, offset: 704)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2294, file: !2295, line: 518, baseType: !110, size: 64, offset: 768)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2294, file: !2295, line: 520, baseType: !110, size: 64, offset: 832)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2294, file: !2295, line: 521, baseType: !110, size: 64, offset: 896)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2294, file: !2295, line: 522, baseType: !110, size: 64, offset: 960)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2294, file: !2295, line: 528, baseType: !2332, size: 64, offset: 1024)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2295, line: 10, flags: DIFlagFwdDecl)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2294, file: !2295, line: 535, baseType: !110, size: 64, offset: 1088)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2294, file: !2295, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2294, file: !2295, line: 540, baseType: !2337, size: 33280, offset: 1536)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2338, line: 317, size: 33280, elements: !2339)
!2338 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2339 = !{!2340, !2341, !2342}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2337, file: !2338, line: 330, baseType: !7, size: 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2337, file: !2338, line: 337, baseType: !110, size: 64, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2337, file: !2338, line: 348, baseType: !2343, size: 32768, offset: 512)
!2343 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2338, line: 304, size: 32768, elements: !2344)
!2344 = !{!2345, !2358, !2395, !2445, !2458}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2343, file: !2338, line: 305, baseType: !2346, size: 896)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2338, line: 12, size: 896, elements: !2347)
!2347 = !{!2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2357}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2346, file: !2338, line: 13, baseType: !372, size: 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2346, file: !2338, line: 14, baseType: !372, size: 32, offset: 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2346, file: !2338, line: 15, baseType: !372, size: 32, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2346, file: !2338, line: 16, baseType: !372, size: 32, offset: 96)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2346, file: !2338, line: 17, baseType: !372, size: 32, offset: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2346, file: !2338, line: 18, baseType: !372, size: 32, offset: 160)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2346, file: !2338, line: 19, baseType: !372, size: 32, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2346, file: !2338, line: 22, baseType: !2356, size: 640, offset: 224)
!2356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 640, elements: !256)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2346, file: !2338, line: 25, baseType: !372, size: 32, offset: 864)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2343, file: !2338, line: 306, baseType: !2359, size: 4096, align: 128)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2338, line: 34, size: 4096, align: 128, elements: !2360)
!2360 = !{!2361, !2362, !2363, !2364, !2365, !2380, !2381, !2382, !2384, !2386, !2390}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2359, file: !2338, line: 35, baseType: !151, size: 16)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2359, file: !2338, line: 36, baseType: !151, size: 16, offset: 16)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2359, file: !2338, line: 37, baseType: !151, size: 16, offset: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2359, file: !2338, line: 38, baseType: !151, size: 16, offset: 48)
!2365 = !DIDerivedType(tag: DW_TAG_member, scope: !2359, file: !2338, line: 39, baseType: !2366, size: 128, offset: 64)
!2366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2359, file: !2338, line: 39, size: 128, elements: !2367)
!2367 = !{!2368, !2373}
!2368 = !DIDerivedType(tag: DW_TAG_member, scope: !2366, file: !2338, line: 40, baseType: !2369, size: 128)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2366, file: !2338, line: 40, size: 128, elements: !2370)
!2370 = !{!2371, !2372}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2369, file: !2338, line: 41, baseType: !338, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2369, file: !2338, line: 42, baseType: !338, size: 64, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, scope: !2366, file: !2338, line: 44, baseType: !2374, size: 128)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2366, file: !2338, line: 44, size: 128, elements: !2375)
!2375 = !{!2376, !2377, !2378, !2379}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2374, file: !2338, line: 45, baseType: !372, size: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2374, file: !2338, line: 46, baseType: !372, size: 32, offset: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2374, file: !2338, line: 47, baseType: !372, size: 32, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2374, file: !2338, line: 48, baseType: !372, size: 32, offset: 96)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2359, file: !2338, line: 51, baseType: !372, size: 32, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2359, file: !2338, line: 52, baseType: !372, size: 32, offset: 224)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2359, file: !2338, line: 55, baseType: !2383, size: 1024, offset: 256)
!2383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 1024, elements: !210)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2359, file: !2338, line: 58, baseType: !2385, size: 2048, offset: 1280)
!2385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 2048, elements: !459)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2359, file: !2338, line: 60, baseType: !2387, size: 384, offset: 3328)
!2387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 384, elements: !2388)
!2388 = !{!2389}
!2389 = !DISubrange(count: 12)
!2390 = !DIDerivedType(tag: DW_TAG_member, scope: !2359, file: !2338, line: 62, baseType: !2391, size: 384, offset: 3712)
!2391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2359, file: !2338, line: 62, size: 384, elements: !2392)
!2392 = !{!2393, !2394}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2391, file: !2338, line: 63, baseType: !2387, size: 384)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2391, file: !2338, line: 64, baseType: !2387, size: 384)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2343, file: !2338, line: 307, baseType: !2396, size: 1088)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2338, line: 79, size: 1088, elements: !2397)
!2397 = !{!2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2444}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2396, file: !2338, line: 80, baseType: !372, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2396, file: !2338, line: 81, baseType: !372, size: 32, offset: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2396, file: !2338, line: 82, baseType: !372, size: 32, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2396, file: !2338, line: 83, baseType: !372, size: 32, offset: 96)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2396, file: !2338, line: 84, baseType: !372, size: 32, offset: 128)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2396, file: !2338, line: 85, baseType: !372, size: 32, offset: 160)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2396, file: !2338, line: 86, baseType: !372, size: 32, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2396, file: !2338, line: 88, baseType: !2356, size: 640, offset: 224)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2396, file: !2338, line: 89, baseType: !161, size: 8, offset: 864)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2396, file: !2338, line: 90, baseType: !161, size: 8, offset: 872)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2396, file: !2338, line: 91, baseType: !161, size: 8, offset: 880)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2396, file: !2338, line: 92, baseType: !161, size: 8, offset: 888)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2396, file: !2338, line: 93, baseType: !161, size: 8, offset: 896)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2396, file: !2338, line: 94, baseType: !161, size: 8, offset: 904)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2396, file: !2338, line: 95, baseType: !2413, size: 64, offset: 960)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2415, line: 11, size: 128, elements: !2416)
!2415 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2416 = !{!2417, !2418}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2414, file: !2415, line: 12, baseType: !117, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2414, file: !2415, line: 13, baseType: !2419, size: 64, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2421, line: 56, size: 1344, elements: !2422)
!2421 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2422 = !{!2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2420, file: !2421, line: 61, baseType: !110, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2420, file: !2421, line: 62, baseType: !110, size: 64, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2420, file: !2421, line: 63, baseType: !110, size: 64, offset: 128)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2420, file: !2421, line: 64, baseType: !110, size: 64, offset: 192)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2420, file: !2421, line: 65, baseType: !110, size: 64, offset: 256)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2420, file: !2421, line: 66, baseType: !110, size: 64, offset: 320)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2420, file: !2421, line: 68, baseType: !110, size: 64, offset: 384)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2420, file: !2421, line: 69, baseType: !110, size: 64, offset: 448)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2420, file: !2421, line: 70, baseType: !110, size: 64, offset: 512)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2420, file: !2421, line: 71, baseType: !110, size: 64, offset: 576)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2420, file: !2421, line: 72, baseType: !110, size: 64, offset: 640)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2420, file: !2421, line: 73, baseType: !110, size: 64, offset: 704)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2420, file: !2421, line: 74, baseType: !110, size: 64, offset: 768)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2420, file: !2421, line: 75, baseType: !110, size: 64, offset: 832)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2420, file: !2421, line: 76, baseType: !110, size: 64, offset: 896)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2420, file: !2421, line: 81, baseType: !110, size: 64, offset: 960)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2420, file: !2421, line: 83, baseType: !110, size: 64, offset: 1024)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2420, file: !2421, line: 84, baseType: !110, size: 64, offset: 1088)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2420, file: !2421, line: 85, baseType: !110, size: 64, offset: 1152)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2420, file: !2421, line: 86, baseType: !110, size: 64, offset: 1216)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2420, file: !2421, line: 87, baseType: !110, size: 64, offset: 1280)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2396, file: !2338, line: 96, baseType: !372, size: 32, offset: 1024)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2343, file: !2338, line: 308, baseType: !2446, size: 4608, align: 512)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2338, line: 289, size: 4608, align: 512, elements: !2447)
!2447 = !{!2448, !2449, !2456}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2446, file: !2338, line: 290, baseType: !2359, size: 4096, align: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2446, file: !2338, line: 291, baseType: !2450, size: 512, offset: 4096)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2338, line: 268, size: 512, elements: !2451)
!2451 = !{!2452, !2453, !2454}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2450, file: !2338, line: 269, baseType: !338, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2450, file: !2338, line: 270, baseType: !338, size: 64, offset: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2450, file: !2338, line: 271, baseType: !2455, size: 384, offset: 128)
!2455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 384, elements: !1782)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2446, file: !2338, line: 292, baseType: !2457, offset: 4608)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, elements: !1880)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2343, file: !2338, line: 309, baseType: !2459, size: 32768)
!2459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 32768, elements: !2460)
!2460 = !{!2461}
!2461 = !DISubrange(count: 4096)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1374, file: !887, line: 378, baseType: !2463, size: 64, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1370, file: !887, line: 384, baseType: !1659, size: 192, offset: 192)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1141, file: !887, line: 500, baseType: !414, offset: 6656)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1141, file: !887, line: 501, baseType: !2467, size: 64, offset: 6656)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !887, line: 387, flags: DIFlagFwdDecl)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1141, file: !887, line: 516, baseType: !1870, size: 64, offset: 6720)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1141, file: !887, line: 519, baseType: !529, size: 64, offset: 6784)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1141, file: !887, line: 521, baseType: !2472, size: 64, offset: 6848)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !887, line: 521, flags: DIFlagFwdDecl)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1141, file: !887, line: 545, baseType: !912, size: 32, offset: 6912)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1141, file: !887, line: 548, baseType: !269, size: 8, offset: 6944)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1141, file: !887, line: 550, baseType: !2477, offset: 6952)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2478, line: 142, elements: !428)
!2478 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1141, file: !887, line: 554, baseType: !2114, size: 256, offset: 6976)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1141, file: !887, line: 557, baseType: !372, size: 32, offset: 7232)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1138, file: !887, line: 565, baseType: !2482, offset: 7296)
!2482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, elements: !2483)
!2483 = !{!2484}
!2484 = !DISubrange(count: -1)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1134, file: !887, line: 151, baseType: !912, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1127, file: !887, line: 156, baseType: !414, offset: 256)
!2487 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !887, line: 159, baseType: !2488, size: 128)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !891, file: !887, line: 159, size: 128, elements: !2489)
!2489 = !{!2490, !2554}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2488, file: !887, line: 161, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2493)
!2493 = !{!2494, !2504, !2525, !2526, !2527, !2528, !2529, !2541, !2542, !2543}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2492, file: !31, line: 111, baseType: !2495, size: 384)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2496)
!2496 = !{!2497, !2499, !2500, !2501, !2502, !2503}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2495, file: !31, line: 20, baseType: !2498, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2495, file: !31, line: 21, baseType: !2498, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2495, file: !31, line: 22, baseType: !2498, size: 64, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2495, file: !31, line: 23, baseType: !110, size: 64, offset: 192)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2495, file: !31, line: 24, baseType: !110, size: 64, offset: 256)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2495, file: !31, line: 25, baseType: !110, size: 64, offset: 320)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2492, file: !31, line: 112, baseType: !2505, size: 64, offset: 384)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2507, line: 105, size: 128, elements: !2508)
!2507 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2508 = !{!2509, !2510}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2506, file: !2507, line: 110, baseType: !110, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2506, file: !2507, line: 118, baseType: !2511, size: 64, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2507, line: 95, size: 448, elements: !2513)
!2513 = !{!2514, !2515, !2520, !2521, !2522, !2523, !2524}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2512, file: !2507, line: 96, baseType: !936, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2512, file: !2507, line: 97, baseType: !2516, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2507, line: 60, baseType: !2518)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{null, !2505}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2512, file: !2507, line: 98, baseType: !2516, size: 64, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2512, file: !2507, line: 99, baseType: !269, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2512, file: !2507, line: 100, baseType: !269, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2512, file: !2507, line: 101, baseType: !542, size: 128, align: 64, offset: 256)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2512, file: !2507, line: 102, baseType: !2505, size: 64, offset: 384)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2492, file: !31, line: 113, baseType: !2506, size: 128, offset: 448)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2492, file: !31, line: 114, baseType: !1659, size: 192, offset: 576)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2492, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2492, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2492, file: !31, line: 117, baseType: !2530, size: 64, offset: 832)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2532)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2533)
!2533 = !{!2534, !2535, !2539, !2540}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2532, file: !31, line: 73, baseType: !1005, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2532, file: !31, line: 78, baseType: !2536, size: 64, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{null, !2491}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2532, file: !31, line: 83, baseType: !2536, size: 64, offset: 128)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2532, file: !31, line: 89, baseType: !1190, size: 64, offset: 192)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2492, file: !31, line: 118, baseType: !111, size: 64, offset: 896)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2492, file: !31, line: 119, baseType: !112, size: 32, offset: 960)
!2543 = !DIDerivedType(tag: DW_TAG_member, scope: !2492, file: !31, line: 120, baseType: !2544, size: 128, offset: 1024)
!2544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2492, file: !31, line: 120, size: 128, elements: !2545)
!2545 = !{!2546, !2552}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2544, file: !31, line: 121, baseType: !2547, size: 128)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2548, line: 6, size: 128, elements: !2549)
!2548 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2549 = !{!2550, !2551}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2547, file: !2548, line: 7, baseType: !338, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2547, file: !2548, line: 8, baseType: !338, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2544, file: !31, line: 122, baseType: !2553)
!2553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2547, elements: !1880)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2488, file: !887, line: 162, baseType: !111, size: 64, offset: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !891, file: !887, line: 176, baseType: !542, size: 128, align: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, scope: !886, file: !887, line: 179, baseType: !2557, size: 32, offset: 384)
!2557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !886, file: !887, line: 179, size: 32, elements: !2558)
!2558 = !{!2559, !2560, !2561, !2562}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2557, file: !887, line: 184, baseType: !912, size: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2557, file: !887, line: 192, baseType: !7, size: 32)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2557, file: !887, line: 194, baseType: !7, size: 32)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2557, file: !887, line: 195, baseType: !112, size: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !886, file: !887, line: 199, baseType: !912, size: 32, offset: 416)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !821, file: !44, line: 1964, baseType: !2565, size: 64, offset: 1344)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!117, !763, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2570, line: 12, size: 256, elements: !2571)
!2570 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2571 = !{!2572, !2573, !2574, !2575, !2576}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2569, file: !2570, line: 13, baseType: !908, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2569, file: !2570, line: 16, baseType: !112, size: 32, offset: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2569, file: !2570, line: 23, baseType: !110, size: 64, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2569, file: !2570, line: 30, baseType: !110, size: 64, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2569, file: !2570, line: 33, baseType: !2577, size: 64, offset: 192)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !887, line: 27, flags: DIFlagFwdDecl)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !821, file: !44, line: 1966, baseType: !2565, size: 64, offset: 1408)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !764, file: !44, line: 1424, baseType: !2581, size: 64, offset: 448)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2583)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2584)
!2584 = !{!2585, !2631, !2635, !2639, !2640, !2641, !2642, !2643, !2648, !2653, !2657}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2583, file: !38, line: 323, baseType: !2586, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!112, !2589}
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2591)
!2591 = !{!2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2616, !2617, !2618}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2590, file: !38, line: 295, baseType: !803, size: 128)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2590, file: !38, line: 296, baseType: !290, size: 128, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2590, file: !38, line: 297, baseType: !290, size: 128, offset: 256)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2590, file: !38, line: 298, baseType: !290, size: 128, offset: 384)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2590, file: !38, line: 299, baseType: !1334, size: 192, offset: 512)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2590, file: !38, line: 300, baseType: !414, offset: 704)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2590, file: !38, line: 301, baseType: !912, size: 32, offset: 704)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2590, file: !38, line: 302, baseType: !763, size: 64, offset: 768)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2590, file: !38, line: 303, baseType: !2601, size: 64, offset: 832)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2602)
!2602 = !{!2603, !2615}
!2603 = !DIDerivedType(tag: DW_TAG_member, scope: !2601, file: !38, line: 69, baseType: !2604, size: 32)
!2604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2601, file: !38, line: 69, size: 32, elements: !2605)
!2605 = !{!2606, !2607, !2608}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2604, file: !38, line: 70, baseType: !604, size: 32)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2604, file: !38, line: 71, baseType: !612, size: 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2604, file: !38, line: 72, baseType: !2609, size: 32)
!2609 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2610, line: 24, baseType: !2611)
!2610 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2610, line: 22, size: 32, elements: !2612)
!2612 = !{!2613}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2611, file: !2610, line: 23, baseType: !2614, size: 32)
!2614 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2610, line: 20, baseType: !610)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2601, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2590, file: !38, line: 304, baseType: !695, size: 64, offset: 896)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2590, file: !38, line: 305, baseType: !110, size: 64, offset: 960)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2590, file: !38, line: 306, baseType: !2619, size: 576, offset: 1024)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2620)
!2620 = !{!2621, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2619, file: !38, line: 206, baseType: !2622, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !697)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2619, file: !38, line: 207, baseType: !2622, size: 64, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2619, file: !38, line: 208, baseType: !2622, size: 64, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2619, file: !38, line: 209, baseType: !2622, size: 64, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2619, file: !38, line: 210, baseType: !2622, size: 64, offset: 256)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2619, file: !38, line: 211, baseType: !2622, size: 64, offset: 320)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2619, file: !38, line: 212, baseType: !2622, size: 64, offset: 384)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2619, file: !38, line: 213, baseType: !703, size: 64, offset: 448)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2619, file: !38, line: 214, baseType: !703, size: 64, offset: 512)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2583, file: !38, line: 324, baseType: !2632, size: 64, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!2589, !763, !112}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2583, file: !38, line: 325, baseType: !2636, size: 64, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{null, !2589}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2583, file: !38, line: 326, baseType: !2586, size: 64, offset: 192)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2583, file: !38, line: 327, baseType: !2586, size: 64, offset: 256)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2583, file: !38, line: 328, baseType: !2586, size: 64, offset: 320)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2583, file: !38, line: 329, baseType: !849, size: 64, offset: 384)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2583, file: !38, line: 332, baseType: !2644, size: 64, offset: 448)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!2647, !598}
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2583, file: !38, line: 333, baseType: !2649, size: 64, offset: 512)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!112, !598, !2652}
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2583, file: !38, line: 335, baseType: !2654, size: 64, offset: 576)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!112, !598, !2647}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2583, file: !38, line: 337, baseType: !2658, size: 64, offset: 640)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!112, !763, !2661}
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !764, file: !44, line: 1425, baseType: !2663, size: 64, offset: 512)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2665)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2666)
!2666 = !{!2667, !2671, !2672, !2676, !2677, !2678, !2693, !2716, !2720, !2721, !2744}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2665, file: !38, line: 429, baseType: !2668, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!112, !763, !112, !112, !713}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2665, file: !38, line: 430, baseType: !849, size: 64, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2665, file: !38, line: 431, baseType: !2673, size: 64, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!112, !763, !7}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2665, file: !38, line: 432, baseType: !2673, size: 64, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2665, file: !38, line: 433, baseType: !849, size: 64, offset: 256)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2665, file: !38, line: 434, baseType: !2679, size: 64, offset: 320)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!112, !763, !112, !2682}
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2684)
!2684 = !{!2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2683, file: !38, line: 416, baseType: !112, size: 32)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2683, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2683, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2683, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2683, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2683, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2683, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2683, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2665, file: !38, line: 435, baseType: !2694, size: 64, offset: 384)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!112, !763, !2601, !2697}
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2699)
!2699 = !{!2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2698, file: !38, line: 344, baseType: !112, size: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2698, file: !38, line: 345, baseType: !338, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2698, file: !38, line: 346, baseType: !338, size: 64, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2698, file: !38, line: 347, baseType: !338, size: 64, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2698, file: !38, line: 348, baseType: !338, size: 64, offset: 256)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2698, file: !38, line: 349, baseType: !338, size: 64, offset: 320)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2698, file: !38, line: 350, baseType: !338, size: 64, offset: 384)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2698, file: !38, line: 351, baseType: !942, size: 64, offset: 448)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2698, file: !38, line: 353, baseType: !942, size: 64, offset: 512)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2698, file: !38, line: 354, baseType: !112, size: 32, offset: 576)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2698, file: !38, line: 355, baseType: !112, size: 32, offset: 608)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2698, file: !38, line: 356, baseType: !338, size: 64, offset: 640)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2698, file: !38, line: 357, baseType: !338, size: 64, offset: 704)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2698, file: !38, line: 358, baseType: !338, size: 64, offset: 768)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2698, file: !38, line: 359, baseType: !942, size: 64, offset: 832)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2698, file: !38, line: 360, baseType: !112, size: 32, offset: 896)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2665, file: !38, line: 436, baseType: !2717, size: 64, offset: 448)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!112, !763, !2661, !2697}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2665, file: !38, line: 438, baseType: !2694, size: 64, offset: 512)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2665, file: !38, line: 439, baseType: !2722, size: 64, offset: 576)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!112, !763, !2725}
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2727)
!2727 = !{!2728, !2729}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2726, file: !38, line: 410, baseType: !7, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2726, file: !38, line: 411, baseType: !2730, size: 1344, offset: 64)
!2730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2731, size: 1344, elements: !455)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2732)
!2732 = !{!2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2743}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2731, file: !38, line: 396, baseType: !7, size: 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2731, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2731, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2731, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2731, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2731, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2731, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2731, file: !38, line: 404, baseType: !108, size: 64, offset: 256)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2731, file: !38, line: 405, baseType: !2742, size: 64, offset: 320)
!2742 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !270, line: 126, baseType: !338)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2731, file: !38, line: 406, baseType: !2742, size: 64, offset: 384)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2665, file: !38, line: 440, baseType: !2673, size: 64, offset: 640)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !764, file: !44, line: 1426, baseType: !2746, size: 64, offset: 576)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2748)
!2748 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !764, file: !44, line: 1427, baseType: !110, size: 64, offset: 640)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !764, file: !44, line: 1428, baseType: !110, size: 64, offset: 704)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !764, file: !44, line: 1429, baseType: !110, size: 64, offset: 768)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !764, file: !44, line: 1430, baseType: !559, size: 64, offset: 832)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !764, file: !44, line: 1431, baseType: !932, size: 256, offset: 896)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !764, file: !44, line: 1432, baseType: !112, size: 32, offset: 1152)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !764, file: !44, line: 1433, baseType: !912, size: 32, offset: 1184)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !764, file: !44, line: 1437, baseType: !2757, size: 64, offset: 1216)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2760)
!2760 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !764, file: !44, line: 1449, baseType: !2762, size: 64, offset: 1280)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !575, line: 34, size: 64, elements: !2763)
!2763 = !{!2764}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2762, file: !575, line: 35, baseType: !578, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !764, file: !44, line: 1450, baseType: !290, size: 128, offset: 1344)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !764, file: !44, line: 1451, baseType: !2767, size: 64, offset: 1472)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !764, file: !44, line: 1452, baseType: !2080, size: 64, offset: 1536)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !764, file: !44, line: 1453, baseType: !2771, size: 64, offset: 1600)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !764, file: !44, line: 1454, baseType: !803, size: 128, offset: 1664)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !764, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !764, file: !44, line: 1456, baseType: !2776, size: 2432, offset: 1856)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2777)
!2777 = !{!2778, !2779, !2780, !2782, !2814}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2776, file: !38, line: 519, baseType: !7, size: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2776, file: !38, line: 520, baseType: !932, size: 256, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2776, file: !38, line: 521, baseType: !2781, size: 192, offset: 320)
!2781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 192, elements: !455)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2776, file: !38, line: 522, baseType: !2783, size: 1728, offset: 512)
!2783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2784, size: 1728, elements: !455)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2785)
!2785 = !{!2786, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2784, file: !38, line: 223, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2789)
!2789 = !{!2790, !2791, !2804, !2805}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2788, file: !38, line: 444, baseType: !112, size: 32)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2788, file: !38, line: 445, baseType: !2792, size: 64, offset: 64)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2794)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2795)
!2795 = !{!2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2794, file: !38, line: 311, baseType: !849, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2794, file: !38, line: 312, baseType: !849, size: 64, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2794, file: !38, line: 313, baseType: !849, size: 64, offset: 128)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2794, file: !38, line: 314, baseType: !849, size: 64, offset: 192)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2794, file: !38, line: 315, baseType: !2586, size: 64, offset: 256)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2794, file: !38, line: 316, baseType: !2586, size: 64, offset: 320)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2794, file: !38, line: 317, baseType: !2586, size: 64, offset: 384)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2794, file: !38, line: 318, baseType: !2658, size: 64, offset: 448)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2788, file: !38, line: 446, baseType: !105, size: 64, offset: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2788, file: !38, line: 447, baseType: !2787, size: 64, offset: 192)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2784, file: !38, line: 224, baseType: !112, size: 32, offset: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2784, file: !38, line: 226, baseType: !290, size: 128, offset: 128)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2784, file: !38, line: 227, baseType: !110, size: 64, offset: 256)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2784, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2784, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2784, file: !38, line: 230, baseType: !2622, size: 64, offset: 384)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2784, file: !38, line: 231, baseType: !2622, size: 64, offset: 448)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2784, file: !38, line: 232, baseType: !111, size: 64, offset: 512)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2776, file: !38, line: 523, baseType: !2815, size: 192, offset: 2240)
!2815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2792, size: 192, elements: !455)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !764, file: !44, line: 1458, baseType: !2817, size: 2112, offset: 4288)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2818)
!2818 = !{!2819, !2820, !2821}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2817, file: !44, line: 1411, baseType: !112, size: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2817, file: !44, line: 1412, baseType: !1638, size: 128, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2817, file: !44, line: 1413, baseType: !2822, size: 1920, offset: 192)
!2822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2823, size: 1920, elements: !455)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2824, line: 12, size: 640, elements: !2825)
!2824 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2825 = !{!2826, !2834, !2835, !2840, !2841}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2823, file: !2824, line: 13, baseType: !2827, size: 320)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2828, line: 17, size: 320, elements: !2829)
!2828 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2829 = !{!2830, !2831, !2832, !2833}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2827, file: !2828, line: 18, baseType: !112, size: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2827, file: !2828, line: 19, baseType: !112, size: 32, offset: 32)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2827, file: !2828, line: 20, baseType: !1638, size: 128, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2827, file: !2828, line: 22, baseType: !542, size: 128, align: 64, offset: 192)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2823, file: !2824, line: 14, baseType: !183, size: 64, offset: 320)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2823, file: !2824, line: 15, baseType: !2836, size: 64, offset: 384)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2837, line: 16, size: 64, elements: !2838)
!2837 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2838 = !{!2839}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2836, file: !2837, line: 17, baseType: !1377, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2823, file: !2824, line: 16, baseType: !1638, size: 128, offset: 448)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2823, file: !2824, line: 17, baseType: !912, size: 32, offset: 576)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !764, file: !44, line: 1465, baseType: !111, size: 64, offset: 6400)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !764, file: !44, line: 1468, baseType: !372, size: 32, offset: 6464)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !764, file: !44, line: 1470, baseType: !703, size: 64, offset: 6528)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !764, file: !44, line: 1471, baseType: !703, size: 64, offset: 6592)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !764, file: !44, line: 1473, baseType: !303, size: 32, offset: 6656)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !764, file: !44, line: 1474, baseType: !2848, size: 64, offset: 6720)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !764, file: !44, line: 1477, baseType: !2851, size: 256, offset: 6784)
!2851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 256, elements: !210)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !764, file: !44, line: 1478, baseType: !2853, size: 128, offset: 7040)
!2853 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2854, line: 18, baseType: !2855)
!2854 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2854, line: 16, size: 128, elements: !2856)
!2856 = !{!2857}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2855, file: !2854, line: 17, baseType: !2858, size: 128)
!2858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 128, elements: !1892)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !764, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !764, file: !44, line: 1481, baseType: !2861, size: 32, offset: 7200)
!2861 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !270, line: 150, baseType: !7)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !764, file: !44, line: 1487, baseType: !1334, size: 192, offset: 7232)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !764, file: !44, line: 1493, baseType: !126, size: 64, offset: 7424)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !764, file: !44, line: 1495, baseType: !2865, size: 64, offset: 7488)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2867)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !557, line: 135, size: 1024, align: 512, elements: !2868)
!2868 = !{!2869, !2873, !2874, !2881, !2887, !2891, !2895, !2899, !2900, !2904, !2908, !2913, !2917}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2867, file: !557, line: 136, baseType: !2870, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!112, !559, !7}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2867, file: !557, line: 137, baseType: !2870, size: 64, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2867, file: !557, line: 138, baseType: !2875, size: 64, offset: 128)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!112, !2878, !2880}
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2867, file: !557, line: 139, baseType: !2882, size: 64, offset: 192)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!112, !2878, !7, !126, !2885}
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2867, file: !557, line: 141, baseType: !2888, size: 64, offset: 256)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!112, !2878}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2867, file: !557, line: 142, baseType: !2892, size: 64, offset: 320)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!112, !559}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2867, file: !557, line: 143, baseType: !2896, size: 64, offset: 384)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{null, !559}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2867, file: !557, line: 144, baseType: !2896, size: 64, offset: 448)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2867, file: !557, line: 145, baseType: !2901, size: 64, offset: 512)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{null, !559, !598}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2867, file: !557, line: 146, baseType: !2905, size: 64, offset: 576)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!144, !559, !144, !112}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2867, file: !557, line: 147, baseType: !2909, size: 64, offset: 640)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!555, !2912}
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2867, file: !557, line: 148, baseType: !2914, size: 64, offset: 704)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!112, !713, !269}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2867, file: !557, line: 149, baseType: !2918, size: 64, offset: 768)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!559, !559, !2921}
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !764, file: !44, line: 1500, baseType: !112, size: 32, offset: 7552)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !764, file: !44, line: 1502, baseType: !2925, size: 448, offset: 7616)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2570, line: 60, size: 448, elements: !2926)
!2926 = !{!2927, !2932, !2933, !2934, !2935, !2936, !2937}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2925, file: !2570, line: 61, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!110, !2931, !2568}
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2925, file: !2570, line: 63, baseType: !2928, size: 64, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2925, file: !2570, line: 66, baseType: !117, size: 64, offset: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2925, file: !2570, line: 67, baseType: !112, size: 32, offset: 192)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2925, file: !2570, line: 68, baseType: !7, size: 32, offset: 224)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2925, file: !2570, line: 71, baseType: !290, size: 128, offset: 256)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2925, file: !2570, line: 77, baseType: !2938, size: 64, offset: 384)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !764, file: !44, line: 1505, baseType: !936, size: 64, offset: 8064)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !764, file: !44, line: 1508, baseType: !936, size: 64, offset: 8128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !764, file: !44, line: 1511, baseType: !112, size: 32, offset: 8192)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !764, file: !44, line: 1514, baseType: !1072, size: 32, offset: 8224)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !764, file: !44, line: 1517, baseType: !2944, size: 64, offset: 8256)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2115, line: 18, flags: DIFlagFwdDecl)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !764, file: !44, line: 1518, baseType: !799, size: 64, offset: 8320)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !764, file: !44, line: 1525, baseType: !1870, size: 64, offset: 8384)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !764, file: !44, line: 1532, baseType: !2949, size: 64, offset: 8448)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2950, line: 52, size: 64, elements: !2951)
!2950 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2951 = !{!2952}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2949, file: !2950, line: 53, baseType: !2953, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2950, line: 40, size: 256, elements: !2955)
!2955 = !{!2956, !2957, !2962}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2954, file: !2950, line: 42, baseType: !414)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2954, file: !2950, line: 44, baseType: !2958, size: 192)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2950, line: 28, size: 192, elements: !2959)
!2959 = !{!2960, !2961}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2958, file: !2950, line: 29, baseType: !290, size: 128)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2958, file: !2950, line: 31, baseType: !117, size: 64, offset: 128)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2954, file: !2950, line: 49, baseType: !117, size: 64, offset: 192)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !764, file: !44, line: 1533, baseType: !2949, size: 64, offset: 8512)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !764, file: !44, line: 1534, baseType: !542, size: 128, align: 64, offset: 8576)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !764, file: !44, line: 1535, baseType: !2114, size: 256, offset: 8704)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !764, file: !44, line: 1537, baseType: !1334, size: 192, offset: 8960)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !764, file: !44, line: 1542, baseType: !112, size: 32, offset: 9152)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !764, file: !44, line: 1545, baseType: !414, offset: 9184)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !764, file: !44, line: 1546, baseType: !290, size: 128, offset: 9216)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !764, file: !44, line: 1548, baseType: !414, offset: 9344)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !764, file: !44, line: 1549, baseType: !290, size: 128, offset: 9344)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !599, file: !44, line: 624, baseType: !898, size: 64, offset: 256)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !599, file: !44, line: 631, baseType: !110, size: 64, offset: 320)
!2974 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !44, line: 639, baseType: !2975, size: 32, offset: 384)
!2975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !44, line: 639, size: 32, elements: !2976)
!2976 = !{!2977, !2979}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2975, file: !44, line: 640, baseType: !2978, size: 32)
!2978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2975, file: !44, line: 641, baseType: !7, size: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !599, file: !44, line: 643, baseType: !677, size: 32, offset: 416)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !599, file: !44, line: 644, baseType: !695, size: 64, offset: 448)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !599, file: !44, line: 645, baseType: !699, size: 128, offset: 512)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !599, file: !44, line: 646, baseType: !699, size: 128, offset: 640)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !599, file: !44, line: 647, baseType: !699, size: 128, offset: 768)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !599, file: !44, line: 648, baseType: !414, offset: 896)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !599, file: !44, line: 649, baseType: !155, size: 16, offset: 896)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !599, file: !44, line: 650, baseType: !161, size: 8, offset: 912)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !599, file: !44, line: 651, baseType: !161, size: 8, offset: 920)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !599, file: !44, line: 652, baseType: !2742, size: 64, offset: 960)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !599, file: !44, line: 659, baseType: !110, size: 64, offset: 1024)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !599, file: !44, line: 660, baseType: !932, size: 256, offset: 1088)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !599, file: !44, line: 662, baseType: !110, size: 64, offset: 1344)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !599, file: !44, line: 663, baseType: !110, size: 64, offset: 1408)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !599, file: !44, line: 665, baseType: !803, size: 128, offset: 1472)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !599, file: !44, line: 666, baseType: !290, size: 128, offset: 1600)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !599, file: !44, line: 675, baseType: !290, size: 128, offset: 1728)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !599, file: !44, line: 676, baseType: !290, size: 128, offset: 1856)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !599, file: !44, line: 677, baseType: !290, size: 128, offset: 1984)
!2999 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !44, line: 678, baseType: !3000, size: 128, offset: 2112)
!3000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !44, line: 678, size: 128, elements: !3001)
!3001 = !{!3002, !3003}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3000, file: !44, line: 679, baseType: !799, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3000, file: !44, line: 680, baseType: !542, size: 128, align: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !599, file: !44, line: 682, baseType: !938, size: 64, offset: 2240)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !599, file: !44, line: 683, baseType: !938, size: 64, offset: 2304)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !599, file: !44, line: 684, baseType: !912, size: 32, offset: 2368)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !599, file: !44, line: 685, baseType: !912, size: 32, offset: 2400)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !599, file: !44, line: 686, baseType: !912, size: 32, offset: 2432)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !599, file: !44, line: 688, baseType: !912, size: 32, offset: 2464)
!3010 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !44, line: 690, baseType: !3011, size: 64, offset: 2496)
!3011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !44, line: 690, size: 64, elements: !3012)
!3012 = !{!3013, !3236}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3011, file: !44, line: 691, baseType: !3014, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3016)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !3017)
!3017 = !{!3018, !3019, !3023, !3028, !3032, !3033, !3034, !3038, !3051, !3052, !3060, !3064, !3065, !3069, !3070, !3074, !3079, !3080, !3084, !3088, !3196, !3200, !3201, !3205, !3206, !3210, !3214, !3219, !3223, !3227, !3231, !3235}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3016, file: !44, line: 1823, baseType: !105, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3016, file: !44, line: 1824, baseType: !3020, size: 64, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!695, !529, !695, !112}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3016, file: !44, line: 1825, baseType: !3024, size: 64, offset: 128)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!485, !529, !144, !499, !3027}
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3016, file: !44, line: 1826, baseType: !3029, size: 64, offset: 192)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!485, !529, !126, !499, !3027}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3016, file: !44, line: 1827, baseType: !1009, size: 64, offset: 256)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3016, file: !44, line: 1828, baseType: !1009, size: 64, offset: 320)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3016, file: !44, line: 1829, baseType: !3035, size: 64, offset: 384)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!112, !1012, !269}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3016, file: !44, line: 1830, baseType: !3039, size: 64, offset: 448)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!112, !529, !3042}
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !3044)
!3044 = !{!3045, !3050}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3043, file: !44, line: 1777, baseType: !3046, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !3047)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!112, !3042, !126, !112, !695, !338, !7}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3043, file: !44, line: 1778, baseType: !695, size: 64, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3016, file: !44, line: 1831, baseType: !3039, size: 64, offset: 512)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3016, file: !44, line: 1832, baseType: !3053, size: 64, offset: 576)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!3056, !529, !3058}
!3056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3057, line: 52, baseType: !7)
!3057 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !783, line: 27, flags: DIFlagFwdDecl)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3016, file: !44, line: 1833, baseType: !3061, size: 64, offset: 640)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!117, !529, !7, !110}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3016, file: !44, line: 1834, baseType: !3061, size: 64, offset: 704)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3016, file: !44, line: 1835, baseType: !3066, size: 64, offset: 768)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!112, !529, !1144}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3016, file: !44, line: 1836, baseType: !110, size: 64, offset: 832)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3016, file: !44, line: 1837, baseType: !3071, size: 64, offset: 896)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!112, !598, !529}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3016, file: !44, line: 1838, baseType: !3075, size: 64, offset: 960)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!112, !529, !3078}
!3078 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !111)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3016, file: !44, line: 1839, baseType: !3071, size: 64, offset: 1024)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3016, file: !44, line: 1840, baseType: !3081, size: 64, offset: 1088)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!112, !529, !695, !695, !112}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3016, file: !44, line: 1841, baseType: !3085, size: 64, offset: 1152)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!112, !112, !529, !112}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3016, file: !44, line: 1842, baseType: !3089, size: 64, offset: 1216)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!112, !529, !112, !3092}
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !3094)
!3094 = !{!3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3126, !3127, !3128, !3141, !3172}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3093, file: !44, line: 1063, baseType: !3092, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3093, file: !44, line: 1064, baseType: !290, size: 128, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3093, file: !44, line: 1065, baseType: !803, size: 128, offset: 192)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3093, file: !44, line: 1066, baseType: !290, size: 128, offset: 320)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3093, file: !44, line: 1069, baseType: !290, size: 128, offset: 448)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3093, file: !44, line: 1072, baseType: !3078, size: 64, offset: 576)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3093, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3093, file: !44, line: 1074, baseType: !163, size: 8, offset: 672)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3093, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3093, file: !44, line: 1076, baseType: !112, size: 32, offset: 736)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3093, file: !44, line: 1077, baseType: !1638, size: 128, offset: 768)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3093, file: !44, line: 1078, baseType: !529, size: 64, offset: 896)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3093, file: !44, line: 1079, baseType: !695, size: 64, offset: 960)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3093, file: !44, line: 1080, baseType: !695, size: 64, offset: 1024)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3093, file: !44, line: 1082, baseType: !3110, size: 64, offset: 1088)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !3112)
!3112 = !{!3113, !3121, !3122, !3123, !3124, !3125}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3111, file: !44, line: 1315, baseType: !3114)
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3115, line: 20, baseType: !3116)
!3115 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3115, line: 11, elements: !3117)
!3117 = !{!3118}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3116, file: !3115, line: 12, baseType: !3119)
!3119 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !426, line: 33, baseType: !3120)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !426, line: 31, elements: !428)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3111, file: !44, line: 1316, baseType: !112, size: 32)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3111, file: !44, line: 1317, baseType: !112, size: 32, offset: 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3111, file: !44, line: 1318, baseType: !3110, size: 64, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3111, file: !44, line: 1319, baseType: !529, size: 64, offset: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3111, file: !44, line: 1320, baseType: !542, size: 128, align: 64, offset: 192)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3093, file: !44, line: 1084, baseType: !110, size: 64, offset: 1152)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3093, file: !44, line: 1085, baseType: !110, size: 64, offset: 1216)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3093, file: !44, line: 1087, baseType: !3129, size: 64, offset: 1280)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3131)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3132)
!3132 = !{!3133, !3137}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3131, file: !44, line: 1012, baseType: !3134, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{null, !3092, !3092}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3131, file: !44, line: 1013, baseType: !3138, size: 64, offset: 64)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{null, !3092}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3093, file: !44, line: 1088, baseType: !3142, size: 64, offset: 1344)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3144)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3145)
!3145 = !{!3146, !3150, !3154, !3155, !3159, !3163, !3167, !3171}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3144, file: !44, line: 1017, baseType: !3147, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!3078, !3078}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3144, file: !44, line: 1018, baseType: !3151, size: 64, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{null, !3078}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3144, file: !44, line: 1019, baseType: !3138, size: 64, offset: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3144, file: !44, line: 1020, baseType: !3156, size: 64, offset: 192)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!112, !3092, !112}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3144, file: !44, line: 1021, baseType: !3160, size: 64, offset: 256)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!269, !3092}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3144, file: !44, line: 1022, baseType: !3164, size: 64, offset: 320)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!112, !3092, !112, !293}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3144, file: !44, line: 1023, baseType: !3168, size: 64, offset: 384)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{null, !3092, !986}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3144, file: !44, line: 1024, baseType: !3160, size: 64, offset: 448)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3093, file: !44, line: 1097, baseType: !3173, size: 256, offset: 1408)
!3173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3093, file: !44, line: 1089, size: 256, elements: !3174)
!3174 = !{!3175, !3184, !3190}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3173, file: !44, line: 1090, baseType: !3176, size: 256)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3177, line: 10, size: 256, elements: !3178)
!3177 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3178 = !{!3179, !3180, !3183}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3176, file: !3177, line: 11, baseType: !372, size: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3176, file: !3177, line: 12, baseType: !3181, size: 64, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3177, line: 5, flags: DIFlagFwdDecl)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3176, file: !3177, line: 13, baseType: !290, size: 128, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3173, file: !44, line: 1091, baseType: !3185, size: 64)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3177, line: 17, size: 64, elements: !3186)
!3186 = !{!3187}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3185, file: !3177, line: 18, baseType: !3188, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3177, line: 16, flags: DIFlagFwdDecl)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3173, file: !44, line: 1096, baseType: !3191, size: 192)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3173, file: !44, line: 1092, size: 192, elements: !3192)
!3192 = !{!3193, !3194, !3195}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3191, file: !44, line: 1093, baseType: !290, size: 128)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3191, file: !44, line: 1094, baseType: !112, size: 32, offset: 128)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3191, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3016, file: !44, line: 1843, baseType: !3197, size: 64, offset: 1280)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!485, !529, !885, !112, !499, !3027, !112}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3016, file: !44, line: 1844, baseType: !1264, size: 64, offset: 1344)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3016, file: !44, line: 1845, baseType: !3202, size: 64, offset: 1408)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!112, !112}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3016, file: !44, line: 1846, baseType: !3089, size: 64, offset: 1472)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3016, file: !44, line: 1847, baseType: !3207, size: 64, offset: 1536)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!485, !2255, !529, !3027, !499, !7}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3016, file: !44, line: 1848, baseType: !3211, size: 64, offset: 1600)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!485, !529, !3027, !2255, !499, !7}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3016, file: !44, line: 1849, baseType: !3215, size: 64, offset: 1664)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!112, !529, !117, !3218, !986}
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3016, file: !44, line: 1850, baseType: !3220, size: 64, offset: 1728)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!117, !529, !112, !695, !695}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3016, file: !44, line: 1852, baseType: !3224, size: 64, offset: 1792)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{null, !875, !529}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3016, file: !44, line: 1856, baseType: !3228, size: 64, offset: 1856)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!485, !529, !695, !529, !695, !499, !7}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3016, file: !44, line: 1858, baseType: !3232, size: 64, offset: 1920)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!695, !529, !695, !529, !695, !695, !7}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3016, file: !44, line: 1861, baseType: !3081, size: 64, offset: 1984)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3011, file: !44, line: 692, baseType: !828, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !599, file: !44, line: 694, baseType: !3238, size: 64, offset: 2560)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3240)
!3240 = !{!3241, !3242, !3243, !3244}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3239, file: !44, line: 1101, baseType: !414)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3239, file: !44, line: 1102, baseType: !290, size: 128)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3239, file: !44, line: 1103, baseType: !290, size: 128, offset: 128)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3239, file: !44, line: 1104, baseType: !290, size: 128, offset: 256)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !599, file: !44, line: 695, baseType: !899, size: 1216, align: 64, offset: 2624)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !599, file: !44, line: 696, baseType: !290, size: 128, offset: 3840)
!3247 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !44, line: 697, baseType: !3248, size: 64, offset: 3968)
!3248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !44, line: 697, size: 64, elements: !3249)
!3249 = !{!3250, !3251, !3252, !3263, !3264}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3248, file: !44, line: 698, baseType: !2255, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3248, file: !44, line: 699, baseType: !2767, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3248, file: !44, line: 700, baseType: !3253, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3255, line: 14, size: 832, elements: !3256)
!3255 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3256 = !{!3257, !3258, !3259, !3260, !3261, !3262}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3254, file: !3255, line: 15, baseType: !401, size: 512)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3254, file: !3255, line: 16, baseType: !105, size: 64, offset: 512)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3254, file: !3255, line: 17, baseType: !3014, size: 64, offset: 576)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3254, file: !3255, line: 18, baseType: !290, size: 128, offset: 640)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3254, file: !3255, line: 19, baseType: !677, size: 32, offset: 768)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3254, file: !3255, line: 20, baseType: !7, size: 32, offset: 800)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3248, file: !44, line: 701, baseType: !144, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3248, file: !44, line: 702, baseType: !7, size: 32)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !599, file: !44, line: 705, baseType: !303, size: 32, offset: 4032)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !599, file: !44, line: 708, baseType: !303, size: 32, offset: 4064)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !599, file: !44, line: 709, baseType: !2848, size: 64, offset: 4096)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !599, file: !44, line: 720, baseType: !111, size: 64, offset: 4160)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !560, file: !557, line: 98, baseType: !3270, size: 256, offset: 448)
!3270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 256, elements: !210)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !560, file: !557, line: 101, baseType: !3272, size: 32, offset: 704)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3273, line: 25, size: 32, elements: !3274)
!3273 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3274 = !{!3275}
!3275 = !DIDerivedType(tag: DW_TAG_member, scope: !3272, file: !3273, line: 26, baseType: !3276, size: 32)
!3276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3272, file: !3273, line: 26, size: 32, elements: !3277)
!3277 = !{!3278}
!3278 = !DIDerivedType(tag: DW_TAG_member, scope: !3276, file: !3273, line: 30, baseType: !3279, size: 32)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3276, file: !3273, line: 30, size: 32, elements: !3280)
!3280 = !{!3281, !3282}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3279, file: !3273, line: 31, baseType: !414)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3279, file: !3273, line: 32, baseType: !112, size: 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !560, file: !557, line: 102, baseType: !2865, size: 64, offset: 768)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !560, file: !557, line: 103, baseType: !763, size: 64, offset: 832)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !560, file: !557, line: 104, baseType: !110, size: 64, offset: 896)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !560, file: !557, line: 105, baseType: !111, size: 64, offset: 960)
!3287 = !DIDerivedType(tag: DW_TAG_member, scope: !560, file: !557, line: 107, baseType: !3288, size: 128, offset: 1024)
!3288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !560, file: !557, line: 107, size: 128, elements: !3289)
!3289 = !{!3290, !3291}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3288, file: !557, line: 108, baseType: !290, size: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3288, file: !557, line: 109, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !560, file: !557, line: 111, baseType: !290, size: 128, offset: 1152)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !560, file: !557, line: 112, baseType: !290, size: 128, offset: 1280)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !560, file: !557, line: 120, baseType: !3296, size: 128, offset: 1408)
!3296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !560, file: !557, line: 116, size: 128, elements: !3297)
!3297 = !{!3298, !3299, !3300}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3296, file: !557, line: 117, baseType: !803, size: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3296, file: !557, line: 118, baseType: !574, size: 128)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3296, file: !557, line: 119, baseType: !542, size: 128, align: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !530, file: !44, line: 922, baseType: !598, size: 64, offset: 256)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !530, file: !44, line: 923, baseType: !3014, size: 64, offset: 320)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !530, file: !44, line: 929, baseType: !414, offset: 384)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !530, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !530, file: !44, line: 931, baseType: !936, size: 64, offset: 448)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !530, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !530, file: !44, line: 933, baseType: !2861, size: 32, offset: 544)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !530, file: !44, line: 934, baseType: !1334, size: 192, offset: 576)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !530, file: !44, line: 935, baseType: !695, size: 64, offset: 768)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !530, file: !44, line: 936, baseType: !3311, size: 192, offset: 832)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3312)
!3312 = !{!3313, !3314, !3315, !3316, !3317, !3318}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3311, file: !44, line: 886, baseType: !3114)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3311, file: !44, line: 887, baseType: !1628, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3311, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3311, file: !44, line: 889, baseType: !604, size: 32, offset: 96)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3311, file: !44, line: 889, baseType: !604, size: 32, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3311, file: !44, line: 890, baseType: !112, size: 32, offset: 160)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !530, file: !44, line: 937, baseType: !1704, size: 64, offset: 1024)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !530, file: !44, line: 938, baseType: !3321, size: 256, offset: 1088)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3322)
!3322 = !{!3323, !3324, !3325, !3326, !3327, !3328}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3321, file: !44, line: 897, baseType: !110, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3321, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3321, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3321, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3321, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3321, file: !44, line: 904, baseType: !695, size: 64, offset: 192)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !530, file: !44, line: 940, baseType: !338, size: 64, offset: 1344)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !530, file: !44, line: 945, baseType: !111, size: 64, offset: 1408)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !530, file: !44, line: 949, baseType: !290, size: 128, offset: 1472)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !530, file: !44, line: 950, baseType: !290, size: 128, offset: 1600)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !530, file: !44, line: 952, baseType: !898, size: 64, offset: 1728)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !530, file: !44, line: 953, baseType: !1072, size: 32, offset: 1792)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !530, file: !44, line: 954, baseType: !1072, size: 32, offset: 1824)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !520, file: !479, line: 174, baseType: !526, size: 64, offset: 320)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !520, file: !479, line: 176, baseType: !3338, size: 64, offset: 384)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!112, !529, !407, !519, !1144}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !508, file: !479, line: 90, baseType: !503, size: 64, offset: 192)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !508, file: !479, line: 91, baseType: !3343, size: 64, offset: 256)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !469, file: !402, line: 143, baseType: !3345, size: 64, offset: 256)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!3348, !407}
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3350)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3351)
!3351 = !{!3352, !3353, !3357, !3361, !3367, !3371}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3350, file: !61, line: 40, baseType: !60, size: 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3350, file: !61, line: 41, baseType: !3354, size: 64, offset: 64)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!269}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3350, file: !61, line: 42, baseType: !3358, size: 64, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!111}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3350, file: !61, line: 43, baseType: !3362, size: 64, offset: 192)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!2283, !3365}
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3350, file: !61, line: 44, baseType: !3368, size: 64, offset: 256)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!2283}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3350, file: !61, line: 45, baseType: !146, size: 64, offset: 320)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !469, file: !402, line: 144, baseType: !3373, size: 64, offset: 320)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!2283, !407}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !469, file: !402, line: 145, baseType: !3377, size: 64, offset: 384)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{null, !407, !3380, !3381}
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !401, file: !402, line: 70, baseType: !3383, size: 64, offset: 384)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !783, line: 123, size: 1024, elements: !3385)
!3385 = !{!3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3514, !3515, !3516, !3517, !3518}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3384, file: !783, line: 124, baseType: !912, size: 32)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3384, file: !783, line: 125, baseType: !912, size: 32, offset: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3384, file: !783, line: 135, baseType: !3383, size: 64, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3384, file: !783, line: 136, baseType: !126, size: 64, offset: 128)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3384, file: !783, line: 138, baseType: !925, size: 192, align: 64, offset: 192)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3384, file: !783, line: 140, baseType: !2283, size: 64, offset: 384)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3384, file: !783, line: 141, baseType: !7, size: 32, offset: 448)
!3393 = !DIDerivedType(tag: DW_TAG_member, scope: !3384, file: !783, line: 142, baseType: !3394, size: 256, offset: 512)
!3394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3384, file: !783, line: 142, size: 256, elements: !3395)
!3395 = !{!3396, !3442, !3446}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3394, file: !783, line: 143, baseType: !3397, size: 192)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !783, line: 91, size: 192, elements: !3398)
!3398 = !{!3399, !3400, !3401}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3397, file: !783, line: 92, baseType: !110, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3397, file: !783, line: 94, baseType: !921, size: 64, offset: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3397, file: !783, line: 100, baseType: !3402, size: 64, offset: 128)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !783, line: 180, size: 704, elements: !3404)
!3404 = !{!3405, !3406, !3407, !3414, !3415, !3416, !3440, !3441}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3403, file: !783, line: 182, baseType: !3383, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3403, file: !783, line: 183, baseType: !7, size: 32, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3403, file: !783, line: 186, baseType: !3408, size: 192, offset: 128)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3409, line: 19, size: 192, elements: !3410)
!3409 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3410 = !{!3411, !3412, !3413}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3408, file: !3409, line: 20, baseType: !903, size: 128)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3408, file: !3409, line: 21, baseType: !7, size: 32, offset: 128)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3408, file: !3409, line: 22, baseType: !7, size: 32, offset: 160)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3403, file: !783, line: 187, baseType: !372, size: 32, offset: 320)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3403, file: !783, line: 188, baseType: !372, size: 32, offset: 352)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3403, file: !783, line: 189, baseType: !3417, size: 64, offset: 384)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !783, line: 168, size: 320, elements: !3419)
!3419 = !{!3420, !3424, !3428, !3432, !3436}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3418, file: !783, line: 169, baseType: !3421, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!112, !875, !3402}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3418, file: !783, line: 171, baseType: !3425, size: 64, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!112, !3383, !126, !494}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3418, file: !783, line: 173, baseType: !3429, size: 64, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!112, !3383}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3418, file: !783, line: 174, baseType: !3433, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!112, !3383, !3383, !126}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3418, file: !783, line: 176, baseType: !3437, size: 64, offset: 256)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!112, !875, !3383, !3402}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3403, file: !783, line: 192, baseType: !290, size: 128, offset: 448)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3403, file: !783, line: 194, baseType: !1638, size: 128, offset: 576)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3394, file: !783, line: 144, baseType: !3443, size: 64)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !783, line: 103, size: 64, elements: !3444)
!3444 = !{!3445}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3443, file: !783, line: 104, baseType: !3383, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3394, file: !783, line: 145, baseType: !3447, size: 256)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !783, line: 107, size: 256, elements: !3448)
!3448 = !{!3449, !3509, !3512, !3513}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3447, file: !783, line: 108, baseType: !3450, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3452)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !783, line: 217, size: 768, elements: !3453)
!3453 = !{!3454, !3474, !3478, !3482, !3486, !3490, !3494, !3498, !3499, !3500, !3501, !3505}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3452, file: !783, line: 222, baseType: !3455, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!112, !3458}
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !783, line: 197, size: 1088, elements: !3460)
!3460 = !{!3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3459, file: !783, line: 199, baseType: !3383, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3459, file: !783, line: 200, baseType: !529, size: 64, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3459, file: !783, line: 201, baseType: !875, size: 64, offset: 128)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3459, file: !783, line: 202, baseType: !111, size: 64, offset: 192)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3459, file: !783, line: 205, baseType: !1334, size: 192, offset: 256)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3459, file: !783, line: 206, baseType: !1334, size: 192, offset: 448)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3459, file: !783, line: 207, baseType: !112, size: 32, offset: 640)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3459, file: !783, line: 208, baseType: !290, size: 128, offset: 704)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3459, file: !783, line: 209, baseType: !144, size: 64, offset: 832)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3459, file: !783, line: 211, baseType: !499, size: 64, offset: 896)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3459, file: !783, line: 212, baseType: !269, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3459, file: !783, line: 213, baseType: !269, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3459, file: !783, line: 214, baseType: !1172, size: 64, offset: 1024)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3452, file: !783, line: 223, baseType: !3475, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{null, !3458}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3452, file: !783, line: 236, baseType: !3479, size: 64, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!112, !875, !111}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3452, file: !783, line: 238, baseType: !3483, size: 64, offset: 192)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!111, !875, !3027}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3452, file: !783, line: 239, baseType: !3487, size: 64, offset: 256)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!111, !875, !111, !3027}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3452, file: !783, line: 240, baseType: !3491, size: 64, offset: 320)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{null, !875, !111}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3452, file: !783, line: 242, baseType: !3495, size: 64, offset: 384)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!485, !3458, !144, !499, !695}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3452, file: !783, line: 252, baseType: !499, size: 64, offset: 448)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3452, file: !783, line: 259, baseType: !269, size: 8, offset: 512)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3452, file: !783, line: 260, baseType: !3495, size: 64, offset: 576)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3452, file: !783, line: 263, baseType: !3502, size: 64, offset: 640)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!3056, !3458, !3058}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3452, file: !783, line: 266, baseType: !3506, size: 64, offset: 704)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!112, !3458, !1144}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3447, file: !783, line: 109, baseType: !3510, size: 64, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !783, line: 31, flags: DIFlagFwdDecl)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3447, file: !783, line: 110, baseType: !695, size: 64, offset: 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3447, file: !783, line: 111, baseType: !3383, size: 64, offset: 192)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3384, file: !783, line: 148, baseType: !111, size: 64, offset: 768)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3384, file: !783, line: 154, baseType: !338, size: 64, offset: 832)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3384, file: !783, line: 156, baseType: !155, size: 16, offset: 896)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3384, file: !783, line: 157, baseType: !494, size: 16, offset: 912)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3384, file: !783, line: 158, baseType: !3519, size: 64, offset: 960)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !783, line: 32, flags: DIFlagFwdDecl)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !401, file: !402, line: 71, baseType: !3522, size: 32, offset: 448)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3523, line: 19, size: 32, elements: !3524)
!3523 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3524 = !{!3525}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3522, file: !3523, line: 20, baseType: !1390, size: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !401, file: !402, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !401, file: !402, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !401, file: !402, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !401, file: !402, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !401, file: !402, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !398, file: !73, line: 463, baseType: !397, size: 64, offset: 512)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !398, file: !73, line: 465, baseType: !3533, size: 64, offset: 576)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !398, file: !73, line: 467, baseType: !126, size: 64, offset: 640)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !398, file: !73, line: 468, baseType: !3537, size: 64, offset: 704)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3539)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3540)
!3540 = !{!3541, !3542, !3543, !3547, !3552, !3556}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3539, file: !73, line: 88, baseType: !126, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3539, file: !73, line: 89, baseType: !505, size: 64, offset: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3539, file: !73, line: 90, baseType: !3544, size: 64, offset: 128)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!112, !397, !450}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3539, file: !73, line: 91, baseType: !3548, size: 64, offset: 192)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!144, !397, !3551, !3380, !3381}
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3539, file: !73, line: 93, baseType: !3553, size: 64, offset: 256)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{null, !397}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3539, file: !73, line: 95, baseType: !3557, size: 64, offset: 320)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3559)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3560)
!3560 = !{!3561, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3559, file: !80, line: 279, baseType: !3562, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!112, !397}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3559, file: !80, line: 280, baseType: !3553, size: 64, offset: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3559, file: !80, line: 281, baseType: !3562, size: 64, offset: 128)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3559, file: !80, line: 282, baseType: !3562, size: 64, offset: 192)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3559, file: !80, line: 283, baseType: !3562, size: 64, offset: 256)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3559, file: !80, line: 284, baseType: !3562, size: 64, offset: 320)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3559, file: !80, line: 285, baseType: !3562, size: 64, offset: 384)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3559, file: !80, line: 286, baseType: !3562, size: 64, offset: 448)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3559, file: !80, line: 287, baseType: !3562, size: 64, offset: 512)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3559, file: !80, line: 288, baseType: !3562, size: 64, offset: 576)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3559, file: !80, line: 289, baseType: !3562, size: 64, offset: 640)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3559, file: !80, line: 290, baseType: !3562, size: 64, offset: 704)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3559, file: !80, line: 291, baseType: !3562, size: 64, offset: 768)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3559, file: !80, line: 292, baseType: !3562, size: 64, offset: 832)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3559, file: !80, line: 293, baseType: !3562, size: 64, offset: 896)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3559, file: !80, line: 294, baseType: !3562, size: 64, offset: 960)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3559, file: !80, line: 295, baseType: !3562, size: 64, offset: 1024)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3559, file: !80, line: 296, baseType: !3562, size: 64, offset: 1088)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3559, file: !80, line: 297, baseType: !3562, size: 64, offset: 1152)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3559, file: !80, line: 298, baseType: !3562, size: 64, offset: 1216)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3559, file: !80, line: 299, baseType: !3562, size: 64, offset: 1280)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3559, file: !80, line: 300, baseType: !3562, size: 64, offset: 1344)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3559, file: !80, line: 301, baseType: !3562, size: 64, offset: 1408)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !398, file: !73, line: 470, baseType: !3588, size: 64, offset: 768)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3590, line: 82, size: 1408, elements: !3591)
!3590 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3591 = !{!3592, !3593, !3594, !3595, !3596, !3597, !3598, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3671, !3674, !3675}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3589, file: !3590, line: 83, baseType: !126, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3589, file: !3590, line: 84, baseType: !126, size: 64, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3589, file: !3590, line: 85, baseType: !397, size: 64, offset: 128)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3589, file: !3590, line: 86, baseType: !505, size: 64, offset: 192)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3589, file: !3590, line: 87, baseType: !505, size: 64, offset: 256)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3589, file: !3590, line: 88, baseType: !505, size: 64, offset: 320)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3589, file: !3590, line: 90, baseType: !3599, size: 64, offset: 384)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!112, !397, !3602}
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3604)
!3604 = !{!3605, !3606, !3607, !3608, !3609, !3610, !3611, !3623, !3635, !3636, !3637, !3638, !3639, !3647, !3648, !3649, !3650, !3651, !3652}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3603, file: !67, line: 96, baseType: !126, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3603, file: !67, line: 97, baseType: !3588, size: 64, offset: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3603, file: !67, line: 99, baseType: !105, size: 64, offset: 128)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3603, file: !67, line: 100, baseType: !126, size: 64, offset: 192)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3603, file: !67, line: 102, baseType: !269, size: 8, offset: 256)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3603, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3603, file: !67, line: 105, baseType: !3612, size: 64, offset: 320)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3614)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !300, line: 262, size: 1600, elements: !3615)
!3615 = !{!3616, !3617, !3618, !3622}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3614, file: !300, line: 263, baseType: !2851, size: 256)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3614, file: !300, line: 264, baseType: !2851, size: 256, offset: 256)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3614, file: !300, line: 265, baseType: !3619, size: 1024, offset: 512)
!3619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 1024, elements: !3620)
!3620 = !{!3621}
!3621 = !DISubrange(count: 128)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3614, file: !300, line: 266, baseType: !2283, size: 64, offset: 1536)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3603, file: !67, line: 106, baseType: !3624, size: 64, offset: 384)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3626)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !300, line: 210, size: 256, elements: !3627)
!3627 = !{!3628, !3632, !3633, !3634}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3626, file: !300, line: 211, baseType: !3629, size: 72)
!3629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 72, elements: !3630)
!3630 = !{!3631}
!3631 = !DISubrange(count: 9)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3626, file: !300, line: 212, baseType: !310, size: 64, offset: 128)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3626, file: !300, line: 213, baseType: !303, size: 32, offset: 192)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3626, file: !300, line: 214, baseType: !303, size: 32, offset: 224)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3603, file: !67, line: 108, baseType: !3562, size: 64, offset: 448)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3603, file: !67, line: 109, baseType: !3553, size: 64, offset: 512)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3603, file: !67, line: 110, baseType: !3562, size: 64, offset: 576)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3603, file: !67, line: 111, baseType: !3553, size: 64, offset: 640)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3603, file: !67, line: 112, baseType: !3640, size: 64, offset: 704)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!112, !397, !3643}
!3643 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3644)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3645)
!3645 = !{!3646}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3644, file: !80, line: 51, baseType: !112, size: 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3603, file: !67, line: 113, baseType: !3562, size: 64, offset: 768)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3603, file: !67, line: 114, baseType: !505, size: 64, offset: 832)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3603, file: !67, line: 115, baseType: !505, size: 64, offset: 896)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3603, file: !67, line: 117, baseType: !3557, size: 64, offset: 960)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3603, file: !67, line: 118, baseType: !3553, size: 64, offset: 1024)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3603, file: !67, line: 120, baseType: !3653, size: 64, offset: 1088)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3589, file: !3590, line: 91, baseType: !3544, size: 64, offset: 448)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3589, file: !3590, line: 92, baseType: !3562, size: 64, offset: 512)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3589, file: !3590, line: 93, baseType: !3553, size: 64, offset: 576)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3589, file: !3590, line: 94, baseType: !3562, size: 64, offset: 640)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3589, file: !3590, line: 95, baseType: !3553, size: 64, offset: 704)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3589, file: !3590, line: 97, baseType: !3562, size: 64, offset: 768)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3589, file: !3590, line: 98, baseType: !3562, size: 64, offset: 832)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3589, file: !3590, line: 100, baseType: !3640, size: 64, offset: 896)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3589, file: !3590, line: 101, baseType: !3562, size: 64, offset: 960)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3589, file: !3590, line: 103, baseType: !3562, size: 64, offset: 1024)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3589, file: !3590, line: 105, baseType: !3562, size: 64, offset: 1088)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3589, file: !3590, line: 107, baseType: !3557, size: 64, offset: 1152)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3589, file: !3590, line: 109, baseType: !3668, size: 64, offset: 1216)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3670)
!3670 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3590, line: 109, flags: DIFlagFwdDecl)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3589, file: !3590, line: 111, baseType: !3672, size: 64, offset: 1280)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3590, line: 111, flags: DIFlagFwdDecl)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3589, file: !3590, line: 112, baseType: !809, offset: 1344)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3589, file: !3590, line: 114, baseType: !269, size: 8, offset: 1344)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !398, file: !73, line: 471, baseType: !3602, size: 64, offset: 832)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !398, file: !73, line: 473, baseType: !111, size: 64, offset: 896)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !398, file: !73, line: 475, baseType: !111, size: 64, offset: 960)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !398, file: !73, line: 480, baseType: !1334, size: 192, offset: 1024)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !398, file: !73, line: 484, baseType: !3681, size: 576, offset: 1216)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3682)
!3682 = !{!3683, !3684, !3685, !3686, !3687, !3688}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3681, file: !73, line: 362, baseType: !290, size: 128)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3681, file: !73, line: 363, baseType: !290, size: 128, offset: 128)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3681, file: !73, line: 364, baseType: !290, size: 128, offset: 256)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3681, file: !73, line: 365, baseType: !290, size: 128, offset: 384)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3681, file: !73, line: 366, baseType: !269, size: 8, offset: 512)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3681, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !398, file: !73, line: 485, baseType: !3690, size: 2304, offset: 1792)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3691)
!3691 = !{!3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3787, !3791}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3690, file: !80, line: 566, baseType: !3643, size: 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3690, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3690, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3690, file: !80, line: 569, baseType: !269, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3690, file: !80, line: 570, baseType: !269, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3690, file: !80, line: 571, baseType: !269, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3690, file: !80, line: 572, baseType: !269, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3690, file: !80, line: 573, baseType: !269, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3690, file: !80, line: 574, baseType: !269, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3690, file: !80, line: 575, baseType: !269, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3690, file: !80, line: 576, baseType: !269, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3690, file: !80, line: 577, baseType: !372, size: 32, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3690, file: !80, line: 578, baseType: !414, offset: 96)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3690, file: !80, line: 580, baseType: !290, size: 128, offset: 128)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3690, file: !80, line: 581, baseType: !1659, size: 192, offset: 256)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3690, file: !80, line: 582, baseType: !3708, size: 64, offset: 448)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3710, line: 43, size: 1472, elements: !3711)
!3710 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3711 = !{!3712, !3713, !3714, !3715, !3716, !3719, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3709, file: !3710, line: 44, baseType: !126, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3709, file: !3710, line: 45, baseType: !112, size: 32, offset: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3709, file: !3710, line: 46, baseType: !290, size: 128, offset: 128)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3709, file: !3710, line: 47, baseType: !414, offset: 256)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3709, file: !3710, line: 48, baseType: !3717, size: 64, offset: 256)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3709, file: !3710, line: 49, baseType: !3720, size: 320, offset: 320)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3721, line: 11, size: 320, elements: !3722)
!3721 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3722 = !{!3723, !3724, !3725, !3730}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3720, file: !3721, line: 16, baseType: !803, size: 128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3720, file: !3721, line: 17, baseType: !110, size: 64, offset: 128)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3720, file: !3721, line: 18, baseType: !3726, size: 64, offset: 192)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{null, !3729}
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3720, file: !3721, line: 19, baseType: !372, size: 32, offset: 256)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3709, file: !3710, line: 50, baseType: !110, size: 64, offset: 640)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3709, file: !3710, line: 51, baseType: !1460, size: 64, offset: 704)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3709, file: !3710, line: 52, baseType: !1460, size: 64, offset: 768)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3709, file: !3710, line: 53, baseType: !1460, size: 64, offset: 832)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3709, file: !3710, line: 54, baseType: !1460, size: 64, offset: 896)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3709, file: !3710, line: 55, baseType: !1460, size: 64, offset: 960)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3709, file: !3710, line: 56, baseType: !110, size: 64, offset: 1024)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3709, file: !3710, line: 57, baseType: !110, size: 64, offset: 1088)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3709, file: !3710, line: 58, baseType: !110, size: 64, offset: 1152)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3709, file: !3710, line: 59, baseType: !110, size: 64, offset: 1216)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3709, file: !3710, line: 60, baseType: !110, size: 64, offset: 1280)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3709, file: !3710, line: 61, baseType: !397, size: 64, offset: 1344)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3709, file: !3710, line: 62, baseType: !269, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3709, file: !3710, line: 63, baseType: !269, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3690, file: !80, line: 583, baseType: !269, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3690, file: !80, line: 584, baseType: !269, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3690, file: !80, line: 585, baseType: !269, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3690, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3690, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3690, file: !80, line: 592, baseType: !1452, size: 512, offset: 576)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3690, file: !80, line: 593, baseType: !338, size: 64, offset: 1088)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3690, file: !80, line: 594, baseType: !2114, size: 256, offset: 1152)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3690, file: !80, line: 595, baseType: !1638, size: 128, offset: 1408)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3690, file: !80, line: 596, baseType: !3717, size: 64, offset: 1536)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3690, file: !80, line: 597, baseType: !912, size: 32, offset: 1600)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3690, file: !80, line: 598, baseType: !912, size: 32, offset: 1632)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3690, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3690, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3690, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3690, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3690, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3690, file: !80, line: 604, baseType: !269, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3690, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3690, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3690, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3690, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3690, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3690, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3690, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3690, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3690, file: !80, line: 613, baseType: !112, size: 32, offset: 1792)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3690, file: !80, line: 614, baseType: !112, size: 32, offset: 1824)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3690, file: !80, line: 615, baseType: !338, size: 64, offset: 1856)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3690, file: !80, line: 616, baseType: !338, size: 64, offset: 1920)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3690, file: !80, line: 617, baseType: !338, size: 64, offset: 1984)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3690, file: !80, line: 618, baseType: !338, size: 64, offset: 2048)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3690, file: !80, line: 620, baseType: !3778, size: 64, offset: 2112)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3780)
!3780 = !{!3781, !3782, !3783, !3784}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3779, file: !80, line: 537, baseType: !414)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3779, file: !80, line: 538, baseType: !7, size: 32)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3779, file: !80, line: 540, baseType: !290, size: 128, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3779, file: !80, line: 543, baseType: !3785, size: 64, offset: 192)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3690, file: !80, line: 621, baseType: !3788, size: 64, offset: 2176)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{null, !397, !1601}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3690, file: !80, line: 622, baseType: !3792, size: 64, offset: 2240)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !398, file: !73, line: 486, baseType: !3795, size: 64, offset: 4096)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3797)
!3797 = !{!3798, !3799, !3800, !3804, !3805, !3806}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3796, file: !80, line: 643, baseType: !3559, size: 1472)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3796, file: !80, line: 644, baseType: !3562, size: 64, offset: 1472)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3796, file: !80, line: 645, baseType: !3801, size: 64, offset: 1536)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{null, !397, !269}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3796, file: !80, line: 646, baseType: !3562, size: 64, offset: 1600)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3796, file: !80, line: 647, baseType: !3553, size: 64, offset: 1664)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3796, file: !80, line: 648, baseType: !3553, size: 64, offset: 1728)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !398, file: !73, line: 493, baseType: !3808, size: 64, offset: 4160)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !398, file: !73, line: 499, baseType: !290, size: 128, offset: 4224)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !398, file: !73, line: 502, baseType: !3812, size: 64, offset: 4352)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3814)
!3814 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !398, file: !73, line: 504, baseType: !3816, size: 64, offset: 4416)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !398, file: !73, line: 505, baseType: !338, size: 64, offset: 4480)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !398, file: !73, line: 510, baseType: !338, size: 64, offset: 4544)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !398, file: !73, line: 511, baseType: !3820, size: 64, offset: 4608)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3822)
!3822 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !398, file: !73, line: 513, baseType: !3824, size: 64, offset: 4672)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3826)
!3826 = !{!3827, !3828}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3825, file: !73, line: 293, baseType: !7, size: 32)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3825, file: !73, line: 294, baseType: !110, size: 64, offset: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !398, file: !73, line: 515, baseType: !290, size: 128, offset: 4736)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !398, file: !73, line: 526, baseType: !3831, offset: 4864)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3832, line: 5, elements: !428)
!3832 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !398, file: !73, line: 528, baseType: !3834, size: 64, offset: 4864)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3836, line: 14, flags: DIFlagFwdDecl)
!3836 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !398, file: !73, line: 529, baseType: !3838, size: 64, offset: 4928)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3840, line: 17, size: 192, elements: !3841)
!3840 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3841 = !{!3842, !3843, !3926}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3839, file: !3840, line: 18, baseType: !3838, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3839, file: !3840, line: 19, baseType: !3844, size: 64, offset: 64)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3846)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3840, line: 110, size: 1152, elements: !3847)
!3847 = !{!3848, !3852, !3856, !3862, !3868, !3872, !3876, !3881, !3885, !3886, !3890, !3894, !3898, !3909, !3910, !3911, !3912, !3922}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3846, file: !3840, line: 111, baseType: !3849, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!3838, !3838}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3846, file: !3840, line: 112, baseType: !3853, size: 64, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{null, !3838}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3846, file: !3840, line: 113, baseType: !3857, size: 64, offset: 128)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!269, !3860}
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3839)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3846, file: !3840, line: 114, baseType: !3863, size: 64, offset: 192)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!2283, !3860, !3866}
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3846, file: !3840, line: 116, baseType: !3869, size: 64, offset: 256)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!269, !3860, !126}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3846, file: !3840, line: 118, baseType: !3873, size: 64, offset: 320)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!112, !3860, !126, !7, !111, !499}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3846, file: !3840, line: 123, baseType: !3877, size: 64, offset: 384)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!112, !3860, !126, !3880, !499}
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3846, file: !3840, line: 126, baseType: !3882, size: 64, offset: 448)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!126, !3860}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3846, file: !3840, line: 127, baseType: !3882, size: 64, offset: 512)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3846, file: !3840, line: 128, baseType: !3887, size: 64, offset: 576)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!3838, !3860}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3846, file: !3840, line: 130, baseType: !3891, size: 64, offset: 640)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!3838, !3860, !3838}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3846, file: !3840, line: 133, baseType: !3895, size: 64, offset: 704)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!3838, !3860, !126}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3846, file: !3840, line: 135, baseType: !3899, size: 64, offset: 768)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!112, !3860, !126, !126, !7, !7, !3902}
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3840, line: 43, size: 640, elements: !3904)
!3904 = !{!3905, !3906, !3907}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3903, file: !3840, line: 44, baseType: !3838, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3903, file: !3840, line: 45, baseType: !7, size: 32, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3903, file: !3840, line: 46, baseType: !3908, size: 512, offset: 128)
!3908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 512, elements: !1490)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3846, file: !3840, line: 140, baseType: !3891, size: 64, offset: 832)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3846, file: !3840, line: 143, baseType: !3887, size: 64, offset: 896)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3846, file: !3840, line: 145, baseType: !3849, size: 64, offset: 960)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3846, file: !3840, line: 146, baseType: !3913, size: 64, offset: 1024)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!112, !3860, !3916}
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3840, line: 29, size: 128, elements: !3918)
!3918 = !{!3919, !3920, !3921}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3917, file: !3840, line: 30, baseType: !7, size: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3917, file: !3840, line: 31, baseType: !7, size: 32, offset: 32)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3917, file: !3840, line: 32, baseType: !3860, size: 64, offset: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3846, file: !3840, line: 148, baseType: !3923, size: 64, offset: 1088)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!112, !3860, !397}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3839, file: !3840, line: 20, baseType: !397, size: 64, offset: 128)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !398, file: !73, line: 534, baseType: !677, size: 32, offset: 4992)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !398, file: !73, line: 535, baseType: !372, size: 32, offset: 5024)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !398, file: !73, line: 537, baseType: !414, offset: 5056)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !398, file: !73, line: 538, baseType: !290, size: 128, offset: 5056)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !398, file: !73, line: 540, baseType: !3932, size: 64, offset: 5184)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3934, line: 54, size: 960, elements: !3935)
!3934 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3935 = !{!3936, !3937, !3938, !3939, !3940, !3941, !3942, !3946, !3950, !3951, !3952, !3953, !3957, !3961, !3962}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3933, file: !3934, line: 55, baseType: !126, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3933, file: !3934, line: 56, baseType: !105, size: 64, offset: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3933, file: !3934, line: 58, baseType: !505, size: 64, offset: 128)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3933, file: !3934, line: 59, baseType: !505, size: 64, offset: 192)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3933, file: !3934, line: 60, baseType: !407, size: 64, offset: 256)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3933, file: !3934, line: 62, baseType: !3544, size: 64, offset: 320)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3933, file: !3934, line: 63, baseType: !3943, size: 64, offset: 384)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!144, !397, !3551}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3933, file: !3934, line: 65, baseType: !3947, size: 64, offset: 448)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{null, !3932}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3933, file: !3934, line: 66, baseType: !3553, size: 64, offset: 512)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3933, file: !3934, line: 68, baseType: !3562, size: 64, offset: 576)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3933, file: !3934, line: 70, baseType: !3348, size: 64, offset: 640)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3933, file: !3934, line: 71, baseType: !3954, size: 64, offset: 704)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!2283, !397}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3933, file: !3934, line: 73, baseType: !3958, size: 64, offset: 768)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{null, !397, !3380, !3381}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3933, file: !3934, line: 75, baseType: !3557, size: 64, offset: 832)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3933, file: !3934, line: 77, baseType: !3672, size: 64, offset: 896)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !398, file: !73, line: 541, baseType: !505, size: 64, offset: 5248)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !398, file: !73, line: 543, baseType: !3553, size: 64, offset: 5312)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !398, file: !73, line: 544, baseType: !3966, size: 64, offset: 5376)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !398, file: !73, line: 545, baseType: !3969, size: 64, offset: 5440)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !398, file: !73, line: 547, baseType: !269, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !398, file: !73, line: 548, baseType: !269, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !398, file: !73, line: 549, baseType: !269, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !398, file: !73, line: 550, baseType: !269, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !321, file: !287, line: 635, baseType: !398, size: 5568, offset: 2304)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !321, file: !287, line: 636, baseType: !519, size: 64, offset: 7872)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !321, file: !287, line: 637, baseType: !519, size: 64, offset: 7936)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !321, file: !287, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !316, file: !287, line: 312, baseType: !320, size: 64, offset: 192)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !316, file: !287, line: 314, baseType: !111, size: 64, offset: 256)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !316, file: !287, line: 315, baseType: !382, size: 64, offset: 320)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !316, file: !287, line: 316, baseType: !3983, size: 64, offset: 384)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !287, line: 69, size: 832, elements: !3985)
!3985 = !{!3986, !3987, !3988, !3991, !3992}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3984, file: !287, line: 70, baseType: !320, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3984, file: !287, line: 71, baseType: !290, size: 128, offset: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !3984, file: !287, line: 72, baseType: !3989, size: 64, offset: 192)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !287, line: 72, flags: DIFlagFwdDecl)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3984, file: !287, line: 73, baseType: !163, size: 8, offset: 256)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3984, file: !287, line: 74, baseType: !401, size: 512, offset: 320)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !316, file: !287, line: 318, baseType: !7, size: 32, offset: 448)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !316, file: !287, line: 319, baseType: !155, size: 16, offset: 480)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !316, file: !287, line: 320, baseType: !155, size: 16, offset: 496)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !316, file: !287, line: 321, baseType: !155, size: 16, offset: 512)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !316, file: !287, line: 322, baseType: !155, size: 16, offset: 528)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !316, file: !287, line: 323, baseType: !7, size: 32, offset: 544)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !316, file: !287, line: 324, baseType: !161, size: 8, offset: 576)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !316, file: !287, line: 325, baseType: !161, size: 8, offset: 584)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !316, file: !287, line: 330, baseType: !161, size: 8, offset: 592)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !316, file: !287, line: 331, baseType: !161, size: 8, offset: 600)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !316, file: !287, line: 332, baseType: !161, size: 8, offset: 608)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !316, file: !287, line: 333, baseType: !161, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !316, file: !287, line: 334, baseType: !161, size: 8, offset: 624)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !316, file: !287, line: 335, baseType: !161, size: 8, offset: 632)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !316, file: !287, line: 336, baseType: !151, size: 16, offset: 640)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !316, file: !287, line: 337, baseType: !4009, size: 64, offset: 704)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !316, file: !287, line: 339, baseType: !4011, size: 64, offset: 768)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !316, file: !287, line: 340, baseType: !338, size: 64, offset: 832)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !316, file: !287, line: 346, baseType: !3825, size: 128, offset: 896)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !316, file: !287, line: 348, baseType: !4015, size: 32, offset: 1024)
!4015 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !287, line: 155, baseType: !112)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !316, file: !287, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !316, file: !287, line: 352, baseType: !161, size: 8, offset: 1064)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !316, file: !287, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !316, file: !287, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !316, file: !287, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !316, file: !287, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !316, file: !287, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !316, file: !287, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !316, file: !287, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !316, file: !287, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !316, file: !287, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !316, file: !287, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !316, file: !287, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !316, file: !287, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !316, file: !287, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !316, file: !287, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !316, file: !287, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !316, file: !287, line: 376, baseType: !7, size: 32, offset: 1120)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !316, file: !287, line: 377, baseType: !7, size: 32, offset: 1152)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !316, file: !287, line: 380, baseType: !4036, size: 64, offset: 1216)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !287, line: 303, flags: DIFlagFwdDecl)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !316, file: !287, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !316, file: !287, line: 383, baseType: !112, size: 32, offset: 1312)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !316, file: !287, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !316, file: !287, line: 387, baseType: !4042, size: 32, offset: 1376)
!4042 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !287, line: 180, baseType: !7)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !316, file: !287, line: 388, baseType: !398, size: 5568, offset: 1408)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !316, file: !287, line: 390, baseType: !112, size: 32, offset: 6976)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !316, file: !287, line: 396, baseType: !7, size: 32, offset: 7008)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !316, file: !287, line: 397, baseType: !4047, size: 8704, offset: 7040)
!4047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 8704, elements: !265)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !316, file: !287, line: 399, baseType: !269, size: 8, offset: 15744)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !316, file: !287, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !316, file: !287, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !316, file: !287, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !316, file: !287, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !316, file: !287, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !316, file: !287, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !316, file: !287, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !316, file: !287, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !316, file: !287, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !316, file: !287, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !316, file: !287, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !316, file: !287, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !316, file: !287, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !316, file: !287, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !316, file: !287, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !316, file: !287, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !316, file: !287, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !316, file: !287, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !316, file: !287, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !316, file: !287, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !316, file: !287, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !316, file: !287, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !316, file: !287, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !316, file: !287, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !316, file: !287, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !316, file: !287, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !316, file: !287, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !316, file: !287, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !316, file: !287, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !316, file: !287, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !316, file: !287, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !316, file: !287, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !316, file: !287, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !316, file: !287, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !316, file: !287, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !316, file: !287, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !316, file: !287, line: 450, baseType: !4086, size: 16, offset: 15792)
!4086 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !287, line: 206, baseType: !155)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !316, file: !287, line: 451, baseType: !912, size: 32, offset: 15808)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !316, file: !287, line: 453, baseType: !4089, size: 512, offset: 15840)
!4089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 512, elements: !1892)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !316, file: !287, line: 454, baseType: !799, size: 64, offset: 16384)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !316, file: !287, line: 455, baseType: !519, size: 64, offset: 16448)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !316, file: !287, line: 456, baseType: !112, size: 32, offset: 16512)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !316, file: !287, line: 457, baseType: !4094, size: 1088, offset: 16576)
!4094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 1088, elements: !265)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !316, file: !287, line: 458, baseType: !4094, size: 1088, offset: 17664)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !316, file: !287, line: 469, baseType: !505, size: 64, offset: 18752)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !316, file: !287, line: 471, baseType: !4098, size: 64, offset: 18816)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !287, line: 304, flags: DIFlagFwdDecl)
!4100 = !DIDerivedType(tag: DW_TAG_member, scope: !316, file: !287, line: 478, baseType: !4101, size: 64, offset: 18880)
!4101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !316, file: !287, line: 478, size: 64, elements: !4102)
!4102 = !{!4103, !4106}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4101, file: !287, line: 479, baseType: !4104, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !287, line: 305, flags: DIFlagFwdDecl)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4101, file: !287, line: 480, baseType: !315, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !316, file: !287, line: 482, baseType: !151, size: 16, offset: 18944)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !316, file: !287, line: 483, baseType: !161, size: 8, offset: 18960)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !316, file: !287, line: 497, baseType: !151, size: 16, offset: 18976)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !316, file: !287, line: 498, baseType: !337, size: 64, offset: 19008)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !316, file: !287, line: 499, baseType: !499, size: 64, offset: 19072)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !316, file: !287, line: 500, baseType: !144, size: 64, offset: 19136)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !316, file: !287, line: 502, baseType: !110, size: 64, offset: 19200)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !286, file: !287, line: 863, baseType: !4115, size: 64, offset: 320)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{null, !315}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !286, file: !287, line: 864, baseType: !4119, size: 64, offset: 384)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!112, !315, !3643}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !286, file: !287, line: 865, baseType: !4123, size: 64, offset: 448)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!112, !315}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !286, file: !287, line: 866, baseType: !4115, size: 64, offset: 512)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !286, file: !287, line: 867, baseType: !4128, size: 64, offset: 576)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!112, !315, !112}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !286, file: !287, line: 868, baseType: !4132, size: 64, offset: 640)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4134)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !287, line: 795, size: 384, elements: !4135)
!4135 = !{!4136, !4141, !4145, !4146, !4147, !4148}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4134, file: !287, line: 797, baseType: !4137, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!4140, !315, !4042}
!4140 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !287, line: 772, baseType: !7)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4134, file: !287, line: 801, baseType: !4142, size: 64, offset: 64)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!4140, !315}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4134, file: !287, line: 804, baseType: !4142, size: 64, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4134, file: !287, line: 807, baseType: !4115, size: 64, offset: 192)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4134, file: !287, line: 808, baseType: !4115, size: 64, offset: 256)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4134, file: !287, line: 811, baseType: !4115, size: 64, offset: 320)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !286, file: !287, line: 869, baseType: !505, size: 64, offset: 704)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !286, file: !287, line: 870, baseType: !3603, size: 1152, offset: 768)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !286, file: !287, line: 871, baseType: !4152, size: 128, offset: 1920)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !287, line: 759, size: 128, elements: !4153)
!4153 = !{!4154, !4155}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4152, file: !287, line: 760, baseType: !414)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4152, file: !287, line: 761, baseType: !290, size: 128)
!4156 = !DIGlobalVariableExpression(var: !4157, expr: !DIExpression())
!4157 = distinct !DIGlobalVariable(name: "wdtpci_pci_tbl", scope: !2, file: !3, line: 719, type: !4158, isLocal: true, isDefinition: true)
!4158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 512, elements: !1726)
!4159 = !DIGlobalVariableExpression(var: !4160, expr: !DIExpression())
!4160 = distinct !DIGlobalVariable(name: "dev_count", scope: !2, file: !3, line: 58, type: !112, isLocal: true, isDefinition: true)
!4161 = !DIGlobalVariableExpression(var: !4162, expr: !DIExpression())
!4162 = distinct !DIGlobalVariable(name: "irq", scope: !2, file: !3, line: 65, type: !112, isLocal: true, isDefinition: true)
!4163 = !DIGlobalVariableExpression(var: !4164, expr: !DIExpression())
!4164 = distinct !DIGlobalVariable(name: "io", scope: !2, file: !3, line: 64, type: !336, isLocal: true, isDefinition: true)
!4165 = !DIGlobalVariableExpression(var: !4166, expr: !DIExpression())
!4166 = distinct !DIGlobalVariable(name: "wdtpci_lock", scope: !2, file: !3, line: 61, type: !414, isLocal: true, isDefinition: true)
!4167 = !DIGlobalVariableExpression(var: !4168, expr: !DIExpression())
!4168 = distinct !DIGlobalVariable(name: "wdtpci_miscdev", scope: !2, file: !3, line: 574, type: !4169, isLocal: true, isDefinition: true)
!4169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "miscdevice", file: !4170, line: 79, size: 640, elements: !4171)
!4170 = !DIFile(filename: "./include/linux/miscdevice.h", directory: "/home/lizy2001/genbc/linux")
!4171 = !{!4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4169, file: !4170, line: 80, baseType: !112, size: 32)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4169, file: !4170, line: 81, baseType: !126, size: 64, offset: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4169, file: !4170, line: 82, baseType: !3014, size: 64, offset: 128)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4169, file: !4170, line: 83, baseType: !290, size: 128, offset: 192)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4169, file: !4170, line: 84, baseType: !397, size: 64, offset: 320)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "this_device", scope: !4169, file: !4170, line: 85, baseType: !397, size: 64, offset: 384)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4169, file: !4170, line: 86, baseType: !505, size: 64, offset: 448)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !4169, file: !4170, line: 87, baseType: !126, size: 64, offset: 512)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4169, file: !4170, line: 88, baseType: !494, size: 16, offset: 576)
!4181 = !DIGlobalVariableExpression(var: !4182, expr: !DIExpression())
!4182 = distinct !DIGlobalVariable(name: "wdtpci_fops", scope: !2, file: !3, line: 564, type: !3015, isLocal: true, isDefinition: true)
!4183 = !DIGlobalVariableExpression(var: !4184, expr: !DIExpression())
!4184 = distinct !DIGlobalVariable(name: "expect_close", scope: !2, file: !3, line: 62, type: !109, isLocal: true, isDefinition: true)
!4185 = !DIGlobalVariableExpression(var: !4186, expr: !DIExpression())
!4186 = distinct !DIGlobalVariable(name: "wd_heartbeat", scope: !2, file: !3, line: 71, type: !112, isLocal: true, isDefinition: true)
!4187 = !DIGlobalVariableExpression(var: !4188, expr: !DIExpression())
!4188 = distinct !DIGlobalVariable(name: "open_lock", scope: !2, file: !3, line: 60, type: !110, isLocal: true, isDefinition: true)
!4189 = !DIGlobalVariableExpression(var: !4190, expr: !DIExpression())
!4190 = distinct !DIGlobalVariable(name: "wdtpci_notifier", scope: !2, file: !3, line: 599, type: !4191, isLocal: true, isDefinition: true)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4192, line: 54, size: 192, elements: !4193)
!4192 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!4193 = !{!4194, !4200, !4201}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4191, file: !4192, line: 55, baseType: !4195, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4192, line: 51, baseType: !4196)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!112, !4199, !110, !111}
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4191, file: !4192, line: 56, baseType: !4199, size: 64, offset: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4191, file: !4192, line: 57, baseType: !112, size: 32, offset: 128)
!4202 = !DIGlobalVariableExpression(var: !4203, expr: !DIExpression())
!4203 = distinct !DIGlobalVariable(name: "temp_miscdev", scope: !2, file: !3, line: 588, type: !4169, isLocal: true, isDefinition: true)
!4204 = !DIGlobalVariableExpression(var: !4205, expr: !DIExpression())
!4205 = distinct !DIGlobalVariable(name: "wdtpci_temp_fops", scope: !2, file: !3, line: 580, type: !3015, isLocal: true, isDefinition: true)
!4206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 144, elements: !4207)
!4207 = !{!4208}
!4208 = !DISubrange(count: 18)
!4209 = !{!"rsp"}
!4210 = !{i32 7, !"Dwarf Version", i32 4}
!4211 = !{i32 2, !"Debug Info Version", i32 3}
!4212 = !{i32 1, !"wchar_size", i32 2}
!4213 = !{i32 1, !"Code Model", i32 2}
!4214 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4215 = distinct !DISubprogram(name: "wdtpci_driver_init", scope: !3, file: !3, line: 738, type: !4216, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!112}
!4218 = !DILocation(line: 738, column: 1, scope: !4215)
!4219 = distinct !DISubprogram(name: "wdtpci_driver_exit", scope: !3, file: !3, line: 738, type: !236, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4220 = !DILocation(line: 738, column: 1, scope: !4219)
!4221 = distinct !DISubprogram(name: "wdtpci_init_one", scope: !3, file: !3, line: 604, type: !313, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4222 = !DILocalVariable(name: "dev", arg: 1, scope: !4221, file: !3, line: 604, type: !315)
!4223 = !DILocation(line: 604, column: 44, scope: !4221)
!4224 = !DILocalVariable(name: "ent", arg: 2, scope: !4221, file: !3, line: 605, type: !297)
!4225 = !DILocation(line: 605, column: 34, scope: !4221)
!4226 = !DILocalVariable(name: "ret", scope: !4221, file: !3, line: 607, type: !112)
!4227 = !DILocation(line: 607, column: 6, scope: !4221)
!4228 = !DILocation(line: 609, column: 11, scope: !4221)
!4229 = !DILocation(line: 610, column: 6, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 610, column: 6)
!4231 = !DILocation(line: 610, column: 16, scope: !4230)
!4232 = !DILocation(line: 610, column: 6, scope: !4221)
!4233 = !DILocation(line: 611, column: 3, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4230, file: !3, line: 610, column: 21)
!4235 = !DILocation(line: 612, column: 3, scope: !4234)
!4236 = !DILocation(line: 615, column: 6, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 615, column: 6)
!4238 = !DILocation(line: 615, column: 11, scope: !4237)
!4239 = !DILocation(line: 615, column: 18, scope: !4237)
!4240 = !DILocation(line: 615, column: 21, scope: !4237)
!4241 = !DILocation(line: 615, column: 26, scope: !4237)
!4242 = !DILocation(line: 615, column: 6, scope: !4221)
!4243 = !DILocation(line: 616, column: 3, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 615, column: 34)
!4245 = !DILocation(line: 617, column: 3, scope: !4244)
!4246 = !DILocation(line: 620, column: 24, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 620, column: 6)
!4248 = !DILocation(line: 620, column: 6, scope: !4247)
!4249 = !DILocation(line: 620, column: 6, scope: !4221)
!4250 = !DILocation(line: 621, column: 3, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4247, file: !3, line: 620, column: 30)
!4252 = !DILocation(line: 622, column: 3, scope: !4251)
!4253 = !DILocation(line: 625, column: 6, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 625, column: 6)
!4255 = !DILocation(line: 625, column: 33, scope: !4254)
!4256 = !DILocation(line: 625, column: 6, scope: !4221)
!4257 = !DILocation(line: 626, column: 3, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 625, column: 44)
!4259 = !DILocation(line: 627, column: 7, scope: !4258)
!4260 = !DILocation(line: 628, column: 3, scope: !4258)
!4261 = !DILocation(line: 631, column: 25, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 631, column: 6)
!4263 = !DILocation(line: 631, column: 6, scope: !4262)
!4264 = !DILocation(line: 631, column: 6, scope: !4221)
!4265 = !DILocation(line: 632, column: 3, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4262, file: !3, line: 631, column: 45)
!4267 = !DILocation(line: 634, column: 3, scope: !4266)
!4268 = !DILocation(line: 637, column: 8, scope: !4221)
!4269 = !DILocation(line: 637, column: 13, scope: !4221)
!4270 = !DILocation(line: 637, column: 6, scope: !4221)
!4271 = !DILocation(line: 638, column: 7, scope: !4221)
!4272 = !DILocation(line: 638, column: 5, scope: !4221)
!4273 = !DILocation(line: 640, column: 18, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 640, column: 6)
!4275 = !DILocation(line: 640, column: 6, scope: !4274)
!4276 = !DILocation(line: 640, column: 6, scope: !4221)
!4277 = !DILocation(line: 642, column: 3, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 641, column: 34)
!4279 = !DILocation(line: 643, column: 3, scope: !4278)
!4280 = !DILocation(line: 646, column: 2, scope: !4221)
!4281 = !DILocation(line: 651, column: 27, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 651, column: 6)
!4283 = !DILocation(line: 651, column: 6, scope: !4282)
!4284 = !DILocation(line: 651, column: 6, scope: !4221)
!4285 = !DILocation(line: 652, column: 3, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4282, file: !3, line: 651, column: 39)
!4287 = !DILocation(line: 653, column: 3, scope: !4286)
!4288 = !DILocation(line: 655, column: 2, scope: !4286)
!4289 = !DILocation(line: 657, column: 8, scope: !4221)
!4290 = !DILocation(line: 657, column: 6, scope: !4221)
!4291 = !DILocation(line: 658, column: 6, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 658, column: 6)
!4293 = !DILocation(line: 658, column: 6, scope: !4221)
!4294 = !DILocation(line: 659, column: 3, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4292, file: !3, line: 658, column: 11)
!4296 = !DILocation(line: 660, column: 3, scope: !4295)
!4297 = !DILocation(line: 663, column: 6, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 663, column: 6)
!4299 = !DILocation(line: 663, column: 11, scope: !4298)
!4300 = !DILocation(line: 663, column: 6, scope: !4221)
!4301 = !DILocation(line: 664, column: 9, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4298, file: !3, line: 663, column: 19)
!4303 = !DILocation(line: 664, column: 7, scope: !4302)
!4304 = !DILocation(line: 665, column: 7, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 665, column: 7)
!4306 = !DILocation(line: 665, column: 7, scope: !4302)
!4307 = !DILocation(line: 666, column: 4, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 665, column: 12)
!4309 = !DILocation(line: 668, column: 4, scope: !4308)
!4310 = !DILocation(line: 670, column: 2, scope: !4302)
!4311 = !DILocation(line: 672, column: 8, scope: !4221)
!4312 = !DILocation(line: 672, column: 6, scope: !4221)
!4313 = !DILocation(line: 673, column: 6, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 673, column: 6)
!4315 = !DILocation(line: 673, column: 6, scope: !4221)
!4316 = !DILocation(line: 674, column: 3, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4314, file: !3, line: 673, column: 11)
!4318 = !DILocation(line: 676, column: 3, scope: !4317)
!4319 = !DILocation(line: 679, column: 2, scope: !4221)
!4320 = !DILocation(line: 681, column: 6, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 681, column: 6)
!4322 = !DILocation(line: 681, column: 11, scope: !4321)
!4323 = !DILocation(line: 681, column: 6, scope: !4221)
!4324 = !DILocation(line: 682, column: 3, scope: !4321)
!4325 = !DILocation(line: 685, column: 6, scope: !4221)
!4326 = !DILocation(line: 685, column: 2, scope: !4221)
!4327 = !DILabel(scope: !4221, name: "out", file: !3, line: 686)
!4328 = !DILocation(line: 686, column: 1, scope: !4221)
!4329 = !DILocation(line: 687, column: 9, scope: !4221)
!4330 = !DILocation(line: 687, column: 2, scope: !4221)
!4331 = !DILabel(scope: !4221, name: "out_misc", file: !3, line: 689)
!4332 = !DILocation(line: 689, column: 1, scope: !4221)
!4333 = !DILocation(line: 690, column: 6, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 690, column: 6)
!4335 = !DILocation(line: 690, column: 11, scope: !4334)
!4336 = !DILocation(line: 690, column: 6, scope: !4221)
!4337 = !DILocation(line: 691, column: 3, scope: !4334)
!4338 = !DILocation(line: 690, column: 14, scope: !4334)
!4339 = !DILabel(scope: !4221, name: "out_rbt", file: !3, line: 692)
!4340 = !DILocation(line: 692, column: 1, scope: !4221)
!4341 = !DILocation(line: 693, column: 2, scope: !4221)
!4342 = !DILabel(scope: !4221, name: "out_irq", file: !3, line: 694)
!4343 = !DILocation(line: 694, column: 1, scope: !4221)
!4344 = !DILocation(line: 695, column: 11, scope: !4221)
!4345 = !DILocation(line: 695, column: 2, scope: !4221)
!4346 = !DILabel(scope: !4221, name: "out_reg", file: !3, line: 696)
!4347 = !DILocation(line: 696, column: 1, scope: !4221)
!4348 = !DILocation(line: 697, column: 21, scope: !4221)
!4349 = !DILocation(line: 697, column: 2, scope: !4221)
!4350 = !DILabel(scope: !4221, name: "out_pci", file: !3, line: 698)
!4351 = !DILocation(line: 698, column: 1, scope: !4221)
!4352 = !DILocation(line: 699, column: 21, scope: !4221)
!4353 = !DILocation(line: 699, column: 2, scope: !4221)
!4354 = !DILocation(line: 700, column: 2, scope: !4221)
!4355 = !DILocation(line: 701, column: 1, scope: !4221)
!4356 = distinct !DISubprogram(name: "wdtpci_remove_one", scope: !3, file: !3, line: 704, type: !4116, scopeLine: 705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4357 = !DILocalVariable(name: "pdev", arg: 1, scope: !4356, file: !3, line: 704, type: !315)
!4358 = !DILocation(line: 704, column: 47, scope: !4356)
!4359 = !DILocation(line: 708, column: 2, scope: !4356)
!4360 = !DILocation(line: 709, column: 6, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 709, column: 6)
!4362 = !DILocation(line: 709, column: 11, scope: !4361)
!4363 = !DILocation(line: 709, column: 6, scope: !4356)
!4364 = !DILocation(line: 710, column: 3, scope: !4361)
!4365 = !DILocation(line: 711, column: 2, scope: !4356)
!4366 = !DILocation(line: 712, column: 11, scope: !4356)
!4367 = !DILocation(line: 712, column: 2, scope: !4356)
!4368 = !DILocation(line: 713, column: 21, scope: !4356)
!4369 = !DILocation(line: 713, column: 2, scope: !4356)
!4370 = !DILocation(line: 714, column: 21, scope: !4356)
!4371 = !DILocation(line: 714, column: 2, scope: !4356)
!4372 = !DILocation(line: 715, column: 11, scope: !4356)
!4373 = !DILocation(line: 716, column: 1, scope: !4356)
!4374 = distinct !DISubprogram(name: "request_irq", scope: !384, file: !384, line: 157, type: !4375, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!112, !7, !4377, !110, !126, !111}
!4377 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !384, line: 92, baseType: !4378)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!4381, !112, !111}
!4381 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !94, line: 17, baseType: !93)
!4382 = !DILocalVariable(name: "irq", arg: 1, scope: !4374, file: !384, line: 157, type: !7)
!4383 = !DILocation(line: 157, column: 26, scope: !4374)
!4384 = !DILocalVariable(name: "handler", arg: 2, scope: !4374, file: !384, line: 157, type: !4377)
!4385 = !DILocation(line: 157, column: 45, scope: !4374)
!4386 = !DILocalVariable(name: "flags", arg: 3, scope: !4374, file: !384, line: 157, type: !110)
!4387 = !DILocation(line: 157, column: 68, scope: !4374)
!4388 = !DILocalVariable(name: "name", arg: 4, scope: !4374, file: !384, line: 158, type: !126)
!4389 = !DILocation(line: 158, column: 18, scope: !4374)
!4390 = !DILocalVariable(name: "dev", arg: 5, scope: !4374, file: !384, line: 158, type: !111)
!4391 = !DILocation(line: 158, column: 30, scope: !4374)
!4392 = !DILocation(line: 160, column: 30, scope: !4374)
!4393 = !DILocation(line: 160, column: 35, scope: !4374)
!4394 = !DILocation(line: 160, column: 50, scope: !4374)
!4395 = !DILocation(line: 160, column: 57, scope: !4374)
!4396 = !DILocation(line: 160, column: 63, scope: !4374)
!4397 = !DILocation(line: 160, column: 9, scope: !4374)
!4398 = !DILocation(line: 160, column: 2, scope: !4374)
!4399 = distinct !DISubprogram(name: "wdtpci_interrupt", scope: !3, file: !3, line: 296, type: !4379, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4400 = !DILocalVariable(name: "lock", arg: 1, scope: !4401, file: !4402, line: 392, type: !1227)
!4401 = distinct !DISubprogram(name: "spin_unlock", scope: !4402, file: !4402, line: 392, type: !4403, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4402 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4403 = !DISubroutineType(types: !4404)
!4404 = !{null, !1227}
!4405 = !DILocation(line: 392, column: 53, scope: !4401, inlinedAt: !4406)
!4406 = distinct !DILocation(line: 337, column: 2, scope: !4399)
!4407 = !DILocalVariable(name: "lock", arg: 1, scope: !4408, file: !4402, line: 352, type: !1227)
!4408 = distinct !DISubprogram(name: "spin_lock", scope: !4402, file: !4402, line: 352, type: !4403, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4409 = !DILocation(line: 352, column: 51, scope: !4408, inlinedAt: !4410)
!4410 = distinct !DILocation(line: 304, column: 2, scope: !4399)
!4411 = !DILocalVariable(name: "irq", arg: 1, scope: !4399, file: !3, line: 296, type: !112)
!4412 = !DILocation(line: 296, column: 41, scope: !4399)
!4413 = !DILocalVariable(name: "dev_id", arg: 2, scope: !4399, file: !3, line: 296, type: !111)
!4414 = !DILocation(line: 296, column: 52, scope: !4399)
!4415 = !DILocalVariable(name: "status", scope: !4399, file: !3, line: 302, type: !163)
!4416 = !DILocation(line: 302, column: 16, scope: !4399)
!4417 = !DILocation(line: 354, column: 2, scope: !4418, inlinedAt: !4410)
!4418 = distinct !DILexicalBlock(scope: !4408, file: !4402, line: 354, column: 2)
!4419 = !{i32 -2145344854}
!4420 = !DILocation(line: 354, column: 2, scope: !4421, inlinedAt: !4410)
!4421 = distinct !DILexicalBlock(scope: !4418, file: !4402, line: 354, column: 2)
!4422 = !DILocation(line: 306, column: 15, scope: !4399)
!4423 = !DILocation(line: 306, column: 11, scope: !4399)
!4424 = !DILocation(line: 306, column: 9, scope: !4399)
!4425 = !DILocation(line: 307, column: 2, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4427, file: !3, line: 307, column: 2)
!4427 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 307, column: 2)
!4428 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 307, column: 2)
!4429 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 307, column: 2)
!4430 = !DILocation(line: 309, column: 2, scope: !4399)
!4431 = !DILocation(line: 311, column: 6, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 311, column: 6)
!4433 = !DILocation(line: 311, column: 11, scope: !4432)
!4434 = !DILocation(line: 311, column: 6, scope: !4399)
!4435 = !DILocation(line: 312, column: 9, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 312, column: 7)
!4437 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 311, column: 19)
!4438 = !DILocation(line: 312, column: 16, scope: !4436)
!4439 = !DILocation(line: 312, column: 7, scope: !4437)
!4440 = !DILocation(line: 313, column: 4, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4436, file: !3, line: 312, column: 33)
!4442 = !DILocation(line: 314, column: 4, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 314, column: 4)
!4444 = distinct !DILexicalBlock(scope: !4445, file: !3, line: 314, column: 4)
!4445 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 314, column: 4)
!4446 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 314, column: 4)
!4447 = !DILocation(line: 315, column: 3, scope: !4441)
!4448 = !DILocation(line: 316, column: 9, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 316, column: 7)
!4450 = !DILocation(line: 316, column: 16, scope: !4449)
!4451 = !DILocation(line: 316, column: 7, scope: !4437)
!4452 = !DILocation(line: 317, column: 4, scope: !4449)
!4453 = !DILocation(line: 318, column: 9, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 318, column: 7)
!4455 = !DILocation(line: 318, column: 16, scope: !4454)
!4456 = !DILocation(line: 318, column: 7, scope: !4437)
!4457 = !DILocation(line: 319, column: 4, scope: !4454)
!4458 = !DILocation(line: 320, column: 7, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 320, column: 7)
!4460 = !DILocation(line: 320, column: 7, scope: !4437)
!4461 = !DILocation(line: 321, column: 10, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 321, column: 8)
!4463 = distinct !DILexicalBlock(scope: !4459, file: !3, line: 320, column: 19)
!4464 = !DILocation(line: 321, column: 17, scope: !4462)
!4465 = !DILocation(line: 321, column: 8, scope: !4463)
!4466 = !DILocation(line: 322, column: 5, scope: !4462)
!4467 = !DILocation(line: 323, column: 3, scope: !4463)
!4468 = !DILocation(line: 324, column: 2, scope: !4437)
!4469 = !DILocation(line: 325, column: 8, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 325, column: 6)
!4471 = !DILocation(line: 325, column: 15, scope: !4470)
!4472 = !DILocation(line: 325, column: 6, scope: !4399)
!4473 = !DILocation(line: 334, column: 3, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 325, column: 31)
!4475 = !DILocation(line: 336, column: 2, scope: !4474)
!4476 = !DILocation(line: 394, column: 2, scope: !4477, inlinedAt: !4406)
!4477 = distinct !DILexicalBlock(scope: !4401, file: !4402, line: 394, column: 2)
!4478 = !{i32 -2145342493}
!4479 = !DILocation(line: 394, column: 2, scope: !4480, inlinedAt: !4406)
!4480 = distinct !DILexicalBlock(scope: !4477, file: !4402, line: 394, column: 2)
!4481 = !DILocation(line: 338, column: 2, scope: !4399)
!4482 = distinct !DISubprogram(name: "wdtpci_set_heartbeat", scope: !3, file: !3, line: 216, type: !3203, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4483 = !DILocalVariable(name: "t", arg: 1, scope: !4482, file: !3, line: 216, type: !112)
!4484 = !DILocation(line: 216, column: 37, scope: !4482)
!4485 = !DILocation(line: 219, column: 6, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4482, file: !3, line: 219, column: 6)
!4487 = !DILocation(line: 219, column: 8, scope: !4486)
!4488 = !DILocation(line: 219, column: 12, scope: !4486)
!4489 = !DILocation(line: 219, column: 15, scope: !4486)
!4490 = !DILocation(line: 219, column: 17, scope: !4486)
!4491 = !DILocation(line: 219, column: 6, scope: !4482)
!4492 = !DILocation(line: 220, column: 3, scope: !4486)
!4493 = !DILocation(line: 222, column: 14, scope: !4482)
!4494 = !DILocation(line: 222, column: 12, scope: !4482)
!4495 = !DILocation(line: 223, column: 17, scope: !4482)
!4496 = !DILocation(line: 223, column: 19, scope: !4482)
!4497 = !DILocation(line: 223, column: 15, scope: !4482)
!4498 = !DILocation(line: 224, column: 2, scope: !4482)
!4499 = !DILocation(line: 225, column: 1, scope: !4482)
!4500 = distinct !DISubprogram(name: "inb", scope: !4501, file: !4501, line: 334, type: !4502, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4501 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!163, !112}
!4504 = !DILocalVariable(name: "port", arg: 1, scope: !4500, file: !4501, line: 334, type: !112)
!4505 = !DILocation(line: 334, column: 1, scope: !4500)
!4506 = !DILocalVariable(name: "value", scope: !4500, file: !4501, line: 334, type: !163)
!4507 = !{i32 -2142733851}
!4508 = distinct !DISubprogram(name: "wdtpci_write", scope: !3, file: !3, line: 353, type: !3030, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4509 = !DILocalVariable(name: "file", arg: 1, scope: !4508, file: !3, line: 353, type: !529)
!4510 = !DILocation(line: 353, column: 42, scope: !4508)
!4511 = !DILocalVariable(name: "buf", arg: 2, scope: !4508, file: !3, line: 353, type: !126)
!4512 = !DILocation(line: 353, column: 67, scope: !4508)
!4513 = !DILocalVariable(name: "count", arg: 3, scope: !4508, file: !3, line: 354, type: !499)
!4514 = !DILocation(line: 354, column: 14, scope: !4508)
!4515 = !DILocalVariable(name: "ppos", arg: 4, scope: !4508, file: !3, line: 354, type: !3027)
!4516 = !DILocation(line: 354, column: 29, scope: !4508)
!4517 = !DILocation(line: 356, column: 6, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4508, file: !3, line: 356, column: 6)
!4519 = !DILocation(line: 356, column: 6, scope: !4508)
!4520 = !DILocation(line: 357, column: 8, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 357, column: 7)
!4522 = distinct !DILexicalBlock(scope: !4518, file: !3, line: 356, column: 13)
!4523 = !DILocation(line: 357, column: 7, scope: !4522)
!4524 = !DILocalVariable(name: "i", scope: !4525, file: !3, line: 358, type: !499)
!4525 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 357, column: 18)
!4526 = !DILocation(line: 358, column: 11, scope: !4525)
!4527 = !DILocation(line: 361, column: 17, scope: !4525)
!4528 = !DILocation(line: 363, column: 11, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 363, column: 4)
!4530 = !DILocation(line: 363, column: 9, scope: !4529)
!4531 = !DILocation(line: 363, column: 16, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4529, file: !3, line: 363, column: 4)
!4533 = !DILocation(line: 363, column: 21, scope: !4532)
!4534 = !DILocation(line: 363, column: 18, scope: !4532)
!4535 = !DILocation(line: 363, column: 4, scope: !4529)
!4536 = !DILocalVariable(name: "c", scope: !4537, file: !3, line: 364, type: !109)
!4537 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 363, column: 33)
!4538 = !DILocation(line: 364, column: 10, scope: !4537)
!4539 = !DILocation(line: 365, column: 9, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4541, file: !3, line: 365, column: 9)
!4541 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 365, column: 9)
!4542 = !DILocalVariable(name: "__ret_gu", scope: !4543, file: !3, line: 365, type: !112)
!4543 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 365, column: 9)
!4544 = !DILocation(line: 365, column: 9, scope: !4543)
!4545 = !DILocalVariable(name: "__val_gu", scope: !4543, file: !3, line: 365, type: !163)
!4546 = !{i32 -2141677940}
!4547 = !DILocation(line: 365, column: 9, scope: !4541)
!4548 = !DILocation(line: 365, column: 9, scope: !4537)
!4549 = !DILocation(line: 366, column: 6, scope: !4541)
!4550 = !DILocation(line: 367, column: 9, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 367, column: 9)
!4552 = !DILocation(line: 367, column: 11, scope: !4551)
!4553 = !DILocation(line: 367, column: 9, scope: !4537)
!4554 = !DILocation(line: 368, column: 19, scope: !4551)
!4555 = !DILocation(line: 368, column: 6, scope: !4551)
!4556 = !DILocation(line: 369, column: 4, scope: !4537)
!4557 = !DILocation(line: 363, column: 29, scope: !4532)
!4558 = !DILocation(line: 363, column: 4, scope: !4532)
!4559 = distinct !{!4559, !4535, !4560}
!4560 = !DILocation(line: 369, column: 4, scope: !4529)
!4561 = !DILocation(line: 370, column: 3, scope: !4525)
!4562 = !DILocation(line: 371, column: 3, scope: !4522)
!4563 = !DILocation(line: 372, column: 2, scope: !4522)
!4564 = !DILocation(line: 373, column: 9, scope: !4508)
!4565 = !DILocation(line: 373, column: 2, scope: !4508)
!4566 = !DILocation(line: 374, column: 1, scope: !4508)
!4567 = distinct !DISubprogram(name: "wdtpci_ioctl", scope: !3, file: !3, line: 387, type: !3062, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4568 = !DILocalVariable(name: "addr", arg: 1, scope: !4569, file: !4570, line: 138, type: !2283)
!4569 = distinct !DISubprogram(name: "check_copy_size", scope: !4570, file: !4570, line: 138, type: !4571, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4570 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!269, !2283, !499, !269}
!4573 = !DILocation(line: 138, column: 29, scope: !4569, inlinedAt: !4574)
!4574 = distinct !DILocation(line: 199, column: 6, scope: !4575, inlinedAt: !4580)
!4575 = distinct !DILexicalBlock(scope: !4577, file: !4576, line: 199, column: 6)
!4576 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!4577 = distinct !DISubprogram(name: "copy_to_user", scope: !4576, file: !4576, line: 197, type: !4578, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!110, !111, !2283, !110}
!4580 = distinct !DILocation(line: 414, column: 10, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4567, file: !3, line: 412, column: 15)
!4582 = !DILocalVariable(name: "bytes", arg: 2, scope: !4569, file: !4570, line: 138, type: !499)
!4583 = !DILocation(line: 138, column: 42, scope: !4569, inlinedAt: !4574)
!4584 = !DILocalVariable(name: "is_source", arg: 3, scope: !4569, file: !4570, line: 138, type: !269)
!4585 = !DILocation(line: 138, column: 54, scope: !4569, inlinedAt: !4574)
!4586 = !DILocalVariable(name: "sz", scope: !4569, file: !4570, line: 140, type: !112)
!4587 = !DILocation(line: 140, column: 6, scope: !4569, inlinedAt: !4574)
!4588 = !DILocalVariable(name: "__ret_warn_on", scope: !4589, file: !4570, line: 150, type: !112)
!4589 = distinct !DILexicalBlock(scope: !4590, file: !4570, line: 150, column: 6)
!4590 = distinct !DILexicalBlock(scope: !4569, file: !4570, line: 150, column: 6)
!4591 = !DILocation(line: 150, column: 6, scope: !4589, inlinedAt: !4574)
!4592 = !DILocalVariable(name: "to", arg: 1, scope: !4577, file: !4576, line: 197, type: !111)
!4593 = !DILocation(line: 197, column: 27, scope: !4577, inlinedAt: !4580)
!4594 = !DILocalVariable(name: "from", arg: 2, scope: !4577, file: !4576, line: 197, type: !2283)
!4595 = !DILocation(line: 197, column: 43, scope: !4577, inlinedAt: !4580)
!4596 = !DILocalVariable(name: "n", arg: 3, scope: !4577, file: !4576, line: 197, type: !110)
!4597 = !DILocation(line: 197, column: 63, scope: !4577, inlinedAt: !4580)
!4598 = !DILocalVariable(name: "file", arg: 1, scope: !4567, file: !3, line: 387, type: !529)
!4599 = !DILocation(line: 387, column: 39, scope: !4567)
!4600 = !DILocalVariable(name: "cmd", arg: 2, scope: !4567, file: !3, line: 387, type: !7)
!4601 = !DILocation(line: 387, column: 58, scope: !4567)
!4602 = !DILocalVariable(name: "arg", arg: 3, scope: !4567, file: !3, line: 388, type: !110)
!4603 = !DILocation(line: 388, column: 22, scope: !4567)
!4604 = !DILocalVariable(name: "argp", scope: !4567, file: !3, line: 390, type: !111)
!4605 = !DILocation(line: 390, column: 15, scope: !4567)
!4606 = !DILocation(line: 390, column: 37, scope: !4567)
!4607 = !DILocation(line: 390, column: 22, scope: !4567)
!4608 = !DILocalVariable(name: "p", scope: !4567, file: !3, line: 391, type: !869)
!4609 = !DILocation(line: 391, column: 14, scope: !4567)
!4610 = !DILocation(line: 391, column: 18, scope: !4567)
!4611 = !DILocalVariable(name: "new_heartbeat", scope: !4567, file: !3, line: 392, type: !112)
!4612 = !DILocation(line: 392, column: 6, scope: !4567)
!4613 = !DILocalVariable(name: "status", scope: !4567, file: !3, line: 393, type: !112)
!4614 = !DILocation(line: 393, column: 6, scope: !4567)
!4615 = !DILocalVariable(name: "ident", scope: !4567, file: !3, line: 395, type: !4616)
!4616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "watchdog_info", file: !4617, line: 18, size: 320, elements: !4618)
!4617 = !DIFile(filename: "./include/uapi/linux/watchdog.h", directory: "/home/lizy2001/genbc/linux")
!4618 = !{!4619, !4620, !4621}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4616, file: !4617, line: 19, baseType: !303, size: 32)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_version", scope: !4616, file: !4617, line: 20, baseType: !303, size: 32, offset: 32)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "identity", scope: !4616, file: !4617, line: 21, baseType: !4622, size: 256, offset: 64)
!4622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 256, elements: !210)
!4623 = !DILocation(line: 395, column: 23, scope: !4567)
!4624 = !DILocation(line: 404, column: 8, scope: !4567)
!4625 = !DILocation(line: 404, column: 16, scope: !4567)
!4626 = !DILocation(line: 405, column: 6, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4567, file: !3, line: 405, column: 6)
!4628 = !DILocation(line: 405, column: 11, scope: !4627)
!4629 = !DILocation(line: 405, column: 6, scope: !4567)
!4630 = !DILocation(line: 406, column: 9, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 405, column: 19)
!4632 = !DILocation(line: 406, column: 17, scope: !4631)
!4633 = !DILocation(line: 408, column: 7, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 408, column: 7)
!4635 = !DILocation(line: 408, column: 7, scope: !4631)
!4636 = !DILocation(line: 409, column: 10, scope: !4634)
!4637 = !DILocation(line: 409, column: 18, scope: !4634)
!4638 = !DILocation(line: 409, column: 4, scope: !4634)
!4639 = !DILocation(line: 410, column: 2, scope: !4631)
!4640 = !DILocation(line: 412, column: 10, scope: !4567)
!4641 = !DILocation(line: 412, column: 2, scope: !4567)
!4642 = !DILocation(line: 414, column: 23, scope: !4581)
!4643 = !DILocation(line: 414, column: 29, scope: !4581)
!4644 = !DILocation(line: 199, column: 6, scope: !4575, inlinedAt: !4580)
!4645 = !DILocation(line: 141, column: 6, scope: !4646, inlinedAt: !4574)
!4646 = distinct !DILexicalBlock(scope: !4569, file: !4570, line: 141, column: 6)
!4647 = !DILocation(line: 0, scope: !4646, inlinedAt: !4574)
!4648 = !DILocation(line: 141, column: 6, scope: !4569, inlinedAt: !4574)
!4649 = !DILocation(line: 142, column: 29, scope: !4650, inlinedAt: !4574)
!4650 = distinct !DILexicalBlock(scope: !4651, file: !4570, line: 142, column: 7)
!4651 = distinct !DILexicalBlock(scope: !4646, file: !4570, line: 141, column: 39)
!4652 = !DILocation(line: 142, column: 8, scope: !4650, inlinedAt: !4574)
!4653 = !DILocation(line: 142, column: 7, scope: !4651, inlinedAt: !4574)
!4654 = !DILocation(line: 143, column: 18, scope: !4650, inlinedAt: !4574)
!4655 = !DILocation(line: 143, column: 22, scope: !4650, inlinedAt: !4574)
!4656 = !DILocation(line: 143, column: 4, scope: !4650, inlinedAt: !4574)
!4657 = !DILocation(line: 144, column: 12, scope: !4658, inlinedAt: !4574)
!4658 = distinct !DILexicalBlock(scope: !4650, file: !4570, line: 144, column: 12)
!4659 = !DILocation(line: 144, column: 12, scope: !4650, inlinedAt: !4574)
!4660 = !DILocation(line: 145, column: 4, scope: !4658, inlinedAt: !4574)
!4661 = !DILocation(line: 147, column: 4, scope: !4658, inlinedAt: !4574)
!4662 = !DILocation(line: 148, column: 3, scope: !4651, inlinedAt: !4574)
!4663 = !DILocation(line: 150, column: 6, scope: !4664, inlinedAt: !4574)
!4664 = distinct !DILexicalBlock(scope: !4589, file: !4570, line: 150, column: 6)
!4665 = !DILocation(line: 150, column: 6, scope: !4666, inlinedAt: !4574)
!4666 = distinct !DILexicalBlock(scope: !4667, file: !4570, line: 150, column: 6)
!4667 = distinct !DILexicalBlock(scope: !4664, file: !4570, line: 150, column: 6)
!4668 = !{i32 -2145669140, i32 -2145669111, i32 -2145669065, i32 -2145669007, i32 -2145668953, i32 -2145668899, i32 -2145668844, i32 -2145668813}
!4669 = !DILocation(line: 150, column: 6, scope: !4670, inlinedAt: !4574)
!4670 = distinct !DILexicalBlock(scope: !4667, file: !4570, line: 150, column: 6)
!4671 = !{i32 -2145668393, i32 -2145668386, i32 -2145668334, i32 -2145668303, i32 -2145668273}
!4672 = !DILocation(line: 150, column: 6, scope: !4667, inlinedAt: !4574)
!4673 = !DILocation(line: 150, column: 6, scope: !4590, inlinedAt: !4574)
!4674 = !DILocation(line: 150, column: 6, scope: !4569, inlinedAt: !4574)
!4675 = !DILocation(line: 151, column: 3, scope: !4590, inlinedAt: !4574)
!4676 = !DILocation(line: 152, column: 20, scope: !4569, inlinedAt: !4574)
!4677 = !DILocation(line: 152, column: 26, scope: !4569, inlinedAt: !4574)
!4678 = !DILocation(line: 152, column: 33, scope: !4569, inlinedAt: !4574)
!4679 = !DILocation(line: 152, column: 2, scope: !4569, inlinedAt: !4574)
!4680 = !DILocation(line: 153, column: 2, scope: !4569, inlinedAt: !4574)
!4681 = !DILocation(line: 154, column: 1, scope: !4569, inlinedAt: !4574)
!4682 = !DILocation(line: 199, column: 6, scope: !4577, inlinedAt: !4580)
!4683 = !DILocation(line: 200, column: 21, scope: !4575, inlinedAt: !4580)
!4684 = !DILocation(line: 200, column: 25, scope: !4575, inlinedAt: !4580)
!4685 = !DILocation(line: 200, column: 31, scope: !4575, inlinedAt: !4580)
!4686 = !DILocation(line: 200, column: 7, scope: !4575, inlinedAt: !4580)
!4687 = !DILocation(line: 200, column: 5, scope: !4575, inlinedAt: !4580)
!4688 = !DILocation(line: 200, column: 3, scope: !4575, inlinedAt: !4580)
!4689 = !DILocation(line: 201, column: 9, scope: !4577, inlinedAt: !4580)
!4690 = !DILocation(line: 414, column: 10, scope: !4581)
!4691 = !DILocation(line: 414, column: 3, scope: !4581)
!4692 = !DILocation(line: 416, column: 3, scope: !4581)
!4693 = !DILocation(line: 417, column: 10, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 417, column: 10)
!4695 = !DILocalVariable(name: "__ret_pu", scope: !4696, file: !3, line: 417, type: !112)
!4696 = distinct !DILexicalBlock(scope: !4694, file: !3, line: 417, column: 10)
!4697 = !DILocation(line: 417, column: 10, scope: !4696)
!4698 = !DILocalVariable(name: "__ptr_pu", scope: !4696, file: !3, line: 417, type: !111)
!4699 = !DILocalVariable(name: "__val_pu", scope: !4696, file: !3, line: 417, type: !112)
!4700 = !{i32 -2141674482}
!4701 = !DILocation(line: 417, column: 3, scope: !4581)
!4702 = !DILocation(line: 419, column: 10, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 419, column: 10)
!4704 = !DILocalVariable(name: "__ret_pu", scope: !4705, file: !3, line: 419, type: !112)
!4705 = distinct !DILexicalBlock(scope: !4703, file: !3, line: 419, column: 10)
!4706 = !DILocation(line: 419, column: 10, scope: !4705)
!4707 = !DILocalVariable(name: "__ptr_pu", scope: !4705, file: !3, line: 419, type: !111)
!4708 = !DILocalVariable(name: "__val_pu", scope: !4705, file: !3, line: 419, type: !112)
!4709 = !{i32 -2141673040}
!4710 = !DILocation(line: 419, column: 3, scope: !4581)
!4711 = !DILocation(line: 421, column: 3, scope: !4581)
!4712 = !DILocation(line: 422, column: 3, scope: !4581)
!4713 = !DILocation(line: 424, column: 7, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 424, column: 7)
!4715 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 424, column: 7)
!4716 = !DILocalVariable(name: "__ret_gu", scope: !4717, file: !3, line: 424, type: !112)
!4717 = distinct !DILexicalBlock(scope: !4714, file: !3, line: 424, column: 7)
!4718 = !DILocation(line: 424, column: 7, scope: !4717)
!4719 = !DILocalVariable(name: "__val_gu", scope: !4717, file: !3, line: 424, type: !7)
!4720 = !{i32 -2141670942}
!4721 = !DILocation(line: 424, column: 7, scope: !4715)
!4722 = !DILocation(line: 424, column: 7, scope: !4581)
!4723 = !DILocation(line: 425, column: 4, scope: !4715)
!4724 = !DILocation(line: 426, column: 28, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 426, column: 7)
!4726 = !DILocation(line: 426, column: 7, scope: !4725)
!4727 = !DILocation(line: 426, column: 7, scope: !4581)
!4728 = !DILocation(line: 427, column: 4, scope: !4725)
!4729 = !DILocation(line: 428, column: 3, scope: !4581)
!4730 = !DILocation(line: 431, column: 10, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 431, column: 10)
!4732 = !DILocalVariable(name: "__ret_pu", scope: !4733, file: !3, line: 431, type: !112)
!4733 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 431, column: 10)
!4734 = !DILocation(line: 431, column: 10, scope: !4733)
!4735 = !DILocalVariable(name: "__ptr_pu", scope: !4733, file: !3, line: 431, type: !111)
!4736 = !DILocalVariable(name: "__val_pu", scope: !4733, file: !3, line: 431, type: !112)
!4737 = !{i32 -2141668495}
!4738 = !DILocation(line: 431, column: 3, scope: !4581)
!4739 = !DILocation(line: 433, column: 3, scope: !4581)
!4740 = !DILocation(line: 435, column: 1, scope: !4567)
!4741 = distinct !DISubprogram(name: "wdtpci_open", scope: !3, file: !3, line: 449, type: !3072, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4742 = !DILocalVariable(name: "inode", arg: 1, scope: !4741, file: !3, line: 449, type: !598)
!4743 = !DILocation(line: 449, column: 38, scope: !4741)
!4744 = !DILocalVariable(name: "file", arg: 2, scope: !4741, file: !3, line: 449, type: !529)
!4745 = !DILocation(line: 449, column: 58, scope: !4741)
!4746 = !DILocation(line: 451, column: 6, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 451, column: 6)
!4748 = !DILocation(line: 451, column: 6, scope: !4741)
!4749 = !DILocation(line: 452, column: 3, scope: !4747)
!4750 = !DILocation(line: 454, column: 6, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 454, column: 6)
!4752 = !DILocation(line: 454, column: 6, scope: !4741)
!4753 = !DILocation(line: 455, column: 3, scope: !4751)
!4754 = !DILocation(line: 459, column: 2, scope: !4741)
!4755 = !DILocation(line: 460, column: 21, scope: !4741)
!4756 = !DILocation(line: 460, column: 28, scope: !4741)
!4757 = !DILocation(line: 460, column: 9, scope: !4741)
!4758 = !DILocation(line: 460, column: 2, scope: !4741)
!4759 = !DILocation(line: 461, column: 1, scope: !4741)
!4760 = distinct !DISubprogram(name: "wdtpci_release", scope: !3, file: !3, line: 475, type: !3072, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4761 = !DILocalVariable(name: "inode", arg: 1, scope: !4760, file: !3, line: 475, type: !598)
!4762 = !DILocation(line: 475, column: 41, scope: !4760)
!4763 = !DILocalVariable(name: "file", arg: 2, scope: !4760, file: !3, line: 475, type: !529)
!4764 = !DILocation(line: 475, column: 61, scope: !4760)
!4765 = !DILocation(line: 477, column: 6, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 477, column: 6)
!4767 = !DILocation(line: 477, column: 19, scope: !4766)
!4768 = !DILocation(line: 477, column: 6, scope: !4760)
!4769 = !DILocation(line: 478, column: 3, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4766, file: !3, line: 477, column: 26)
!4771 = !DILocation(line: 479, column: 2, scope: !4770)
!4772 = !DILocation(line: 480, column: 3, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4766, file: !3, line: 479, column: 9)
!4774 = !DILocation(line: 481, column: 3, scope: !4773)
!4775 = !DILocation(line: 483, column: 15, scope: !4760)
!4776 = !DILocation(line: 484, column: 2, scope: !4760)
!4777 = !DILocation(line: 485, column: 2, scope: !4760)
!4778 = distinct !DISubprogram(name: "might_fault", scope: !4779, file: !4779, line: 315, type: !236, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4779 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!4780 = !DILocation(line: 315, column: 40, scope: !4778)
!4781 = distinct !DISubprogram(name: "wdtpci_ping", scope: !3, file: !3, line: 191, type: !4216, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4782 = !DILocalVariable(name: "lock", arg: 1, scope: !4783, file: !4402, line: 407, type: !1227)
!4783 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4402, file: !4402, line: 407, type: !4784, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{null, !1227, !110}
!4786 = !DILocation(line: 407, column: 64, scope: !4783, inlinedAt: !4787)
!4787 = distinct !DILocation(line: 204, column: 2, scope: !4781)
!4788 = !DILocalVariable(name: "flags", arg: 2, scope: !4783, file: !4402, line: 407, type: !110)
!4789 = !DILocation(line: 407, column: 84, scope: !4783, inlinedAt: !4787)
!4790 = !DILocalVariable(name: "lock", arg: 1, scope: !4791, file: !4402, line: 327, type: !1227)
!4791 = distinct !DISubprogram(name: "spinlock_check", scope: !4402, file: !4402, line: 327, type: !4792, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!4794, !1227}
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!4795 = !DILocation(line: 327, column: 67, scope: !4791, inlinedAt: !4796)
!4796 = distinct !DILocation(line: 195, column: 2, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 195, column: 2)
!4798 = distinct !DILexicalBlock(scope: !4799, file: !3, line: 195, column: 2)
!4799 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 195, column: 2)
!4800 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 195, column: 2)
!4801 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 195, column: 2)
!4802 = !DILocalVariable(name: "flags", scope: !4781, file: !3, line: 193, type: !110)
!4803 = !DILocation(line: 193, column: 16, scope: !4781)
!4804 = !DILocation(line: 195, column: 2, scope: !4781)
!4805 = !DILocation(line: 195, column: 2, scope: !4801)
!4806 = !DILocalVariable(name: "__dummy", scope: !4807, file: !3, line: 195, type: !110)
!4807 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 195, column: 2)
!4808 = !DILocation(line: 195, column: 2, scope: !4807)
!4809 = !DILocalVariable(name: "__dummy2", scope: !4807, file: !3, line: 195, type: !110)
!4810 = !DILocation(line: 195, column: 2, scope: !4800)
!4811 = !DILocation(line: 195, column: 2, scope: !4799)
!4812 = !DILocation(line: 195, column: 2, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4799, file: !3, line: 195, column: 2)
!4814 = !DILocalVariable(name: "__dummy", scope: !4815, file: !3, line: 195, type: !110)
!4815 = distinct !DILexicalBlock(scope: !4816, file: !3, line: 195, column: 2)
!4816 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 195, column: 2)
!4817 = !DILocation(line: 195, column: 2, scope: !4815)
!4818 = !DILocalVariable(name: "__dummy2", scope: !4815, file: !3, line: 195, type: !110)
!4819 = !DILocation(line: 195, column: 2, scope: !4816)
!4820 = !DILocation(line: 195, column: 2, scope: !4798)
!4821 = !{i32 -2141682440}
!4822 = !DILocation(line: 329, column: 10, scope: !4791, inlinedAt: !4796)
!4823 = !DILocation(line: 329, column: 16, scope: !4791, inlinedAt: !4796)
!4824 = !DILocation(line: 195, column: 2, scope: !4797)
!4825 = !DILocation(line: 197, column: 6, scope: !4781)
!4826 = !DILocation(line: 197, column: 2, scope: !4781)
!4827 = !DILocation(line: 198, column: 2, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4829, file: !3, line: 198, column: 2)
!4829 = distinct !DILexicalBlock(scope: !4830, file: !3, line: 198, column: 2)
!4830 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 198, column: 2)
!4831 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 198, column: 2)
!4832 = !DILocation(line: 199, column: 2, scope: !4781)
!4833 = !DILocation(line: 201, column: 21, scope: !4781)
!4834 = !DILocation(line: 201, column: 2, scope: !4781)
!4835 = !DILocation(line: 202, column: 10, scope: !4781)
!4836 = !DILocation(line: 202, column: 2, scope: !4781)
!4837 = !DILocation(line: 203, column: 2, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4839, file: !3, line: 203, column: 2)
!4839 = distinct !DILexicalBlock(scope: !4840, file: !3, line: 203, column: 2)
!4840 = distinct !DILexicalBlock(scope: !4841, file: !3, line: 203, column: 2)
!4841 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 203, column: 2)
!4842 = !DILocation(line: 204, column: 39, scope: !4781)
!4843 = !DILocalVariable(name: "__dummy", scope: !4844, file: !4402, line: 409, type: !110)
!4844 = distinct !DILexicalBlock(scope: !4845, file: !4402, line: 409, column: 2)
!4845 = distinct !DILexicalBlock(scope: !4783, file: !4402, line: 409, column: 2)
!4846 = !DILocation(line: 409, column: 2, scope: !4844, inlinedAt: !4787)
!4847 = !DILocalVariable(name: "__dummy2", scope: !4844, file: !4402, line: 409, type: !110)
!4848 = !DILocalVariable(name: "__dummy", scope: !4849, file: !4402, line: 409, type: !110)
!4849 = distinct !DILexicalBlock(scope: !4850, file: !4402, line: 409, column: 2)
!4850 = distinct !DILexicalBlock(scope: !4851, file: !4402, line: 409, column: 2)
!4851 = distinct !DILexicalBlock(scope: !4852, file: !4402, line: 409, column: 2)
!4852 = distinct !DILexicalBlock(scope: !4845, file: !4402, line: 409, column: 2)
!4853 = !DILocation(line: 409, column: 2, scope: !4849, inlinedAt: !4787)
!4854 = !DILocalVariable(name: "__dummy2", scope: !4849, file: !4402, line: 409, type: !110)
!4855 = !DILocation(line: 409, column: 2, scope: !4850, inlinedAt: !4787)
!4856 = !DILocation(line: 409, column: 2, scope: !4857, inlinedAt: !4787)
!4857 = distinct !DILexicalBlock(scope: !4852, file: !4402, line: 409, column: 2)
!4858 = !{i32 -2145340167}
!4859 = !DILocation(line: 409, column: 2, scope: !4860, inlinedAt: !4787)
!4860 = distinct !DILexicalBlock(scope: !4857, file: !4402, line: 409, column: 2)
!4861 = !DILocation(line: 205, column: 2, scope: !4781)
!4862 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4863, file: !4863, line: 666, type: !4864, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4863 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4864 = !DISubroutineType(types: !4865)
!4865 = !{!110}
!4866 = !DILocalVariable(name: "f", scope: !4862, file: !4863, line: 668, type: !110)
!4867 = !DILocation(line: 668, column: 16, scope: !4862)
!4868 = !DILocation(line: 670, column: 6, scope: !4862)
!4869 = !DILocation(line: 670, column: 4, scope: !4862)
!4870 = !DILocation(line: 671, column: 2, scope: !4862)
!4871 = !DILocation(line: 672, column: 9, scope: !4862)
!4872 = !DILocation(line: 672, column: 2, scope: !4862)
!4873 = distinct !DISubprogram(name: "wdtpci_ctr_mode", scope: !3, file: !3, line: 98, type: !4874, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{null, !112, !112}
!4876 = !DILocalVariable(name: "ctr", arg: 1, scope: !4873, file: !3, line: 98, type: !112)
!4877 = !DILocation(line: 98, column: 33, scope: !4873)
!4878 = !DILocalVariable(name: "mode", arg: 2, scope: !4873, file: !3, line: 98, type: !112)
!4879 = !DILocation(line: 98, column: 42, scope: !4873)
!4880 = !DILocation(line: 100, column: 6, scope: !4873)
!4881 = !DILocation(line: 101, column: 6, scope: !4873)
!4882 = !DILocation(line: 102, column: 10, scope: !4873)
!4883 = !DILocation(line: 102, column: 15, scope: !4873)
!4884 = !DILocation(line: 102, column: 6, scope: !4873)
!4885 = !DILocation(line: 103, column: 7, scope: !4873)
!4886 = !DILocation(line: 103, column: 12, scope: !4873)
!4887 = !DILocation(line: 103, column: 2, scope: !4873)
!4888 = !DILocation(line: 104, column: 2, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 104, column: 2)
!4890 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 104, column: 2)
!4891 = distinct !DILexicalBlock(scope: !4892, file: !3, line: 104, column: 2)
!4892 = distinct !DILexicalBlock(scope: !4873, file: !3, line: 104, column: 2)
!4893 = !DILocation(line: 105, column: 1, scope: !4873)
!4894 = distinct !DISubprogram(name: "wdtpci_ctr_load", scope: !3, file: !3, line: 107, type: !4874, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4895 = !DILocalVariable(name: "ctr", arg: 1, scope: !4894, file: !3, line: 107, type: !112)
!4896 = !DILocation(line: 107, column: 33, scope: !4894)
!4897 = !DILocalVariable(name: "val", arg: 2, scope: !4894, file: !3, line: 107, type: !112)
!4898 = !DILocation(line: 107, column: 42, scope: !4894)
!4899 = !DILocation(line: 109, column: 7, scope: !4894)
!4900 = !DILocation(line: 109, column: 11, scope: !4894)
!4901 = !DILocation(line: 109, column: 19, scope: !4894)
!4902 = !DILocation(line: 109, column: 32, scope: !4894)
!4903 = !DILocation(line: 109, column: 30, scope: !4894)
!4904 = !DILocation(line: 109, column: 2, scope: !4894)
!4905 = !DILocation(line: 110, column: 2, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4907, file: !3, line: 110, column: 2)
!4907 = distinct !DILexicalBlock(scope: !4908, file: !3, line: 110, column: 2)
!4908 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 110, column: 2)
!4909 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 110, column: 2)
!4910 = !DILocation(line: 111, column: 7, scope: !4894)
!4911 = !DILocation(line: 111, column: 11, scope: !4894)
!4912 = !DILocation(line: 111, column: 17, scope: !4894)
!4913 = !DILocation(line: 111, column: 30, scope: !4894)
!4914 = !DILocation(line: 111, column: 28, scope: !4894)
!4915 = !DILocation(line: 111, column: 2, scope: !4894)
!4916 = !DILocation(line: 112, column: 2, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4918, file: !3, line: 112, column: 2)
!4918 = distinct !DILexicalBlock(scope: !4919, file: !3, line: 112, column: 2)
!4919 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 112, column: 2)
!4920 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 112, column: 2)
!4921 = !DILocation(line: 113, column: 1, scope: !4894)
!4922 = distinct !DISubprogram(name: "outb", scope: !4501, file: !4501, line: 334, type: !4923, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4923 = !DISubroutineType(types: !4924)
!4924 = !{null, !163, !112}
!4925 = !DILocalVariable(name: "value", arg: 1, scope: !4922, file: !4501, line: 334, type: !163)
!4926 = !DILocation(line: 334, column: 1, scope: !4922)
!4927 = !DILocalVariable(name: "port", arg: 2, scope: !4922, file: !4501, line: 334, type: !112)
!4928 = !{i32 -2142734053}
!4929 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4863, file: !4863, line: 646, type: !4864, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4930 = !DILocalVariable(name: "__ret", scope: !4931, file: !4863, line: 648, type: !110)
!4931 = distinct !DILexicalBlock(scope: !4929, file: !4863, line: 648, column: 9)
!4932 = !DILocation(line: 648, column: 9, scope: !4931)
!4933 = !DILocalVariable(name: "__edi", scope: !4931, file: !4863, line: 648, type: !110)
!4934 = !DILocalVariable(name: "__esi", scope: !4931, file: !4863, line: 648, type: !110)
!4935 = !DILocalVariable(name: "__edx", scope: !4931, file: !4863, line: 648, type: !110)
!4936 = !DILocalVariable(name: "__ecx", scope: !4931, file: !4863, line: 648, type: !110)
!4937 = !DILocalVariable(name: "__eax", scope: !4931, file: !4863, line: 648, type: !110)
!4938 = !DILocation(line: 648, column: 9, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4940, file: !4863, line: 648, column: 9)
!4940 = distinct !DILexicalBlock(scope: !4931, file: !4863, line: 648, column: 9)
!4941 = !{i32 -2145760556, i32 -2145758241, i32 -2145758007, i32 -2145757956, i32 -2145757928, i32 -2145757903, i32 -2145758219, i32 -2145758206, i32 -2145757768, i32 -2145757649, i32 -2145758114, i32 -2145758087, i32 -2145758059, i32 -2145758029}
!4942 = !DILocalVariable(name: "__mask", scope: !4943, file: !4863, line: 648, type: !110)
!4943 = distinct !DILexicalBlock(scope: !4939, file: !4863, line: 648, column: 9)
!4944 = !DILocation(line: 648, column: 9, scope: !4943)
!4945 = !DILocation(line: 648, column: 9, scope: !4940)
!4946 = !DILocation(line: 648, column: 2, scope: !4929)
!4947 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4863, file: !4863, line: 656, type: !236, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4948 = !DILocalVariable(name: "__edi", scope: !4949, file: !4863, line: 658, type: !110)
!4949 = distinct !DILexicalBlock(scope: !4947, file: !4863, line: 658, column: 2)
!4950 = !DILocation(line: 658, column: 2, scope: !4949)
!4951 = !DILocalVariable(name: "__esi", scope: !4949, file: !4863, line: 658, type: !110)
!4952 = !DILocalVariable(name: "__edx", scope: !4949, file: !4863, line: 658, type: !110)
!4953 = !DILocalVariable(name: "__ecx", scope: !4949, file: !4863, line: 658, type: !110)
!4954 = !DILocalVariable(name: "__eax", scope: !4949, file: !4863, line: 658, type: !110)
!4955 = !{i32 -2145753462, i32 -2145752730, i32 -2145752496, i32 -2145752445, i32 -2145752417, i32 -2145752392, i32 -2145752708, i32 -2145752695, i32 -2145752257, i32 -2145752138, i32 -2145752603, i32 -2145752576, i32 -2145752548, i32 -2145752518}
!4956 = !DILocation(line: 659, column: 1, scope: !4947)
!4957 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4863, file: !4863, line: 651, type: !4958, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{null, !110}
!4960 = !DILocalVariable(name: "f", arg: 1, scope: !4957, file: !4863, line: 651, type: !110)
!4961 = !DILocation(line: 651, column: 65, scope: !4957)
!4962 = !DILocalVariable(name: "__edi", scope: !4963, file: !4863, line: 653, type: !110)
!4963 = distinct !DILexicalBlock(scope: !4957, file: !4863, line: 653, column: 2)
!4964 = !DILocation(line: 653, column: 2, scope: !4963)
!4965 = !DILocalVariable(name: "__esi", scope: !4963, file: !4863, line: 653, type: !110)
!4966 = !DILocalVariable(name: "__edx", scope: !4963, file: !4863, line: 653, type: !110)
!4967 = !DILocalVariable(name: "__ecx", scope: !4963, file: !4863, line: 653, type: !110)
!4968 = !DILocalVariable(name: "__eax", scope: !4963, file: !4863, line: 653, type: !110)
!4969 = !{i32 -2145756089, i32 -2145755339, i32 -2145755105, i32 -2145755054, i32 -2145755026, i32 -2145755001, i32 -2145755317, i32 -2145755304, i32 -2145754866, i32 -2145754747, i32 -2145755212, i32 -2145755185, i32 -2145755157, i32 -2145755127}
!4970 = !DILocation(line: 654, column: 1, scope: !4957)
!4971 = distinct !DISubprogram(name: "wdtpci_get_status", scope: !3, file: !3, line: 238, type: !4972, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!4972 = !DISubroutineType(types: !4973)
!4973 = !{!112, !869}
!4974 = !DILocation(line: 407, column: 64, scope: !4783, inlinedAt: !4975)
!4975 = distinct !DILocation(line: 245, column: 2, scope: !4971)
!4976 = !DILocation(line: 407, column: 84, scope: !4783, inlinedAt: !4975)
!4977 = !DILocation(line: 327, column: 67, scope: !4791, inlinedAt: !4978)
!4978 = distinct !DILocation(line: 243, column: 2, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4980, file: !3, line: 243, column: 2)
!4980 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 243, column: 2)
!4981 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 243, column: 2)
!4982 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 243, column: 2)
!4983 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 243, column: 2)
!4984 = !DILocalVariable(name: "status", arg: 1, scope: !4971, file: !3, line: 238, type: !869)
!4985 = !DILocation(line: 238, column: 35, scope: !4971)
!4986 = !DILocalVariable(name: "new_status", scope: !4971, file: !3, line: 240, type: !163)
!4987 = !DILocation(line: 240, column: 16, scope: !4971)
!4988 = !DILocalVariable(name: "flags", scope: !4971, file: !3, line: 241, type: !110)
!4989 = !DILocation(line: 241, column: 16, scope: !4971)
!4990 = !DILocation(line: 243, column: 2, scope: !4971)
!4991 = !DILocation(line: 243, column: 2, scope: !4983)
!4992 = !DILocalVariable(name: "__dummy", scope: !4993, file: !3, line: 243, type: !110)
!4993 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 243, column: 2)
!4994 = !DILocation(line: 243, column: 2, scope: !4993)
!4995 = !DILocalVariable(name: "__dummy2", scope: !4993, file: !3, line: 243, type: !110)
!4996 = !DILocation(line: 243, column: 2, scope: !4982)
!4997 = !DILocation(line: 243, column: 2, scope: !4981)
!4998 = !DILocation(line: 243, column: 2, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 243, column: 2)
!5000 = !DILocalVariable(name: "__dummy", scope: !5001, file: !3, line: 243, type: !110)
!5001 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 243, column: 2)
!5002 = distinct !DILexicalBlock(scope: !4999, file: !3, line: 243, column: 2)
!5003 = !DILocation(line: 243, column: 2, scope: !5001)
!5004 = !DILocalVariable(name: "__dummy2", scope: !5001, file: !3, line: 243, type: !110)
!5005 = !DILocation(line: 243, column: 2, scope: !5002)
!5006 = !DILocation(line: 243, column: 2, scope: !4980)
!5007 = !{i32 -2141680942}
!5008 = !DILocation(line: 329, column: 10, scope: !4791, inlinedAt: !4978)
!5009 = !DILocation(line: 329, column: 16, scope: !4791, inlinedAt: !4978)
!5010 = !DILocation(line: 243, column: 2, scope: !4979)
!5011 = !DILocation(line: 244, column: 19, scope: !4971)
!5012 = !DILocation(line: 244, column: 15, scope: !4971)
!5013 = !DILocation(line: 244, column: 13, scope: !4971)
!5014 = !DILocation(line: 245, column: 39, scope: !4971)
!5015 = !DILocation(line: 409, column: 2, scope: !4844, inlinedAt: !4975)
!5016 = !DILocation(line: 409, column: 2, scope: !4849, inlinedAt: !4975)
!5017 = !DILocation(line: 409, column: 2, scope: !4850, inlinedAt: !4975)
!5018 = !DILocation(line: 409, column: 2, scope: !4857, inlinedAt: !4975)
!5019 = !DILocation(line: 409, column: 2, scope: !4860, inlinedAt: !4975)
!5020 = !DILocation(line: 247, column: 3, scope: !4971)
!5021 = !DILocation(line: 247, column: 10, scope: !4971)
!5022 = !DILocation(line: 248, column: 6, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 248, column: 6)
!5024 = !DILocation(line: 248, column: 17, scope: !5023)
!5025 = !DILocation(line: 248, column: 6, scope: !4971)
!5026 = !DILocation(line: 249, column: 4, scope: !5023)
!5027 = !DILocation(line: 249, column: 11, scope: !5023)
!5028 = !DILocation(line: 249, column: 3, scope: !5023)
!5029 = !DILocation(line: 250, column: 6, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 250, column: 6)
!5031 = !DILocation(line: 250, column: 17, scope: !5030)
!5032 = !DILocation(line: 250, column: 6, scope: !4971)
!5033 = !DILocation(line: 251, column: 4, scope: !5030)
!5034 = !DILocation(line: 251, column: 11, scope: !5030)
!5035 = !DILocation(line: 251, column: 3, scope: !5030)
!5036 = !DILocation(line: 252, column: 6, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 252, column: 6)
!5038 = !DILocation(line: 252, column: 11, scope: !5037)
!5039 = !DILocation(line: 252, column: 6, scope: !4971)
!5040 = !DILocation(line: 253, column: 9, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !5042, file: !3, line: 253, column: 7)
!5042 = distinct !DILexicalBlock(scope: !5037, file: !3, line: 252, column: 19)
!5043 = !DILocation(line: 253, column: 20, scope: !5041)
!5044 = !DILocation(line: 253, column: 7, scope: !5042)
!5045 = !DILocation(line: 254, column: 5, scope: !5041)
!5046 = !DILocation(line: 254, column: 12, scope: !5041)
!5047 = !DILocation(line: 254, column: 4, scope: !5041)
!5048 = !DILocation(line: 255, column: 9, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5042, file: !3, line: 255, column: 7)
!5050 = !DILocation(line: 255, column: 20, scope: !5049)
!5051 = !DILocation(line: 255, column: 7, scope: !5042)
!5052 = !DILocation(line: 256, column: 5, scope: !5049)
!5053 = !DILocation(line: 256, column: 12, scope: !5049)
!5054 = !DILocation(line: 256, column: 4, scope: !5049)
!5055 = !DILocation(line: 257, column: 9, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5042, file: !3, line: 257, column: 7)
!5057 = !DILocation(line: 257, column: 20, scope: !5056)
!5058 = !DILocation(line: 257, column: 7, scope: !5042)
!5059 = !DILocation(line: 258, column: 5, scope: !5056)
!5060 = !DILocation(line: 258, column: 12, scope: !5056)
!5061 = !DILocation(line: 258, column: 4, scope: !5056)
!5062 = !DILocation(line: 259, column: 7, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5042, file: !3, line: 259, column: 7)
!5064 = !DILocation(line: 259, column: 7, scope: !5042)
!5065 = !DILocation(line: 260, column: 10, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 260, column: 8)
!5067 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 259, column: 19)
!5068 = !DILocation(line: 260, column: 21, scope: !5066)
!5069 = !DILocation(line: 260, column: 8, scope: !5067)
!5070 = !DILocation(line: 261, column: 6, scope: !5066)
!5071 = !DILocation(line: 261, column: 13, scope: !5066)
!5072 = !DILocation(line: 261, column: 5, scope: !5066)
!5073 = !DILocation(line: 262, column: 3, scope: !5067)
!5074 = !DILocation(line: 263, column: 2, scope: !5042)
!5075 = !DILocation(line: 264, column: 2, scope: !4971)
!5076 = distinct !DISubprogram(name: "copy_overflow", scope: !4570, file: !4570, line: 132, type: !5077, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{null, !112, !110}
!5079 = !DILocalVariable(name: "size", arg: 1, scope: !5076, file: !4570, line: 132, type: !112)
!5080 = !DILocation(line: 132, column: 38, scope: !5076)
!5081 = !DILocalVariable(name: "count", arg: 2, scope: !5076, file: !4570, line: 132, type: !110)
!5082 = !DILocation(line: 132, column: 58, scope: !5076)
!5083 = !DILocalVariable(name: "__ret_warn_on", scope: !5084, file: !4570, line: 134, type: !112)
!5084 = distinct !DILexicalBlock(scope: !5076, file: !4570, line: 134, column: 2)
!5085 = !DILocation(line: 134, column: 2, scope: !5084)
!5086 = !DILocation(line: 134, column: 2, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5084, file: !4570, line: 134, column: 2)
!5088 = !DILocation(line: 134, column: 2, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5087, file: !4570, line: 134, column: 2)
!5090 = !DILocation(line: 134, column: 2, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5089, file: !4570, line: 134, column: 2)
!5092 = !DILocation(line: 134, column: 2, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5089, file: !4570, line: 134, column: 2)
!5094 = !DILocation(line: 134, column: 2, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !5093, file: !4570, line: 134, column: 2)
!5096 = !DILocation(line: 134, column: 2, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5093, file: !4570, line: 134, column: 2)
!5098 = !{i32 -2145670964, i32 -2145670935, i32 -2145670889, i32 -2145670831, i32 -2145670777, i32 -2145670723, i32 -2145670668, i32 -2145670637}
!5099 = !DILocation(line: 134, column: 2, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5093, file: !4570, line: 134, column: 2)
!5101 = !{i32 -2145670217, i32 -2145670210, i32 -2145670158, i32 -2145670127, i32 -2145670097}
!5102 = !DILocation(line: 134, column: 2, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5093, file: !4570, line: 134, column: 2)
!5104 = !DILocation(line: 134, column: 2, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5089, file: !4570, line: 134, column: 2)
!5106 = !DILocation(line: 135, column: 1, scope: !5076)
!5107 = distinct !DISubprogram(name: "check_object_size", scope: !4570, file: !4570, line: 122, type: !5108, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!5108 = !DISubroutineType(types: !5109)
!5109 = !{null, !2283, !110, !269}
!5110 = !DILocalVariable(name: "ptr", arg: 1, scope: !5107, file: !4570, line: 122, type: !2283)
!5111 = !DILocation(line: 122, column: 50, scope: !5107)
!5112 = !DILocalVariable(name: "n", arg: 2, scope: !5107, file: !4570, line: 122, type: !110)
!5113 = !DILocation(line: 122, column: 69, scope: !5107)
!5114 = !DILocalVariable(name: "to_user", arg: 3, scope: !5107, file: !4570, line: 123, type: !269)
!5115 = !DILocation(line: 123, column: 15, scope: !5107)
!5116 = !DILocation(line: 124, column: 3, scope: !5107)
!5117 = distinct !DISubprogram(name: "test_and_set_bit", scope: !5118, file: !5118, line: 68, type: !5119, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!5118 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5119 = !DISubroutineType(types: !5120)
!5120 = !{!269, !117, !5121}
!5121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5122, size: 64)
!5122 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !110)
!5123 = !DILocalVariable(name: "nr", arg: 1, scope: !5124, file: !5125, line: 136, type: !117)
!5124 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !5125, file: !5125, line: 136, type: !5119, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!5125 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5126 = !DILocation(line: 136, column: 28, scope: !5124, inlinedAt: !5127)
!5127 = distinct !DILocation(line: 71, column: 9, scope: !5117)
!5128 = !DILocalVariable(name: "addr", arg: 2, scope: !5124, file: !5125, line: 136, type: !5121)
!5129 = !DILocation(line: 136, column: 56, scope: !5124, inlinedAt: !5127)
!5130 = !DILocalVariable(name: "c", scope: !5131, file: !5125, line: 138, type: !269)
!5131 = distinct !DILexicalBlock(scope: !5124, file: !5125, line: 138, column: 9)
!5132 = !DILocation(line: 138, column: 9, scope: !5131, inlinedAt: !5127)
!5133 = !DILocalVariable(name: "v", arg: 1, scope: !5134, file: !5135, line: 99, type: !5138)
!5134 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5135, file: !5135, line: 99, type: !5136, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!5135 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5136 = !DISubroutineType(types: !5137)
!5137 = !{null, !5138, !499}
!5138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5139, size: 64)
!5139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5140)
!5140 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5141 = !DILocation(line: 99, column: 79, scope: !5134, inlinedAt: !5142)
!5142 = distinct !DILocation(line: 70, column: 2, scope: !5117)
!5143 = !DILocalVariable(name: "size", arg: 2, scope: !5134, file: !5135, line: 99, type: !499)
!5144 = !DILocation(line: 99, column: 89, scope: !5134, inlinedAt: !5142)
!5145 = !DILocalVariable(name: "nr", arg: 1, scope: !5117, file: !5118, line: 68, type: !117)
!5146 = !DILocation(line: 68, column: 42, scope: !5117)
!5147 = !DILocalVariable(name: "addr", arg: 2, scope: !5117, file: !5118, line: 68, type: !5121)
!5148 = !DILocation(line: 68, column: 70, scope: !5117)
!5149 = !DILocation(line: 70, column: 31, scope: !5117)
!5150 = !DILocation(line: 70, column: 38, scope: !5117)
!5151 = !DILocation(line: 70, column: 36, scope: !5117)
!5152 = !DILocation(line: 101, column: 20, scope: !5134, inlinedAt: !5142)
!5153 = !DILocation(line: 101, column: 23, scope: !5134, inlinedAt: !5142)
!5154 = !DILocation(line: 101, column: 2, scope: !5134, inlinedAt: !5142)
!5155 = !DILocation(line: 102, column: 2, scope: !5134, inlinedAt: !5142)
!5156 = !DILocation(line: 71, column: 31, scope: !5117)
!5157 = !DILocation(line: 71, column: 35, scope: !5117)
!5158 = !{i32 -2147166977, i32 -2147166881}
!5159 = !DILocation(line: 71, column: 2, scope: !5117)
!5160 = distinct !DISubprogram(name: "__module_get", scope: !5161, file: !5161, line: 747, type: !5162, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!5161 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!5162 = !DISubroutineType(types: !5163)
!5163 = !{null, !105}
!5164 = !DILocalVariable(name: "module", arg: 1, scope: !5160, file: !5161, line: 747, type: !105)
!5165 = !DILocation(line: 747, column: 48, scope: !5160)
!5166 = !DILocation(line: 749, column: 1, scope: !5160)
!5167 = distinct !DISubprogram(name: "wdtpci_start", scope: !3, file: !3, line: 121, type: !4216, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!5168 = !DILocation(line: 407, column: 64, scope: !4783, inlinedAt: !5169)
!5169 = distinct !DILocation(line: 161, column: 2, scope: !5167)
!5170 = !DILocation(line: 407, column: 84, scope: !4783, inlinedAt: !5169)
!5171 = !DILocation(line: 327, column: 67, scope: !4791, inlinedAt: !5172)
!5172 = distinct !DILocation(line: 125, column: 2, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5174, file: !3, line: 125, column: 2)
!5174 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 125, column: 2)
!5175 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 125, column: 2)
!5176 = distinct !DILexicalBlock(scope: !5177, file: !3, line: 125, column: 2)
!5177 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 125, column: 2)
!5178 = !DILocalVariable(name: "flags", scope: !5167, file: !3, line: 123, type: !110)
!5179 = !DILocation(line: 123, column: 16, scope: !5167)
!5180 = !DILocation(line: 125, column: 2, scope: !5167)
!5181 = !DILocation(line: 125, column: 2, scope: !5177)
!5182 = !DILocalVariable(name: "__dummy", scope: !5183, file: !3, line: 125, type: !110)
!5183 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 125, column: 2)
!5184 = !DILocation(line: 125, column: 2, scope: !5183)
!5185 = !DILocalVariable(name: "__dummy2", scope: !5183, file: !3, line: 125, type: !110)
!5186 = !DILocation(line: 125, column: 2, scope: !5176)
!5187 = !DILocation(line: 125, column: 2, scope: !5175)
!5188 = !DILocation(line: 125, column: 2, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 125, column: 2)
!5190 = !DILocalVariable(name: "__dummy", scope: !5191, file: !3, line: 125, type: !110)
!5191 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 125, column: 2)
!5192 = distinct !DILexicalBlock(scope: !5189, file: !3, line: 125, column: 2)
!5193 = !DILocation(line: 125, column: 2, scope: !5191)
!5194 = !DILocalVariable(name: "__dummy2", scope: !5191, file: !3, line: 125, type: !110)
!5195 = !DILocation(line: 125, column: 2, scope: !5192)
!5196 = !DILocation(line: 125, column: 2, scope: !5174)
!5197 = !{i32 -2141686839}
!5198 = !DILocation(line: 329, column: 10, scope: !4791, inlinedAt: !5172)
!5199 = !DILocation(line: 329, column: 16, scope: !4791, inlinedAt: !5172)
!5200 = !DILocation(line: 125, column: 2, scope: !5173)
!5201 = !DILocation(line: 131, column: 6, scope: !5167)
!5202 = !DILocation(line: 131, column: 2, scope: !5167)
!5203 = !DILocation(line: 132, column: 2, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 132, column: 2)
!5205 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 132, column: 2)
!5206 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 132, column: 2)
!5207 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 132, column: 2)
!5208 = !DILocation(line: 133, column: 2, scope: !5167)
!5209 = !DILocation(line: 135, column: 10, scope: !5167)
!5210 = !DILocation(line: 135, column: 2, scope: !5167)
!5211 = !DILocation(line: 136, column: 2, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 136, column: 2)
!5213 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 136, column: 2)
!5214 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 136, column: 2)
!5215 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 136, column: 2)
!5216 = !DILocation(line: 137, column: 6, scope: !5167)
!5217 = !DILocation(line: 137, column: 2, scope: !5167)
!5218 = !DILocation(line: 138, column: 2, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5220, file: !3, line: 138, column: 2)
!5220 = distinct !DILexicalBlock(scope: !5221, file: !3, line: 138, column: 2)
!5221 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 138, column: 2)
!5222 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 138, column: 2)
!5223 = !DILocation(line: 139, column: 10, scope: !5167)
!5224 = !DILocation(line: 139, column: 2, scope: !5167)
!5225 = !DILocation(line: 140, column: 2, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5227, file: !3, line: 140, column: 2)
!5227 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 140, column: 2)
!5228 = distinct !DILexicalBlock(scope: !5229, file: !3, line: 140, column: 2)
!5229 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 140, column: 2)
!5230 = !DILocation(line: 141, column: 6, scope: !5167)
!5231 = !DILocation(line: 141, column: 2, scope: !5167)
!5232 = !DILocation(line: 142, column: 2, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 142, column: 2)
!5234 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 142, column: 2)
!5235 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 142, column: 2)
!5236 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 142, column: 2)
!5237 = !DILocation(line: 143, column: 6, scope: !5167)
!5238 = !DILocation(line: 143, column: 2, scope: !5167)
!5239 = !DILocation(line: 144, column: 2, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5241, file: !3, line: 144, column: 2)
!5241 = distinct !DILexicalBlock(scope: !5242, file: !3, line: 144, column: 2)
!5242 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 144, column: 2)
!5243 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 144, column: 2)
!5244 = !DILocation(line: 145, column: 6, scope: !5167)
!5245 = !DILocation(line: 145, column: 2, scope: !5167)
!5246 = !DILocation(line: 146, column: 2, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5248, file: !3, line: 146, column: 2)
!5248 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 146, column: 2)
!5249 = distinct !DILexicalBlock(scope: !5250, file: !3, line: 146, column: 2)
!5250 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 146, column: 2)
!5251 = !DILocation(line: 147, column: 6, scope: !5167)
!5252 = !DILocation(line: 147, column: 2, scope: !5167)
!5253 = !DILocation(line: 148, column: 2, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5255, file: !3, line: 148, column: 2)
!5255 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 148, column: 2)
!5256 = distinct !DILexicalBlock(scope: !5257, file: !3, line: 148, column: 2)
!5257 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 148, column: 2)
!5258 = !DILocation(line: 149, column: 2, scope: !5167)
!5259 = !DILocation(line: 151, column: 2, scope: !5167)
!5260 = !DILocation(line: 153, column: 2, scope: !5167)
!5261 = !DILocation(line: 155, column: 2, scope: !5167)
!5262 = !DILocation(line: 156, column: 21, scope: !5167)
!5263 = !DILocation(line: 156, column: 2, scope: !5167)
!5264 = !DILocation(line: 158, column: 10, scope: !5167)
!5265 = !DILocation(line: 158, column: 2, scope: !5167)
!5266 = !DILocation(line: 159, column: 2, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 159, column: 2)
!5268 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 159, column: 2)
!5269 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 159, column: 2)
!5270 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 159, column: 2)
!5271 = !DILocation(line: 161, column: 39, scope: !5167)
!5272 = !DILocation(line: 409, column: 2, scope: !4844, inlinedAt: !5169)
!5273 = !DILocation(line: 409, column: 2, scope: !4849, inlinedAt: !5169)
!5274 = !DILocation(line: 409, column: 2, scope: !4850, inlinedAt: !5169)
!5275 = !DILocation(line: 409, column: 2, scope: !4857, inlinedAt: !5169)
!5276 = !DILocation(line: 409, column: 2, scope: !4860, inlinedAt: !5169)
!5277 = !DILocation(line: 162, column: 2, scope: !5167)
!5278 = distinct !DISubprogram(name: "kasan_check_write", scope: !5279, file: !5279, line: 38, type: !5280, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!5279 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5280 = !DISubroutineType(types: !5281)
!5281 = !{!269, !5138, !7}
!5282 = !DILocalVariable(name: "p", arg: 1, scope: !5278, file: !5279, line: 38, type: !5138)
!5283 = !DILocation(line: 38, column: 59, scope: !5278)
!5284 = !DILocalVariable(name: "size", arg: 2, scope: !5278, file: !5279, line: 38, type: !7)
!5285 = !DILocation(line: 38, column: 75, scope: !5278)
!5286 = !DILocation(line: 40, column: 2, scope: !5278)
!5287 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5288, file: !5288, line: 178, type: !5289, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!5288 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5289 = !DISubroutineType(types: !5290)
!5290 = !{null, !5138, !499, !112}
!5291 = !DILocalVariable(name: "ptr", arg: 1, scope: !5287, file: !5288, line: 178, type: !5138)
!5292 = !DILocation(line: 178, column: 60, scope: !5287)
!5293 = !DILocalVariable(name: "size", arg: 2, scope: !5287, file: !5288, line: 178, type: !499)
!5294 = !DILocation(line: 178, column: 72, scope: !5287)
!5295 = !DILocalVariable(name: "type", arg: 3, scope: !5287, file: !5288, line: 179, type: !112)
!5296 = !DILocation(line: 179, column: 15, scope: !5287)
!5297 = !DILocation(line: 179, column: 23, scope: !5287)
!5298 = distinct !DISubprogram(name: "wdtpci_stop", scope: !3, file: !3, line: 171, type: !4216, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!5299 = !DILocation(line: 407, column: 64, scope: !4783, inlinedAt: !5300)
!5300 = distinct !DILocation(line: 180, column: 2, scope: !5298)
!5301 = !DILocation(line: 407, column: 84, scope: !4783, inlinedAt: !5300)
!5302 = !DILocation(line: 327, column: 67, scope: !4791, inlinedAt: !5303)
!5303 = distinct !DILocation(line: 176, column: 2, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 176, column: 2)
!5305 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 176, column: 2)
!5306 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 176, column: 2)
!5307 = distinct !DILexicalBlock(scope: !5308, file: !3, line: 176, column: 2)
!5308 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 176, column: 2)
!5309 = !DILocalVariable(name: "flags", scope: !5298, file: !3, line: 173, type: !110)
!5310 = !DILocation(line: 173, column: 16, scope: !5298)
!5311 = !DILocation(line: 176, column: 2, scope: !5298)
!5312 = !DILocation(line: 176, column: 2, scope: !5308)
!5313 = !DILocalVariable(name: "__dummy", scope: !5314, file: !3, line: 176, type: !110)
!5314 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 176, column: 2)
!5315 = !DILocation(line: 176, column: 2, scope: !5314)
!5316 = !DILocalVariable(name: "__dummy2", scope: !5314, file: !3, line: 176, type: !110)
!5317 = !DILocation(line: 176, column: 2, scope: !5307)
!5318 = !DILocation(line: 176, column: 2, scope: !5306)
!5319 = !DILocation(line: 176, column: 2, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 176, column: 2)
!5321 = !DILocalVariable(name: "__dummy", scope: !5322, file: !3, line: 176, type: !110)
!5322 = distinct !DILexicalBlock(scope: !5323, file: !3, line: 176, column: 2)
!5323 = distinct !DILexicalBlock(scope: !5320, file: !3, line: 176, column: 2)
!5324 = !DILocation(line: 176, column: 2, scope: !5322)
!5325 = !DILocalVariable(name: "__dummy2", scope: !5322, file: !3, line: 176, type: !110)
!5326 = !DILocation(line: 176, column: 2, scope: !5323)
!5327 = !DILocation(line: 176, column: 2, scope: !5305)
!5328 = !{i32 -2141683700}
!5329 = !DILocation(line: 329, column: 10, scope: !4791, inlinedAt: !5303)
!5330 = !DILocation(line: 329, column: 16, scope: !4791, inlinedAt: !5303)
!5331 = !DILocation(line: 176, column: 2, scope: !5304)
!5332 = !DILocation(line: 177, column: 6, scope: !5298)
!5333 = !DILocation(line: 177, column: 2, scope: !5298)
!5334 = !DILocation(line: 178, column: 2, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5336, file: !3, line: 178, column: 2)
!5336 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 178, column: 2)
!5337 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 178, column: 2)
!5338 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 178, column: 2)
!5339 = !DILocation(line: 179, column: 2, scope: !5298)
!5340 = !DILocation(line: 180, column: 39, scope: !5298)
!5341 = !DILocation(line: 409, column: 2, scope: !4844, inlinedAt: !5300)
!5342 = !DILocation(line: 409, column: 2, scope: !4849, inlinedAt: !5300)
!5343 = !DILocation(line: 409, column: 2, scope: !4850, inlinedAt: !5300)
!5344 = !DILocation(line: 409, column: 2, scope: !4857, inlinedAt: !5300)
!5345 = !DILocation(line: 409, column: 2, scope: !4860, inlinedAt: !5300)
!5346 = !DILocation(line: 181, column: 2, scope: !5298)
!5347 = distinct !DISubprogram(name: "clear_bit", scope: !5118, file: !5118, line: 39, type: !5348, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!5348 = !DISubroutineType(types: !5349)
!5349 = !{null, !117, !5121}
!5350 = !DILocalVariable(name: "nr", arg: 1, scope: !5351, file: !5125, line: 72, type: !117)
!5351 = distinct !DISubprogram(name: "arch_clear_bit", scope: !5125, file: !5125, line: 72, type: !5348, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!5352 = !DILocation(line: 72, column: 21, scope: !5351, inlinedAt: !5353)
!5353 = distinct !DILocation(line: 42, column: 2, scope: !5347)
!5354 = !DILocalVariable(name: "addr", arg: 2, scope: !5351, file: !5125, line: 72, type: !5121)
!5355 = !DILocation(line: 72, column: 49, scope: !5351, inlinedAt: !5353)
!5356 = !DILocalVariable(name: "v", arg: 1, scope: !5357, file: !5135, line: 84, type: !5138)
!5357 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5135, file: !5135, line: 84, type: !5136, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!5358 = !DILocation(line: 84, column: 74, scope: !5357, inlinedAt: !5359)
!5359 = distinct !DILocation(line: 41, column: 2, scope: !5347)
!5360 = !DILocalVariable(name: "size", arg: 2, scope: !5357, file: !5135, line: 84, type: !499)
!5361 = !DILocation(line: 84, column: 84, scope: !5357, inlinedAt: !5359)
!5362 = !DILocalVariable(name: "nr", arg: 1, scope: !5347, file: !5118, line: 39, type: !117)
!5363 = !DILocation(line: 39, column: 35, scope: !5347)
!5364 = !DILocalVariable(name: "addr", arg: 2, scope: !5347, file: !5118, line: 39, type: !5121)
!5365 = !DILocation(line: 39, column: 63, scope: !5347)
!5366 = !DILocation(line: 41, column: 26, scope: !5347)
!5367 = !DILocation(line: 41, column: 33, scope: !5347)
!5368 = !DILocation(line: 41, column: 31, scope: !5347)
!5369 = !DILocation(line: 86, column: 20, scope: !5357, inlinedAt: !5359)
!5370 = !DILocation(line: 86, column: 23, scope: !5357, inlinedAt: !5359)
!5371 = !DILocation(line: 86, column: 2, scope: !5357, inlinedAt: !5359)
!5372 = !DILocation(line: 87, column: 2, scope: !5357, inlinedAt: !5359)
!5373 = !DILocation(line: 42, column: 17, scope: !5347)
!5374 = !DILocation(line: 42, column: 21, scope: !5347)
!5375 = !DILocation(line: 74, column: 27, scope: !5376, inlinedAt: !5353)
!5376 = distinct !DILexicalBlock(scope: !5351, file: !5125, line: 74, column: 6)
!5377 = !DILocation(line: 74, column: 6, scope: !5376, inlinedAt: !5353)
!5378 = !DILocation(line: 74, column: 6, scope: !5351, inlinedAt: !5353)
!5379 = !DILocation(line: 76, column: 6, scope: !5380, inlinedAt: !5353)
!5380 = distinct !DILexicalBlock(scope: !5376, file: !5125, line: 74, column: 32)
!5381 = !DILocation(line: 77, column: 13, scope: !5380, inlinedAt: !5353)
!5382 = !DILocation(line: 77, column: 12, scope: !5380, inlinedAt: !5353)
!5383 = !DILocation(line: 75, column: 3, scope: !5380, inlinedAt: !5353)
!5384 = !{i32 -2147170509}
!5385 = !DILocation(line: 78, column: 2, scope: !5380, inlinedAt: !5353)
!5386 = !DILocation(line: 80, column: 8, scope: !5387, inlinedAt: !5353)
!5387 = distinct !DILexicalBlock(scope: !5376, file: !5125, line: 78, column: 9)
!5388 = !DILocation(line: 80, column: 32, scope: !5387, inlinedAt: !5353)
!5389 = !DILocation(line: 79, column: 3, scope: !5387, inlinedAt: !5353)
!5390 = !{i32 -2147170377}
!5391 = !DILocation(line: 43, column: 1, scope: !5347)
!5392 = distinct !DISubprogram(name: "wdtpci_notify_sys", scope: !3, file: !3, line: 551, type: !4197, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!5393 = !DILocalVariable(name: "this", arg: 1, scope: !5392, file: !3, line: 551, type: !4199)
!5394 = !DILocation(line: 551, column: 53, scope: !5392)
!5395 = !DILocalVariable(name: "code", arg: 2, scope: !5392, file: !3, line: 551, type: !110)
!5396 = !DILocation(line: 551, column: 73, scope: !5392)
!5397 = !DILocalVariable(name: "unused", arg: 3, scope: !5392, file: !3, line: 552, type: !111)
!5398 = !DILocation(line: 552, column: 14, scope: !5392)
!5399 = !DILocation(line: 554, column: 6, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !5392, file: !3, line: 554, column: 6)
!5401 = !DILocation(line: 554, column: 11, scope: !5400)
!5402 = !DILocation(line: 554, column: 23, scope: !5400)
!5403 = !DILocation(line: 554, column: 26, scope: !5400)
!5404 = !DILocation(line: 554, column: 31, scope: !5400)
!5405 = !DILocation(line: 554, column: 6, scope: !5392)
!5406 = !DILocation(line: 555, column: 3, scope: !5400)
!5407 = !DILocation(line: 556, column: 2, scope: !5392)
!5408 = distinct !DISubprogram(name: "wdtpci_temp_read", scope: !3, file: !3, line: 499, type: !3025, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!5409 = !DILocation(line: 138, column: 29, scope: !4569, inlinedAt: !5410)
!5410 = distinct !DILocation(line: 199, column: 6, scope: !4575, inlinedAt: !5411)
!5411 = distinct !DILocation(line: 507, column: 6, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5408, file: !3, line: 507, column: 6)
!5413 = !DILocation(line: 138, column: 42, scope: !4569, inlinedAt: !5410)
!5414 = !DILocation(line: 138, column: 54, scope: !4569, inlinedAt: !5410)
!5415 = !DILocation(line: 140, column: 6, scope: !4569, inlinedAt: !5410)
!5416 = !DILocation(line: 150, column: 6, scope: !4589, inlinedAt: !5410)
!5417 = !DILocation(line: 197, column: 27, scope: !4577, inlinedAt: !5411)
!5418 = !DILocation(line: 197, column: 43, scope: !4577, inlinedAt: !5411)
!5419 = !DILocation(line: 197, column: 63, scope: !4577, inlinedAt: !5411)
!5420 = !DILocalVariable(name: "file", arg: 1, scope: !5408, file: !3, line: 499, type: !529)
!5421 = !DILocation(line: 499, column: 46, scope: !5408)
!5422 = !DILocalVariable(name: "buf", arg: 2, scope: !5408, file: !3, line: 499, type: !144)
!5423 = !DILocation(line: 499, column: 65, scope: !5408)
!5424 = !DILocalVariable(name: "count", arg: 3, scope: !5408, file: !3, line: 500, type: !499)
!5425 = !DILocation(line: 500, column: 14, scope: !5408)
!5426 = !DILocalVariable(name: "ptr", arg: 4, scope: !5408, file: !3, line: 500, type: !3027)
!5427 = !DILocation(line: 500, column: 29, scope: !5408)
!5428 = !DILocalVariable(name: "temperature", scope: !5408, file: !3, line: 502, type: !112)
!5429 = !DILocation(line: 502, column: 6, scope: !5408)
!5430 = !DILocation(line: 504, column: 6, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5408, file: !3, line: 504, column: 6)
!5432 = !DILocation(line: 504, column: 6, scope: !5408)
!5433 = !DILocation(line: 505, column: 3, scope: !5431)
!5434 = !DILocation(line: 507, column: 19, scope: !5412)
!5435 = !DILocation(line: 507, column: 24, scope: !5412)
!5436 = !DILocation(line: 199, column: 6, scope: !4575, inlinedAt: !5411)
!5437 = !DILocation(line: 141, column: 6, scope: !4646, inlinedAt: !5410)
!5438 = !DILocation(line: 0, scope: !4646, inlinedAt: !5410)
!5439 = !DILocation(line: 141, column: 6, scope: !4569, inlinedAt: !5410)
!5440 = !DILocation(line: 142, column: 29, scope: !4650, inlinedAt: !5410)
!5441 = !DILocation(line: 142, column: 8, scope: !4650, inlinedAt: !5410)
!5442 = !DILocation(line: 142, column: 7, scope: !4651, inlinedAt: !5410)
!5443 = !DILocation(line: 143, column: 18, scope: !4650, inlinedAt: !5410)
!5444 = !DILocation(line: 143, column: 22, scope: !4650, inlinedAt: !5410)
!5445 = !DILocation(line: 143, column: 4, scope: !4650, inlinedAt: !5410)
!5446 = !DILocation(line: 144, column: 12, scope: !4658, inlinedAt: !5410)
!5447 = !DILocation(line: 144, column: 12, scope: !4650, inlinedAt: !5410)
!5448 = !DILocation(line: 145, column: 4, scope: !4658, inlinedAt: !5410)
!5449 = !DILocation(line: 147, column: 4, scope: !4658, inlinedAt: !5410)
!5450 = !DILocation(line: 148, column: 3, scope: !4651, inlinedAt: !5410)
!5451 = !DILocation(line: 150, column: 6, scope: !4664, inlinedAt: !5410)
!5452 = !DILocation(line: 150, column: 6, scope: !4666, inlinedAt: !5410)
!5453 = !DILocation(line: 150, column: 6, scope: !4670, inlinedAt: !5410)
!5454 = !DILocation(line: 150, column: 6, scope: !4667, inlinedAt: !5410)
!5455 = !DILocation(line: 150, column: 6, scope: !4590, inlinedAt: !5410)
!5456 = !DILocation(line: 150, column: 6, scope: !4569, inlinedAt: !5410)
!5457 = !DILocation(line: 151, column: 3, scope: !4590, inlinedAt: !5410)
!5458 = !DILocation(line: 152, column: 20, scope: !4569, inlinedAt: !5410)
!5459 = !DILocation(line: 152, column: 26, scope: !4569, inlinedAt: !5410)
!5460 = !DILocation(line: 152, column: 33, scope: !4569, inlinedAt: !5410)
!5461 = !DILocation(line: 152, column: 2, scope: !4569, inlinedAt: !5410)
!5462 = !DILocation(line: 153, column: 2, scope: !4569, inlinedAt: !5410)
!5463 = !DILocation(line: 154, column: 1, scope: !4569, inlinedAt: !5410)
!5464 = !DILocation(line: 199, column: 6, scope: !4577, inlinedAt: !5411)
!5465 = !DILocation(line: 200, column: 21, scope: !4575, inlinedAt: !5411)
!5466 = !DILocation(line: 200, column: 25, scope: !4575, inlinedAt: !5411)
!5467 = !DILocation(line: 200, column: 31, scope: !4575, inlinedAt: !5411)
!5468 = !DILocation(line: 200, column: 7, scope: !4575, inlinedAt: !5411)
!5469 = !DILocation(line: 200, column: 5, scope: !4575, inlinedAt: !5411)
!5470 = !DILocation(line: 200, column: 3, scope: !4575, inlinedAt: !5411)
!5471 = !DILocation(line: 201, column: 9, scope: !4577, inlinedAt: !5411)
!5472 = !DILocation(line: 507, column: 6, scope: !5412)
!5473 = !DILocation(line: 507, column: 6, scope: !5408)
!5474 = !DILocation(line: 508, column: 3, scope: !5412)
!5475 = !DILocation(line: 510, column: 2, scope: !5408)
!5476 = !DILocation(line: 511, column: 1, scope: !5408)
!5477 = distinct !DISubprogram(name: "wdtpci_temp_open", scope: !3, file: !3, line: 521, type: !3072, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!5478 = !DILocalVariable(name: "inode", arg: 1, scope: !5477, file: !3, line: 521, type: !598)
!5479 = !DILocation(line: 521, column: 43, scope: !5477)
!5480 = !DILocalVariable(name: "file", arg: 2, scope: !5477, file: !3, line: 521, type: !529)
!5481 = !DILocation(line: 521, column: 63, scope: !5477)
!5482 = !DILocation(line: 523, column: 21, scope: !5477)
!5483 = !DILocation(line: 523, column: 28, scope: !5477)
!5484 = !DILocation(line: 523, column: 9, scope: !5477)
!5485 = !DILocation(line: 523, column: 2, scope: !5477)
!5486 = distinct !DISubprogram(name: "wdtpci_temp_release", scope: !3, file: !3, line: 534, type: !3072, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!5487 = !DILocalVariable(name: "inode", arg: 1, scope: !5486, file: !3, line: 534, type: !598)
!5488 = !DILocation(line: 534, column: 46, scope: !5486)
!5489 = !DILocalVariable(name: "file", arg: 2, scope: !5486, file: !3, line: 534, type: !529)
!5490 = !DILocation(line: 534, column: 66, scope: !5486)
!5491 = !DILocation(line: 536, column: 2, scope: !5486)
!5492 = distinct !DISubprogram(name: "wdtpci_get_temperature", scope: !3, file: !3, line: 274, type: !4972, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !428)
!5493 = !DILocation(line: 407, column: 64, scope: !4783, inlinedAt: !5494)
!5494 = distinct !DILocation(line: 281, column: 2, scope: !5492)
!5495 = !DILocation(line: 407, column: 84, scope: !4783, inlinedAt: !5494)
!5496 = !DILocation(line: 327, column: 67, scope: !4791, inlinedAt: !5497)
!5497 = distinct !DILocation(line: 278, column: 2, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5499, file: !3, line: 278, column: 2)
!5499 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 278, column: 2)
!5500 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 278, column: 2)
!5501 = distinct !DILexicalBlock(scope: !5502, file: !3, line: 278, column: 2)
!5502 = distinct !DILexicalBlock(scope: !5492, file: !3, line: 278, column: 2)
!5503 = !DILocalVariable(name: "temperature", arg: 1, scope: !5492, file: !3, line: 274, type: !869)
!5504 = !DILocation(line: 274, column: 40, scope: !5492)
!5505 = !DILocalVariable(name: "c", scope: !5492, file: !3, line: 276, type: !155)
!5506 = !DILocation(line: 276, column: 17, scope: !5492)
!5507 = !DILocalVariable(name: "flags", scope: !5492, file: !3, line: 277, type: !110)
!5508 = !DILocation(line: 277, column: 16, scope: !5492)
!5509 = !DILocation(line: 278, column: 2, scope: !5492)
!5510 = !DILocation(line: 278, column: 2, scope: !5502)
!5511 = !DILocalVariable(name: "__dummy", scope: !5512, file: !3, line: 278, type: !110)
!5512 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 278, column: 2)
!5513 = !DILocation(line: 278, column: 2, scope: !5512)
!5514 = !DILocalVariable(name: "__dummy2", scope: !5512, file: !3, line: 278, type: !110)
!5515 = !DILocation(line: 278, column: 2, scope: !5501)
!5516 = !DILocation(line: 278, column: 2, scope: !5500)
!5517 = !DILocation(line: 278, column: 2, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 278, column: 2)
!5519 = !DILocalVariable(name: "__dummy", scope: !5520, file: !3, line: 278, type: !110)
!5520 = distinct !DILexicalBlock(scope: !5521, file: !3, line: 278, column: 2)
!5521 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 278, column: 2)
!5522 = !DILocation(line: 278, column: 2, scope: !5520)
!5523 = !DILocalVariable(name: "__dummy2", scope: !5520, file: !3, line: 278, type: !110)
!5524 = !DILocation(line: 278, column: 2, scope: !5521)
!5525 = !DILocation(line: 278, column: 2, scope: !5499)
!5526 = !{i32 -2141679848}
!5527 = !DILocation(line: 329, column: 10, scope: !4791, inlinedAt: !5497)
!5528 = !DILocation(line: 329, column: 16, scope: !4791, inlinedAt: !5497)
!5529 = !DILocation(line: 278, column: 2, scope: !5498)
!5530 = !DILocation(line: 279, column: 10, scope: !5492)
!5531 = !DILocation(line: 279, column: 6, scope: !5492)
!5532 = !DILocation(line: 279, column: 4, scope: !5492)
!5533 = !DILocation(line: 280, column: 2, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 280, column: 2)
!5535 = distinct !DILexicalBlock(scope: !5536, file: !3, line: 280, column: 2)
!5536 = distinct !DILexicalBlock(scope: !5537, file: !3, line: 280, column: 2)
!5537 = distinct !DILexicalBlock(scope: !5492, file: !3, line: 280, column: 2)
!5538 = !DILocation(line: 281, column: 39, scope: !5492)
!5539 = !DILocation(line: 409, column: 2, scope: !4844, inlinedAt: !5494)
!5540 = !DILocation(line: 409, column: 2, scope: !4849, inlinedAt: !5494)
!5541 = !DILocation(line: 409, column: 2, scope: !4850, inlinedAt: !5494)
!5542 = !DILocation(line: 409, column: 2, scope: !4857, inlinedAt: !5494)
!5543 = !DILocation(line: 409, column: 2, scope: !4860, inlinedAt: !5494)
!5544 = !DILocation(line: 282, column: 18, scope: !5492)
!5545 = !DILocation(line: 282, column: 20, scope: !5492)
!5546 = !DILocation(line: 282, column: 25, scope: !5492)
!5547 = !DILocation(line: 282, column: 31, scope: !5492)
!5548 = !DILocation(line: 282, column: 3, scope: !5492)
!5549 = !DILocation(line: 282, column: 15, scope: !5492)
!5550 = !DILocation(line: 283, column: 2, scope: !5492)
