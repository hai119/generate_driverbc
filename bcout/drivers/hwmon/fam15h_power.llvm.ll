; ModuleID = '../bcout/drivers/hwmon/fam15h_power.llvm.bc'
source_filename = "drivers/hwmon/fam15h_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_fam15h_power_driver_init6:\09\09\09"
module asm ".long\09fam15h_power_driver_init - .\09\09\09"
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
%union.anon.65 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.cpuinfo_x86 = type { i8, i8, i8, i8, i32, [3 x i32], i8, i8, i8, i8, i32, i32, %union.anon.66, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8 }
%union.anon.66 = type { i64, [72 x i8] }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
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
%struct.fam15h_power_data = type { %struct.pci_dev*, i32, i32, i32, i32, [2 x %struct.attribute_group*], %struct.attribute_group, i64, [8 x i64], [8 x i64], [8 x i32], i64 }

@__UNIQUE_ID_description234 = internal constant [68 x i8] c"fam15h_power.description=AMD Family 15h CPU processor power monitor\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_author235 = internal constant [72 x i8] c"fam15h_power.author=Andreas Herrmann <herrmann.der.user@googlemail.com>\00", section ".modinfo", align 1, !dbg !133
@__UNIQUE_ID_file236 = internal constant [45 x i8] c"fam15h_power.file=drivers/hwmon/fam15h_power\00", section ".modinfo", align 1, !dbg !139
@__UNIQUE_ID_license237 = internal constant [25 x i8] c"fam15h_power.license=GPL\00", section ".modinfo", align 1, !dbg !144
@__UNIQUE_ID___addressable_fam15h_power_driver_init238 = internal global i8* bitcast (i32 ()* @fam15h_power_driver_init to i8*), section ".discard.addressable", align 8, !dbg !149
@fam15h_power_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([7 x %struct.pci_device_id], [7 x %struct.pci_device_id]* @fam15h_power_id_table, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @fam15h_power_probe, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* @fam15h_power_resume, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !158
@__exitcall_fam15h_power_driver_exit = internal global void ()* @fam15h_power_driver_exit, section ".exitcall.exit", align 8, !dbg !151
@.str = private unnamed_addr constant [13 x i8] c"fam15h_power\00", align 1
@fam15h_power_id_table = internal constant [7 x %struct.pci_device_id] [%struct.pci_device_id { i32 4130, i32 5636, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4130, i32 5150, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4130, i32 5492, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4130, i32 5556, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4130, i32 5428, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4130, i32 5508, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4029
@affected_device = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4130, i32 5636, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4034
@.str.1 = private unnamed_addr constant [61 x i8] c"Bogus value for ProcessorPwrWatts (processor_pwr_watts>=%u)\0A\00", align 1
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"\013Failed to read max compute unit power accumulator MSR\0A\00", align 1
@dev_attr_power1_crit = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @power1_crit_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4037
@dev_attr_power1_input = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @power1_input_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4051
@dev_attr_power1_average = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @power1_average_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4053
@dev_attr_power1_average_interval = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @power1_average_interval_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @power1_average_interval_store }, align 8, !dbg !4055
@.str.3 = private unnamed_addr constant [12 x i8] c"power1_crit\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"power1_input\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"power1_average\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"power1_average_interval\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@cpu_bit_bitmap = external dso_local constant [65 x [1 x i64]], align 16
@llvm.used = appending global [7 x i8*] [i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__UNIQUE_ID_description234, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @__UNIQUE_ID_author235, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_file236, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_license237, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_fam15h_power_driver_init238 to i8*), i8* bitcast (void ()* @fam15h_power_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_fam15h_power_driver_exit to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @fam15h_power_driver_init() #0 section ".init.text" !dbg !4066 {
entry:
  %call = call i32 @__pci_register_driver(%struct.pci_driver* @fam15h_power_driver, %struct.module* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)) #9, !dbg !4069
  ret i32 %call, !dbg !4069
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @fam15h_power_driver_exit() #0 section ".exit.text" !dbg !4070 {
entry:
  call void @pci_unregister_driver(%struct.pci_driver* @fam15h_power_driver) #9, !dbg !4071
  ret void, !dbg !4071
}

; Function Attrs: noredzone
declare dso_local void @pci_unregister_driver(%struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__pci_register_driver(%struct.pci_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fam15h_power_probe(%struct.pci_dev* %pdev, %struct.pci_device_id* %id) #2 !dbg !4072 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  %data = alloca %struct.fam15h_power_data*, align 8
  %dev = alloca %struct.device*, align 8
  %hwmon_dev = alloca %struct.device*, align 8
  %ret = alloca i32, align 4
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4073, metadata !DIExpression()), !dbg !4074
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !4075, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.declare(metadata %struct.fam15h_power_data** %data, metadata !4077, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4096, metadata !DIExpression()), !dbg !4097
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4098
  %dev1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !4099
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !4097
  call void @llvm.dbg.declare(metadata %struct.device** %hwmon_dev, metadata !4100, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4102, metadata !DIExpression()), !dbg !4103
  %1 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4104
  call void @tweak_runavg_range(%struct.pci_dev* %1) #9, !dbg !4105
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4106
  %call = call zeroext i1 @should_load_on_this_node(%struct.pci_dev* %2) #9, !dbg !4108
  br i1 %call, label %if.end, label %if.then, !dbg !4109

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4110
  br label %return, !dbg !4110

if.end:                                           ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4111
  %call2 = call i8* @devm_kzalloc(%struct.device* %3, i64 256, i32 3264) #9, !dbg !4112
  %4 = bitcast i8* %call2 to %struct.fam15h_power_data*, !dbg !4112
  store %struct.fam15h_power_data* %4, %struct.fam15h_power_data** %data, align 8, !dbg !4113
  %5 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4114
  %tobool = icmp ne %struct.fam15h_power_data* %5, null, !dbg !4114
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !4116

if.then3:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4117
  br label %return, !dbg !4117

if.end4:                                          ; preds = %if.end
  %6 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4118
  %7 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4119
  %call5 = call i32 @fam15h_power_init_data(%struct.pci_dev* %6, %struct.fam15h_power_data* %7) #9, !dbg !4120
  store i32 %call5, i32* %ret, align 4, !dbg !4121
  %8 = load i32, i32* %ret, align 4, !dbg !4122
  %tobool6 = icmp ne i32 %8, 0, !dbg !4122
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4124

if.then7:                                         ; preds = %if.end4
  %9 = load i32, i32* %ret, align 4, !dbg !4125
  store i32 %9, i32* %retval, align 4, !dbg !4126
  br label %return, !dbg !4126

if.end8:                                          ; preds = %if.end4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4127
  %11 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4128
  %pdev9 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %11, i32 0, i32 0, !dbg !4129
  store %struct.pci_dev* %10, %struct.pci_dev** %pdev9, align 8, !dbg !4130
  %12 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4131
  %group = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %12, i32 0, i32 6, !dbg !4132
  %13 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4133
  %groups = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %13, i32 0, i32 5, !dbg !4134
  %arrayidx = getelementptr [2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* %groups, i64 0, i64 0, !dbg !4133
  store %struct.attribute_group* %group, %struct.attribute_group** %arrayidx, align 8, !dbg !4135
  %14 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4136
  %15 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4137
  %16 = bitcast %struct.fam15h_power_data* %15 to i8*, !dbg !4137
  %17 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4138
  %groups10 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %17, i32 0, i32 5, !dbg !4139
  %arrayidx11 = getelementptr [2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* %groups10, i64 0, i64 0, !dbg !4138
  %call12 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %16, %struct.attribute_group** %arrayidx11) #9, !dbg !4140
  store %struct.device* %call12, %struct.device** %hwmon_dev, align 8, !dbg !4141
  %18 = load %struct.device*, %struct.device** %hwmon_dev, align 8, !dbg !4142
  %19 = bitcast %struct.device* %18 to i8*, !dbg !4142
  %call13 = call i32 @PTR_ERR_OR_ZERO(i8* %19) #9, !dbg !4143
  store i32 %call13, i32* %retval, align 4, !dbg !4144
  br label %return, !dbg !4144

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !4145
  ret i32 %20, !dbg !4145
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fam15h_power_resume(%struct.pci_dev* %pdev) #2 !dbg !4146 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4147, metadata !DIExpression()), !dbg !4148
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4149
  call void @tweak_runavg_range(%struct.pci_dev* %0) #9, !dbg !4150
  ret i32 0, !dbg !4151
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tweak_runavg_range(%struct.pci_dev* %pdev) #2 !dbg !4152 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %val = alloca i32, align 4
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4153, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4155, metadata !DIExpression()), !dbg !4156
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4157
  %call = call %struct.pci_device_id* @pci_match_id(%struct.pci_device_id* getelementptr inbounds ([2 x %struct.pci_device_id], [2 x %struct.pci_device_id]* @affected_device, i64 0, i64 0), %struct.pci_dev* %0) #9, !dbg !4159
  %tobool = icmp ne %struct.pci_device_id* %call, null, !dbg !4159
  br i1 %tobool, label %if.end, label %if.then, !dbg !4160

if.then:                                          ; preds = %entry
  br label %return, !dbg !4161

if.end:                                           ; preds = %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4162
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1, i32 0, i32 1, !dbg !4163
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4163
  %3 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4164
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 6, !dbg !4164
  %4 = load i32, i32* %devfn, align 8, !dbg !4164
  %shr = lshr i32 %4, 3, !dbg !4164
  %and = and i32 %shr, 31, !dbg !4164
  %and1 = and i32 %and, 31, !dbg !4164
  %shl = shl i32 %and1, 3, !dbg !4164
  %or = or i32 %shl, 5, !dbg !4164
  %call2 = call i32 @pci_bus_read_config_dword(%struct.pci_bus* %2, i32 %or, i32 224, i32* %val) #9, !dbg !4165
  %5 = load i32, i32* %val, align 4, !dbg !4166
  %and3 = and i32 %5, 15, !dbg !4168
  %cmp = icmp ne i32 %and3, 14, !dbg !4169
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !4170

if.then4:                                         ; preds = %if.end
  br label %return, !dbg !4171

if.end5:                                          ; preds = %if.end
  %6 = load i32, i32* %val, align 4, !dbg !4172
  %and6 = and i32 %6, -16, !dbg !4172
  store i32 %and6, i32* %val, align 4, !dbg !4172
  %7 = load i32, i32* %val, align 4, !dbg !4173
  %or7 = or i32 %7, 9, !dbg !4173
  store i32 %or7, i32* %val, align 4, !dbg !4173
  %8 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4174
  %bus8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 1, !dbg !4175
  %9 = load %struct.pci_bus*, %struct.pci_bus** %bus8, align 8, !dbg !4175
  %10 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4176
  %devfn9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 6, !dbg !4176
  %11 = load i32, i32* %devfn9, align 8, !dbg !4176
  %shr10 = lshr i32 %11, 3, !dbg !4176
  %and11 = and i32 %shr10, 31, !dbg !4176
  %and12 = and i32 %and11, 31, !dbg !4176
  %shl13 = shl i32 %and12, 3, !dbg !4176
  %or14 = or i32 %shl13, 5, !dbg !4176
  %12 = load i32, i32* %val, align 4, !dbg !4177
  %call15 = call i32 @pci_bus_write_config_dword(%struct.pci_bus* %9, i32 %or14, i32 224, i32 %12) #9, !dbg !4178
  br label %return, !dbg !4179

return:                                           ; preds = %if.end5, %if.then4, %if.then
  ret void, !dbg !4179
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @should_load_on_this_node(%struct.pci_dev* %f4) #2 !dbg !4180 {
entry:
  %retval = alloca i1, align 1
  %f4.addr = alloca %struct.pci_dev*, align 8
  %val = alloca i32, align 4
  store %struct.pci_dev* %f4, %struct.pci_dev** %f4.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %f4.addr, metadata !4183, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4185, metadata !DIExpression()), !dbg !4186
  %0 = load %struct.pci_dev*, %struct.pci_dev** %f4.addr, align 8, !dbg !4187
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 1, !dbg !4188
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4188
  %2 = load %struct.pci_dev*, %struct.pci_dev** %f4.addr, align 8, !dbg !4189
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 6, !dbg !4189
  %3 = load i32, i32* %devfn, align 8, !dbg !4189
  %shr = lshr i32 %3, 3, !dbg !4189
  %and = and i32 %shr, 31, !dbg !4189
  %and1 = and i32 %and, 31, !dbg !4189
  %shl = shl i32 %and1, 3, !dbg !4189
  %or = or i32 %shl, 3, !dbg !4189
  %call = call i32 @pci_bus_read_config_dword(%struct.pci_bus* %1, i32 %or, i32 232, i32* %val) #9, !dbg !4190
  %4 = load i32, i32* %val, align 4, !dbg !4191
  %conv = zext i32 %4 to i64, !dbg !4191
  %and2 = and i64 %conv, 536870912, !dbg !4193
  %tobool = icmp ne i64 %and2, 0, !dbg !4193
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4194

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %val, align 4, !dbg !4195
  %shr3 = lshr i32 %5, 30, !dbg !4196
  %and4 = and i32 %shr3, 3, !dbg !4197
  %tobool5 = icmp ne i32 %and4, 0, !dbg !4197
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4198

if.then:                                          ; preds = %land.lhs.true
  store i1 false, i1* %retval, align 1, !dbg !4199
  br label %return, !dbg !4199

if.end:                                           ; preds = %land.lhs.true, %entry
  store i1 true, i1* %retval, align 1, !dbg !4200
  br label %return, !dbg !4200

return:                                           ; preds = %if.end, %if.then
  %6 = load i1, i1* %retval, align 1, !dbg !4201
  ret i1 %6, !dbg !4201
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !4202 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4205, metadata !DIExpression()), !dbg !4206
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4207, metadata !DIExpression()), !dbg !4208
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !4209, metadata !DIExpression()), !dbg !4210
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4211
  %1 = load i64, i64* %size.addr, align 8, !dbg !4212
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !4213
  %or = or i32 %2, 256, !dbg !4214
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #9, !dbg !4215
  ret i8* %call, !dbg !4216
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fam15h_power_init_data(%struct.pci_dev* %f4, %struct.fam15h_power_data* %data) #2 !dbg !4217 {
entry:
  %retval = alloca i32, align 4
  %f4.addr = alloca %struct.pci_dev*, align 8
  %data.addr = alloca %struct.fam15h_power_data*, align 8
  %val = alloca i32, align 4
  %tmp = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.pci_dev* %f4, %struct.pci_dev** %f4.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %f4.addr, metadata !4220, metadata !DIExpression()), !dbg !4221
  store %struct.fam15h_power_data* %data, %struct.fam15h_power_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fam15h_power_data** %data.addr, metadata !4222, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4224, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !4226, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4228, metadata !DIExpression()), !dbg !4229
  %0 = load %struct.pci_dev*, %struct.pci_dev** %f4.addr, align 8, !dbg !4230
  %call = call i32 @pci_read_config_dword(%struct.pci_dev* %0, i32 440, i32* %val) #9, !dbg !4231
  %1 = load i32, i32* %val, align 4, !dbg !4232
  %shr = lshr i32 %1, 16, !dbg !4233
  %2 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data.addr, align 8, !dbg !4234
  %base_tdp = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %2, i32 0, i32 2, !dbg !4235
  store i32 %shr, i32* %base_tdp, align 4, !dbg !4236
  %3 = load i32, i32* %val, align 4, !dbg !4237
  %and = and i32 %3, 65535, !dbg !4238
  %conv = zext i32 %and to i64, !dbg !4237
  store i64 %conv, i64* %tmp, align 8, !dbg !4239
  %4 = load %struct.pci_dev*, %struct.pci_dev** %f4.addr, align 8, !dbg !4240
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 1, !dbg !4241
  %5 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4241
  %6 = load %struct.pci_dev*, %struct.pci_dev** %f4.addr, align 8, !dbg !4242
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 6, !dbg !4242
  %7 = load i32, i32* %devfn, align 8, !dbg !4242
  %shr1 = lshr i32 %7, 3, !dbg !4242
  %and2 = and i32 %shr1, 31, !dbg !4242
  %and3 = and i32 %and2, 31, !dbg !4242
  %shl = shl i32 %and3, 3, !dbg !4242
  %or = or i32 %shl, 5, !dbg !4242
  %call4 = call i32 @pci_bus_read_config_dword(%struct.pci_bus* %5, i32 %or, i32 232, i32* %val) #9, !dbg !4243
  %8 = load i32, i32* %val, align 4, !dbg !4244
  %and5 = and i32 %8, 1023, !dbg !4245
  %shl6 = shl i32 %and5, 6, !dbg !4246
  %9 = load i32, i32* %val, align 4, !dbg !4247
  %shr7 = lshr i32 %9, 10, !dbg !4248
  %and8 = and i32 %shr7, 63, !dbg !4249
  %or9 = or i32 %shl6, %and8, !dbg !4250
  %10 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data.addr, align 8, !dbg !4251
  %tdp_to_watts = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %10, i32 0, i32 1, !dbg !4252
  store i32 %or9, i32* %tdp_to_watts, align 8, !dbg !4253
  %11 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data.addr, align 8, !dbg !4254
  %tdp_to_watts10 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %11, i32 0, i32 1, !dbg !4255
  %12 = load i32, i32* %tdp_to_watts10, align 8, !dbg !4255
  %conv11 = zext i32 %12 to i64, !dbg !4254
  %13 = load i64, i64* %tmp, align 8, !dbg !4256
  %mul = mul i64 %13, %conv11, !dbg !4256
  store i64 %mul, i64* %tmp, align 8, !dbg !4256
  %14 = load i64, i64* %tmp, align 8, !dbg !4257
  %shr12 = lshr i64 %14, 16, !dbg !4259
  %cmp = icmp uge i64 %shr12, 256, !dbg !4260
  br i1 %cmp, label %if.then, label %if.end, !dbg !4261

if.then:                                          ; preds = %entry
  %15 = load %struct.pci_dev*, %struct.pci_dev** %f4.addr, align 8, !dbg !4262
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 41, !dbg !4262
  %16 = load i64, i64* %tmp, align 8, !dbg !4262
  %shr14 = lshr i64 %16, 16, !dbg !4262
  %conv15 = trunc i64 %shr14 to i32, !dbg !4262
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %conv15) #10, !dbg !4262
  br label %if.end, !dbg !4262

if.end:                                           ; preds = %if.then, %entry
  %17 = load i64, i64* %tmp, align 8, !dbg !4263
  %mul16 = mul i64 %17, 15625, !dbg !4264
  %shr17 = lshr i64 %mul16, 10, !dbg !4265
  %conv18 = trunc i64 %shr17 to i32, !dbg !4266
  %18 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data.addr, align 8, !dbg !4267
  %processor_pwr_watts = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %18, i32 0, i32 3, !dbg !4268
  store i32 %conv18, i32* %processor_pwr_watts, align 8, !dbg !4269
  %19 = load %struct.pci_dev*, %struct.pci_dev** %f4.addr, align 8, !dbg !4270
  %20 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data.addr, align 8, !dbg !4271
  %call19 = call i32 @fam15h_power_init_attrs(%struct.pci_dev* %19, %struct.fam15h_power_data* %20) #9, !dbg !4272
  store i32 %call19, i32* %ret, align 4, !dbg !4273
  %21 = load i32, i32* %ret, align 4, !dbg !4274
  %tobool = icmp ne i32 %21, 0, !dbg !4274
  br i1 %tobool, label %if.then20, label %if.end21, !dbg !4276

if.then20:                                        ; preds = %if.end
  %22 = load i32, i32* %ret, align 4, !dbg !4277
  store i32 %22, i32* %retval, align 4, !dbg !4278
  br label %return, !dbg !4278

if.end21:                                         ; preds = %if.end
  br i1 false, label %cond.true, label %cond.false, !dbg !4279

cond.true:                                        ; preds = %if.end21
  br i1 true, label %if.end25, label %if.then24, !dbg !4280

cond.false:                                       ; preds = %if.end21
  %call22 = call zeroext i1 @test_bit(i64 115, i64* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12, i32 0)) #9, !dbg !4280
  br i1 %call22, label %if.end25, label %if.then24, !dbg !4279

if.then24:                                        ; preds = %cond.false, %cond.true
  store i32 0, i32* %retval, align 4, !dbg !4282
  br label %return, !dbg !4282

if.end25:                                         ; preds = %cond.false, %cond.true
  %call26 = call i32 @cpuid_ecx(i32 -2147483641) #9, !dbg !4283
  %23 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data.addr, align 8, !dbg !4284
  %cpu_pwr_sample_ratio = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %23, i32 0, i32 4, !dbg !4285
  store i32 %call26, i32* %cpu_pwr_sample_ratio, align 4, !dbg !4286
  %call27 = call i32 @rdmsrl_safe(i32 -1073676165, i64* %tmp) #9, !dbg !4287
  %tobool28 = icmp ne i32 %call27, 0, !dbg !4287
  br i1 %tobool28, label %if.then29, label %if.end31, !dbg !4289

if.then29:                                        ; preds = %if.end25
  %call30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !4290
  store i32 -19, i32* %retval, align 4, !dbg !4292
  br label %return, !dbg !4292

if.end31:                                         ; preds = %if.end25
  %24 = load i64, i64* %tmp, align 8, !dbg !4293
  %25 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data.addr, align 8, !dbg !4294
  %max_cu_acc_power = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %25, i32 0, i32 7, !dbg !4295
  store i64 %24, i64* %max_cu_acc_power, align 8, !dbg !4296
  %26 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data.addr, align 8, !dbg !4297
  %power_period = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %26, i32 0, i32 11, !dbg !4298
  store i64 10, i64* %power_period, align 8, !dbg !4299
  %27 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data.addr, align 8, !dbg !4300
  %call32 = call i32 @read_registers(%struct.fam15h_power_data* %27) #9, !dbg !4301
  store i32 %call32, i32* %retval, align 4, !dbg !4302
  br label %return, !dbg !4302

return:                                           ; preds = %if.end31, %if.then29, %if.then24, %if.then20
  %28 = load i32, i32* %retval, align 4, !dbg !4303
  ret i32 %28, !dbg !4303
}

; Function Attrs: noredzone
declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i8*, i8*, %struct.attribute_group**) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @PTR_ERR_OR_ZERO(i8* %ptr) #2 !dbg !4304 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4308, metadata !DIExpression()), !dbg !4309
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4310
  %call = call zeroext i1 @IS_ERR(i8* %0) #9, !dbg !4312
  br i1 %call, label %if.then, label %if.else, !dbg !4313

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !4314
  %call1 = call i64 @PTR_ERR(i8* %1) #9, !dbg !4315
  %conv = trunc i64 %call1 to i32, !dbg !4315
  store i32 %conv, i32* %retval, align 4, !dbg !4316
  br label %return, !dbg !4316

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4317
  br label %return, !dbg !4317

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !4318
  ret i32 %2, !dbg !4318
}

; Function Attrs: noredzone
declare dso_local %struct.pci_device_id* @pci_match_id(%struct.pci_device_id*, %struct.pci_dev*) #1

; Function Attrs: noredzone
declare dso_local i32 @pci_bus_read_config_dword(%struct.pci_bus*, i32, i32, i32*) #1

; Function Attrs: noredzone
declare dso_local i32 @pci_bus_write_config_dword(%struct.pci_bus*, i32, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fam15h_power_init_attrs(%struct.pci_dev* %pdev, %struct.fam15h_power_data* %data) #2 !dbg !4319 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %data.addr = alloca %struct.fam15h_power_data*, align 8
  %n = alloca i32, align 4
  %fam15h_power_attrs = alloca %struct.attribute**, align 8
  %c = alloca %struct.cpuinfo_x86*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4320, metadata !DIExpression()), !dbg !4321
  store %struct.fam15h_power_data* %data, %struct.fam15h_power_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fam15h_power_data** %data.addr, metadata !4322, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.declare(metadata i32* %n, metadata !4324, metadata !DIExpression()), !dbg !4325
  store i32 2, i32* %n, align 4, !dbg !4325
  call void @llvm.dbg.declare(metadata %struct.attribute*** %fam15h_power_attrs, metadata !4326, metadata !DIExpression()), !dbg !4327
  call void @llvm.dbg.declare(metadata %struct.cpuinfo_x86** %c, metadata !4328, metadata !DIExpression()), !dbg !4375
  store %struct.cpuinfo_x86* @boot_cpu_data, %struct.cpuinfo_x86** %c, align 8, !dbg !4375
  %0 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !4376
  %x86 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %0, i32 0, i32 0, !dbg !4378
  %1 = load i8, i8* %x86, align 8, !dbg !4378
  %conv = zext i8 %1 to i32, !dbg !4376
  %cmp = icmp eq i32 %conv, 21, !dbg !4379
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4380

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !4381
  %x86_model = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %2, i32 0, i32 2, !dbg !4382
  %3 = load i8, i8* %x86_model, align 2, !dbg !4382
  %conv2 = zext i8 %3 to i32, !dbg !4381
  %cmp3 = icmp sle i32 %conv2, 15, !dbg !4383
  br i1 %cmp3, label %if.then, label %lor.lhs.false, !dbg !4384

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !4385
  %x86_model5 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %4, i32 0, i32 2, !dbg !4386
  %5 = load i8, i8* %x86_model5, align 2, !dbg !4386
  %conv6 = zext i8 %5 to i32, !dbg !4385
  %cmp7 = icmp sge i32 %conv6, 96, !dbg !4387
  br i1 %cmp7, label %land.lhs.true9, label %if.end, !dbg !4388

land.lhs.true9:                                   ; preds = %lor.lhs.false
  %6 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !4389
  %x86_model10 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %6, i32 0, i32 2, !dbg !4390
  %7 = load i8, i8* %x86_model10, align 2, !dbg !4390
  %conv11 = zext i8 %7 to i32, !dbg !4389
  %cmp12 = icmp sle i32 %conv11, 127, !dbg !4391
  br i1 %cmp12, label %if.then, label %if.end, !dbg !4392

if.then:                                          ; preds = %land.lhs.true9, %land.lhs.true
  %8 = load i32, i32* %n, align 4, !dbg !4393
  %add = add i32 %8, 1, !dbg !4393
  store i32 %add, i32* %n, align 4, !dbg !4393
  br label %if.end, !dbg !4394

if.end:                                           ; preds = %if.then, %land.lhs.true9, %lor.lhs.false, %entry
  br i1 false, label %cond.true, label %cond.false, !dbg !4395

cond.true:                                        ; preds = %if.end
  br i1 true, label %if.then15, label %if.end17, !dbg !4396

cond.false:                                       ; preds = %if.end
  %call = call zeroext i1 @test_bit(i64 115, i64* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12, i32 0)) #9, !dbg !4396
  br i1 %call, label %if.then15, label %if.end17, !dbg !4395

if.then15:                                        ; preds = %cond.false, %cond.true
  %9 = load i32, i32* %n, align 4, !dbg !4398
  %add16 = add i32 %9, 2, !dbg !4398
  store i32 %add16, i32* %n, align 4, !dbg !4398
  br label %if.end17, !dbg !4399

if.end17:                                         ; preds = %if.then15, %cond.false, %cond.true
  %10 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4400
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 41, !dbg !4401
  %11 = load i32, i32* %n, align 4, !dbg !4402
  %conv18 = sext i32 %11 to i64, !dbg !4402
  %call19 = call i8* @devm_kcalloc(%struct.device* %dev, i64 %conv18, i64 8, i32 3264) #9, !dbg !4403
  %12 = bitcast i8* %call19 to %struct.attribute**, !dbg !4403
  store %struct.attribute** %12, %struct.attribute*** %fam15h_power_attrs, align 8, !dbg !4404
  %13 = load %struct.attribute**, %struct.attribute*** %fam15h_power_attrs, align 8, !dbg !4405
  %tobool = icmp ne %struct.attribute** %13, null, !dbg !4405
  br i1 %tobool, label %if.end21, label %if.then20, !dbg !4407

if.then20:                                        ; preds = %if.end17
  store i32 -12, i32* %retval, align 4, !dbg !4408
  br label %return, !dbg !4408

if.end21:                                         ; preds = %if.end17
  store i32 0, i32* %n, align 4, !dbg !4409
  %14 = load %struct.attribute**, %struct.attribute*** %fam15h_power_attrs, align 8, !dbg !4410
  %15 = load i32, i32* %n, align 4, !dbg !4411
  %inc = add i32 %15, 1, !dbg !4411
  store i32 %inc, i32* %n, align 4, !dbg !4411
  %idxprom = sext i32 %15 to i64, !dbg !4410
  %arrayidx = getelementptr %struct.attribute*, %struct.attribute** %14, i64 %idxprom, !dbg !4410
  store %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_power1_crit, i32 0, i32 0), %struct.attribute** %arrayidx, align 8, !dbg !4412
  %16 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !4413
  %x8622 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %16, i32 0, i32 0, !dbg !4415
  %17 = load i8, i8* %x8622, align 8, !dbg !4415
  %conv23 = zext i8 %17 to i32, !dbg !4413
  %cmp24 = icmp eq i32 %conv23, 21, !dbg !4416
  br i1 %cmp24, label %land.lhs.true26, label %if.end45, !dbg !4417

land.lhs.true26:                                  ; preds = %if.end21
  %18 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !4418
  %x86_model27 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %18, i32 0, i32 2, !dbg !4419
  %19 = load i8, i8* %x86_model27, align 2, !dbg !4419
  %conv28 = zext i8 %19 to i32, !dbg !4418
  %cmp29 = icmp sle i32 %conv28, 15, !dbg !4420
  br i1 %cmp29, label %if.then41, label %lor.lhs.false31, !dbg !4421

lor.lhs.false31:                                  ; preds = %land.lhs.true26
  %20 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !4422
  %x86_model32 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %20, i32 0, i32 2, !dbg !4423
  %21 = load i8, i8* %x86_model32, align 2, !dbg !4423
  %conv33 = zext i8 %21 to i32, !dbg !4422
  %cmp34 = icmp sge i32 %conv33, 96, !dbg !4424
  br i1 %cmp34, label %land.lhs.true36, label %if.end45, !dbg !4425

land.lhs.true36:                                  ; preds = %lor.lhs.false31
  %22 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !4426
  %x86_model37 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %22, i32 0, i32 2, !dbg !4427
  %23 = load i8, i8* %x86_model37, align 2, !dbg !4427
  %conv38 = zext i8 %23 to i32, !dbg !4426
  %cmp39 = icmp sle i32 %conv38, 127, !dbg !4428
  br i1 %cmp39, label %if.then41, label %if.end45, !dbg !4429

if.then41:                                        ; preds = %land.lhs.true36, %land.lhs.true26
  %24 = load %struct.attribute**, %struct.attribute*** %fam15h_power_attrs, align 8, !dbg !4430
  %25 = load i32, i32* %n, align 4, !dbg !4431
  %inc42 = add i32 %25, 1, !dbg !4431
  store i32 %inc42, i32* %n, align 4, !dbg !4431
  %idxprom43 = sext i32 %25 to i64, !dbg !4430
  %arrayidx44 = getelementptr %struct.attribute*, %struct.attribute** %24, i64 %idxprom43, !dbg !4430
  store %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_power1_input, i32 0, i32 0), %struct.attribute** %arrayidx44, align 8, !dbg !4432
  br label %if.end45, !dbg !4430

if.end45:                                         ; preds = %if.then41, %land.lhs.true36, %lor.lhs.false31, %if.end21
  br i1 false, label %cond.true46, label %cond.false47, !dbg !4433

cond.true46:                                      ; preds = %if.end45
  br i1 true, label %if.then50, label %if.end57, !dbg !4434

cond.false47:                                     ; preds = %if.end45
  %call48 = call zeroext i1 @test_bit(i64 115, i64* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12, i32 0)) #9, !dbg !4434
  br i1 %call48, label %if.then50, label %if.end57, !dbg !4433

if.then50:                                        ; preds = %cond.false47, %cond.true46
  %26 = load %struct.attribute**, %struct.attribute*** %fam15h_power_attrs, align 8, !dbg !4436
  %27 = load i32, i32* %n, align 4, !dbg !4438
  %inc51 = add i32 %27, 1, !dbg !4438
  store i32 %inc51, i32* %n, align 4, !dbg !4438
  %idxprom52 = sext i32 %27 to i64, !dbg !4436
  %arrayidx53 = getelementptr %struct.attribute*, %struct.attribute** %26, i64 %idxprom52, !dbg !4436
  store %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_power1_average, i32 0, i32 0), %struct.attribute** %arrayidx53, align 8, !dbg !4439
  %28 = load %struct.attribute**, %struct.attribute*** %fam15h_power_attrs, align 8, !dbg !4440
  %29 = load i32, i32* %n, align 4, !dbg !4441
  %inc54 = add i32 %29, 1, !dbg !4441
  store i32 %inc54, i32* %n, align 4, !dbg !4441
  %idxprom55 = sext i32 %29 to i64, !dbg !4440
  %arrayidx56 = getelementptr %struct.attribute*, %struct.attribute** %28, i64 %idxprom55, !dbg !4440
  store %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_power1_average_interval, i32 0, i32 0), %struct.attribute** %arrayidx56, align 8, !dbg !4442
  br label %if.end57, !dbg !4443

if.end57:                                         ; preds = %if.then50, %cond.false47, %cond.true46
  %30 = load %struct.attribute**, %struct.attribute*** %fam15h_power_attrs, align 8, !dbg !4444
  %31 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data.addr, align 8, !dbg !4445
  %group = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %31, i32 0, i32 6, !dbg !4446
  %attrs = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %group, i32 0, i32 3, !dbg !4447
  store %struct.attribute** %30, %struct.attribute*** %attrs, align 8, !dbg !4448
  store i32 0, i32* %retval, align 4, !dbg !4449
  br label %return, !dbg !4449

return:                                           ; preds = %if.end57, %if.then20
  %32 = load i32, i32* %retval, align 4, !dbg !4450
  ret i32 %32, !dbg !4450
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #2 !dbg !4451 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !4458, metadata !DIExpression()), !dbg !4461
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !4463, metadata !DIExpression()), !dbg !4464
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !4465, metadata !DIExpression()), !dbg !4466
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4467, metadata !DIExpression()), !dbg !4469
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4471, metadata !DIExpression()), !dbg !4472
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4473, metadata !DIExpression()), !dbg !4481
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4483, metadata !DIExpression()), !dbg !4484
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4485, metadata !DIExpression()), !dbg !4486
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4487, metadata !DIExpression()), !dbg !4488
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4489
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4490
  %div = sdiv i64 %1, 64, !dbg !4490
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4491
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4489
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4492
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4493
  %conv.i = trunc i64 %4 to i32, !dbg !4493
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #11, !dbg !4494
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4495
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4495
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #11, !dbg !4495
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4496
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !4496
  br i1 %8, label %cond.true, label %cond.false, !dbg !4496

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !4496
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !4496
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !4497
  %and.i = and i64 %11, 63, !dbg !4498
  %shl.i = shl i64 1, %and.i, !dbg !4499
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !4500
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4501
  %shr.i = ashr i64 %13, 6, !dbg !4502
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !4500
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !4500
  %and1.i = and i64 %shl.i, %14, !dbg !4503
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !4504
  %conv = zext i1 %cmp.i to i32, !dbg !4496
  br label %cond.end, !dbg !4496

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !4496
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !4496
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !4505
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !4506
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #7, !dbg !4507, !srcloc !4508
  store i8 %19, i8* %oldbit.i, align 1, !dbg !4507
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !4509
  %tobool.i = trunc i8 %20 to i1, !dbg !4509
  %conv2 = zext i1 %tobool.i to i32, !dbg !4496
  br label %cond.end, !dbg !4496

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4496
  %tobool = icmp ne i32 %cond, 0, !dbg !4496
  ret i1 %tobool, !dbg !4510
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpuid_ecx(i32 %op) #2 !dbg !4511 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, i32* %op.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !4514, metadata !DIExpression()), !dbg !4515
  call void @llvm.dbg.declare(metadata i32* %eax, metadata !4516, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.declare(metadata i32* %ebx, metadata !4518, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.declare(metadata i32* %ecx, metadata !4520, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.declare(metadata i32* %edx, metadata !4522, metadata !DIExpression()), !dbg !4523
  %0 = load i32, i32* %op.addr, align 4, !dbg !4524
  call void @cpuid(i32 %0, i32* %eax, i32* %ebx, i32* %ecx, i32* %edx) #9, !dbg !4525
  %1 = load i32, i32* %ecx, align 4, !dbg !4526
  ret i32 %1, !dbg !4527
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rdmsrl_safe(i32 %msr, i64* %p) #2 !dbg !4528 {
entry:
  %msr.addr = alloca i32, align 4
  %p.addr = alloca i64*, align 8
  %err = alloca i32, align 4
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !4532, metadata !DIExpression()), !dbg !4533
  store i64* %p, i64** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %p.addr, metadata !4534, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4536, metadata !DIExpression()), !dbg !4537
  %0 = load i32, i32* %msr.addr, align 4, !dbg !4538
  %call = call i64 @paravirt_read_msr_safe(i32 %0, i32* %err) #9, !dbg !4539
  %1 = load i64*, i64** %p.addr, align 8, !dbg !4540
  store i64 %call, i64* %1, align 8, !dbg !4541
  %2 = load i32, i32* %err, align 4, !dbg !4542
  ret i32 %2, !dbg !4543
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @read_registers(%struct.fam15h_power_data* %data) #2 !dbg !4544 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.fam15h_power_data*, align 8
  %core = alloca i32, align 4
  %this_core = alloca i32, align 4
  %mask = alloca [1 x %struct.cpumask], align 8
  %ret = alloca i32, align 4
  %cpu = alloca i32, align 4
  store %struct.fam15h_power_data* %data, %struct.fam15h_power_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fam15h_power_data** %data.addr, metadata !4547, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.declare(metadata i32* %core, metadata !4549, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.declare(metadata i32* %this_core, metadata !4551, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.declare(metadata [1 x %struct.cpumask]* %mask, metadata !4553, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4557, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !4559, metadata !DIExpression()), !dbg !4560
  %call = call zeroext i1 @zalloc_cpumask_var([1 x %struct.cpumask]* %mask, i32 3264) #9, !dbg !4561
  %conv = zext i1 %call to i32, !dbg !4561
  store i32 %conv, i32* %ret, align 4, !dbg !4562
  %0 = load i32, i32* %ret, align 4, !dbg !4563
  %tobool = icmp ne i32 %0, 0, !dbg !4563
  br i1 %tobool, label %if.end, label %if.then, !dbg !4565

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4566
  br label %return, !dbg !4566

if.end:                                           ; preds = %entry
  %1 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data.addr, align 8, !dbg !4567
  %cu_on = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %1, i32 0, i32 10, !dbg !4568
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %cu_on, i64 0, i64 0, !dbg !4569
  %2 = bitcast i32* %arraydecay to i8*, !dbg !4569
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 32, i1 false), !dbg !4569
  call void @get_online_cpus() #9, !dbg !4570
  store i32 -1, i32* %core, align 4, !dbg !4571
  store i32 0, i32* %cpu, align 4, !dbg !4572
  br label %for.cond, !dbg !4572

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %cpu, align 4, !dbg !4574
  %cmp = icmp slt i32 %3, 1, !dbg !4574
  br i1 %cmp, label %for.body, label %for.end, !dbg !4572

for.body:                                         ; preds = %for.cond
  %4 = load i16, i16* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 29), align 2, !dbg !4576
  %conv2 = zext i16 %4 to i32, !dbg !4576
  store i32 %conv2, i32* %this_core, align 4, !dbg !4578
  %5 = load i32, i32* %this_core, align 4, !dbg !4579
  %6 = load i32, i32* %core, align 4, !dbg !4581
  %cmp3 = icmp eq i32 %5, %6, !dbg !4582
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !4583

if.then5:                                         ; preds = %for.body
  br label %for.inc, !dbg !4584

if.end6:                                          ; preds = %for.body
  %7 = load i32, i32* %this_core, align 4, !dbg !4585
  store i32 %7, i32* %core, align 4, !dbg !4586
  %8 = load i32, i32* %cpu, align 4, !dbg !4587
  %call7 = call %struct.cpumask* @get_cpu_mask(i32 %8) #9, !dbg !4587
  %call8 = call i32 @cpumask_first(%struct.cpumask* %call7) #9, !dbg !4587
  %arraydecay9 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %mask, i64 0, i64 0, !dbg !4588
  call void @cpumask_set_cpu(i32 %call8, %struct.cpumask* %arraydecay9) #9, !dbg !4589
  br label %for.inc, !dbg !4590

for.inc:                                          ; preds = %if.end6, %if.then5
  %9 = load i32, i32* %cpu, align 4, !dbg !4574
  %inc = add i32 %9, 1, !dbg !4574
  store i32 %inc, i32* %cpu, align 4, !dbg !4574
  br label %for.cond, !dbg !4574, !llvm.loop !4591

for.end:                                          ; preds = %for.cond
  %arraydecay10 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %mask, i64 0, i64 0, !dbg !4593
  %10 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data.addr, align 8, !dbg !4594
  %11 = bitcast %struct.fam15h_power_data* %10 to i8*, !dbg !4594
  call void @on_each_cpu_mask(%struct.cpumask* %arraydecay10, void (i8*)* @do_read_registers_on_cu, i8* %11, i1 zeroext true) #9, !dbg !4595
  call void @put_online_cpus() #9, !dbg !4596
  %arraydecay11 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %mask, i64 0, i64 0, !dbg !4597
  call void @free_cpumask_var(%struct.cpumask* %arraydecay11) #9, !dbg !4598
  store i32 0, i32* %retval, align 4, !dbg !4599
  br label %return, !dbg !4599

return:                                           ; preds = %for.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4600
  ret i32 %12, !dbg !4600
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kcalloc(%struct.device* %dev, i64 %n, i64 %size, i32 %flags) #2 !dbg !4601 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4604, metadata !DIExpression()), !dbg !4605
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4606, metadata !DIExpression()), !dbg !4607
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4608, metadata !DIExpression()), !dbg !4609
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4610, metadata !DIExpression()), !dbg !4611
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4612
  %1 = load i64, i64* %n.addr, align 8, !dbg !4613
  %2 = load i64, i64* %size.addr, align 8, !dbg !4614
  %3 = load i32, i32* %flags.addr, align 4, !dbg !4615
  %or = or i32 %3, 256, !dbg !4616
  %call = call i8* @devm_kmalloc_array(%struct.device* %0, i64 %1, i64 %2, i32 %or) #9, !dbg !4617
  ret i8* %call, !dbg !4618
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kmalloc_array(%struct.device* %dev, i64 %n, i64 %size, i32 %flags) #2 !dbg !4619 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4620, metadata !DIExpression()), !dbg !4621
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4622, metadata !DIExpression()), !dbg !4623
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4624, metadata !DIExpression()), !dbg !4625
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4626, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !4628, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !4630, metadata !DIExpression()), !dbg !4633
  %0 = load i64, i64* %n.addr, align 8, !dbg !4633
  store i64 %0, i64* %__a, align 8, !dbg !4633
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !4634, metadata !DIExpression()), !dbg !4633
  %1 = load i64, i64* %size.addr, align 8, !dbg !4633
  store i64 %1, i64* %__b, align 8, !dbg !4633
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !4635, metadata !DIExpression()), !dbg !4633
  store i64* %bytes, i64** %__d, align 8, !dbg !4633
  %cmp = icmp eq i64* %__a, %__b, !dbg !4633
  %conv = zext i1 %cmp to i32, !dbg !4633
  %2 = load i64*, i64** %__d, align 8, !dbg !4633
  %cmp1 = icmp eq i64* %__a, %2, !dbg !4633
  %conv2 = zext i1 %cmp1 to i32, !dbg !4633
  %3 = load i64, i64* %__a, align 8, !dbg !4633
  %4 = load i64, i64* %__b, align 8, !dbg !4633
  %5 = load i64*, i64** %__d, align 8, !dbg !4633
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !4633
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4633
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !4633
  store i64 %8, i64* %5, align 8, !dbg !4633
  %frombool = zext i1 %7 to i8, !dbg !4633
  store i8 %frombool, i8* %tmp, align 1, !dbg !4633
  %9 = load i8, i8* %tmp, align 1, !dbg !4633
  %tobool = trunc i8 %9 to i1, !dbg !4633
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #9, !dbg !4637
  %lnot = xor i1 %call, true, !dbg !4637
  %lnot3 = xor i1 %lnot, true, !dbg !4637
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4637
  %conv4 = sext i32 %lnot.ext to i64, !dbg !4637
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !4637
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4638

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !4639
  br label %return, !dbg !4639

if.end:                                           ; preds = %entry
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4640
  %11 = load i64, i64* %bytes, align 8, !dbg !4641
  %12 = load i32, i32* %flags.addr, align 4, !dbg !4642
  %call6 = call noalias i8* @devm_kmalloc(%struct.device* %10, i64 %11, i32 %12) #9, !dbg !4643
  store i8* %call6, i8** %retval, align 8, !dbg !4644
  br label %return, !dbg !4644

return:                                           ; preds = %if.end, %if.then
  %13 = load i8*, i8** %retval, align 8, !dbg !4645
  ret i8* %13, !dbg !4645
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #2 !dbg !4646 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !4650, metadata !DIExpression()), !dbg !4651
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !4652
  %tobool = trunc i8 %0 to i1, !dbg !4652
  %lnot = xor i1 %tobool, true, !dbg !4652
  %lnot1 = xor i1 %lnot, true, !dbg !4652
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4652
  %conv = sext i32 %lnot.ext to i64, !dbg !4652
  %tobool2 = icmp ne i64 %conv, 0, !dbg !4652
  ret i1 %tobool2, !dbg !4653
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @power1_crit_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !4654 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.fam15h_power_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4655, metadata !DIExpression()), !dbg !4656
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4657, metadata !DIExpression()), !dbg !4658
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4659, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.declare(metadata %struct.fam15h_power_data** %data, metadata !4661, metadata !DIExpression()), !dbg !4662
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4663
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #9, !dbg !4664
  %1 = bitcast i8* %call to %struct.fam15h_power_data*, !dbg !4664
  store %struct.fam15h_power_data* %1, %struct.fam15h_power_data** %data, align 8, !dbg !4662
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !4665
  %3 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4666
  %processor_pwr_watts = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %3, i32 0, i32 3, !dbg !4667
  %4 = load i32, i32* %processor_pwr_watts, align 8, !dbg !4667
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %4) #9, !dbg !4668
  %conv = sext i32 %call1 to i64, !dbg !4668
  ret i64 %conv, !dbg !4669
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !4670 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4673, metadata !DIExpression()), !dbg !4674
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4675
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !4676
  %1 = load i8*, i8** %driver_data, align 8, !dbg !4676
  ret i8* %1, !dbg !4677
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @power1_input_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !4678 {
entry:
  %value.addr.i36 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr.i36, metadata !4679, metadata !DIExpression()), !dbg !4684
  %index.addr.i37 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr.i37, metadata !4688, metadata !DIExpression()), !dbg !4689
  %shift.i38 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %shift.i38, metadata !4690, metadata !DIExpression()), !dbg !4691
  %value.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr.i, metadata !4679, metadata !DIExpression()), !dbg !4692
  %index.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr.i, metadata !4688, metadata !DIExpression()), !dbg !4695
  %shift.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %shift.i, metadata !4690, metadata !DIExpression()), !dbg !4696
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %val = alloca i32, align 4
  %tdp_limit = alloca i32, align 4
  %running_avg_range = alloca i32, align 4
  %running_avg_capture = alloca i32, align 4
  %curr_pwr_watts = alloca i64, align 8
  %data = alloca %struct.fam15h_power_data*, align 8
  %f4 = alloca %struct.pci_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4697, metadata !DIExpression()), !dbg !4698
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4699, metadata !DIExpression()), !dbg !4700
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4701, metadata !DIExpression()), !dbg !4702
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4703, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.declare(metadata i32* %tdp_limit, metadata !4705, metadata !DIExpression()), !dbg !4706
  call void @llvm.dbg.declare(metadata i32* %running_avg_range, metadata !4707, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.declare(metadata i32* %running_avg_capture, metadata !4709, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.declare(metadata i64* %curr_pwr_watts, metadata !4711, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.declare(metadata %struct.fam15h_power_data** %data, metadata !4713, metadata !DIExpression()), !dbg !4714
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4715
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #9, !dbg !4716
  %1 = bitcast i8* %call to %struct.fam15h_power_data*, !dbg !4716
  store %struct.fam15h_power_data* %1, %struct.fam15h_power_data** %data, align 8, !dbg !4714
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %f4, metadata !4717, metadata !DIExpression()), !dbg !4718
  %2 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4719
  %pdev = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %2, i32 0, i32 0, !dbg !4720
  %3 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4720
  store %struct.pci_dev* %3, %struct.pci_dev** %f4, align 8, !dbg !4718
  %4 = load %struct.pci_dev*, %struct.pci_dev** %f4, align 8, !dbg !4721
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 1, !dbg !4722
  %5 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4722
  %6 = load %struct.pci_dev*, %struct.pci_dev** %f4, align 8, !dbg !4723
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 6, !dbg !4723
  %7 = load i32, i32* %devfn, align 8, !dbg !4723
  %shr = lshr i32 %7, 3, !dbg !4723
  %and = and i32 %shr, 31, !dbg !4723
  %and1 = and i32 %and, 31, !dbg !4723
  %shl = shl i32 %and1, 3, !dbg !4723
  %or = or i32 %shl, 5, !dbg !4723
  %call2 = call i32 @pci_bus_read_config_dword(%struct.pci_bus* %5, i32 %or, i32 224, i32* %val) #9, !dbg !4724
  %call3 = call zeroext i1 @is_carrizo_or_later() #9, !dbg !4725
  br i1 %call3, label %if.then, label %if.else, !dbg !4726

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %val, align 4, !dbg !4727
  %shr4 = lshr i32 %8, 4, !dbg !4728
  store i32 %shr4, i32* %running_avg_capture, align 4, !dbg !4729
  %9 = load i32, i32* %running_avg_capture, align 4, !dbg !4730
  store i32 %9, i32* %value.addr.i, align 4
  store i32 27, i32* %index.addr.i, align 4
  %10 = load i32, i32* %index.addr.i, align 4, !dbg !4731
  %sub.i = sub i32 31, %10, !dbg !4732
  %conv.i = trunc i32 %sub.i to i8, !dbg !4733
  store i8 %conv.i, i8* %shift.i, align 1, !dbg !4696
  %11 = load i32, i32* %value.addr.i, align 4, !dbg !4734
  %12 = load i8, i8* %shift.i, align 1, !dbg !4735
  %conv1.i = zext i8 %12 to i32, !dbg !4735
  %shl.i = shl i32 %11, %conv1.i, !dbg !4736
  %13 = load i8, i8* %shift.i, align 1, !dbg !4737
  %conv2.i = zext i8 %13 to i32, !dbg !4737
  %shr.i = ashr i32 %shl.i, %conv2.i, !dbg !4738
  store i32 %shr.i, i32* %running_avg_capture, align 4, !dbg !4739
  br label %if.end, !dbg !4740

if.else:                                          ; preds = %entry
  %14 = load i32, i32* %val, align 4, !dbg !4741
  %shr6 = lshr i32 %14, 4, !dbg !4742
  %and7 = and i32 %shr6, 4194303, !dbg !4743
  store i32 %and7, i32* %running_avg_capture, align 4, !dbg !4744
  %15 = load i32, i32* %running_avg_capture, align 4, !dbg !4745
  store i32 %15, i32* %value.addr.i36, align 4
  store i32 21, i32* %index.addr.i37, align 4
  %16 = load i32, i32* %index.addr.i37, align 4, !dbg !4746
  %sub.i39 = sub i32 31, %16, !dbg !4747
  %conv.i40 = trunc i32 %sub.i39 to i8, !dbg !4748
  store i8 %conv.i40, i8* %shift.i38, align 1, !dbg !4691
  %17 = load i32, i32* %value.addr.i36, align 4, !dbg !4749
  %18 = load i8, i8* %shift.i38, align 1, !dbg !4750
  %conv1.i41 = zext i8 %18 to i32, !dbg !4750
  %shl.i42 = shl i32 %17, %conv1.i41, !dbg !4751
  %19 = load i8, i8* %shift.i38, align 1, !dbg !4752
  %conv2.i43 = zext i8 %19 to i32, !dbg !4752
  %shr.i44 = ashr i32 %shl.i42, %conv2.i43, !dbg !4753
  store i32 %shr.i44, i32* %running_avg_capture, align 4, !dbg !4754
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load i32, i32* %val, align 4, !dbg !4755
  %and9 = and i32 %20, 15, !dbg !4756
  %add = add i32 %and9, 1, !dbg !4757
  store i32 %add, i32* %running_avg_range, align 4, !dbg !4758
  %21 = load %struct.pci_dev*, %struct.pci_dev** %f4, align 8, !dbg !4759
  %bus10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 1, !dbg !4760
  %22 = load %struct.pci_bus*, %struct.pci_bus** %bus10, align 8, !dbg !4760
  %23 = load %struct.pci_dev*, %struct.pci_dev** %f4, align 8, !dbg !4761
  %devfn11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 6, !dbg !4761
  %24 = load i32, i32* %devfn11, align 8, !dbg !4761
  %shr12 = lshr i32 %24, 3, !dbg !4761
  %and13 = and i32 %shr12, 31, !dbg !4761
  %and14 = and i32 %and13, 31, !dbg !4761
  %shl15 = shl i32 %and14, 3, !dbg !4761
  %or16 = or i32 %shl15, 5, !dbg !4761
  %call17 = call i32 @pci_bus_read_config_dword(%struct.pci_bus* %22, i32 %or16, i32 232, i32* %val) #9, !dbg !4762
  %call18 = call zeroext i1 @is_carrizo_or_later() #9, !dbg !4763
  br i1 %call18, label %if.then19, label %if.else21, !dbg !4765

if.then19:                                        ; preds = %if.end
  %25 = load i32, i32* %val, align 4, !dbg !4766
  %shr20 = lshr i32 %25, 16, !dbg !4767
  store i32 %shr20, i32* %tdp_limit, align 4, !dbg !4768
  br label %if.end24, !dbg !4769

if.else21:                                        ; preds = %if.end
  %26 = load i32, i32* %val, align 4, !dbg !4770
  %shr22 = lshr i32 %26, 16, !dbg !4771
  %and23 = and i32 %shr22, 8191, !dbg !4772
  store i32 %and23, i32* %tdp_limit, align 4, !dbg !4773
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.then19
  %27 = load i32, i32* %tdp_limit, align 4, !dbg !4774
  %28 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4775
  %base_tdp = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %28, i32 0, i32 2, !dbg !4776
  %29 = load i32, i32* %base_tdp, align 4, !dbg !4776
  %add25 = add i32 %27, %29, !dbg !4777
  %conv = zext i32 %add25 to i64, !dbg !4778
  %30 = load i32, i32* %running_avg_range, align 4, !dbg !4779
  %sh_prom = zext i32 %30 to i64, !dbg !4780
  %shl26 = shl i64 %conv, %sh_prom, !dbg !4780
  store i64 %shl26, i64* %curr_pwr_watts, align 8, !dbg !4781
  %31 = load i32, i32* %running_avg_capture, align 4, !dbg !4782
  %conv27 = sext i32 %31 to i64, !dbg !4782
  %32 = load i64, i64* %curr_pwr_watts, align 8, !dbg !4783
  %sub = sub i64 %32, %conv27, !dbg !4783
  store i64 %sub, i64* %curr_pwr_watts, align 8, !dbg !4783
  %33 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4784
  %tdp_to_watts = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %33, i32 0, i32 1, !dbg !4785
  %34 = load i32, i32* %tdp_to_watts, align 8, !dbg !4785
  %conv28 = zext i32 %34 to i64, !dbg !4784
  %35 = load i64, i64* %curr_pwr_watts, align 8, !dbg !4786
  %mul = mul i64 %35, %conv28, !dbg !4786
  store i64 %mul, i64* %curr_pwr_watts, align 8, !dbg !4786
  %36 = load i64, i64* %curr_pwr_watts, align 8, !dbg !4787
  %mul29 = mul i64 %36, 15625, !dbg !4788
  %37 = load i32, i32* %running_avg_range, align 4, !dbg !4789
  %add30 = add i32 10, %37, !dbg !4790
  %sh_prom31 = zext i32 %add30 to i64, !dbg !4791
  %shr32 = lshr i64 %mul29, %sh_prom31, !dbg !4791
  store i64 %shr32, i64* %curr_pwr_watts, align 8, !dbg !4792
  %38 = load i8*, i8** %buf.addr, align 8, !dbg !4793
  %39 = load i64, i64* %curr_pwr_watts, align 8, !dbg !4794
  %conv33 = trunc i64 %39 to i32, !dbg !4795
  %call34 = call i32 (i8*, i8*, ...) @sprintf(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %conv33) #9, !dbg !4796
  %conv35 = sext i32 %call34 to i64, !dbg !4796
  ret i64 %conv35, !dbg !4797
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @is_carrizo_or_later() #2 !dbg !4798 {
entry:
  %0 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 0), align 8, !dbg !4799
  %conv = zext i8 %0 to i32, !dbg !4800
  %cmp = icmp eq i32 %conv, 21, !dbg !4801
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4802

land.rhs:                                         ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 2), align 2, !dbg !4803
  %conv2 = zext i8 %1 to i32, !dbg !4804
  %cmp3 = icmp sge i32 %conv2, 96, !dbg !4805
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !4806
  ret i1 %2, !dbg !4807
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @power1_average_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !4808 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !4809, metadata !DIExpression()), !dbg !4814
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.fam15h_power_data*, align 8
  %prev_cu_acc_power = alloca [8 x i64], align 16
  %prev_ptsc = alloca [8 x i64], align 16
  %jdelta = alloca [8 x i64], align 16
  %tdelta = alloca i64, align 8
  %avg_acc = alloca i64, align 8
  %cu = alloca i32, align 4
  %cu_num = alloca i32, align 4
  %ret = alloca i32, align 4
  %leftover = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4816, metadata !DIExpression()), !dbg !4817
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4818, metadata !DIExpression()), !dbg !4819
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4820, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.declare(metadata %struct.fam15h_power_data** %data, metadata !4822, metadata !DIExpression()), !dbg !4823
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4824
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #9, !dbg !4825
  %1 = bitcast i8* %call to %struct.fam15h_power_data*, !dbg !4825
  store %struct.fam15h_power_data* %1, %struct.fam15h_power_data** %data, align 8, !dbg !4823
  call void @llvm.dbg.declare(metadata [8 x i64]* %prev_cu_acc_power, metadata !4826, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.declare(metadata [8 x i64]* %prev_ptsc, metadata !4828, metadata !DIExpression()), !dbg !4829
  call void @llvm.dbg.declare(metadata [8 x i64]* %jdelta, metadata !4830, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.declare(metadata i64* %tdelta, metadata !4832, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.declare(metadata i64* %avg_acc, metadata !4834, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.declare(metadata i32* %cu, metadata !4836, metadata !DIExpression()), !dbg !4837
  call void @llvm.dbg.declare(metadata i32* %cu_num, metadata !4838, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4840, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.declare(metadata i64* %leftover, metadata !4842, metadata !DIExpression()), !dbg !4843
  %2 = load i16, i16* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 22), align 8, !dbg !4844
  %conv = zext i16 %2 to i32, !dbg !4845
  store i32 %conv, i32* %cu_num, align 4, !dbg !4846
  %3 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4847
  %call1 = call i32 @read_registers(%struct.fam15h_power_data* %3) #9, !dbg !4848
  store i32 %call1, i32* %ret, align 4, !dbg !4849
  %4 = load i32, i32* %ret, align 4, !dbg !4850
  %tobool = icmp ne i32 %4, 0, !dbg !4850
  br i1 %tobool, label %if.then, label %if.end, !dbg !4852

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !4853
  br label %return, !dbg !4853

if.end:                                           ; preds = %entry
  store i32 0, i32* %cu, align 4, !dbg !4854
  br label %for.cond, !dbg !4856

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %cu, align 4, !dbg !4857
  %6 = load i32, i32* %cu_num, align 4, !dbg !4859
  %cmp = icmp slt i32 %5, %6, !dbg !4860
  br i1 %cmp, label %for.body, label %for.end, !dbg !4861

for.body:                                         ; preds = %for.cond
  %7 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4862
  %cu_acc_power = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %7, i32 0, i32 8, !dbg !4864
  %8 = load i32, i32* %cu, align 4, !dbg !4865
  %idxprom = sext i32 %8 to i64, !dbg !4862
  %arrayidx = getelementptr [8 x i64], [8 x i64]* %cu_acc_power, i64 0, i64 %idxprom, !dbg !4862
  %9 = load i64, i64* %arrayidx, align 8, !dbg !4862
  %10 = load i32, i32* %cu, align 4, !dbg !4866
  %idxprom3 = sext i32 %10 to i64, !dbg !4867
  %arrayidx4 = getelementptr [8 x i64], [8 x i64]* %prev_cu_acc_power, i64 0, i64 %idxprom3, !dbg !4867
  store i64 %9, i64* %arrayidx4, align 8, !dbg !4868
  %11 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4869
  %cpu_sw_pwr_ptsc = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %11, i32 0, i32 9, !dbg !4870
  %12 = load i32, i32* %cu, align 4, !dbg !4871
  %idxprom5 = sext i32 %12 to i64, !dbg !4869
  %arrayidx6 = getelementptr [8 x i64], [8 x i64]* %cpu_sw_pwr_ptsc, i64 0, i64 %idxprom5, !dbg !4869
  %13 = load i64, i64* %arrayidx6, align 8, !dbg !4869
  %14 = load i32, i32* %cu, align 4, !dbg !4872
  %idxprom7 = sext i32 %14 to i64, !dbg !4873
  %arrayidx8 = getelementptr [8 x i64], [8 x i64]* %prev_ptsc, i64 0, i64 %idxprom7, !dbg !4873
  store i64 %13, i64* %arrayidx8, align 8, !dbg !4874
  br label %for.inc, !dbg !4875

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %cu, align 4, !dbg !4876
  %inc = add i32 %15, 1, !dbg !4876
  store i32 %inc, i32* %cu, align 4, !dbg !4876
  br label %for.cond, !dbg !4877, !llvm.loop !4878

for.end:                                          ; preds = %for.cond
  %16 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4880
  %power_period = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %16, i32 0, i32 11, !dbg !4881
  %17 = load i64, i64* %power_period, align 8, !dbg !4881
  %conv9 = trunc i64 %17 to i32, !dbg !4880
  store i32 %conv9, i32* %m.addr.i, align 4
  %18 = load i32, i32* %m.addr.i, align 4, !dbg !4882
  %19 = call i1 @llvm.is.constant.i32(i32 %18) #7, !dbg !4884
  br i1 %19, label %if.then.i, label %if.else.i, !dbg !4885

if.then.i:                                        ; preds = %for.end
  %20 = load i32, i32* %m.addr.i, align 4, !dbg !4886
  %cmp.i = icmp slt i32 %20, 0, !dbg !4889
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4890

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !4891
  br label %msecs_to_jiffies.exit, !dbg !4891

if.end.i:                                         ; preds = %if.then.i
  %21 = load i32, i32* %m.addr.i, align 4, !dbg !4892
  %call.i = call i64 @_msecs_to_jiffies(i32 %21) #11, !dbg !4893
  store i64 %call.i, i64* %retval.i, align 8, !dbg !4894
  br label %msecs_to_jiffies.exit, !dbg !4894

if.else.i:                                        ; preds = %for.end
  %22 = load i32, i32* %m.addr.i, align 4, !dbg !4895
  %call2.i = call i64 @__msecs_to_jiffies(i32 %22) #11, !dbg !4897
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !4898
  br label %msecs_to_jiffies.exit, !dbg !4898

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %23 = load i64, i64* %retval.i, align 8, !dbg !4899
  %call11 = call i64 @schedule_timeout_interruptible(i64 %23) #9, !dbg !4900
  store i64 %call11, i64* %leftover, align 8, !dbg !4901
  %24 = load i64, i64* %leftover, align 8, !dbg !4902
  %tobool12 = icmp ne i64 %24, 0, !dbg !4902
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4904

if.then13:                                        ; preds = %msecs_to_jiffies.exit
  store i64 0, i64* %retval, align 8, !dbg !4905
  br label %return, !dbg !4905

if.end14:                                         ; preds = %msecs_to_jiffies.exit
  %25 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4906
  %call15 = call i32 @read_registers(%struct.fam15h_power_data* %25) #9, !dbg !4907
  store i32 %call15, i32* %ret, align 4, !dbg !4908
  %26 = load i32, i32* %ret, align 4, !dbg !4909
  %tobool16 = icmp ne i32 %26, 0, !dbg !4909
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !4911

if.then17:                                        ; preds = %if.end14
  store i64 0, i64* %retval, align 8, !dbg !4912
  br label %return, !dbg !4912

if.end18:                                         ; preds = %if.end14
  store i32 0, i32* %cu, align 4, !dbg !4913
  store i64 0, i64* %avg_acc, align 8, !dbg !4915
  br label %for.cond19, !dbg !4916

for.cond19:                                       ; preds = %for.inc78, %if.end18
  %27 = load i32, i32* %cu, align 4, !dbg !4917
  %28 = load i32, i32* %cu_num, align 4, !dbg !4919
  %cmp20 = icmp slt i32 %27, %28, !dbg !4920
  br i1 %cmp20, label %for.body22, label %for.end80, !dbg !4921

for.body22:                                       ; preds = %for.cond19
  %29 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4922
  %cu_on = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %29, i32 0, i32 10, !dbg !4925
  %30 = load i32, i32* %cu, align 4, !dbg !4926
  %idxprom23 = sext i32 %30 to i64, !dbg !4922
  %arrayidx24 = getelementptr [8 x i32], [8 x i32]* %cu_on, i64 0, i64 %idxprom23, !dbg !4922
  %31 = load i32, i32* %arrayidx24, align 4, !dbg !4922
  %cmp25 = icmp eq i32 %31, 0, !dbg !4927
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !4928

if.then27:                                        ; preds = %for.body22
  br label %for.inc78, !dbg !4929

if.end28:                                         ; preds = %for.body22
  %32 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4930
  %cu_acc_power29 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %32, i32 0, i32 8, !dbg !4932
  %33 = load i32, i32* %cu, align 4, !dbg !4933
  %idxprom30 = sext i32 %33 to i64, !dbg !4930
  %arrayidx31 = getelementptr [8 x i64], [8 x i64]* %cu_acc_power29, i64 0, i64 %idxprom30, !dbg !4930
  %34 = load i64, i64* %arrayidx31, align 8, !dbg !4930
  %35 = load i32, i32* %cu, align 4, !dbg !4934
  %idxprom32 = sext i32 %35 to i64, !dbg !4935
  %arrayidx33 = getelementptr [8 x i64], [8 x i64]* %prev_cu_acc_power, i64 0, i64 %idxprom32, !dbg !4935
  %36 = load i64, i64* %arrayidx33, align 8, !dbg !4935
  %cmp34 = icmp ult i64 %34, %36, !dbg !4936
  br i1 %cmp34, label %if.then36, label %if.else, !dbg !4937

if.then36:                                        ; preds = %if.end28
  %37 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4938
  %max_cu_acc_power = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %37, i32 0, i32 7, !dbg !4940
  %38 = load i64, i64* %max_cu_acc_power, align 8, !dbg !4940
  %39 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4941
  %cu_acc_power37 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %39, i32 0, i32 8, !dbg !4942
  %40 = load i32, i32* %cu, align 4, !dbg !4943
  %idxprom38 = sext i32 %40 to i64, !dbg !4941
  %arrayidx39 = getelementptr [8 x i64], [8 x i64]* %cu_acc_power37, i64 0, i64 %idxprom38, !dbg !4941
  %41 = load i64, i64* %arrayidx39, align 8, !dbg !4941
  %add = add i64 %38, %41, !dbg !4944
  %42 = load i32, i32* %cu, align 4, !dbg !4945
  %idxprom40 = sext i32 %42 to i64, !dbg !4946
  %arrayidx41 = getelementptr [8 x i64], [8 x i64]* %jdelta, i64 0, i64 %idxprom40, !dbg !4946
  store i64 %add, i64* %arrayidx41, align 8, !dbg !4947
  %43 = load i32, i32* %cu, align 4, !dbg !4948
  %idxprom42 = sext i32 %43 to i64, !dbg !4949
  %arrayidx43 = getelementptr [8 x i64], [8 x i64]* %prev_cu_acc_power, i64 0, i64 %idxprom42, !dbg !4949
  %44 = load i64, i64* %arrayidx43, align 8, !dbg !4949
  %45 = load i32, i32* %cu, align 4, !dbg !4950
  %idxprom44 = sext i32 %45 to i64, !dbg !4951
  %arrayidx45 = getelementptr [8 x i64], [8 x i64]* %jdelta, i64 0, i64 %idxprom44, !dbg !4951
  %46 = load i64, i64* %arrayidx45, align 8, !dbg !4952
  %sub = sub i64 %46, %44, !dbg !4952
  store i64 %sub, i64* %arrayidx45, align 8, !dbg !4952
  br label %if.end54, !dbg !4953

if.else:                                          ; preds = %if.end28
  %47 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4954
  %cu_acc_power46 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %47, i32 0, i32 8, !dbg !4956
  %48 = load i32, i32* %cu, align 4, !dbg !4957
  %idxprom47 = sext i32 %48 to i64, !dbg !4954
  %arrayidx48 = getelementptr [8 x i64], [8 x i64]* %cu_acc_power46, i64 0, i64 %idxprom47, !dbg !4954
  %49 = load i64, i64* %arrayidx48, align 8, !dbg !4954
  %50 = load i32, i32* %cu, align 4, !dbg !4958
  %idxprom49 = sext i32 %50 to i64, !dbg !4959
  %arrayidx50 = getelementptr [8 x i64], [8 x i64]* %prev_cu_acc_power, i64 0, i64 %idxprom49, !dbg !4959
  %51 = load i64, i64* %arrayidx50, align 8, !dbg !4959
  %sub51 = sub i64 %49, %51, !dbg !4960
  %52 = load i32, i32* %cu, align 4, !dbg !4961
  %idxprom52 = sext i32 %52 to i64, !dbg !4962
  %arrayidx53 = getelementptr [8 x i64], [8 x i64]* %jdelta, i64 0, i64 %idxprom52, !dbg !4962
  store i64 %sub51, i64* %arrayidx53, align 8, !dbg !4963
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then36
  %53 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4964
  %cpu_sw_pwr_ptsc55 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %53, i32 0, i32 9, !dbg !4965
  %54 = load i32, i32* %cu, align 4, !dbg !4966
  %idxprom56 = sext i32 %54 to i64, !dbg !4964
  %arrayidx57 = getelementptr [8 x i64], [8 x i64]* %cpu_sw_pwr_ptsc55, i64 0, i64 %idxprom56, !dbg !4964
  %55 = load i64, i64* %arrayidx57, align 8, !dbg !4964
  %56 = load i32, i32* %cu, align 4, !dbg !4967
  %idxprom58 = sext i32 %56 to i64, !dbg !4968
  %arrayidx59 = getelementptr [8 x i64], [8 x i64]* %prev_ptsc, i64 0, i64 %idxprom58, !dbg !4968
  %57 = load i64, i64* %arrayidx59, align 8, !dbg !4968
  %sub60 = sub i64 %55, %57, !dbg !4969
  store i64 %sub60, i64* %tdelta, align 8, !dbg !4970
  %58 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !4971
  %cpu_pwr_sample_ratio = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %58, i32 0, i32 4, !dbg !4972
  %59 = load i32, i32* %cpu_pwr_sample_ratio, align 4, !dbg !4972
  %mul = mul i32 %59, 1000, !dbg !4973
  %conv61 = zext i32 %mul to i64, !dbg !4971
  %60 = load i32, i32* %cu, align 4, !dbg !4974
  %idxprom62 = sext i32 %60 to i64, !dbg !4975
  %arrayidx63 = getelementptr [8 x i64], [8 x i64]* %jdelta, i64 0, i64 %idxprom62, !dbg !4975
  %61 = load i64, i64* %arrayidx63, align 8, !dbg !4976
  %mul64 = mul i64 %61, %conv61, !dbg !4976
  store i64 %mul64, i64* %arrayidx63, align 8, !dbg !4976
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !4977, metadata !DIExpression()), !dbg !4979
  %62 = load i64, i64* %tdelta, align 8, !dbg !4979
  %conv65 = trunc i64 %62 to i32, !dbg !4979
  store i32 %conv65, i32* %__base, align 4, !dbg !4979
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !4980, metadata !DIExpression()), !dbg !4979
  %63 = load i32, i32* %cu, align 4, !dbg !4979
  %idxprom66 = sext i32 %63 to i64, !dbg !4979
  %arrayidx67 = getelementptr [8 x i64], [8 x i64]* %jdelta, i64 0, i64 %idxprom66, !dbg !4979
  %64 = load i64, i64* %arrayidx67, align 8, !dbg !4979
  %65 = load i32, i32* %__base, align 4, !dbg !4979
  %conv68 = zext i32 %65 to i64, !dbg !4979
  %rem = urem i64 %64, %conv68, !dbg !4979
  %conv69 = trunc i64 %rem to i32, !dbg !4979
  store i32 %conv69, i32* %__rem, align 4, !dbg !4979
  %66 = load i32, i32* %cu, align 4, !dbg !4979
  %idxprom70 = sext i32 %66 to i64, !dbg !4979
  %arrayidx71 = getelementptr [8 x i64], [8 x i64]* %jdelta, i64 0, i64 %idxprom70, !dbg !4979
  %67 = load i64, i64* %arrayidx71, align 8, !dbg !4979
  %68 = load i32, i32* %__base, align 4, !dbg !4979
  %conv72 = zext i32 %68 to i64, !dbg !4979
  %div = udiv i64 %67, %conv72, !dbg !4979
  %69 = load i32, i32* %cu, align 4, !dbg !4979
  %idxprom73 = sext i32 %69 to i64, !dbg !4979
  %arrayidx74 = getelementptr [8 x i64], [8 x i64]* %jdelta, i64 0, i64 %idxprom73, !dbg !4979
  store i64 %div, i64* %arrayidx74, align 8, !dbg !4979
  %70 = load i32, i32* %__rem, align 4, !dbg !4979
  store i32 %70, i32* %tmp, align 4, !dbg !4979
  %71 = load i32, i32* %tmp, align 4, !dbg !4979
  %72 = load i32, i32* %cu, align 4, !dbg !4981
  %idxprom75 = sext i32 %72 to i64, !dbg !4982
  %arrayidx76 = getelementptr [8 x i64], [8 x i64]* %jdelta, i64 0, i64 %idxprom75, !dbg !4982
  %73 = load i64, i64* %arrayidx76, align 8, !dbg !4982
  %74 = load i64, i64* %avg_acc, align 8, !dbg !4983
  %add77 = add i64 %74, %73, !dbg !4983
  store i64 %add77, i64* %avg_acc, align 8, !dbg !4983
  br label %for.inc78, !dbg !4984

for.inc78:                                        ; preds = %if.end54, %if.then27
  %75 = load i32, i32* %cu, align 4, !dbg !4985
  %inc79 = add i32 %75, 1, !dbg !4985
  store i32 %inc79, i32* %cu, align 4, !dbg !4985
  br label %for.cond19, !dbg !4986, !llvm.loop !4987

for.end80:                                        ; preds = %for.cond19
  %76 = load i8*, i8** %buf.addr, align 8, !dbg !4989
  %77 = load i64, i64* %avg_acc, align 8, !dbg !4990
  %call81 = call i32 (i8*, i8*, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 %77) #9, !dbg !4991
  %conv82 = sext i32 %call81 to i64, !dbg !4991
  store i64 %conv82, i64* %retval, align 8, !dbg !4992
  br label %return, !dbg !4992

return:                                           ; preds = %for.end80, %if.then17, %if.then13, %if.then
  %78 = load i64, i64* %retval, align 8, !dbg !4993
  ret i64 %78, !dbg !4993
}

; Function Attrs: noredzone
declare dso_local i64 @schedule_timeout_interruptible(i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #2 !dbg !4994 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !4995, metadata !DIExpression()), !dbg !4996
  %0 = load i32, i32* %m.addr, align 4, !dbg !4997
  %conv = zext i32 %0 to i64, !dbg !4997
  %add = add i64 %conv, 4, !dbg !4998
  %sub = sub i64 %add, 1, !dbg !4999
  %div = sdiv i64 %sub, 4, !dbg !5000
  ret i64 %div, !dbg !5001
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @power1_average_interval_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5002 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.fam15h_power_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5003, metadata !DIExpression()), !dbg !5004
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5005, metadata !DIExpression()), !dbg !5006
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5007, metadata !DIExpression()), !dbg !5008
  call void @llvm.dbg.declare(metadata %struct.fam15h_power_data** %data, metadata !5009, metadata !DIExpression()), !dbg !5010
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5011
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #9, !dbg !5012
  %1 = bitcast i8* %call to %struct.fam15h_power_data*, !dbg !5012
  store %struct.fam15h_power_data* %1, %struct.fam15h_power_data** %data, align 8, !dbg !5010
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5013
  %3 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !5014
  %power_period = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %3, i32 0, i32 11, !dbg !5015
  %4 = load i64, i64* %power_period, align 8, !dbg !5015
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 %4) #9, !dbg !5016
  %conv = sext i32 %call1 to i64, !dbg !5016
  ret i64 %conv, !dbg !5017
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @power1_average_interval_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !5018 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %data = alloca %struct.fam15h_power_data*, align 8
  %temp = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5019, metadata !DIExpression()), !dbg !5020
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5021, metadata !DIExpression()), !dbg !5022
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5023, metadata !DIExpression()), !dbg !5024
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5025, metadata !DIExpression()), !dbg !5026
  call void @llvm.dbg.declare(metadata %struct.fam15h_power_data** %data, metadata !5027, metadata !DIExpression()), !dbg !5028
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5029
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #9, !dbg !5030
  %1 = bitcast i8* %call to %struct.fam15h_power_data*, !dbg !5030
  store %struct.fam15h_power_data* %1, %struct.fam15h_power_data** %data, align 8, !dbg !5028
  call void @llvm.dbg.declare(metadata i64* %temp, metadata !5031, metadata !DIExpression()), !dbg !5032
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5033, metadata !DIExpression()), !dbg !5034
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5035
  %call1 = call i32 @kstrtoul(i8* %2, i32 10, i64* %temp) #9, !dbg !5036
  store i32 %call1, i32* %ret, align 4, !dbg !5037
  %3 = load i32, i32* %ret, align 4, !dbg !5038
  %tobool = icmp ne i32 %3, 0, !dbg !5038
  br i1 %tobool, label %if.then, label %if.end, !dbg !5040

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4, !dbg !5041
  %conv = sext i32 %4 to i64, !dbg !5041
  store i64 %conv, i64* %retval, align 8, !dbg !5042
  br label %return, !dbg !5042

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %temp, align 8, !dbg !5043
  %cmp = icmp ugt i64 %5, 1000, !dbg !5045
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5046

if.then3:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !5047
  br label %return, !dbg !5047

if.end4:                                          ; preds = %if.end
  %6 = load i64, i64* %temp, align 8, !dbg !5048
  %cmp5 = icmp ule i64 %6, 0, !dbg !5050
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !5051

if.then7:                                         ; preds = %if.end4
  store i64 -22, i64* %retval, align 8, !dbg !5052
  br label %return, !dbg !5052

if.end8:                                          ; preds = %if.end4
  %7 = load i64, i64* %temp, align 8, !dbg !5053
  %8 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !5054
  %power_period = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %8, i32 0, i32 11, !dbg !5055
  store i64 %7, i64* %power_period, align 8, !dbg !5056
  %9 = load i64, i64* %count.addr, align 8, !dbg !5057
  store i64 %9, i64* %retval, align 8, !dbg !5058
  br label %return, !dbg !5058

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %10 = load i64, i64* %retval, align 8, !dbg !5059
  ret i64 %10, !dbg !5059
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtoul(i8* %s, i32 %base, i64* %res) #2 !dbg !5060 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i64*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !5064, metadata !DIExpression()), !dbg !5065
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !5066, metadata !DIExpression()), !dbg !5067
  store i64* %res, i64** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %res.addr, metadata !5068, metadata !DIExpression()), !dbg !5069
  %0 = load i8*, i8** %s.addr, align 8, !dbg !5070
  %1 = load i32, i32* %base.addr, align 4, !dbg !5072
  %2 = load i64*, i64** %res.addr, align 8, !dbg !5073
  %call = call i32 @kstrtoull(i8* %0, i32 %1, i64* %2) #9, !dbg !5074
  ret i32 %call, !dbg !5075
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtoull(i8*, i32, i64*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #2 !dbg !5076 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5080, metadata !DIExpression()), !dbg !5081
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5082, metadata !DIExpression()), !dbg !5083
  ret i1 true, !dbg !5084
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !5085 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5089, metadata !DIExpression()), !dbg !5090
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5091, metadata !DIExpression()), !dbg !5092
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5093, metadata !DIExpression()), !dbg !5094
  ret void, !dbg !5095
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpuid(i32 %op, i32* %eax, i32* %ebx, i32* %ecx, i32* %edx) #2 !dbg !5096 {
entry:
  %op.addr = alloca i32, align 4
  %eax.addr = alloca i32*, align 8
  %ebx.addr = alloca i32*, align 8
  %ecx.addr = alloca i32*, align 8
  %edx.addr = alloca i32*, align 8
  store i32 %op, i32* %op.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !5099, metadata !DIExpression()), !dbg !5100
  store i32* %eax, i32** %eax.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %eax.addr, metadata !5101, metadata !DIExpression()), !dbg !5102
  store i32* %ebx, i32** %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ebx.addr, metadata !5103, metadata !DIExpression()), !dbg !5104
  store i32* %ecx, i32** %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ecx.addr, metadata !5105, metadata !DIExpression()), !dbg !5106
  store i32* %edx, i32** %edx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %edx.addr, metadata !5107, metadata !DIExpression()), !dbg !5108
  %0 = load i32, i32* %op.addr, align 4, !dbg !5109
  %1 = load i32*, i32** %eax.addr, align 8, !dbg !5110
  store i32 %0, i32* %1, align 4, !dbg !5111
  %2 = load i32*, i32** %ecx.addr, align 8, !dbg !5112
  store i32 0, i32* %2, align 4, !dbg !5113
  %3 = load i32*, i32** %eax.addr, align 8, !dbg !5114
  %4 = load i32*, i32** %ebx.addr, align 8, !dbg !5115
  %5 = load i32*, i32** %ecx.addr, align 8, !dbg !5116
  %6 = load i32*, i32** %edx.addr, align 8, !dbg !5117
  call void @__cpuid(i32* %3, i32* %4, i32* %5, i32* %6) #9, !dbg !5118
  ret void, !dbg !5119
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__cpuid(i32* %eax, i32* %ebx, i32* %ecx, i32* %edx) #2 !dbg !5120 {
entry:
  %eax.addr = alloca i32*, align 8
  %ebx.addr = alloca i32*, align 8
  %ecx.addr = alloca i32*, align 8
  %edx.addr = alloca i32*, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i32* %eax, i32** %eax.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %eax.addr, metadata !5123, metadata !DIExpression()), !dbg !5124
  store i32* %ebx, i32** %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ebx.addr, metadata !5125, metadata !DIExpression()), !dbg !5126
  store i32* %ecx, i32** %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ecx.addr, metadata !5127, metadata !DIExpression()), !dbg !5128
  store i32* %edx, i32** %edx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %edx.addr, metadata !5129, metadata !DIExpression()), !dbg !5130
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5131, metadata !DIExpression()), !dbg !5133
  %0 = load i64, i64* %__edi, align 8, !dbg !5133
  store i64 %0, i64* %__edi, align 8, !dbg !5133
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5134, metadata !DIExpression()), !dbg !5133
  %1 = load i64, i64* %__esi, align 8, !dbg !5133
  store i64 %1, i64* %__esi, align 8, !dbg !5133
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5135, metadata !DIExpression()), !dbg !5133
  %2 = load i64, i64* %__edx, align 8, !dbg !5133
  store i64 %2, i64* %__edx, align 8, !dbg !5133
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5136, metadata !DIExpression()), !dbg !5133
  %3 = load i64, i64* %__ecx, align 8, !dbg !5133
  store i64 %3, i64* %__ecx, align 8, !dbg !5133
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5137, metadata !DIExpression()), !dbg !5133
  %4 = load i64, i64* %__eax, align 8, !dbg !5133
  store i64 %4, i64* %__eax, align 8, !dbg !5133
  %5 = load void (i32*, i32*, i32*, i32*)*, void (i32*, i32*, i32*, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 22), align 8, !dbg !5133
  %6 = call i64 @llvm.read_register.i64(metadata !4060), !dbg !5133
  %7 = load i32*, i32** %eax.addr, align 8, !dbg !5133
  %8 = ptrtoint i32* %7 to i64, !dbg !5133
  %9 = load i32*, i32** %ebx.addr, align 8, !dbg !5133
  %10 = ptrtoint i32* %9 to i64, !dbg !5133
  %11 = load i32*, i32** %ecx.addr, align 8, !dbg !5133
  %12 = ptrtoint i32* %11 to i64, !dbg !5133
  %13 = load i32*, i32** %edx.addr, align 8, !dbg !5133
  %14 = ptrtoint i32* %13 to i64, !dbg !5133
  %15 = call { i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${6:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${5:c}\0A  .byte 772b-771b\0A  .short ${7:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},i,i,i,{di},{si},{dx},{cx},4,~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 25, void (i32*, i32*, i32*, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 22), i32 511, i64 %8, i64 %10, i64 %12, i64 %14, i64 %6) #7, !dbg !5133, !srcloc !5138
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %15, 0, !dbg !5133
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64 } %15, 1, !dbg !5133
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64 } %15, 2, !dbg !5133
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %15, 3, !dbg !5133
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %15, 4, !dbg !5133
  store i64 %asmresult, i64* %__edi, align 8, !dbg !5133
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !5133
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !5133
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !5133
  call void @llvm.write_register.i64(metadata !4060, i64 %asmresult4), !dbg !5133
  ret void, !dbg !5139
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @paravirt_read_msr_safe(i32 %msr, i32* %err) #2 !dbg !5140 {
entry:
  %msr.addr = alloca i32, align 4
  %err.addr = alloca i32*, align 8
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !5143, metadata !DIExpression()), !dbg !5144
  store i32* %err, i32** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %err.addr, metadata !5145, metadata !DIExpression()), !dbg !5146
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5147, metadata !DIExpression()), !dbg !5149
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5150, metadata !DIExpression()), !dbg !5149
  %0 = load i64, i64* %__edi, align 8, !dbg !5149
  store i64 %0, i64* %__edi, align 8, !dbg !5149
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5151, metadata !DIExpression()), !dbg !5149
  %1 = load i64, i64* %__esi, align 8, !dbg !5149
  store i64 %1, i64* %__esi, align 8, !dbg !5149
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5152, metadata !DIExpression()), !dbg !5149
  %2 = load i64, i64* %__edx, align 8, !dbg !5149
  store i64 %2, i64* %__edx, align 8, !dbg !5149
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5153, metadata !DIExpression()), !dbg !5149
  %3 = load i64, i64* %__ecx, align 8, !dbg !5149
  store i64 %3, i64* %__ecx, align 8, !dbg !5149
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5154, metadata !DIExpression()), !dbg !5149
  %4 = load i64, i64* %__eax, align 8, !dbg !5149
  store i64 %4, i64* %__eax, align 8, !dbg !5149
  %5 = load i64 (i32, i32*)*, i64 (i32, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 25), align 8, !dbg !5149
  %6 = call i64 @llvm.read_register.i64(metadata !4060), !dbg !5155
  %7 = load i32, i32* %msr.addr, align 4, !dbg !5155
  %conv = zext i32 %7 to i64, !dbg !5155
  %8 = load i32*, i32** %err.addr, align 8, !dbg !5155
  %9 = ptrtoint i32* %8 to i64, !dbg !5155
  %10 = call { i64, i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${7:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${6:c}\0A  .byte 772b-771b\0A  .short ${8:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={ax},={rsp},i,i,i,{di},{si},5,~{memory},~{cc},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 28, i64 (i32, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 25), i32 511, i64 %conv, i64 %9, i64 %6) #7, !dbg !5155, !srcloc !5158
  %asmresult = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 0, !dbg !5155
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 1, !dbg !5155
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 2, !dbg !5155
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 3, !dbg !5155
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 4, !dbg !5155
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 5, !dbg !5155
  store i64 %asmresult, i64* %__edi, align 8, !dbg !5155
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !5155
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !5155
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !5155
  store i64 %asmresult4, i64* %__eax, align 8, !dbg !5155
  call void @llvm.write_register.i64(metadata !4060, i64 %asmresult5), !dbg !5155
  %11 = load i64, i64* %__eax, align 8, !dbg !5155
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5159, metadata !DIExpression()), !dbg !5161
  store i64 -1, i64* %__mask, align 8, !dbg !5161
  %12 = load i64, i64* %__mask, align 8, !dbg !5161
  store i64 %12, i64* %tmp, align 8, !dbg !5161
  %13 = load i64, i64* %tmp, align 8, !dbg !5161
  %and = and i64 %11, %13, !dbg !5155
  store i64 %and, i64* %__ret, align 8, !dbg !5155
  %14 = load i64, i64* %__ret, align 8, !dbg !5149
  store i64 %14, i64* %tmp6, align 8, !dbg !5162
  %15 = load i64, i64* %tmp6, align 8, !dbg !5149
  ret i64 %15, !dbg !5163
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @zalloc_cpumask_var([1 x %struct.cpumask]* %mask, i32 %flags) #2 !dbg !5164 {
entry:
  %mask.addr = alloca [1 x %struct.cpumask]*, align 8
  %flags.addr = alloca i32, align 4
  store [1 x %struct.cpumask]* %mask, [1 x %struct.cpumask]** %mask.addr, align 8
  call void @llvm.dbg.declare(metadata [1 x %struct.cpumask]** %mask.addr, metadata !5168, metadata !DIExpression()), !dbg !5169
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5170, metadata !DIExpression()), !dbg !5171
  %0 = load [1 x %struct.cpumask]*, [1 x %struct.cpumask]** %mask.addr, align 8, !dbg !5172
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %0, i64 0, i64 0, !dbg !5173
  call void @cpumask_clear(%struct.cpumask* %arraydecay) #9, !dbg !5174
  ret i1 true, !dbg !5175
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @get_online_cpus() #2 !dbg !5176 {
entry:
  call void @cpus_read_lock() #9, !dbg !5178
  ret void, !dbg !5179
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpumask_set_cpu(i32 %cpu, %struct.cpumask* %dstp) #2 !dbg !5180 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca %struct.cpumask*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !5183, metadata !DIExpression()), !dbg !5184
  store %struct.cpumask* %dstp, %struct.cpumask** %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %dstp.addr, metadata !5185, metadata !DIExpression()), !dbg !5186
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !5187
  %call = call i32 @cpumask_check(i32 %0) #9, !dbg !5188
  %conv = zext i32 %call to i64, !dbg !5188
  %1 = load %struct.cpumask*, %struct.cpumask** %dstp.addr, align 8, !dbg !5189
  %bits = getelementptr inbounds %struct.cpumask, %struct.cpumask* %1, i32 0, i32 0, !dbg !5189
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %bits, i64 0, i64 0, !dbg !5189
  call void @set_bit(i64 %conv, i64* %arraydecay) #9, !dbg !5190
  ret void, !dbg !5191
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpumask_first(%struct.cpumask* %srcp) #2 !dbg !5192 {
entry:
  %srcp.addr = alloca %struct.cpumask*, align 8
  store %struct.cpumask* %srcp, %struct.cpumask** %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %srcp.addr, metadata !5195, metadata !DIExpression()), !dbg !5196
  ret i32 0, !dbg !5197
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.cpumask* @get_cpu_mask(i32 %cpu) #2 !dbg !5198 {
entry:
  %cpu.addr = alloca i32, align 4
  %p = alloca i64*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !5201, metadata !DIExpression()), !dbg !5202
  call void @llvm.dbg.declare(metadata i64** %p, metadata !5203, metadata !DIExpression()), !dbg !5205
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !5206
  %rem = urem i32 %0, 64, !dbg !5207
  %add = add i32 1, %rem, !dbg !5208
  %idxprom = zext i32 %add to i64, !dbg !5209
  %arrayidx = getelementptr [65 x [1 x i64]], [65 x [1 x i64]]* @cpu_bit_bitmap, i64 0, i64 %idxprom, !dbg !5209
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %arrayidx, i64 0, i64 0, !dbg !5209
  store i64* %arraydecay, i64** %p, align 8, !dbg !5205
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !5210
  %div = udiv i32 %1, 64, !dbg !5211
  %2 = load i64*, i64** %p, align 8, !dbg !5212
  %idx.ext = zext i32 %div to i64, !dbg !5212
  %idx.neg = sub i64 0, %idx.ext, !dbg !5212
  %add.ptr = getelementptr i64, i64* %2, i64 %idx.neg, !dbg !5212
  store i64* %add.ptr, i64** %p, align 8, !dbg !5212
  %3 = load i64*, i64** %p, align 8, !dbg !5213
  %4 = bitcast i64* %3 to i8*, !dbg !5213
  %5 = bitcast i8* %4 to %struct.cpumask*, !dbg !5213
  ret %struct.cpumask* %5, !dbg !5214
}

; Function Attrs: noredzone
declare dso_local void @on_each_cpu_mask(%struct.cpumask*, void (i8*)*, i8*, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @do_read_registers_on_cu(i8* %_data) #2 !dbg !5215 {
entry:
  %_data.addr = alloca i8*, align 8
  %data = alloca %struct.fam15h_power_data*, align 8
  %cpu = alloca i32, align 4
  %cu = alloca i32, align 4
  store i8* %_data, i8** %_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_data.addr, metadata !5216, metadata !DIExpression()), !dbg !5217
  call void @llvm.dbg.declare(metadata %struct.fam15h_power_data** %data, metadata !5218, metadata !DIExpression()), !dbg !5219
  %0 = load i8*, i8** %_data.addr, align 8, !dbg !5220
  %1 = bitcast i8* %0 to %struct.fam15h_power_data*, !dbg !5220
  store %struct.fam15h_power_data* %1, %struct.fam15h_power_data** %data, align 8, !dbg !5219
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !5221, metadata !DIExpression()), !dbg !5222
  call void @llvm.dbg.declare(metadata i32* %cu, metadata !5223, metadata !DIExpression()), !dbg !5224
  store i32 0, i32* %cpu, align 4, !dbg !5225
  %2 = load i16, i16* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 29), align 2, !dbg !5226
  %conv = zext i16 %2 to i32, !dbg !5227
  store i32 %conv, i32* %cu, align 4, !dbg !5228
  %3 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !5229
  %cu_acc_power = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %3, i32 0, i32 8, !dbg !5230
  %4 = load i32, i32* %cu, align 4, !dbg !5231
  %idxprom = sext i32 %4 to i64, !dbg !5229
  %arrayidx = getelementptr [8 x i64], [8 x i64]* %cu_acc_power, i64 0, i64 %idxprom, !dbg !5229
  %call = call i32 @rdmsrl_safe(i32 -1073676166, i64* %arrayidx) #9, !dbg !5232
  %5 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !5233
  %cpu_sw_pwr_ptsc = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %5, i32 0, i32 9, !dbg !5234
  %6 = load i32, i32* %cu, align 4, !dbg !5235
  %idxprom1 = sext i32 %6 to i64, !dbg !5233
  %arrayidx2 = getelementptr [8 x i64], [8 x i64]* %cpu_sw_pwr_ptsc, i64 0, i64 %idxprom1, !dbg !5233
  %call3 = call i32 @rdmsrl_safe(i32 -1073675648, i64* %arrayidx2) #9, !dbg !5236
  %7 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %data, align 8, !dbg !5237
  %cu_on = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %7, i32 0, i32 10, !dbg !5238
  %8 = load i32, i32* %cu, align 4, !dbg !5239
  %idxprom4 = sext i32 %8 to i64, !dbg !5237
  %arrayidx5 = getelementptr [8 x i32], [8 x i32]* %cu_on, i64 0, i64 %idxprom4, !dbg !5237
  store i32 1, i32* %arrayidx5, align 4, !dbg !5240
  ret void, !dbg !5241
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @put_online_cpus() #2 !dbg !5242 {
entry:
  call void @cpus_read_unlock() #9, !dbg !5243
  ret void, !dbg !5244
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @free_cpumask_var(%struct.cpumask* %mask) #2 !dbg !5245 {
entry:
  %mask.addr = alloca %struct.cpumask*, align 8
  store %struct.cpumask* %mask, %struct.cpumask** %mask.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %mask.addr, metadata !5248, metadata !DIExpression()), !dbg !5249
  ret void, !dbg !5250
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpumask_clear(%struct.cpumask* %dstp) #2 !dbg !5251 {
entry:
  %dstp.addr = alloca %struct.cpumask*, align 8
  store %struct.cpumask* %dstp, %struct.cpumask** %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %dstp.addr, metadata !5252, metadata !DIExpression()), !dbg !5253
  %0 = load %struct.cpumask*, %struct.cpumask** %dstp.addr, align 8, !dbg !5254
  %bits = getelementptr inbounds %struct.cpumask, %struct.cpumask* %0, i32 0, i32 0, !dbg !5254
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %bits, i64 0, i64 0, !dbg !5254
  call void @bitmap_zero(i64* %arraydecay, i32 1) #9, !dbg !5255
  ret void, !dbg !5256
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bitmap_zero(i64* %dst, i32 %nbits) #2 !dbg !5257 {
entry:
  %dst.addr = alloca i64*, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store i64* %dst, i64** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dst.addr, metadata !5261, metadata !DIExpression()), !dbg !5262
  store i32 %nbits, i32* %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr, metadata !5263, metadata !DIExpression()), !dbg !5264
  call void @llvm.dbg.declare(metadata i32* %len, metadata !5265, metadata !DIExpression()), !dbg !5266
  %0 = load i32, i32* %nbits.addr, align 4, !dbg !5267
  %conv = zext i32 %0 to i64, !dbg !5267
  %add = add i64 %conv, 64, !dbg !5267
  %sub = sub i64 %add, 1, !dbg !5267
  %div = udiv i64 %sub, 64, !dbg !5267
  %mul = mul i64 %div, 8, !dbg !5268
  %conv1 = trunc i64 %mul to i32, !dbg !5267
  store i32 %conv1, i32* %len, align 4, !dbg !5266
  %1 = load i64*, i64** %dst.addr, align 8, !dbg !5269
  %2 = bitcast i64* %1 to i8*, !dbg !5270
  %3 = load i32, i32* %len, align 4, !dbg !5271
  %conv2 = zext i32 %3 to i64, !dbg !5271
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 %conv2, i1 false), !dbg !5270
  ret void, !dbg !5272
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpus_read_lock() #2 !dbg !5273 {
entry:
  ret void, !dbg !5274
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #2 !dbg !5275 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5280, metadata !DIExpression()), !dbg !5282
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5284, metadata !DIExpression()), !dbg !5285
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5286, metadata !DIExpression()), !dbg !5288
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5290, metadata !DIExpression()), !dbg !5291
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5292, metadata !DIExpression()), !dbg !5293
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5294, metadata !DIExpression()), !dbg !5295
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5296
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5297
  %div = sdiv i64 %1, 64, !dbg !5297
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5298
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5296
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5299
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5300
  %conv.i = trunc i64 %4 to i32, !dbg !5300
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !5301
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5302
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5302
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #11, !dbg !5302
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5303
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5304
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5305
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #7, !dbg !5307
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !5308

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !5309
  %12 = bitcast i64* %11 to i8*, !dbg !5309
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5309
  %shr.i = ashr i64 %13, 3, !dbg !5309
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !5309
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !5311
  %and.i = and i64 %14, 7, !dbg !5311
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !5311
  %shl.i = shl i32 1, %sh_prom.i, !dbg !5311
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #7, !dbg !5312, !srcloc !5313
  br label %arch_set_bit.exit, !dbg !5314

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5315
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5317
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #7, !dbg !5318, !srcloc !5319
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5320
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpumask_check(i32 %cpu) #2 !dbg !5321 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !5322, metadata !DIExpression()), !dbg !5323
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !5324
  call void @cpu_max_bits_warn(i32 %0, i32 1) #9, !dbg !5325
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !5326
  ret i32 %1, !dbg !5327
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !5328 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5329, metadata !DIExpression()), !dbg !5330
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5331, metadata !DIExpression()), !dbg !5332
  ret i1 true, !dbg !5333
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpu_max_bits_warn(i32 %cpu, i32 %bits) #2 !dbg !5334 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !5337, metadata !DIExpression()), !dbg !5338
  store i32 %bits, i32* %bits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bits.addr, metadata !5339, metadata !DIExpression()), !dbg !5340
  ret void, !dbg !5341
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpus_read_unlock() #2 !dbg !5342 {
entry:
  ret void, !dbg !5343
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !5344 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5347, metadata !DIExpression()), !dbg !5348
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5349
  %1 = ptrtoint i8* %0 to i64, !dbg !5349
  %2 = inttoptr i64 %1 to i8*, !dbg !5349
  %3 = ptrtoint i8* %2 to i64, !dbg !5349
  %cmp = icmp uge i64 %3, -4095, !dbg !5349
  %lnot = xor i1 %cmp, true, !dbg !5349
  %lnot1 = xor i1 %lnot, true, !dbg !5349
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5349
  %conv = sext i32 %lnot.ext to i64, !dbg !5349
  %tobool = icmp ne i64 %conv, 0, !dbg !5349
  ret i1 %tobool, !dbg !5350
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !5351 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5354, metadata !DIExpression()), !dbg !5355
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5356
  %1 = ptrtoint i8* %0 to i64, !dbg !5357
  ret i64 %1, !dbg !5358
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { argmemonly nounwind willreturn }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4060}
!llvm.module.flags = !{!4061, !4062, !4063, !4064}
!llvm.ident = !{!4065}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description234", scope: !2, file: !3, line: 23, type: !4057, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !98, globals: !132, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/hwmon/fam15h_power.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93}
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 10, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97}
!96 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!98 = !{!99, !102, !7, !104, !105, !107, !108, !113, !114, !112, !115, !116, !106, !117, !126, !129, !131}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !101, line: 76, flags: DIFlagFwdDecl)
!101 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !103, line: 148, baseType: !7)
!103 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!104 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !109, line: 23, baseType: !110)
!109 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !111, line: 31, baseType: !112)
!111 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!112 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !111, line: 26, baseType: !104)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !103, line: 107, baseType: !108)
!115 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !120, line: 17, size: 64, elements: !121)
!120 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !119, file: !120, line: 17, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 64, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 1)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !128)
!128 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !115)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!132 = !{!0, !133, !139, !144, !149, !151, !158, !4029, !4034, !4037, !4051, !4053, !4055}
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author235", scope: !2, file: !3, line: 24, type: !135, isLocal: true, isDefinition: true, align: 8)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 576, elements: !137)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!137 = !{!138}
!138 = !DISubrange(count: 72)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file236", scope: !2, file: !3, line: 25, type: !141, isLocal: true, isDefinition: true, align: 8)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 360, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 45)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license237", scope: !2, file: !3, line: 25, type: !146, isLocal: true, isDefinition: true, align: 8)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 200, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 25)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_fam15h_power_driver_init238", scope: !2, file: !3, line: 500, type: !107, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "__exitcall_fam15h_power_driver_exit", scope: !2, file: !3, line: 500, type: !153, isLocal: true, isDefinition: true)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !154, line: 117, baseType: !155)
!154 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{null}
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "fam15h_power_driver", scope: !2, file: !3, line: 493, type: !160, isLocal: true, isDefinition: true)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !161, line: 858, size: 2048, elements: !162)
!161 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!162 = !{!163, !169, !171, !186, !3987, !3991, !3995, !3999, !4000, !4004, !4022, !4023, !4024}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !160, file: !161, line: 859, baseType: !164, size: 128)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !103, line: 178, size: 128, elements: !165)
!165 = !{!166, !168}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !164, file: !103, line: 179, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !164, file: !103, line: 179, baseType: !167, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !160, file: !161, line: 860, baseType: !170, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !160, file: !161, line: 861, baseType: !172, size: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !175, line: 38, size: 256, elements: !176)
!175 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!176 = !{!177, !179, !180, !181, !182, !183, !184}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !174, file: !175, line: 39, baseType: !178, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !111, line: 27, baseType: !7)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !174, file: !175, line: 39, baseType: !178, size: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !174, file: !175, line: 40, baseType: !178, size: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !174, file: !175, line: 40, baseType: !178, size: 32, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !174, file: !175, line: 41, baseType: !178, size: 32, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !174, file: !175, line: 41, baseType: !178, size: 32, offset: 160)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !174, file: !175, line: 42, baseType: !185, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !175, line: 14, baseType: !106)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !160, file: !161, line: 862, baseType: !187, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!104, !190, !172}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !161, line: 309, size: 19264, elements: !192)
!192 = !{!193, !194, !3851, !3852, !3853, !3854, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3883, !3884, !3885, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3909, !3910, !3911, !3912, !3914, !3915, !3916, !3917, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3960, !3961, !3963, !3964, !3965, !3966, !3968, !3969, !3970, !3973, !3980, !3981, !3982, !3983, !3984, !3985, !3986}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !191, file: !161, line: 310, baseType: !164, size: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !191, file: !161, line: 311, baseType: !195, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !161, line: 605, size: 8064, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !222, !223, !224, !250, !253, !254, !258, !260, !261, !262, !263, !267, !269, !271, !3847, !3848, !3849, !3850}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !196, file: !161, line: 606, baseType: !164, size: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !196, file: !161, line: 607, baseType: !195, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !196, file: !161, line: 608, baseType: !164, size: 128, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !196, file: !161, line: 609, baseType: !164, size: 128, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !196, file: !161, line: 610, baseType: !190, size: 64, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !196, file: !161, line: 611, baseType: !164, size: 128, offset: 512)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !196, file: !161, line: 613, baseType: !205, size: 256, offset: 640)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 256, elements: !220)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !208, line: 20, size: 512, elements: !209)
!208 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!209 = !{!210, !213, !214, !215, !216, !217, !218, !219}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !207, file: !208, line: 21, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !103, line: 158, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !103, line: 153, baseType: !108)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !207, file: !208, line: 22, baseType: !211, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !207, file: !208, line: 23, baseType: !170, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !207, file: !208, line: 24, baseType: !106, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !207, file: !208, line: 25, baseType: !106, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !207, file: !208, line: 26, baseType: !206, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !207, file: !208, line: 26, baseType: !206, size: 64, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !207, file: !208, line: 26, baseType: !206, size: 64, offset: 448)
!220 = !{!221}
!221 = !DISubrange(count: 4)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !196, file: !161, line: 614, baseType: !164, size: 128, offset: 896)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !196, file: !161, line: 615, baseType: !207, size: 512, offset: 1024)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !196, file: !161, line: 617, baseType: !225, size: 64, offset: 1536)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !161, line: 731, size: 320, elements: !227)
!227 = !{!228, !232, !236, !240, !246}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !226, file: !161, line: 732, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!104, !195}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !226, file: !161, line: 733, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !195}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !226, file: !161, line: 734, baseType: !237, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!107, !195, !7, !104}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !226, file: !161, line: 735, baseType: !241, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!104, !195, !7, !104, !104, !244}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !109, line: 21, baseType: !178)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !226, file: !161, line: 736, baseType: !247, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!104, !195, !7, !104, !104, !245}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !196, file: !161, line: 618, baseType: !251, size: 64, offset: 1600)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !161, line: 537, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !196, file: !161, line: 619, baseType: !107, size: 64, offset: 1664)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !196, file: !161, line: 620, baseType: !255, size: 64, offset: 1728)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !257, line: 123, flags: DIFlagFwdDecl)
!257 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!258 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !196, file: !161, line: 622, baseType: !259, size: 8, offset: 1792)
!259 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !196, file: !161, line: 623, baseType: !259, size: 8, offset: 1800)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !196, file: !161, line: 624, baseType: !259, size: 8, offset: 1808)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !196, file: !161, line: 625, baseType: !259, size: 8, offset: 1816)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !161, line: 630, baseType: !264, size: 384, offset: 1824)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 384, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 48)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !196, file: !161, line: 632, baseType: !268, size: 16, offset: 2208)
!268 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !196, file: !161, line: 633, baseType: !270, size: 16, offset: 2224)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !161, line: 237, baseType: !268)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !196, file: !161, line: 634, baseType: !272, size: 64, offset: 2240)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !274)
!274 = !{!275, !3403, !3404, !3407, !3408, !3459, !3548, !3549, !3550, !3551, !3552, !3561, !3666, !3679, !3682, !3683, !3687, !3689, !3690, !3691, !3695, !3701, !3702, !3705, !3709, !3799, !3800, !3801, !3802, !3803, !3835, !3836, !3837, !3840, !3843, !3844, !3845, !3846}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !273, file: !73, line: 462, baseType: !276, size: 512)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !277, line: 64, size: 512, elements: !278)
!277 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!278 = !{!279, !280, !281, !283, !343, !3254, !3393, !3398, !3399, !3400, !3401, !3402}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !276, file: !277, line: 65, baseType: !170, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !276, file: !277, line: 66, baseType: !164, size: 128, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !276, file: !277, line: 67, baseType: !282, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !276, file: !277, line: 68, baseType: !284, size: 64, offset: 256)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !277, line: 192, size: 704, elements: !286)
!286 = !{!287, !288, !304, !305}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !285, file: !277, line: 193, baseType: !164, size: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !285, file: !277, line: 194, baseType: !289, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !290, line: 83, baseType: !291)
!290 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !290, line: 71, elements: !292)
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_member, scope: !291, file: !290, line: 72, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !291, file: !290, line: 72, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !294, file: !290, line: 73, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !290, line: 20, elements: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !297, file: !290, line: 21, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !301, line: 25, baseType: !302)
!301 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !301, line: 25, elements: !303)
!303 = !{}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !285, file: !277, line: 195, baseType: !276, size: 512, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !285, file: !277, line: 196, baseType: !306, size: 64, offset: 640)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !277, line: 156, size: 192, elements: !309)
!309 = !{!310, !315, !320}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !308, file: !277, line: 157, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!104, !284, !282}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !308, file: !277, line: 158, baseType: !316, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!170, !284, !282}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !308, file: !277, line: 159, baseType: !321, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!104, !284, !282, !325}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !277, line: 148, size: 20736, elements: !327)
!327 = !{!328, !333, !337, !338, !342}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !326, file: !277, line: 149, baseType: !329, size: 192)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 192, elements: !331)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!331 = !{!332}
!332 = !DISubrange(count: 3)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !326, file: !277, line: 150, baseType: !334, size: 4096, offset: 192)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 4096, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !326, file: !277, line: 151, baseType: !104, size: 32, offset: 4288)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !326, file: !277, line: 152, baseType: !339, size: 16384, offset: 4320)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 16384, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 2048)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !326, file: !277, line: 153, baseType: !104, size: 32, offset: 20704)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !276, file: !277, line: 69, baseType: !344, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !277, line: 138, size: 448, elements: !346)
!346 = !{!347, !351, !378, !380, !3216, !3244, !3248}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !345, file: !277, line: 139, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !282}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !345, file: !277, line: 140, baseType: !352, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !355, line: 230, size: 128, elements: !356)
!355 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!356 = !{!357, !371}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !354, file: !355, line: 231, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!361, !282, !365, !330}
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !103, line: 60, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !363, line: 73, baseType: !364)
!363 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !363, line: 15, baseType: !115)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !355, line: 30, size: 128, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !366, file: !355, line: 31, baseType: !170, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !366, file: !355, line: 32, baseType: !370, size: 16, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !103, line: 19, baseType: !268)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !354, file: !355, line: 232, baseType: !372, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!361, !282, !365, !170, !375}
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 55, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !363, line: 72, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !363, line: 16, baseType: !106)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !345, file: !277, line: 141, baseType: !379, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !345, file: !277, line: 142, baseType: !381, size: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !355, line: 84, size: 320, elements: !385)
!385 = !{!386, !387, !391, !3213, !3214}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !384, file: !355, line: 85, baseType: !170, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !384, file: !355, line: 86, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!370, !282, !365, !104}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !384, file: !355, line: 88, baseType: !392, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!370, !282, !395, !104}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !355, line: 168, size: 448, elements: !397)
!397 = !{!398, !399, !400, !401, !3208, !3209}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !396, file: !355, line: 169, baseType: !366, size: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !396, file: !355, line: 170, baseType: !375, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !396, file: !355, line: 171, baseType: !107, size: 64, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !396, file: !355, line: 172, baseType: !402, size: 64, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!361, !405, !282, !395, !330, !576, !375}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !407)
!407 = !{!408, !426, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3191, !3192, !3201, !3202, !3203, !3204, !3205, !3206, !3207}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !406, file: !44, line: 920, baseType: !409, size: 128)
!409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !44, line: 917, size: 128, elements: !410)
!410 = !{!411, !417}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !409, file: !44, line: 918, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !413, line: 58, size: 64, elements: !414)
!413 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !412, file: !413, line: 59, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !409, file: !44, line: 919, baseType: !418, size: 128, align: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !103, line: 216, size: 128, align: 64, elements: !419)
!419 = !{!420, !422}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !418, file: !103, line: 217, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !418, file: !103, line: 218, baseType: !423, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !421}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !406, file: !44, line: 921, baseType: !427, size: 128, offset: 128)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !428, line: 8, size: 128, elements: !429)
!428 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!429 = !{!430, !434}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !427, file: !428, line: 9, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !433, line: 18, flags: DIFlagFwdDecl)
!433 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!434 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !427, file: !428, line: 10, baseType: !435, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !433, line: 89, size: 1536, elements: !437)
!437 = !{!438, !439, !449, !457, !458, !473, !3141, !3143, !3155, !3156, !3157, !3158, !3159, !3165, !3166, !3167}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !436, file: !433, line: 91, baseType: !7, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !436, file: !433, line: 92, baseType: !440, size: 32, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !441, line: 277, baseType: !442)
!441 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !441, line: 277, size: 32, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !442, file: !441, line: 277, baseType: !445, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !441, line: 70, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !441, line: 65, size: 32, elements: !447)
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !446, file: !441, line: 66, baseType: !7, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !436, file: !433, line: 93, baseType: !450, size: 128, offset: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !451, line: 38, size: 128, elements: !452)
!451 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!452 = !{!453, !455}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !450, file: !451, line: 39, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !450, file: !451, line: 39, baseType: !456, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !436, file: !433, line: 94, baseType: !435, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !436, file: !433, line: 95, baseType: !459, size: 128, offset: 256)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !433, line: 47, size: 128, elements: !460)
!460 = !{!461, !470}
!461 = !DIDerivedType(tag: DW_TAG_member, scope: !459, file: !433, line: 48, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !459, file: !433, line: 48, size: 64, elements: !463)
!463 = !{!464, !469}
!464 = !DIDerivedType(tag: DW_TAG_member, scope: !462, file: !433, line: 49, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !462, file: !433, line: 49, size: 64, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !465, file: !433, line: 50, baseType: !245, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !465, file: !433, line: 50, baseType: !245, size: 32, offset: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !462, file: !433, line: 52, baseType: !108, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !459, file: !433, line: 54, baseType: !471, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !436, file: !433, line: 96, baseType: !474, size: 64, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !476)
!476 = !{!477, !478, !479, !487, !494, !495, !643, !2852, !2853, !2854, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !3117, !3125, !3126, !3127, !3137, !3138, !3139, !3140}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !475, file: !44, line: 611, baseType: !370, size: 16)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !475, file: !44, line: 612, baseType: !268, size: 16, offset: 16)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !475, file: !44, line: 613, baseType: !480, size: 32, offset: 32)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !481, line: 23, baseType: !482)
!481 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !481, line: 21, size: 32, elements: !483)
!483 = !{!484}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !482, file: !481, line: 22, baseType: !485, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !103, line: 32, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !363, line: 49, baseType: !7)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !475, file: !44, line: 614, baseType: !488, size: 32, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !481, line: 28, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !481, line: 26, size: 32, elements: !490)
!490 = !{!491}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !489, file: !481, line: 27, baseType: !492, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !103, line: 33, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !363, line: 50, baseType: !7)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !475, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !475, file: !44, line: 622, baseType: !496, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !499)
!499 = !{!500, !504, !517, !521, !527, !531, !537, !541, !545, !549, !553, !554, !560, !564, !590, !619, !623, !629, !634, !638, !639}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !498, file: !44, line: 1865, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!435, !474, !435, !7}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !498, file: !44, line: 1866, baseType: !505, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!170, !435, !474, !508}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !510, line: 10, size: 128, elements: !511)
!510 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!511 = !{!512, !516}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !509, file: !510, line: 11, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !107}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !509, file: !510, line: 12, baseType: !107, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !498, file: !44, line: 1867, baseType: !518, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!104, !474, !104}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !498, file: !44, line: 1868, baseType: !522, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!525, !474, !104}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !498, file: !44, line: 1870, baseType: !528, size: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!104, !435, !330, !104}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !498, file: !44, line: 1872, baseType: !532, size: 64, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!104, !474, !435, !370, !535}
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !103, line: 30, baseType: !536)
!536 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !498, file: !44, line: 1873, baseType: !538, size: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!104, !435, !474, !435}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !498, file: !44, line: 1874, baseType: !542, size: 64, offset: 448)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!104, !474, !435}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !498, file: !44, line: 1875, baseType: !546, size: 64, offset: 512)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!104, !474, !435, !170}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !498, file: !44, line: 1876, baseType: !550, size: 64, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!104, !474, !435, !370}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !498, file: !44, line: 1877, baseType: !542, size: 64, offset: 640)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !498, file: !44, line: 1878, baseType: !555, size: 64, offset: 704)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!104, !474, !435, !370, !558}
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !103, line: 16, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !103, line: 13, baseType: !245)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !498, file: !44, line: 1879, baseType: !561, size: 64, offset: 768)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!104, !474, !435, !474, !435, !7}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !498, file: !44, line: 1881, baseType: !565, size: 64, offset: 832)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!104, !435, !568}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !579, !587, !588, !589}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !569, file: !44, line: 220, baseType: !7, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !569, file: !44, line: 221, baseType: !370, size: 16, offset: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !569, file: !44, line: 222, baseType: !480, size: 32, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !569, file: !44, line: 223, baseType: !488, size: 32, offset: 96)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !569, file: !44, line: 224, baseType: !576, size: 64, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !103, line: 46, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !363, line: 88, baseType: !578)
!578 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !569, file: !44, line: 225, baseType: !580, size: 128, offset: 192)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !581, line: 13, size: 128, elements: !582)
!581 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!582 = !{!583, !586}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !580, file: !581, line: 14, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !581, line: 8, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !111, line: 30, baseType: !578)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !580, file: !581, line: 15, baseType: !115, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !569, file: !44, line: 226, baseType: !580, size: 128, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !569, file: !44, line: 227, baseType: !580, size: 128, offset: 448)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !569, file: !44, line: 234, baseType: !405, size: 64, offset: 576)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !498, file: !44, line: 1882, baseType: !591, size: 64, offset: 896)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!104, !594, !596, !245, !7}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !598, line: 22, size: 1152, elements: !599)
!598 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!599 = !{!600, !601, !602, !603, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !597, file: !598, line: 23, baseType: !245, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !597, file: !598, line: 24, baseType: !370, size: 16, offset: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !597, file: !598, line: 25, baseType: !7, size: 32, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !597, file: !598, line: 26, baseType: !604, size: 32, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !103, line: 104, baseType: !245)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !597, file: !598, line: 27, baseType: !108, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !597, file: !598, line: 28, baseType: !108, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !597, file: !598, line: 37, baseType: !108, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !597, file: !598, line: 38, baseType: !558, size: 32, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !597, file: !598, line: 39, baseType: !558, size: 32, offset: 352)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !597, file: !598, line: 40, baseType: !480, size: 32, offset: 384)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !597, file: !598, line: 41, baseType: !488, size: 32, offset: 416)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !597, file: !598, line: 42, baseType: !576, size: 64, offset: 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !597, file: !598, line: 43, baseType: !580, size: 128, offset: 512)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !597, file: !598, line: 44, baseType: !580, size: 128, offset: 640)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !597, file: !598, line: 45, baseType: !580, size: 128, offset: 768)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !597, file: !598, line: 46, baseType: !580, size: 128, offset: 896)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !597, file: !598, line: 47, baseType: !108, size: 64, offset: 1024)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !597, file: !598, line: 48, baseType: !108, size: 64, offset: 1088)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !498, file: !44, line: 1883, baseType: !620, size: 64, offset: 960)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!361, !435, !330, !375}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !498, file: !44, line: 1884, baseType: !624, size: 64, offset: 1024)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!104, !474, !627, !108, !108}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !498, file: !44, line: 1886, baseType: !630, size: 64, offset: 1088)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!104, !474, !633, !104}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !498, file: !44, line: 1887, baseType: !635, size: 64, offset: 1152)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!104, !474, !435, !405, !7, !370}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !498, file: !44, line: 1890, baseType: !550, size: 64, offset: 1216)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !498, file: !44, line: 1891, baseType: !640, size: 64, offset: 1280)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!104, !474, !525, !104}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !475, file: !44, line: 623, baseType: !644, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !646)
!646 = !{!647, !648, !649, !650, !651, !652, !699, !2459, !2541, !2624, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2640, !2644, !2645, !2648, !2649, !2652, !2653, !2654, !2695, !2722, !2723, !2724, !2725, !2726, !2727, !2730, !2732, !2739, !2740, !2742, !2743, !2744, !2803, !2804, !2819, !2820, !2821, !2822, !2823, !2826, !2827, !2828, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !645, file: !44, line: 1417, baseType: !164, size: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !645, file: !44, line: 1418, baseType: !558, size: 32, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !645, file: !44, line: 1419, baseType: !259, size: 8, offset: 160)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !645, file: !44, line: 1420, baseType: !106, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !645, file: !44, line: 1421, baseType: !576, size: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !645, file: !44, line: 1422, baseType: !653, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !655)
!655 = !{!656, !657, !658, !665, !669, !673, !677, !678, !679, !689, !692, !693, !694, !696, !697, !698}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !654, file: !44, line: 2229, baseType: !170, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !654, file: !44, line: 2230, baseType: !104, size: 32, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !654, file: !44, line: 2238, baseType: !659, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!104, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !664, line: 28, flags: DIFlagFwdDecl)
!664 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!665 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !654, file: !44, line: 2239, baseType: !666, size: 64, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !668)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !654, file: !44, line: 2240, baseType: !670, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!435, !653, !104, !170, !107}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !654, file: !44, line: 2242, baseType: !674, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !644}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !654, file: !44, line: 2243, baseType: !99, size: 64, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !654, file: !44, line: 2244, baseType: !653, size: 64, offset: 448)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !654, file: !44, line: 2245, baseType: !680, size: 64, offset: 512)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !103, line: 182, size: 64, elements: !681)
!681 = !{!682}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !680, file: !103, line: 183, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !103, line: 186, size: 128, elements: !685)
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !684, file: !103, line: 187, baseType: !683, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !684, file: !103, line: 187, baseType: !688, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !654, file: !44, line: 2247, baseType: !690, offset: 576)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !691, line: 187, elements: !303)
!691 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!692 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !654, file: !44, line: 2248, baseType: !690, offset: 576)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !654, file: !44, line: 2249, baseType: !690, offset: 576)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !654, file: !44, line: 2250, baseType: !695, offset: 576)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, elements: !331)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !654, file: !44, line: 2252, baseType: !690, offset: 576)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !654, file: !44, line: 2253, baseType: !690, offset: 576)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !654, file: !44, line: 2254, baseType: !690, offset: 576)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !645, file: !44, line: 1423, baseType: !700, size: 64, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !703)
!703 = !{!704, !708, !712, !713, !717, !723, !727, !728, !729, !733, !737, !738, !739, !740, !746, !751, !752, !759, !760, !761, !762, !2443, !2458}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !702, file: !44, line: 1936, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!474, !644}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !702, file: !44, line: 1937, baseType: !709, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !474}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !702, file: !44, line: 1938, baseType: !709, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !702, file: !44, line: 1940, baseType: !714, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !474, !104}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !702, file: !44, line: 1941, baseType: !718, size: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!104, !474, !721}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !702, file: !44, line: 1942, baseType: !724, size: 64, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!104, !474}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !702, file: !44, line: 1943, baseType: !709, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !702, file: !44, line: 1944, baseType: !674, size: 64, offset: 448)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !702, file: !44, line: 1945, baseType: !730, size: 64, offset: 512)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!104, !644, !104}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !702, file: !44, line: 1946, baseType: !734, size: 64, offset: 576)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!104, !644}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !702, file: !44, line: 1947, baseType: !734, size: 64, offset: 640)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !702, file: !44, line: 1948, baseType: !734, size: 64, offset: 704)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !702, file: !44, line: 1949, baseType: !734, size: 64, offset: 768)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !702, file: !44, line: 1950, baseType: !741, size: 64, offset: 832)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!104, !435, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !702, file: !44, line: 1951, baseType: !747, size: 64, offset: 896)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!104, !644, !750, !330}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !702, file: !44, line: 1952, baseType: !674, size: 64, offset: 960)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !702, file: !44, line: 1954, baseType: !753, size: 64, offset: 1024)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!104, !756, !435}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !758, line: 539, flags: DIFlagFwdDecl)
!758 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!759 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !702, file: !44, line: 1955, baseType: !753, size: 64, offset: 1088)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !702, file: !44, line: 1956, baseType: !753, size: 64, offset: 1152)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !702, file: !44, line: 1957, baseType: !753, size: 64, offset: 1216)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !702, file: !44, line: 1963, baseType: !763, size: 64, offset: 1280)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!104, !644, !766, !102}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !768, line: 68, size: 512, align: 128, elements: !769)
!768 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!769 = !{!770, !771, !2435, !2442}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !768, line: 69, baseType: !106, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !768, line: 77, baseType: !772, size: 320, offset: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !768, line: 77, size: 320, elements: !773)
!773 = !{!774, !961, !966, !994, !1002, !1008, !2366, !2434}
!774 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !768, line: 78, baseType: !775, size: 320)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !772, file: !768, line: 78, size: 320, elements: !776)
!776 = !{!777, !778, !959, !960}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !775, file: !768, line: 84, baseType: !164, size: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !775, file: !768, line: 86, baseType: !779, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !781)
!781 = !{!782, !783, !790, !791, !796, !811, !827, !828, !829, !830, !952, !953, !956, !957, !958}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !780, file: !44, line: 452, baseType: !474, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !780, file: !44, line: 453, baseType: !784, size: 128, offset: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !785, line: 292, size: 128, elements: !786)
!785 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!786 = !{!787, !788, !789}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !784, file: !785, line: 293, baseType: !289)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !784, file: !785, line: 295, baseType: !102, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !784, file: !785, line: 296, baseType: !107, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !780, file: !44, line: 454, baseType: !102, size: 32, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !780, file: !44, line: 455, baseType: !792, size: 32, offset: 224)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !103, line: 168, baseType: !793)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 166, size: 32, elements: !794)
!794 = !{!795}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !793, file: !103, line: 167, baseType: !104, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !780, file: !44, line: 460, baseType: !797, size: 128, offset: 256)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !798, line: 125, size: 128, elements: !799)
!798 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!799 = !{!800, !810}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !797, file: !798, line: 126, baseType: !801, size: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !798, line: 31, size: 64, elements: !802)
!802 = !{!803}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !801, file: !798, line: 32, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !798, line: 24, size: 192, align: 64, elements: !806)
!806 = !{!807, !808, !809}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !805, file: !798, line: 25, baseType: !106, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !805, file: !798, line: 26, baseType: !804, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !805, file: !798, line: 27, baseType: !804, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !797, file: !798, line: 127, baseType: !804, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !780, file: !44, line: 461, baseType: !812, size: 256, offset: 384)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !813, line: 35, size: 256, elements: !814)
!813 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!814 = !{!815, !823, !824, !826}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !812, file: !813, line: 36, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !817, line: 13, baseType: !818)
!817 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !103, line: 175, baseType: !819)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 173, size: 64, elements: !820)
!820 = !{!821}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !819, file: !103, line: 174, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !109, line: 22, baseType: !585)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !812, file: !813, line: 42, baseType: !816, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !812, file: !813, line: 46, baseType: !825, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !290, line: 29, baseType: !297)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !812, file: !813, line: 47, baseType: !164, size: 128, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !780, file: !44, line: 462, baseType: !106, size: 64, offset: 640)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !780, file: !44, line: 463, baseType: !106, size: 64, offset: 704)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !780, file: !44, line: 464, baseType: !106, size: 64, offset: 768)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !780, file: !44, line: 465, baseType: !831, size: 64, offset: 832)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !833)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !834)
!834 = !{!835, !839, !843, !847, !851, !855, !861, !867, !871, !876, !880, !884, !888, !916, !920, !926, !927, !928, !932, !937, !941, !948}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !833, file: !44, line: 368, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!104, !766, !721}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !833, file: !44, line: 369, baseType: !840, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!104, !405, !766}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !833, file: !44, line: 372, baseType: !844, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!104, !779, !721}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !833, file: !44, line: 375, baseType: !848, size: 64, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!104, !766}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !833, file: !44, line: 381, baseType: !852, size: 64, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!104, !405, !779, !167, !7}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !833, file: !44, line: 383, baseType: !856, size: 64, offset: 320)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !859}
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !833, file: !44, line: 385, baseType: !862, size: 64, offset: 384)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!104, !405, !779, !576, !7, !7, !865, !866}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !833, file: !44, line: 388, baseType: !868, size: 64, offset: 448)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!104, !405, !779, !576, !7, !7, !766, !107}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !833, file: !44, line: 393, baseType: !872, size: 64, offset: 512)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!875, !779, !875}
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !103, line: 125, baseType: !108)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !833, file: !44, line: 394, baseType: !877, size: 64, offset: 576)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !766, !7, !7}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !833, file: !44, line: 395, baseType: !881, size: 64, offset: 640)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!104, !766, !102}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !833, file: !44, line: 396, baseType: !885, size: 64, offset: 704)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !766}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !833, file: !44, line: 397, baseType: !889, size: 64, offset: 768)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!361, !892, !914}
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !894)
!894 = !{!895, !896, !897, !901, !902, !903, !906, !907}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !893, file: !44, line: 321, baseType: !405, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !893, file: !44, line: 326, baseType: !576, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !893, file: !44, line: 327, baseType: !898, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{null, !892, !115, !115}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !893, file: !44, line: 328, baseType: !107, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !893, file: !44, line: 329, baseType: !104, size: 32, offset: 256)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !893, file: !44, line: 330, baseType: !904, size: 16, offset: 288)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !109, line: 19, baseType: !905)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !111, line: 24, baseType: !268)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !893, file: !44, line: 331, baseType: !904, size: 16, offset: 304)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !893, file: !44, line: 332, baseType: !908, size: 64, offset: 320)
!908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !893, file: !44, line: 332, size: 64, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !908, file: !44, line: 333, baseType: !7, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !908, file: !44, line: 334, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !833, file: !44, line: 402, baseType: !917, size: 64, offset: 832)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!104, !779, !766, !766, !5}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !833, file: !44, line: 404, baseType: !921, size: 64, offset: 896)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!535, !766, !924}
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !925, line: 305, baseType: !7)
!925 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!926 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !833, file: !44, line: 405, baseType: !885, size: 64, offset: 960)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !833, file: !44, line: 406, baseType: !848, size: 64, offset: 1024)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !833, file: !44, line: 407, baseType: !929, size: 64, offset: 1088)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!104, !766, !106, !106}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !833, file: !44, line: 409, baseType: !933, size: 64, offset: 1152)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{null, !766, !936, !936}
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !833, file: !44, line: 410, baseType: !938, size: 64, offset: 1216)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!104, !779, !766}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !833, file: !44, line: 413, baseType: !942, size: 64, offset: 1280)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!104, !945, !405, !947}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !833, file: !44, line: 415, baseType: !949, size: 64, offset: 1344)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{null, !405}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !780, file: !44, line: 466, baseType: !106, size: 64, offset: 896)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !780, file: !44, line: 467, baseType: !954, size: 32, offset: 960)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !955, line: 8, baseType: !245)
!955 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!956 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !780, file: !44, line: 468, baseType: !289, offset: 992)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !780, file: !44, line: 469, baseType: !164, size: 128, offset: 1024)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !780, file: !44, line: 470, baseType: !107, size: 64, offset: 1152)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !775, file: !768, line: 87, baseType: !106, size: 64, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !775, file: !768, line: 94, baseType: !106, size: 64, offset: 256)
!961 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !768, line: 96, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !772, file: !768, line: 96, size: 64, elements: !963)
!963 = !{!964}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !962, file: !768, line: 101, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !103, line: 143, baseType: !108)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !768, line: 103, baseType: !967, size: 320)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !772, file: !768, line: 103, size: 320, elements: !968)
!968 = !{!969, !979, !982, !983}
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !768, line: 104, baseType: !970, size: 128)
!970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !768, line: 104, size: 128, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !970, file: !768, line: 105, baseType: !164, size: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !768, line: 106, baseType: !974, size: 128)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !970, file: !768, line: 106, size: 128, elements: !975)
!975 = !{!976, !977, !978}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !974, file: !768, line: 107, baseType: !766, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !974, file: !768, line: 109, baseType: !104, size: 32, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !974, file: !768, line: 110, baseType: !104, size: 32, offset: 96)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !967, file: !768, line: 117, baseType: !980, size: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !768, line: 117, flags: DIFlagFwdDecl)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !967, file: !768, line: 119, baseType: !107, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !768, line: 120, baseType: !984, size: 64, offset: 256)
!984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !768, line: 120, size: 64, elements: !985)
!985 = !{!986, !987, !988}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !984, file: !768, line: 121, baseType: !107, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !984, file: !768, line: 122, baseType: !106, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, scope: !984, file: !768, line: 123, baseType: !989, size: 32)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !984, file: !768, line: 123, size: 32, elements: !990)
!990 = !{!991, !992, !993}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !989, file: !768, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !989, file: !768, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !989, file: !768, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !768, line: 130, baseType: !995, size: 192)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !772, file: !768, line: 130, size: 192, elements: !996)
!996 = !{!997, !998, !999, !1000, !1001}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !995, file: !768, line: 131, baseType: !106, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !995, file: !768, line: 134, baseType: !259, size: 8, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !995, file: !768, line: 135, baseType: !259, size: 8, offset: 72)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !995, file: !768, line: 136, baseType: !792, size: 32, offset: 96)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !995, file: !768, line: 137, baseType: !7, size: 32, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !768, line: 139, baseType: !1003, size: 256)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !772, file: !768, line: 139, size: 256, elements: !1004)
!1004 = !{!1005, !1006, !1007}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1003, file: !768, line: 140, baseType: !106, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1003, file: !768, line: 141, baseType: !792, size: 32, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1003, file: !768, line: 143, baseType: !164, size: 128, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !768, line: 145, baseType: !1009, size: 256)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !772, file: !768, line: 145, size: 256, elements: !1010)
!1010 = !{!1011, !1012, !1014, !1015, !2365}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1009, file: !768, line: 146, baseType: !106, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1009, file: !768, line: 147, baseType: !1013, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !758, line: 509, baseType: !766)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1009, file: !768, line: 148, baseType: !106, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !768, line: 149, baseType: !1016, size: 64, offset: 192)
!1016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1009, file: !768, line: 149, size: 64, elements: !1017)
!1017 = !{!1018, !2364}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1016, file: !768, line: 150, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !768, line: 388, size: 7296, elements: !1021)
!1021 = !{!1022, !2360}
!1022 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !768, line: 389, baseType: !1023, size: 7296)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !768, line: 389, size: 7296, elements: !1024)
!1024 = !{!1025, !1143, !1144, !1145, !1149, !1150, !1151, !1152, !1153, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1194, !1200, !1203, !1249, !1250, !2344, !2345, !2348, !2349, !2350, !2353, !2354, !2355, !2358, !2359}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1023, file: !768, line: 390, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !768, line: 305, size: 1472, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1043, !1044, !1049, !1050, !1053, !1137, !1138, !1139, !1140, !1141}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1027, file: !768, line: 308, baseType: !106, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1027, file: !768, line: 309, baseType: !106, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1027, file: !768, line: 313, baseType: !1026, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1027, file: !768, line: 313, baseType: !1026, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1027, file: !768, line: 315, baseType: !805, size: 192, align: 64, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1027, file: !768, line: 323, baseType: !106, size: 64, offset: 448)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1027, file: !768, line: 327, baseType: !1019, size: 64, offset: 512)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1027, file: !768, line: 333, baseType: !1037, size: 64, offset: 576)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !758, line: 284, baseType: !1038)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !758, line: 284, size: 64, elements: !1039)
!1039 = !{!1040}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1038, file: !758, line: 284, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1042, line: 19, baseType: !106)
!1042 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1027, file: !768, line: 334, baseType: !106, size: 64, offset: 640)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1027, file: !768, line: 343, baseType: !1045, size: 256, offset: 704)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1027, file: !768, line: 340, size: 256, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1045, file: !768, line: 341, baseType: !805, size: 192, align: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1045, file: !768, line: 342, baseType: !106, size: 64, offset: 192)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1027, file: !768, line: 351, baseType: !164, size: 128, offset: 960)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1027, file: !768, line: 353, baseType: !1051, size: 64, offset: 1088)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !768, line: 353, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1027, file: !768, line: 356, baseType: !1054, size: 64, offset: 1152)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1056)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1057)
!1057 = !{!1058, !1062, !1063, !1067, !1071, !1111, !1115, !1119, !1123, !1124, !1125, !1129, !1133}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1056, file: !14, line: 558, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !1026}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1056, file: !14, line: 559, baseType: !1059, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1056, file: !14, line: 560, baseType: !1064, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!104, !1026, !106}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1056, file: !14, line: 561, baseType: !1068, size: 64, offset: 192)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!104, !1026}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1056, file: !14, line: 562, baseType: !1072, size: 64, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !768, line: 682, baseType: !7)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1078)
!1078 = !{!1079, !1080, !1081, !1082, !1083, !1084, !1091, !1098, !1104, !1105, !1106, !1108, !1110}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1077, file: !14, line: 509, baseType: !1026, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1077, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1077, file: !14, line: 511, baseType: !102, size: 32, offset: 96)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1077, file: !14, line: 512, baseType: !106, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1077, file: !14, line: 513, baseType: !106, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1077, file: !14, line: 514, baseType: !1085, size: 64, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !758, line: 385, baseType: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !758, line: 385, size: 64, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1087, file: !758, line: 385, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1042, line: 15, baseType: !106)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1077, file: !14, line: 516, baseType: !1092, size: 64, offset: 320)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !758, line: 359, baseType: !1094)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !758, line: 359, size: 64, elements: !1095)
!1095 = !{!1096}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1094, file: !758, line: 359, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1042, line: 16, baseType: !106)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1077, file: !14, line: 519, baseType: !1099, size: 64, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1042, line: 21, baseType: !1100)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1042, line: 21, size: 64, elements: !1101)
!1101 = !{!1102}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1100, file: !1042, line: 21, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1042, line: 14, baseType: !106)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1077, file: !14, line: 521, baseType: !766, size: 64, offset: 448)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1077, file: !14, line: 522, baseType: !766, size: 64, offset: 512)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1077, file: !14, line: 528, baseType: !1107, size: 64, offset: 576)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1077, file: !14, line: 532, baseType: !1109, size: 64, offset: 640)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1077, file: !14, line: 536, baseType: !1013, size: 64, offset: 704)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1056, file: !14, line: 563, baseType: !1112, size: 64, offset: 320)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!1075, !1076, !13}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1056, file: !14, line: 565, baseType: !1116, size: 64, offset: 384)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !1076, !106, !106}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1056, file: !14, line: 567, baseType: !1120, size: 64, offset: 448)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!106, !1026}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1056, file: !14, line: 571, baseType: !1072, size: 64, offset: 512)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1056, file: !14, line: 574, baseType: !1072, size: 64, offset: 576)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1056, file: !14, line: 579, baseType: !1126, size: 64, offset: 640)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!104, !1026, !106, !107, !104, !104}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1056, file: !14, line: 585, baseType: !1130, size: 64, offset: 704)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!170, !1026}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1056, file: !14, line: 615, baseType: !1134, size: 64, offset: 768)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!766, !1026, !106}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1027, file: !768, line: 359, baseType: !106, size: 64, offset: 1216)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1027, file: !768, line: 361, baseType: !405, size: 64, offset: 1280)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1027, file: !768, line: 362, baseType: !107, size: 64, offset: 1344)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1027, file: !768, line: 365, baseType: !816, size: 64, offset: 1408)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1027, file: !768, line: 373, baseType: !1142, offset: 1472)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !768, line: 296, elements: !303)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1023, file: !768, line: 391, baseType: !801, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1023, file: !768, line: 392, baseType: !108, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1023, file: !768, line: 394, baseType: !1146, size: 64, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!106, !405, !106, !106, !106, !106}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1023, file: !768, line: 398, baseType: !106, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1023, file: !768, line: 399, baseType: !106, size: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1023, file: !768, line: 405, baseType: !106, size: 64, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1023, file: !768, line: 406, baseType: !106, size: 64, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1023, file: !768, line: 407, baseType: !1154, size: 64, offset: 512)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !758, line: 286, baseType: !1156)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !758, line: 286, size: 64, elements: !1157)
!1157 = !{!1158}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1156, file: !758, line: 286, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1042, line: 18, baseType: !106)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1023, file: !768, line: 416, baseType: !792, size: 32, offset: 576)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1023, file: !768, line: 428, baseType: !792, size: 32, offset: 608)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1023, file: !768, line: 437, baseType: !792, size: 32, offset: 640)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1023, file: !768, line: 447, baseType: !792, size: 32, offset: 672)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1023, file: !768, line: 450, baseType: !816, size: 64, offset: 704)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1023, file: !768, line: 452, baseType: !104, size: 32, offset: 768)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1023, file: !768, line: 454, baseType: !289, offset: 800)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1023, file: !768, line: 457, baseType: !812, size: 256, offset: 832)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1023, file: !768, line: 459, baseType: !164, size: 128, offset: 1088)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1023, file: !768, line: 466, baseType: !106, size: 64, offset: 1216)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1023, file: !768, line: 467, baseType: !106, size: 64, offset: 1280)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1023, file: !768, line: 469, baseType: !106, size: 64, offset: 1344)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1023, file: !768, line: 470, baseType: !106, size: 64, offset: 1408)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1023, file: !768, line: 471, baseType: !818, size: 64, offset: 1472)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1023, file: !768, line: 472, baseType: !106, size: 64, offset: 1536)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1023, file: !768, line: 473, baseType: !106, size: 64, offset: 1600)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1023, file: !768, line: 474, baseType: !106, size: 64, offset: 1664)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1023, file: !768, line: 475, baseType: !106, size: 64, offset: 1728)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1023, file: !768, line: 477, baseType: !289, offset: 1792)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1023, file: !768, line: 478, baseType: !106, size: 64, offset: 1792)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1023, file: !768, line: 478, baseType: !106, size: 64, offset: 1856)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1023, file: !768, line: 478, baseType: !106, size: 64, offset: 1920)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1023, file: !768, line: 478, baseType: !106, size: 64, offset: 1984)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1023, file: !768, line: 479, baseType: !106, size: 64, offset: 2048)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1023, file: !768, line: 479, baseType: !106, size: 64, offset: 2112)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1023, file: !768, line: 479, baseType: !106, size: 64, offset: 2176)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1023, file: !768, line: 480, baseType: !106, size: 64, offset: 2240)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1023, file: !768, line: 480, baseType: !106, size: 64, offset: 2304)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1023, file: !768, line: 480, baseType: !106, size: 64, offset: 2368)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1023, file: !768, line: 480, baseType: !106, size: 64, offset: 2432)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1023, file: !768, line: 482, baseType: !1191, size: 2816, offset: 2496)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 2816, elements: !1192)
!1192 = !{!1193}
!1193 = !DISubrange(count: 44)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1023, file: !768, line: 488, baseType: !1195, size: 256, offset: 5312)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1196, line: 60, size: 256, elements: !1197)
!1196 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1197 = !{!1198}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1195, file: !1196, line: 61, baseType: !1199, size: 256)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 256, elements: !220)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1023, file: !768, line: 490, baseType: !1201, size: 64, offset: 5568)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !768, line: 490, flags: DIFlagFwdDecl)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1023, file: !768, line: 493, baseType: !1204, size: 896, offset: 5632)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1205, line: 53, baseType: !1206)
!1205 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1205, line: 13, size: 896, elements: !1207)
!1207 = !{!1208, !1209, !1210, !1211, !1214, !1215, !1222, !1223, !1243, !1244, !1245}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1206, file: !1205, line: 18, baseType: !108, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1206, file: !1205, line: 28, baseType: !818, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1206, file: !1205, line: 31, baseType: !812, size: 256, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1206, file: !1205, line: 32, baseType: !1212, size: 64, offset: 384)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1205, line: 32, flags: DIFlagFwdDecl)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1206, file: !1205, line: 37, baseType: !268, size: 16, offset: 448)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1206, file: !1205, line: 40, baseType: !1216, size: 192, offset: 512)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1217, line: 53, size: 192, elements: !1218)
!1217 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1218 = !{!1219, !1220, !1221}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1216, file: !1217, line: 54, baseType: !816, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1216, file: !1217, line: 55, baseType: !289, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1216, file: !1217, line: 59, baseType: !164, size: 128, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1206, file: !1205, line: 41, baseType: !107, size: 64, offset: 704)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1206, file: !1205, line: 42, baseType: !1224, size: 64, offset: 768)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1226)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1227, line: 13, size: 896, elements: !1228)
!1227 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1226, file: !1227, line: 14, baseType: !107, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1226, file: !1227, line: 15, baseType: !106, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1226, file: !1227, line: 17, baseType: !106, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1226, file: !1227, line: 17, baseType: !106, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1226, file: !1227, line: 19, baseType: !115, size: 64, offset: 256)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1226, file: !1227, line: 21, baseType: !115, size: 64, offset: 320)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1226, file: !1227, line: 22, baseType: !115, size: 64, offset: 384)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1226, file: !1227, line: 23, baseType: !115, size: 64, offset: 448)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1226, file: !1227, line: 24, baseType: !115, size: 64, offset: 512)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1226, file: !1227, line: 25, baseType: !115, size: 64, offset: 576)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1226, file: !1227, line: 26, baseType: !115, size: 64, offset: 640)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1226, file: !1227, line: 27, baseType: !115, size: 64, offset: 704)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1226, file: !1227, line: 28, baseType: !115, size: 64, offset: 768)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1226, file: !1227, line: 29, baseType: !115, size: 64, offset: 832)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1206, file: !1205, line: 44, baseType: !792, size: 32, offset: 832)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1206, file: !1205, line: 50, baseType: !904, size: 16, offset: 864)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1206, file: !1205, line: 51, baseType: !1246, size: 16, offset: 880)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !109, line: 18, baseType: !1247)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !111, line: 23, baseType: !1248)
!1248 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1023, file: !768, line: 495, baseType: !106, size: 64, offset: 6528)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1023, file: !768, line: 497, baseType: !1251, size: 64, offset: 6592)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !768, line: 381, size: 384, elements: !1253)
!1253 = !{!1254, !1255, !2343}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1252, file: !768, line: 382, baseType: !792, size: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1252, file: !768, line: 383, baseType: !1256, size: 128, offset: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !768, line: 376, size: 128, elements: !1257)
!1257 = !{!1258, !2341}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1256, file: !768, line: 377, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1261, line: 640, size: 48640, elements: !1262)
!1261 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1262 = !{!1263, !1269, !1270, !1271, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1288, !1306, !1317, !1402, !1403, !1404, !1408, !1409, !1411, !1412, !1413, !1414, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1491, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1529, !1531, !1532, !1533, !1545, !1546, !1547, !1548, !1549, !1550, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1574, !1579, !1763, !1764, !1765, !1766, !1770, !1773, !1776, !1779, !1782, !1785, !1886, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1930, !1931, !1932, !1933, !1934, !1939, !1940, !1941, !1944, !1945, !1948, !1951, !1954, !1957, !2000, !2003, !2004, !2083, !2084, !2087, !2088, !2091, !2092, !2093, !2097, !2098, !2099, !2112, !2113, !2114, !2124, !2129, !2132, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1260, file: !1261, line: 646, baseType: !1264, size: 128)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1265, line: 56, size: 128, elements: !1266)
!1265 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1266 = !{!1267, !1268}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1264, file: !1265, line: 57, baseType: !106, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1264, file: !1265, line: 58, baseType: !245, size: 32, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1260, file: !1261, line: 649, baseType: !130, size: 64, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1260, file: !1261, line: 657, baseType: !107, size: 64, offset: 192)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1260, file: !1261, line: 658, baseType: !1272, size: 32, offset: 256)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1273, line: 113, baseType: !1274)
!1273 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1273, line: 111, size: 32, elements: !1275)
!1275 = !{!1276}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1274, file: !1273, line: 112, baseType: !792, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1260, file: !1261, line: 660, baseType: !7, size: 32, offset: 288)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1260, file: !1261, line: 661, baseType: !7, size: 32, offset: 320)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1260, file: !1261, line: 684, baseType: !104, size: 32, offset: 352)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1260, file: !1261, line: 686, baseType: !104, size: 32, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1260, file: !1261, line: 687, baseType: !104, size: 32, offset: 416)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1260, file: !1261, line: 688, baseType: !104, size: 32, offset: 448)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1260, file: !1261, line: 689, baseType: !7, size: 32, offset: 480)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1260, file: !1261, line: 691, baseType: !1285, size: 64, offset: 512)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1287)
!1287 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1261, line: 691, flags: DIFlagFwdDecl)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1260, file: !1261, line: 692, baseType: !1289, size: 832, offset: 576)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1261, line: 451, size: 832, elements: !1290)
!1290 = !{!1291, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1289, file: !1261, line: 453, baseType: !1292, size: 128)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1261, line: 325, size: 128, elements: !1293)
!1293 = !{!1294, !1295}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1292, file: !1261, line: 326, baseType: !106, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1292, file: !1261, line: 327, baseType: !245, size: 32, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1289, file: !1261, line: 454, baseType: !805, size: 192, align: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1289, file: !1261, line: 455, baseType: !164, size: 128, offset: 320)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1289, file: !1261, line: 456, baseType: !7, size: 32, offset: 448)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1289, file: !1261, line: 458, baseType: !108, size: 64, offset: 512)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1289, file: !1261, line: 459, baseType: !108, size: 64, offset: 576)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1289, file: !1261, line: 460, baseType: !108, size: 64, offset: 640)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1289, file: !1261, line: 461, baseType: !108, size: 64, offset: 704)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1289, file: !1261, line: 463, baseType: !108, size: 64, offset: 768)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1289, file: !1261, line: 465, baseType: !1305, offset: 832)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1261, line: 415, elements: !303)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1260, file: !1261, line: 693, baseType: !1307, size: 384, offset: 1408)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1261, line: 489, size: 384, elements: !1308)
!1308 = !{!1309, !1310, !1311, !1312, !1313, !1314, !1315}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1307, file: !1261, line: 490, baseType: !164, size: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1307, file: !1261, line: 491, baseType: !106, size: 64, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1307, file: !1261, line: 492, baseType: !106, size: 64, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1307, file: !1261, line: 493, baseType: !7, size: 32, offset: 256)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1307, file: !1261, line: 494, baseType: !268, size: 16, offset: 288)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1307, file: !1261, line: 495, baseType: !268, size: 16, offset: 304)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1307, file: !1261, line: 497, baseType: !1316, size: 64, offset: 320)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1260, file: !1261, line: 697, baseType: !1318, size: 1792, offset: 1792)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1261, line: 507, size: 1792, elements: !1319)
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1399, !1400}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1318, file: !1261, line: 508, baseType: !805, size: 192, align: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1318, file: !1261, line: 515, baseType: !108, size: 64, offset: 192)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1318, file: !1261, line: 516, baseType: !108, size: 64, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1318, file: !1261, line: 517, baseType: !108, size: 64, offset: 320)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1318, file: !1261, line: 518, baseType: !108, size: 64, offset: 384)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1318, file: !1261, line: 519, baseType: !108, size: 64, offset: 448)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1318, file: !1261, line: 526, baseType: !822, size: 64, offset: 512)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1318, file: !1261, line: 527, baseType: !108, size: 64, offset: 576)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1318, file: !1261, line: 528, baseType: !7, size: 32, offset: 640)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1318, file: !1261, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1318, file: !1261, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1318, file: !1261, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1318, file: !1261, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1318, file: !1261, line: 563, baseType: !1334, size: 512, offset: 704)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1335)
!1335 = !{!1336, !1344, !1345, !1350, !1393, !1396, !1397, !1398}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1334, file: !20, line: 119, baseType: !1337, size: 256)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1338, line: 9, size: 256, elements: !1339)
!1338 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1339 = !{!1340, !1341}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1337, file: !1338, line: 10, baseType: !805, size: 192, align: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1337, file: !1338, line: 11, baseType: !1342, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1343, line: 29, baseType: !822)
!1343 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1334, file: !20, line: 120, baseType: !1342, size: 64, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1334, file: !20, line: 121, baseType: !1346, size: 64, offset: 320)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!19, !1349}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1334, file: !20, line: 122, baseType: !1351, size: 64, offset: 384)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1353)
!1353 = !{!1354, !1374, !1375, !1378, !1383, !1384, !1388, !1392}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1352, file: !20, line: 160, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1357)
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1356, file: !20, line: 215, baseType: !825)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1356, file: !20, line: 216, baseType: !7, size: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1356, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1356, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1356, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1356, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1356, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1356, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1356, file: !20, line: 233, baseType: !1342, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1356, file: !20, line: 234, baseType: !1349, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1356, file: !20, line: 235, baseType: !1342, size: 64, offset: 256)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1356, file: !20, line: 236, baseType: !1349, size: 64, offset: 320)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1356, file: !20, line: 237, baseType: !1371, size: 4096, offset: 512)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1352, size: 4096, elements: !1372)
!1372 = !{!1373}
!1373 = !DISubrange(count: 8)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1352, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1352, file: !20, line: 162, baseType: !1376, size: 32, offset: 96)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !103, line: 27, baseType: !1377)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !363, line: 96, baseType: !104)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1352, file: !20, line: 163, baseType: !1379, size: 32, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !441, line: 276, baseType: !1380)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !441, line: 276, size: 32, elements: !1381)
!1381 = !{!1382}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1380, file: !441, line: 276, baseType: !445, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1352, file: !20, line: 164, baseType: !1349, size: 64, offset: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1352, file: !20, line: 165, baseType: !1385, size: 128, offset: 256)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1338, line: 14, size: 128, elements: !1386)
!1386 = !{!1387}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1385, file: !1338, line: 15, baseType: !797, size: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1352, file: !20, line: 166, baseType: !1389, size: 64, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!1342}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1352, file: !20, line: 167, baseType: !1342, size: 64, offset: 448)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1334, file: !20, line: 123, baseType: !1394, size: 8, offset: 448)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !109, line: 17, baseType: !1395)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !111, line: 21, baseType: !259)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1334, file: !20, line: 124, baseType: !1394, size: 8, offset: 456)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1334, file: !20, line: 125, baseType: !1394, size: 8, offset: 464)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1334, file: !20, line: 126, baseType: !1394, size: 8, offset: 472)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1318, file: !1261, line: 572, baseType: !1334, size: 512, offset: 1216)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1318, file: !1261, line: 580, baseType: !1401, size: 64, offset: 1728)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1260, file: !1261, line: 721, baseType: !7, size: 32, offset: 3584)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1260, file: !1261, line: 722, baseType: !104, size: 32, offset: 3616)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1260, file: !1261, line: 723, baseType: !1405, size: 64, offset: 3648)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1407)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !120, line: 17, baseType: !119)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1260, file: !1261, line: 724, baseType: !1407, size: 64, offset: 3712)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1260, file: !1261, line: 749, baseType: !1410, offset: 3776)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1261, line: 290, elements: !303)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1260, file: !1261, line: 751, baseType: !164, size: 128, offset: 3776)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1260, file: !1261, line: 757, baseType: !1019, size: 64, offset: 3904)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1260, file: !1261, line: 758, baseType: !1019, size: 64, offset: 3968)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1260, file: !1261, line: 761, baseType: !1415, size: 320, offset: 4032)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1196, line: 34, size: 320, elements: !1416)
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1415, file: !1196, line: 35, baseType: !108, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1415, file: !1196, line: 36, baseType: !1419, size: 256, offset: 64)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1026, size: 256, elements: !220)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1260, file: !1261, line: 766, baseType: !104, size: 32, offset: 4352)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1260, file: !1261, line: 767, baseType: !104, size: 32, offset: 4384)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1260, file: !1261, line: 768, baseType: !104, size: 32, offset: 4416)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1260, file: !1261, line: 770, baseType: !104, size: 32, offset: 4448)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1260, file: !1261, line: 772, baseType: !106, size: 64, offset: 4480)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1260, file: !1261, line: 775, baseType: !7, size: 32, offset: 4544)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1260, file: !1261, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1260, file: !1261, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1260, file: !1261, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1260, file: !1261, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1260, file: !1261, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1260, file: !1261, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1260, file: !1261, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1260, file: !1261, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1260, file: !1261, line: 831, baseType: !106, size: 64, offset: 4672)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1260, file: !1261, line: 833, baseType: !1436, size: 384, offset: 4736)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1437)
!1437 = !{!1438, !1443}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1436, file: !25, line: 26, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!115, !1442}
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, scope: !1436, file: !25, line: 27, baseType: !1444, size: 320, offset: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1436, file: !25, line: 27, size: 320, elements: !1445)
!1445 = !{!1446, !1455, !1481}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1444, file: !25, line: 36, baseType: !1447, size: 320)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1444, file: !25, line: 29, size: 320, elements: !1448)
!1448 = !{!1449, !1450, !1451, !1452, !1453, !1454}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1447, file: !25, line: 30, baseType: !244, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1447, file: !25, line: 31, baseType: !245, size: 32, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1447, file: !25, line: 32, baseType: !245, size: 32, offset: 96)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1447, file: !25, line: 33, baseType: !245, size: 32, offset: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1447, file: !25, line: 34, baseType: !108, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1447, file: !25, line: 35, baseType: !244, size: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1444, file: !25, line: 46, baseType: !1456, size: 192)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1444, file: !25, line: 38, size: 192, elements: !1457)
!1457 = !{!1458, !1459, !1460, !1480}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1456, file: !25, line: 39, baseType: !1376, size: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1456, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, scope: !1456, file: !25, line: 41, baseType: !1461, size: 64, offset: 64)
!1461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1456, file: !25, line: 41, size: 64, elements: !1462)
!1462 = !{!1463, !1471}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1461, file: !25, line: 42, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1466, line: 7, size: 128, elements: !1467)
!1466 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1467 = !{!1468, !1470}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1465, file: !1466, line: 8, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !363, line: 93, baseType: !578)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1465, file: !1466, line: 9, baseType: !578, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1461, file: !25, line: 43, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1474, line: 7, size: 64, elements: !1475)
!1474 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1475 = !{!1476, !1479}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1473, file: !1474, line: 8, baseType: !1477, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1474, line: 5, baseType: !1478)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !109, line: 20, baseType: !113)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1473, file: !1474, line: 9, baseType: !1478, size: 32, offset: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1456, file: !25, line: 45, baseType: !108, size: 64, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1444, file: !25, line: 54, baseType: !1482, size: 256)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1444, file: !25, line: 48, size: 256, elements: !1483)
!1483 = !{!1484, !1487, !1488, !1489, !1490}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1482, file: !25, line: 49, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1482, file: !25, line: 50, baseType: !104, size: 32, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1482, file: !25, line: 51, baseType: !104, size: 32, offset: 96)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1482, file: !25, line: 52, baseType: !106, size: 64, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1482, file: !25, line: 53, baseType: !106, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1260, file: !1261, line: 835, baseType: !1492, size: 32, offset: 5120)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !103, line: 22, baseType: !1493)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !363, line: 28, baseType: !104)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1260, file: !1261, line: 836, baseType: !1492, size: 32, offset: 5152)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1260, file: !1261, line: 840, baseType: !106, size: 64, offset: 5184)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1260, file: !1261, line: 849, baseType: !1259, size: 64, offset: 5248)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1260, file: !1261, line: 852, baseType: !1259, size: 64, offset: 5312)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1260, file: !1261, line: 857, baseType: !164, size: 128, offset: 5376)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1260, file: !1261, line: 858, baseType: !164, size: 128, offset: 5504)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1260, file: !1261, line: 859, baseType: !1259, size: 64, offset: 5632)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1260, file: !1261, line: 867, baseType: !164, size: 128, offset: 5696)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1260, file: !1261, line: 868, baseType: !164, size: 128, offset: 5824)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1260, file: !1261, line: 871, baseType: !1504, size: 64, offset: 5952)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1506)
!1506 = !{!1507, !1508, !1509, !1510, !1512, !1513, !1520, !1521}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1505, file: !53, line: 61, baseType: !1272, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1505, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1505, file: !53, line: 63, baseType: !289, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1505, file: !53, line: 65, baseType: !1511, size: 256, offset: 64)
!1511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 256, elements: !220)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1505, file: !53, line: 66, baseType: !680, size: 64, offset: 320)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1505, file: !53, line: 68, baseType: !1514, size: 128, offset: 384)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1515, line: 40, baseType: !1516)
!1515 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1515, line: 36, size: 128, elements: !1517)
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1516, file: !1515, line: 37, baseType: !289)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1516, file: !1515, line: 38, baseType: !164, size: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1505, file: !53, line: 69, baseType: !418, size: 128, align: 64, offset: 512)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1505, file: !53, line: 70, baseType: !1522, size: 128, offset: 640)
!1522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1523, size: 128, elements: !124)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1524)
!1524 = !{!1525, !1526}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1523, file: !53, line: 55, baseType: !104, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1523, file: !53, line: 56, baseType: !1527, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1260, file: !1261, line: 872, baseType: !1530, size: 512, offset: 6016)
!1530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 512, elements: !220)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1260, file: !1261, line: 873, baseType: !164, size: 128, offset: 6528)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1260, file: !1261, line: 874, baseType: !164, size: 128, offset: 6656)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1260, file: !1261, line: 876, baseType: !1534, size: 64, offset: 6784)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1536, line: 26, size: 192, elements: !1537)
!1536 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1537 = !{!1538, !1539}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1535, file: !1536, line: 27, baseType: !7, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1535, file: !1536, line: 28, baseType: !1540, size: 128, offset: 64)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1541, line: 43, size: 128, elements: !1542)
!1541 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1542 = !{!1543, !1544}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1540, file: !1541, line: 44, baseType: !825)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1540, file: !1541, line: 45, baseType: !164, size: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1260, file: !1261, line: 879, baseType: !750, size: 64, offset: 6848)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1260, file: !1261, line: 882, baseType: !750, size: 64, offset: 6912)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1260, file: !1261, line: 884, baseType: !108, size: 64, offset: 6976)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1260, file: !1261, line: 885, baseType: !108, size: 64, offset: 7040)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1260, file: !1261, line: 890, baseType: !108, size: 64, offset: 7104)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1260, file: !1261, line: 891, baseType: !1551, size: 128, offset: 7168)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1261, line: 242, size: 128, elements: !1552)
!1552 = !{!1553, !1554, !1555}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1551, file: !1261, line: 244, baseType: !108, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1551, file: !1261, line: 245, baseType: !108, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1551, file: !1261, line: 246, baseType: !825, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1260, file: !1261, line: 900, baseType: !106, size: 64, offset: 7296)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1260, file: !1261, line: 901, baseType: !106, size: 64, offset: 7360)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1260, file: !1261, line: 904, baseType: !108, size: 64, offset: 7424)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1260, file: !1261, line: 907, baseType: !108, size: 64, offset: 7488)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1260, file: !1261, line: 910, baseType: !106, size: 64, offset: 7552)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1260, file: !1261, line: 911, baseType: !106, size: 64, offset: 7616)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1260, file: !1261, line: 914, baseType: !1563, size: 640, offset: 7680)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1564, line: 123, size: 640, elements: !1565)
!1564 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1565 = !{!1566, !1572, !1573}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1563, file: !1564, line: 124, baseType: !1567, size: 576)
!1567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1568, size: 576, elements: !331)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1564, line: 108, size: 192, elements: !1569)
!1569 = !{!1570, !1571}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1568, file: !1564, line: 109, baseType: !108, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1568, file: !1564, line: 110, baseType: !1385, size: 128, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1563, file: !1564, line: 125, baseType: !7, size: 32, offset: 576)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1563, file: !1564, line: 126, baseType: !7, size: 32, offset: 608)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1260, file: !1261, line: 917, baseType: !1575, size: 192, offset: 8320)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1564, line: 134, size: 192, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1575, file: !1564, line: 135, baseType: !418, size: 128, align: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1575, file: !1564, line: 136, baseType: !7, size: 32, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1260, file: !1261, line: 923, baseType: !1580, size: 64, offset: 8512)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1582)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1583, line: 111, size: 1280, elements: !1584)
!1583 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1584 = !{!1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1604, !1605, !1606, !1607, !1608, !1609, !1716, !1717, !1718, !1719, !1745, !1748, !1758}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1582, file: !1583, line: 112, baseType: !792, size: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1582, file: !1583, line: 120, baseType: !480, size: 32, offset: 32)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1582, file: !1583, line: 121, baseType: !488, size: 32, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1582, file: !1583, line: 122, baseType: !480, size: 32, offset: 96)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1582, file: !1583, line: 123, baseType: !488, size: 32, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1582, file: !1583, line: 124, baseType: !480, size: 32, offset: 160)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1582, file: !1583, line: 125, baseType: !488, size: 32, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1582, file: !1583, line: 126, baseType: !480, size: 32, offset: 224)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1582, file: !1583, line: 127, baseType: !488, size: 32, offset: 256)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1582, file: !1583, line: 128, baseType: !7, size: 32, offset: 288)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1582, file: !1583, line: 129, baseType: !1596, size: 64, offset: 320)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1597, line: 26, baseType: !1598)
!1597 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1597, line: 24, size: 64, elements: !1599)
!1599 = !{!1600}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1598, file: !1597, line: 25, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 64, elements: !1602)
!1602 = !{!1603}
!1603 = !DISubrange(count: 2)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1582, file: !1583, line: 130, baseType: !1596, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1582, file: !1583, line: 131, baseType: !1596, size: 64, offset: 448)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1582, file: !1583, line: 132, baseType: !1596, size: 64, offset: 512)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1582, file: !1583, line: 133, baseType: !1596, size: 64, offset: 576)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1582, file: !1583, line: 135, baseType: !259, size: 8, offset: 640)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1582, file: !1583, line: 137, baseType: !1610, size: 64, offset: 704)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1612, line: 189, size: 1664, elements: !1613)
!1612 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1613 = !{!1614, !1615, !1618, !1623, !1624, !1627, !1628, !1633, !1634, !1635, !1636, !1638, !1639, !1640, !1641, !1642, !1680, !1701}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1611, file: !1612, line: 190, baseType: !1272, size: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1611, file: !1612, line: 191, baseType: !1616, size: 32, offset: 32)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1612, line: 28, baseType: !1617)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !103, line: 98, baseType: !1478)
!1618 = !DIDerivedType(tag: DW_TAG_member, scope: !1611, file: !1612, line: 192, baseType: !1619, size: 192, offset: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1611, file: !1612, line: 192, size: 192, elements: !1620)
!1620 = !{!1621, !1622}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1619, file: !1612, line: 193, baseType: !164, size: 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1619, file: !1612, line: 194, baseType: !805, size: 192, align: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1611, file: !1612, line: 199, baseType: !812, size: 256, offset: 256)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1611, file: !1612, line: 200, baseType: !1625, size: 64, offset: 512)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1612, line: 200, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1611, file: !1612, line: 201, baseType: !107, size: 64, offset: 576)
!1628 = !DIDerivedType(tag: DW_TAG_member, scope: !1611, file: !1612, line: 202, baseType: !1629, size: 64, offset: 640)
!1629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1611, file: !1612, line: 202, size: 64, elements: !1630)
!1630 = !{!1631, !1632}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1629, file: !1612, line: 203, baseType: !584, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1629, file: !1612, line: 204, baseType: !584, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1611, file: !1612, line: 206, baseType: !584, size: 64, offset: 704)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1611, file: !1612, line: 207, baseType: !480, size: 32, offset: 768)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1611, file: !1612, line: 208, baseType: !488, size: 32, offset: 800)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1611, file: !1612, line: 209, baseType: !1637, size: 32, offset: 832)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1612, line: 31, baseType: !604)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1611, file: !1612, line: 210, baseType: !268, size: 16, offset: 864)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1611, file: !1612, line: 211, baseType: !268, size: 16, offset: 880)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1611, file: !1612, line: 215, baseType: !1248, size: 16, offset: 896)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1611, file: !1612, line: 222, baseType: !106, size: 64, offset: 960)
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1611, file: !1612, line: 239, baseType: !1643, size: 320, offset: 1024)
!1643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1611, file: !1612, line: 239, size: 320, elements: !1644)
!1644 = !{!1645, !1672}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1643, file: !1612, line: 240, baseType: !1646, size: 320)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1612, line: 108, size: 320, elements: !1647)
!1647 = !{!1648, !1649, !1661, !1664, !1671}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1646, file: !1612, line: 110, baseType: !106, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, scope: !1646, file: !1612, line: 111, baseType: !1650, size: 64, offset: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1646, file: !1612, line: 111, size: 64, elements: !1651)
!1651 = !{!1652, !1660}
!1652 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !1612, line: 112, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1650, file: !1612, line: 112, size: 64, elements: !1654)
!1654 = !{!1655, !1656}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1653, file: !1612, line: 114, baseType: !904, size: 16)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1653, file: !1612, line: 115, baseType: !1657, size: 48, offset: 16)
!1657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 48, elements: !1658)
!1658 = !{!1659}
!1659 = !DISubrange(count: 6)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1650, file: !1612, line: 121, baseType: !106, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1646, file: !1612, line: 123, baseType: !1662, size: 64, offset: 128)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1612, line: 96, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1646, file: !1612, line: 124, baseType: !1665, size: 64, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1612, line: 102, size: 192, elements: !1667)
!1667 = !{!1668, !1669, !1670}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1666, file: !1612, line: 103, baseType: !418, size: 128, align: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1666, file: !1612, line: 104, baseType: !1272, size: 32, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1666, file: !1612, line: 105, baseType: !535, size: 8, offset: 160)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1646, file: !1612, line: 125, baseType: !170, size: 64, offset: 256)
!1672 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !1612, line: 241, baseType: !1673, size: 320)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1643, file: !1612, line: 241, size: 320, elements: !1674)
!1674 = !{!1675, !1676, !1677, !1678, !1679}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1673, file: !1612, line: 242, baseType: !106, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1673, file: !1612, line: 243, baseType: !106, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1673, file: !1612, line: 244, baseType: !1662, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1673, file: !1612, line: 245, baseType: !1665, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1673, file: !1612, line: 246, baseType: !330, size: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, scope: !1611, file: !1612, line: 254, baseType: !1681, size: 256, offset: 1344)
!1681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1611, file: !1612, line: 254, size: 256, elements: !1682)
!1682 = !{!1683, !1689}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1681, file: !1612, line: 255, baseType: !1684, size: 256)
!1684 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1612, line: 128, size: 256, elements: !1685)
!1685 = !{!1686, !1687}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1684, file: !1612, line: 129, baseType: !107, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1684, file: !1612, line: 130, baseType: !1688, size: 256)
!1688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 256, elements: !220)
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !1612, line: 256, baseType: !1690, size: 256)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1681, file: !1612, line: 256, size: 256, elements: !1691)
!1691 = !{!1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1690, file: !1612, line: 258, baseType: !164, size: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1690, file: !1612, line: 259, baseType: !1694, size: 128, offset: 128)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1695, line: 22, size: 128, elements: !1696)
!1695 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1696 = !{!1697, !1700}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1694, file: !1695, line: 23, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1695, line: 23, flags: DIFlagFwdDecl)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1694, file: !1695, line: 24, baseType: !106, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1611, file: !1612, line: 274, baseType: !1702, size: 64, offset: 1600)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1612, line: 170, size: 192, elements: !1704)
!1704 = !{!1705, !1714, !1715}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1703, file: !1612, line: 171, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1612, line: 165, baseType: !1707)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!104, !1610, !1710, !1712, !1610}
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1663)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1684)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1703, file: !1612, line: 172, baseType: !1610, size: 64, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1703, file: !1612, line: 173, baseType: !1662, size: 64, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1582, file: !1583, line: 138, baseType: !1610, size: 64, offset: 768)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1582, file: !1583, line: 139, baseType: !1610, size: 64, offset: 832)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1582, file: !1583, line: 140, baseType: !1610, size: 64, offset: 896)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1582, file: !1583, line: 145, baseType: !1720, size: 64, offset: 960)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1722, line: 13, size: 896, elements: !1723)
!1722 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1723 = !{!1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1721, file: !1722, line: 14, baseType: !1272, size: 32)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1721, file: !1722, line: 15, baseType: !792, size: 32, offset: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1721, file: !1722, line: 16, baseType: !792, size: 32, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1721, file: !1722, line: 21, baseType: !816, size: 64, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1721, file: !1722, line: 27, baseType: !106, size: 64, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1721, file: !1722, line: 28, baseType: !106, size: 64, offset: 256)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1721, file: !1722, line: 29, baseType: !816, size: 64, offset: 320)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1721, file: !1722, line: 32, baseType: !684, size: 128, offset: 384)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1721, file: !1722, line: 33, baseType: !480, size: 32, offset: 512)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1721, file: !1722, line: 37, baseType: !816, size: 64, offset: 576)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1721, file: !1722, line: 44, baseType: !1735, size: 256, offset: 640)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1736, line: 15, size: 256, elements: !1737)
!1736 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1737 = !{!1738, !1739, !1740, !1741, !1742, !1743, !1744}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1735, file: !1736, line: 16, baseType: !825)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1735, file: !1736, line: 18, baseType: !104, size: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1735, file: !1736, line: 19, baseType: !104, size: 32, offset: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1735, file: !1736, line: 20, baseType: !104, size: 32, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1735, file: !1736, line: 21, baseType: !104, size: 32, offset: 96)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1735, file: !1736, line: 22, baseType: !106, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1735, file: !1736, line: 23, baseType: !106, size: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1582, file: !1583, line: 146, baseType: !1746, size: 64, offset: 1024)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !481, line: 18, flags: DIFlagFwdDecl)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1582, file: !1583, line: 147, baseType: !1749, size: 64, offset: 1088)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1583, line: 25, size: 64, elements: !1751)
!1751 = !{!1752, !1753, !1754}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1750, file: !1583, line: 26, baseType: !792, size: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1750, file: !1583, line: 27, baseType: !104, size: 32, offset: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1750, file: !1583, line: 28, baseType: !1755, offset: 64)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, elements: !1756)
!1756 = !{!1757}
!1757 = !DISubrange(count: 0)
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !1583, line: 149, baseType: !1759, size: 128, offset: 1152)
!1759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1582, file: !1583, line: 149, size: 128, elements: !1760)
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1759, file: !1583, line: 150, baseType: !104, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1759, file: !1583, line: 151, baseType: !418, size: 128, align: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1260, file: !1261, line: 926, baseType: !1580, size: 64, offset: 8576)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1260, file: !1261, line: 929, baseType: !1580, size: 64, offset: 8640)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1260, file: !1261, line: 933, baseType: !1610, size: 64, offset: 8704)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1260, file: !1261, line: 943, baseType: !1767, size: 128, offset: 8768)
!1767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 128, elements: !1768)
!1768 = !{!1769}
!1769 = !DISubrange(count: 16)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1260, file: !1261, line: 945, baseType: !1771, size: 64, offset: 8896)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1261, line: 49, flags: DIFlagFwdDecl)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1260, file: !1261, line: 956, baseType: !1774, size: 64, offset: 8960)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1261, line: 45, flags: DIFlagFwdDecl)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1260, file: !1261, line: 959, baseType: !1777, size: 64, offset: 9024)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1261, line: 959, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1260, file: !1261, line: 962, baseType: !1780, size: 64, offset: 9088)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1261, line: 66, flags: DIFlagFwdDecl)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1260, file: !1261, line: 966, baseType: !1783, size: 64, offset: 9152)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1261, line: 50, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1260, file: !1261, line: 969, baseType: !1786, size: 64, offset: 9216)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1788, line: 82, size: 7296, elements: !1789)
!1788 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795, !1796, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1825, !1834, !1835, !1837, !1838, !1839, !1842, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1872, !1873, !1880, !1881, !1882, !1883, !1884, !1885}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1787, file: !1788, line: 83, baseType: !1272, size: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1787, file: !1788, line: 84, baseType: !792, size: 32, offset: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1787, file: !1788, line: 85, baseType: !104, size: 32, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1787, file: !1788, line: 86, baseType: !164, size: 128, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1787, file: !1788, line: 88, baseType: !1514, size: 128, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1787, file: !1788, line: 91, baseType: !1259, size: 64, offset: 384)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1787, file: !1788, line: 94, baseType: !1797, size: 192, offset: 448)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1798, line: 30, size: 192, elements: !1799)
!1798 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1799 = !{!1800, !1801}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1797, file: !1798, line: 31, baseType: !164, size: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1797, file: !1798, line: 32, baseType: !1802, size: 64, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1803, line: 25, baseType: !1804)
!1803 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1803, line: 23, size: 64, elements: !1805)
!1805 = !{!1806}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1804, file: !1803, line: 24, baseType: !123, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1787, file: !1788, line: 97, baseType: !680, size: 64, offset: 640)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1787, file: !1788, line: 100, baseType: !104, size: 32, offset: 704)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1787, file: !1788, line: 106, baseType: !104, size: 32, offset: 736)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1787, file: !1788, line: 107, baseType: !1259, size: 64, offset: 768)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1787, file: !1788, line: 110, baseType: !104, size: 32, offset: 832)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1787, file: !1788, line: 111, baseType: !7, size: 32, offset: 864)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1787, file: !1788, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1787, file: !1788, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1787, file: !1788, line: 128, baseType: !104, size: 32, offset: 928)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1787, file: !1788, line: 129, baseType: !164, size: 128, offset: 960)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1787, file: !1788, line: 132, baseType: !1334, size: 512, offset: 1088)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1787, file: !1788, line: 133, baseType: !1342, size: 64, offset: 1600)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1787, file: !1788, line: 140, baseType: !1820, size: 256, offset: 1664)
!1820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1821, size: 256, elements: !1602)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1788, line: 38, size: 128, elements: !1822)
!1822 = !{!1823, !1824}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1821, file: !1788, line: 39, baseType: !108, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1821, file: !1788, line: 40, baseType: !108, size: 64, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1787, file: !1788, line: 146, baseType: !1826, size: 192, offset: 1920)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1788, line: 66, size: 192, elements: !1827)
!1827 = !{!1828}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1826, file: !1788, line: 67, baseType: !1829, size: 192)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1788, line: 47, size: 192, elements: !1830)
!1830 = !{!1831, !1832, !1833}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1829, file: !1788, line: 48, baseType: !818, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1829, file: !1788, line: 49, baseType: !818, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1829, file: !1788, line: 50, baseType: !818, size: 64, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1787, file: !1788, line: 150, baseType: !1563, size: 640, offset: 2112)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1787, file: !1788, line: 153, baseType: !1836, size: 256, offset: 2752)
!1836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1504, size: 256, elements: !220)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1787, file: !1788, line: 159, baseType: !1504, size: 64, offset: 3008)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1787, file: !1788, line: 162, baseType: !104, size: 32, offset: 3072)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1787, file: !1788, line: 164, baseType: !1840, size: 64, offset: 3136)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1788, line: 164, flags: DIFlagFwdDecl)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1787, file: !1788, line: 175, baseType: !1843, size: 32, offset: 3200)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !441, line: 805, baseType: !1844)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 798, size: 32, elements: !1845)
!1845 = !{!1846, !1847}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1844, file: !441, line: 803, baseType: !440, size: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1844, file: !441, line: 804, baseType: !289, offset: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1787, file: !1788, line: 176, baseType: !108, size: 64, offset: 3264)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1787, file: !1788, line: 176, baseType: !108, size: 64, offset: 3328)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1787, file: !1788, line: 176, baseType: !108, size: 64, offset: 3392)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1787, file: !1788, line: 176, baseType: !108, size: 64, offset: 3456)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1787, file: !1788, line: 177, baseType: !108, size: 64, offset: 3520)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1787, file: !1788, line: 178, baseType: !108, size: 64, offset: 3584)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1787, file: !1788, line: 179, baseType: !1551, size: 128, offset: 3648)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1787, file: !1788, line: 180, baseType: !106, size: 64, offset: 3776)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1787, file: !1788, line: 180, baseType: !106, size: 64, offset: 3840)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1787, file: !1788, line: 180, baseType: !106, size: 64, offset: 3904)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1787, file: !1788, line: 180, baseType: !106, size: 64, offset: 3968)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1787, file: !1788, line: 181, baseType: !106, size: 64, offset: 4032)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1787, file: !1788, line: 181, baseType: !106, size: 64, offset: 4096)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1787, file: !1788, line: 181, baseType: !106, size: 64, offset: 4160)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1787, file: !1788, line: 181, baseType: !106, size: 64, offset: 4224)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1787, file: !1788, line: 182, baseType: !106, size: 64, offset: 4288)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1787, file: !1788, line: 182, baseType: !106, size: 64, offset: 4352)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1787, file: !1788, line: 182, baseType: !106, size: 64, offset: 4416)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1787, file: !1788, line: 182, baseType: !106, size: 64, offset: 4480)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1787, file: !1788, line: 183, baseType: !106, size: 64, offset: 4544)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1787, file: !1788, line: 183, baseType: !106, size: 64, offset: 4608)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1787, file: !1788, line: 184, baseType: !1870, offset: 4672)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1871, line: 12, elements: !303)
!1871 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1787, file: !1788, line: 192, baseType: !112, size: 64, offset: 4672)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1787, file: !1788, line: 203, baseType: !1874, size: 2048, offset: 4736)
!1874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1875, size: 2048, elements: !1768)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1876, line: 43, size: 128, elements: !1877)
!1876 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1877 = !{!1878, !1879}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1875, file: !1876, line: 44, baseType: !377, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1875, file: !1876, line: 45, baseType: !377, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1787, file: !1788, line: 220, baseType: !535, size: 8, offset: 6784)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1787, file: !1788, line: 221, baseType: !1248, size: 16, offset: 6800)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1787, file: !1788, line: 222, baseType: !1248, size: 16, offset: 6816)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1787, file: !1788, line: 224, baseType: !1019, size: 64, offset: 6848)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1787, file: !1788, line: 227, baseType: !1216, size: 192, offset: 6912)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1787, file: !1788, line: 233, baseType: !1216, size: 192, offset: 7104)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1260, file: !1261, line: 970, baseType: !1887, size: 64, offset: 9280)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1788, line: 20, size: 16576, elements: !1889)
!1889 = !{!1890, !1891, !1892, !1893}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1888, file: !1788, line: 21, baseType: !289)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1888, file: !1788, line: 22, baseType: !1272, size: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1888, file: !1788, line: 23, baseType: !1514, size: 128, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1888, file: !1788, line: 24, baseType: !1894, size: 16384, offset: 192)
!1894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1895, size: 16384, elements: !335)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1798, line: 49, size: 256, elements: !1896)
!1896 = !{!1897}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1895, file: !1798, line: 50, baseType: !1898, size: 256)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1798, line: 35, size: 256, elements: !1899)
!1899 = !{!1900, !1907, !1908, !1912}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1898, file: !1798, line: 37, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1902, line: 19, baseType: !1903)
!1902 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1902, line: 18, baseType: !1905)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !104}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1898, file: !1798, line: 38, baseType: !106, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1898, file: !1798, line: 44, baseType: !1909, size: 64, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1902, line: 22, baseType: !1910)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1902, line: 21, baseType: !156)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1898, file: !1798, line: 46, baseType: !1802, size: 64, offset: 192)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1260, file: !1261, line: 971, baseType: !1802, size: 64, offset: 9344)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1260, file: !1261, line: 972, baseType: !1802, size: 64, offset: 9408)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1260, file: !1261, line: 974, baseType: !1802, size: 64, offset: 9472)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1260, file: !1261, line: 975, baseType: !1797, size: 192, offset: 9536)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1260, file: !1261, line: 976, baseType: !106, size: 64, offset: 9728)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1260, file: !1261, line: 977, baseType: !375, size: 64, offset: 9792)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1260, file: !1261, line: 978, baseType: !7, size: 32, offset: 9856)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1260, file: !1261, line: 980, baseType: !421, size: 64, offset: 9920)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1260, file: !1261, line: 989, baseType: !1922, size: 128, offset: 9984)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1923, line: 35, size: 128, elements: !1924)
!1923 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1924 = !{!1925, !1926, !1927}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1922, file: !1923, line: 36, baseType: !104, size: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1922, file: !1923, line: 37, baseType: !792, size: 32, offset: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1922, file: !1923, line: 38, baseType: !1928, size: 64, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1923, line: 23, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1260, file: !1261, line: 992, baseType: !108, size: 64, offset: 10112)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1260, file: !1261, line: 993, baseType: !108, size: 64, offset: 10176)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1260, file: !1261, line: 996, baseType: !289, offset: 10240)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1260, file: !1261, line: 999, baseType: !825, offset: 10240)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1260, file: !1261, line: 1001, baseType: !1935, size: 64, offset: 10240)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1261, line: 636, size: 64, elements: !1936)
!1936 = !{!1937}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1935, file: !1261, line: 637, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1260, file: !1261, line: 1005, baseType: !797, size: 128, offset: 10304)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1260, file: !1261, line: 1007, baseType: !1259, size: 64, offset: 10432)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1260, file: !1261, line: 1009, baseType: !1942, size: 64, offset: 10496)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1261, line: 1009, flags: DIFlagFwdDecl)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1260, file: !1261, line: 1043, baseType: !107, size: 64, offset: 10560)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1260, file: !1261, line: 1046, baseType: !1946, size: 64, offset: 10624)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1261, line: 41, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1260, file: !1261, line: 1050, baseType: !1949, size: 64, offset: 10688)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1261, line: 42, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1260, file: !1261, line: 1054, baseType: !1952, size: 64, offset: 10752)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1261, line: 55, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1260, file: !1261, line: 1056, baseType: !1955, size: 64, offset: 10816)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1261, line: 40, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1260, file: !1261, line: 1058, baseType: !1958, size: 64, offset: 10880)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1960, line: 99, size: 704, elements: !1961)
!1960 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1961 = !{!1962, !1963, !1964, !1965, !1966, !1967, !1968, !1987, !1988}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1959, file: !1960, line: 100, baseType: !816, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1959, file: !1960, line: 101, baseType: !792, size: 32, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1959, file: !1960, line: 102, baseType: !792, size: 32, offset: 96)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1959, file: !1960, line: 105, baseType: !289, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1959, file: !1960, line: 107, baseType: !268, size: 16, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1959, file: !1960, line: 109, baseType: !784, size: 128, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1959, file: !1960, line: 110, baseType: !1969, size: 64, offset: 320)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1960, line: 73, size: 448, elements: !1971)
!1971 = !{!1972, !1975, !1976, !1981, !1986}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1970, file: !1960, line: 74, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1960, line: 74, flags: DIFlagFwdDecl)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1970, file: !1960, line: 75, baseType: !1958, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, scope: !1970, file: !1960, line: 83, baseType: !1977, size: 128, offset: 128)
!1977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1970, file: !1960, line: 83, size: 128, elements: !1978)
!1978 = !{!1979, !1980}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1977, file: !1960, line: 84, baseType: !164, size: 128)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1977, file: !1960, line: 85, baseType: !980, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, scope: !1970, file: !1960, line: 87, baseType: !1982, size: 128, offset: 256)
!1982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1970, file: !1960, line: 87, size: 128, elements: !1983)
!1983 = !{!1984, !1985}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1982, file: !1960, line: 88, baseType: !684, size: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1982, file: !1960, line: 89, baseType: !418, size: 128, align: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1970, file: !1960, line: 92, baseType: !7, size: 32, offset: 384)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1959, file: !1960, line: 111, baseType: !680, size: 64, offset: 384)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1959, file: !1960, line: 113, baseType: !1989, size: 256, offset: 448)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1990, line: 102, size: 256, elements: !1991)
!1990 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1991 = !{!1992, !1993, !1994}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1989, file: !1990, line: 103, baseType: !816, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1989, file: !1990, line: 104, baseType: !164, size: 128, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1989, file: !1990, line: 105, baseType: !1995, size: 64, offset: 192)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1990, line: 21, baseType: !1996)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !1999}
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1260, file: !1261, line: 1061, baseType: !2001, size: 64, offset: 10944)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1261, line: 43, flags: DIFlagFwdDecl)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1260, file: !1261, line: 1064, baseType: !106, size: 64, offset: 11008)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1260, file: !1261, line: 1065, baseType: !2005, size: 64, offset: 11072)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1798, line: 14, baseType: !2007)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1798, line: 12, size: 384, elements: !2008)
!2008 = !{!2009}
!2009 = !DIDerivedType(tag: DW_TAG_member, scope: !2007, file: !1798, line: 13, baseType: !2010, size: 384)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2007, file: !1798, line: 13, size: 384, elements: !2011)
!2011 = !{!2012, !2013, !2014, !2015}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2010, file: !1798, line: 13, baseType: !104, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2010, file: !1798, line: 13, baseType: !104, size: 32, offset: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2010, file: !1798, line: 13, baseType: !104, size: 32, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2010, file: !1798, line: 13, baseType: !2016, size: 256, offset: 128)
!2016 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2017, line: 32, size: 256, elements: !2018)
!2017 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2018 = !{!2019, !2024, !2037, !2043, !2052, !2072, !2077}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2016, file: !2017, line: 37, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 34, size: 64, elements: !2021)
!2021 = !{!2022, !2023}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2020, file: !2017, line: 35, baseType: !1493, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2020, file: !2017, line: 36, baseType: !486, size: 32, offset: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2016, file: !2017, line: 45, baseType: !2025, size: 192)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 40, size: 192, elements: !2026)
!2026 = !{!2027, !2029, !2030, !2036}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2025, file: !2017, line: 41, baseType: !2028, size: 32)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !363, line: 95, baseType: !104)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2025, file: !2017, line: 42, baseType: !104, size: 32, offset: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2025, file: !2017, line: 43, baseType: !2031, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2017, line: 11, baseType: !2032)
!2032 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2017, line: 8, size: 64, elements: !2033)
!2033 = !{!2034, !2035}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2032, file: !2017, line: 9, baseType: !104, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2032, file: !2017, line: 10, baseType: !107, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2025, file: !2017, line: 44, baseType: !104, size: 32, offset: 128)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2016, file: !2017, line: 52, baseType: !2038, size: 128)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 48, size: 128, elements: !2039)
!2039 = !{!2040, !2041, !2042}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2038, file: !2017, line: 49, baseType: !1493, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2038, file: !2017, line: 50, baseType: !486, size: 32, offset: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2038, file: !2017, line: 51, baseType: !2031, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2016, file: !2017, line: 61, baseType: !2044, size: 256)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 55, size: 256, elements: !2045)
!2045 = !{!2046, !2047, !2048, !2049, !2051}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2044, file: !2017, line: 56, baseType: !1493, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2044, file: !2017, line: 57, baseType: !486, size: 32, offset: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2044, file: !2017, line: 58, baseType: !104, size: 32, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2044, file: !2017, line: 59, baseType: !2050, size: 64, offset: 128)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !363, line: 94, baseType: !364)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2044, file: !2017, line: 60, baseType: !2050, size: 64, offset: 192)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2016, file: !2017, line: 95, baseType: !2053, size: 256)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 64, size: 256, elements: !2054)
!2054 = !{!2055, !2056}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2053, file: !2017, line: 65, baseType: !107, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, scope: !2053, file: !2017, line: 77, baseType: !2057, size: 192, offset: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2053, file: !2017, line: 77, size: 192, elements: !2058)
!2058 = !{!2059, !2060, !2067}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2057, file: !2017, line: 82, baseType: !1248, size: 16)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2057, file: !2017, line: 88, baseType: !2061, size: 192)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2057, file: !2017, line: 84, size: 192, elements: !2062)
!2062 = !{!2063, !2065, !2066}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2061, file: !2017, line: 85, baseType: !2064, size: 64)
!2064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 64, elements: !1372)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2061, file: !2017, line: 86, baseType: !107, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2061, file: !2017, line: 87, baseType: !107, size: 64, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2057, file: !2017, line: 93, baseType: !2068, size: 96)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2057, file: !2017, line: 90, size: 96, elements: !2069)
!2069 = !{!2070, !2071}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2068, file: !2017, line: 91, baseType: !2064, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2068, file: !2017, line: 92, baseType: !178, size: 32, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2016, file: !2017, line: 101, baseType: !2073, size: 128)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 98, size: 128, elements: !2074)
!2074 = !{!2075, !2076}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2073, file: !2017, line: 99, baseType: !115, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2073, file: !2017, line: 100, baseType: !104, size: 32, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2016, file: !2017, line: 108, baseType: !2078, size: 128)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 104, size: 128, elements: !2079)
!2079 = !{!2080, !2081, !2082}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2078, file: !2017, line: 105, baseType: !107, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2078, file: !2017, line: 106, baseType: !104, size: 32, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2078, file: !2017, line: 107, baseType: !7, size: 32, offset: 96)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1260, file: !1261, line: 1067, baseType: !1870, offset: 11136)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1260, file: !1261, line: 1099, baseType: !2085, size: 64, offset: 11136)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1261, line: 56, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1260, file: !1261, line: 1103, baseType: !164, size: 128, offset: 11200)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1260, file: !1261, line: 1104, baseType: !2089, size: 64, offset: 11328)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1261, line: 46, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1260, file: !1261, line: 1105, baseType: !1216, size: 192, offset: 11392)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1260, file: !1261, line: 1106, baseType: !7, size: 32, offset: 11584)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1260, file: !1261, line: 1109, baseType: !2094, size: 128, offset: 11648)
!2094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2095, size: 128, elements: !1602)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1261, line: 51, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1260, file: !1261, line: 1110, baseType: !1216, size: 192, offset: 11776)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1260, file: !1261, line: 1111, baseType: !164, size: 128, offset: 11968)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1260, file: !1261, line: 1173, baseType: !2100, size: 64, offset: 12096)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2102, line: 62, size: 256, align: 256, elements: !2103)
!2102 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2103 = !{!2104, !2105, !2106, !2111}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2101, file: !2102, line: 75, baseType: !178, size: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2101, file: !2102, line: 90, baseType: !178, size: 32, offset: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2101, file: !2102, line: 124, baseType: !2107, size: 64, offset: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2101, file: !2102, line: 109, size: 64, elements: !2108)
!2108 = !{!2109, !2110}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2107, file: !2102, line: 110, baseType: !110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2107, file: !2102, line: 112, baseType: !110, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2101, file: !2102, line: 144, baseType: !178, size: 32, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1260, file: !1261, line: 1174, baseType: !245, size: 32, offset: 12160)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1260, file: !1261, line: 1179, baseType: !106, size: 64, offset: 12224)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1260, file: !1261, line: 1182, baseType: !2115, size: 128, offset: 12288)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1196, line: 76, size: 128, elements: !2116)
!2116 = !{!2117, !2122, !2123}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2115, file: !1196, line: 85, baseType: !2118, size: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2119, line: 7, size: 64, elements: !2120)
!2119 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2120 = !{!2121}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2118, file: !2119, line: 12, baseType: !119, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2115, file: !1196, line: 88, baseType: !535, size: 8, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2115, file: !1196, line: 95, baseType: !535, size: 8, offset: 72)
!2124 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !1261, line: 1184, baseType: !2125, size: 128, offset: 12416)
!2125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1260, file: !1261, line: 1184, size: 128, elements: !2126)
!2126 = !{!2127, !2128}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2125, file: !1261, line: 1185, baseType: !1272, size: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2125, file: !1261, line: 1186, baseType: !418, size: 128, align: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1260, file: !1261, line: 1190, baseType: !2130, size: 64, offset: 12544)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1261, line: 53, flags: DIFlagFwdDecl)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1260, file: !1261, line: 1192, baseType: !2133, size: 128, offset: 12608)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1196, line: 64, size: 128, elements: !2134)
!2134 = !{!2135, !2136, !2137}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2133, file: !1196, line: 65, baseType: !766, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2133, file: !1196, line: 67, baseType: !178, size: 32, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2133, file: !1196, line: 68, baseType: !178, size: 32, offset: 96)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1260, file: !1261, line: 1206, baseType: !104, size: 32, offset: 12736)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1260, file: !1261, line: 1207, baseType: !104, size: 32, offset: 12768)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1260, file: !1261, line: 1209, baseType: !106, size: 64, offset: 12800)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1260, file: !1261, line: 1219, baseType: !108, size: 64, offset: 12864)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1260, file: !1261, line: 1220, baseType: !108, size: 64, offset: 12928)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1260, file: !1261, line: 1317, baseType: !104, size: 32, offset: 12992)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1260, file: !1261, line: 1319, baseType: !1259, size: 64, offset: 13056)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1260, file: !1261, line: 1322, baseType: !2146, size: 64, offset: 13120)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2148, line: 56, size: 512, elements: !2149)
!2148 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2149 = !{!2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2147, file: !2148, line: 57, baseType: !2146, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2147, file: !2148, line: 58, baseType: !107, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2147, file: !2148, line: 59, baseType: !106, size: 64, offset: 128)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2147, file: !2148, line: 60, baseType: !106, size: 64, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2147, file: !2148, line: 61, baseType: !865, size: 64, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2147, file: !2148, line: 62, baseType: !7, size: 32, offset: 320)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2147, file: !2148, line: 63, baseType: !212, size: 64, offset: 384)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2147, file: !2148, line: 64, baseType: !2158, size: 64, offset: 448)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1260, file: !1261, line: 1326, baseType: !1272, size: 32, offset: 13184)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1260, file: !1261, line: 1342, baseType: !107, size: 64, offset: 13248)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1260, file: !1261, line: 1343, baseType: !110, size: 64, offset: 13312)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1260, file: !1261, line: 1344, baseType: !108, size: 64, offset: 13376)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1260, file: !1261, line: 1345, baseType: !110, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1260, file: !1261, line: 1346, baseType: !110, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1260, file: !1261, line: 1347, baseType: !110, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1260, file: !1261, line: 1348, baseType: !418, size: 128, align: 64, offset: 13504)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1260, file: !1261, line: 1358, baseType: !2169, size: 34816, offset: 13824)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2170, line: 485, size: 34816, elements: !2171)
!2170 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2171 = !{!2172, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2201, !2202, !2203, !2204, !2205, !2206, !2209, !2210, !2211}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2169, file: !2170, line: 487, baseType: !2173, size: 192)
!2173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2174, size: 192, elements: !331)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2175, line: 16, size: 64, elements: !2176)
!2175 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2176 = !{!2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2174, file: !2175, line: 17, baseType: !904, size: 16)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2174, file: !2175, line: 18, baseType: !904, size: 16, offset: 16)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2174, file: !2175, line: 19, baseType: !904, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2174, file: !2175, line: 19, baseType: !904, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2174, file: !2175, line: 19, baseType: !904, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2174, file: !2175, line: 19, baseType: !904, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2174, file: !2175, line: 19, baseType: !904, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2174, file: !2175, line: 20, baseType: !904, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2174, file: !2175, line: 20, baseType: !904, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2174, file: !2175, line: 20, baseType: !904, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2174, file: !2175, line: 20, baseType: !904, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2174, file: !2175, line: 20, baseType: !904, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2174, file: !2175, line: 20, baseType: !904, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2169, file: !2170, line: 491, baseType: !106, size: 64, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2169, file: !2170, line: 495, baseType: !268, size: 16, offset: 256)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2169, file: !2170, line: 496, baseType: !268, size: 16, offset: 272)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2169, file: !2170, line: 497, baseType: !268, size: 16, offset: 288)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2169, file: !2170, line: 498, baseType: !268, size: 16, offset: 304)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2169, file: !2170, line: 502, baseType: !106, size: 64, offset: 320)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2169, file: !2170, line: 503, baseType: !106, size: 64, offset: 384)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2169, file: !2170, line: 514, baseType: !2198, size: 256, offset: 448)
!2198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2199, size: 256, elements: !220)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2170, line: 483, flags: DIFlagFwdDecl)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2169, file: !2170, line: 516, baseType: !106, size: 64, offset: 704)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2169, file: !2170, line: 518, baseType: !106, size: 64, offset: 768)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2169, file: !2170, line: 520, baseType: !106, size: 64, offset: 832)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2169, file: !2170, line: 521, baseType: !106, size: 64, offset: 896)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2169, file: !2170, line: 522, baseType: !106, size: 64, offset: 960)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2169, file: !2170, line: 528, baseType: !2207, size: 64, offset: 1024)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2170, line: 10, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2169, file: !2170, line: 535, baseType: !106, size: 64, offset: 1088)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2169, file: !2170, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2169, file: !2170, line: 540, baseType: !2212, size: 33280, offset: 1536)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2213, line: 317, size: 33280, elements: !2214)
!2213 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2214 = !{!2215, !2216, !2217}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2212, file: !2213, line: 330, baseType: !7, size: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2212, file: !2213, line: 337, baseType: !106, size: 64, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2212, file: !2213, line: 348, baseType: !2218, size: 32768, offset: 512)
!2218 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2213, line: 304, size: 32768, elements: !2219)
!2219 = !{!2220, !2235, !2274, !2324, !2337}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2218, file: !2213, line: 305, baseType: !2221, size: 896)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2213, line: 12, size: 896, elements: !2222)
!2222 = !{!2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2234}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2221, file: !2213, line: 13, baseType: !245, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2221, file: !2213, line: 14, baseType: !245, size: 32, offset: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2221, file: !2213, line: 15, baseType: !245, size: 32, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2221, file: !2213, line: 16, baseType: !245, size: 32, offset: 96)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2221, file: !2213, line: 17, baseType: !245, size: 32, offset: 128)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2221, file: !2213, line: 18, baseType: !245, size: 32, offset: 160)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2221, file: !2213, line: 19, baseType: !245, size: 32, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2221, file: !2213, line: 22, baseType: !2231, size: 640, offset: 224)
!2231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 640, elements: !2232)
!2232 = !{!2233}
!2233 = !DISubrange(count: 20)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2221, file: !2213, line: 25, baseType: !245, size: 32, offset: 864)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2218, file: !2213, line: 306, baseType: !2236, size: 4096, align: 128)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2213, line: 34, size: 4096, align: 128, elements: !2237)
!2237 = !{!2238, !2239, !2240, !2241, !2242, !2257, !2258, !2259, !2263, !2265, !2269}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2236, file: !2213, line: 35, baseType: !904, size: 16)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2236, file: !2213, line: 36, baseType: !904, size: 16, offset: 16)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2236, file: !2213, line: 37, baseType: !904, size: 16, offset: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2236, file: !2213, line: 38, baseType: !904, size: 16, offset: 48)
!2242 = !DIDerivedType(tag: DW_TAG_member, scope: !2236, file: !2213, line: 39, baseType: !2243, size: 128, offset: 64)
!2243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2236, file: !2213, line: 39, size: 128, elements: !2244)
!2244 = !{!2245, !2250}
!2245 = !DIDerivedType(tag: DW_TAG_member, scope: !2243, file: !2213, line: 40, baseType: !2246, size: 128)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2243, file: !2213, line: 40, size: 128, elements: !2247)
!2247 = !{!2248, !2249}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2246, file: !2213, line: 41, baseType: !108, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2246, file: !2213, line: 42, baseType: !108, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, scope: !2243, file: !2213, line: 44, baseType: !2251, size: 128)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2243, file: !2213, line: 44, size: 128, elements: !2252)
!2252 = !{!2253, !2254, !2255, !2256}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2251, file: !2213, line: 45, baseType: !245, size: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2251, file: !2213, line: 46, baseType: !245, size: 32, offset: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2251, file: !2213, line: 47, baseType: !245, size: 32, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2251, file: !2213, line: 48, baseType: !245, size: 32, offset: 96)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2236, file: !2213, line: 51, baseType: !245, size: 32, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2236, file: !2213, line: 52, baseType: !245, size: 32, offset: 224)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2236, file: !2213, line: 55, baseType: !2260, size: 1024, offset: 256)
!2260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 1024, elements: !2261)
!2261 = !{!2262}
!2262 = !DISubrange(count: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2236, file: !2213, line: 58, baseType: !2264, size: 2048, offset: 1280)
!2264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 2048, elements: !335)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2236, file: !2213, line: 60, baseType: !2266, size: 384, offset: 3328)
!2266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 384, elements: !2267)
!2267 = !{!2268}
!2268 = !DISubrange(count: 12)
!2269 = !DIDerivedType(tag: DW_TAG_member, scope: !2236, file: !2213, line: 62, baseType: !2270, size: 384, offset: 3712)
!2270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2236, file: !2213, line: 62, size: 384, elements: !2271)
!2271 = !{!2272, !2273}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2270, file: !2213, line: 63, baseType: !2266, size: 384)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2270, file: !2213, line: 64, baseType: !2266, size: 384)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2218, file: !2213, line: 307, baseType: !2275, size: 1088)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2213, line: 79, size: 1088, elements: !2276)
!2276 = !{!2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2323}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2275, file: !2213, line: 80, baseType: !245, size: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2275, file: !2213, line: 81, baseType: !245, size: 32, offset: 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2275, file: !2213, line: 82, baseType: !245, size: 32, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2275, file: !2213, line: 83, baseType: !245, size: 32, offset: 96)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2275, file: !2213, line: 84, baseType: !245, size: 32, offset: 128)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2275, file: !2213, line: 85, baseType: !245, size: 32, offset: 160)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2275, file: !2213, line: 86, baseType: !245, size: 32, offset: 192)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2275, file: !2213, line: 88, baseType: !2231, size: 640, offset: 224)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2275, file: !2213, line: 89, baseType: !1394, size: 8, offset: 864)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2275, file: !2213, line: 90, baseType: !1394, size: 8, offset: 872)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2275, file: !2213, line: 91, baseType: !1394, size: 8, offset: 880)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2275, file: !2213, line: 92, baseType: !1394, size: 8, offset: 888)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2275, file: !2213, line: 93, baseType: !1394, size: 8, offset: 896)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2275, file: !2213, line: 94, baseType: !1394, size: 8, offset: 904)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2275, file: !2213, line: 95, baseType: !2292, size: 64, offset: 960)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2294, line: 11, size: 128, elements: !2295)
!2294 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2295 = !{!2296, !2297}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2293, file: !2294, line: 12, baseType: !115, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2293, file: !2294, line: 13, baseType: !2298, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2300, line: 56, size: 1344, elements: !2301)
!2300 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2301 = !{!2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2299, file: !2300, line: 61, baseType: !106, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2299, file: !2300, line: 62, baseType: !106, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2299, file: !2300, line: 63, baseType: !106, size: 64, offset: 128)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2299, file: !2300, line: 64, baseType: !106, size: 64, offset: 192)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2299, file: !2300, line: 65, baseType: !106, size: 64, offset: 256)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2299, file: !2300, line: 66, baseType: !106, size: 64, offset: 320)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2299, file: !2300, line: 68, baseType: !106, size: 64, offset: 384)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2299, file: !2300, line: 69, baseType: !106, size: 64, offset: 448)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2299, file: !2300, line: 70, baseType: !106, size: 64, offset: 512)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2299, file: !2300, line: 71, baseType: !106, size: 64, offset: 576)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2299, file: !2300, line: 72, baseType: !106, size: 64, offset: 640)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2299, file: !2300, line: 73, baseType: !106, size: 64, offset: 704)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2299, file: !2300, line: 74, baseType: !106, size: 64, offset: 768)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2299, file: !2300, line: 75, baseType: !106, size: 64, offset: 832)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2299, file: !2300, line: 76, baseType: !106, size: 64, offset: 896)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2299, file: !2300, line: 81, baseType: !106, size: 64, offset: 960)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2299, file: !2300, line: 83, baseType: !106, size: 64, offset: 1024)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2299, file: !2300, line: 84, baseType: !106, size: 64, offset: 1088)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2299, file: !2300, line: 85, baseType: !106, size: 64, offset: 1152)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2299, file: !2300, line: 86, baseType: !106, size: 64, offset: 1216)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2299, file: !2300, line: 87, baseType: !106, size: 64, offset: 1280)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2275, file: !2213, line: 96, baseType: !245, size: 32, offset: 1024)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2218, file: !2213, line: 308, baseType: !2325, size: 4608, align: 512)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2213, line: 289, size: 4608, align: 512, elements: !2326)
!2326 = !{!2327, !2328, !2335}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2325, file: !2213, line: 290, baseType: !2236, size: 4096, align: 128)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2325, file: !2213, line: 291, baseType: !2329, size: 512, offset: 4096)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2213, line: 268, size: 512, elements: !2330)
!2330 = !{!2331, !2332, !2333}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2329, file: !2213, line: 269, baseType: !108, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2329, file: !2213, line: 270, baseType: !108, size: 64, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2329, file: !2213, line: 271, baseType: !2334, size: 384, offset: 128)
!2334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 384, elements: !1658)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2325, file: !2213, line: 292, baseType: !2336, offset: 4608)
!2336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, elements: !1756)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2218, file: !2213, line: 309, baseType: !2338, size: 32768)
!2338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, size: 32768, elements: !2339)
!2339 = !{!2340}
!2340 = !DISubrange(count: 4096)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1256, file: !768, line: 378, baseType: !2342, size: 64, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1252, file: !768, line: 384, baseType: !1535, size: 192, offset: 192)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1023, file: !768, line: 500, baseType: !289, offset: 6656)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1023, file: !768, line: 501, baseType: !2346, size: 64, offset: 6656)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !768, line: 387, flags: DIFlagFwdDecl)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1023, file: !768, line: 516, baseType: !1746, size: 64, offset: 6720)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1023, file: !768, line: 519, baseType: !405, size: 64, offset: 6784)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1023, file: !768, line: 521, baseType: !2351, size: 64, offset: 6848)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !768, line: 521, flags: DIFlagFwdDecl)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1023, file: !768, line: 545, baseType: !792, size: 32, offset: 6912)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1023, file: !768, line: 548, baseType: !535, size: 8, offset: 6944)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1023, file: !768, line: 550, baseType: !2356, offset: 6952)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2357, line: 142, elements: !303)
!2357 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1023, file: !768, line: 554, baseType: !1989, size: 256, offset: 6976)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1023, file: !768, line: 557, baseType: !245, size: 32, offset: 7232)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1020, file: !768, line: 565, baseType: !2361, offset: 7296)
!2361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, elements: !2362)
!2362 = !{!2363}
!2363 = !DISubrange(count: -1)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1016, file: !768, line: 151, baseType: !792, size: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1009, file: !768, line: 156, baseType: !289, offset: 256)
!2366 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !768, line: 159, baseType: !2367, size: 128)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !772, file: !768, line: 159, size: 128, elements: !2368)
!2368 = !{!2369, !2433}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2367, file: !768, line: 161, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2372)
!2372 = !{!2373, !2383, !2404, !2405, !2406, !2407, !2408, !2420, !2421, !2422}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2371, file: !31, line: 111, baseType: !2374, size: 384)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2375)
!2375 = !{!2376, !2378, !2379, !2380, !2381, !2382}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2374, file: !31, line: 20, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2374, file: !31, line: 21, baseType: !2377, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2374, file: !31, line: 22, baseType: !2377, size: 64, offset: 128)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2374, file: !31, line: 23, baseType: !106, size: 64, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2374, file: !31, line: 24, baseType: !106, size: 64, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2374, file: !31, line: 25, baseType: !106, size: 64, offset: 320)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2371, file: !31, line: 112, baseType: !2384, size: 64, offset: 384)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2386, line: 105, size: 128, elements: !2387)
!2386 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2387 = !{!2388, !2389}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2385, file: !2386, line: 110, baseType: !106, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2385, file: !2386, line: 118, baseType: !2390, size: 64, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2386, line: 95, size: 448, elements: !2392)
!2392 = !{!2393, !2394, !2399, !2400, !2401, !2402, !2403}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2391, file: !2386, line: 96, baseType: !816, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2391, file: !2386, line: 97, baseType: !2395, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2386, line: 60, baseType: !2397)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{null, !2384}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2391, file: !2386, line: 98, baseType: !2395, size: 64, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2391, file: !2386, line: 99, baseType: !535, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2391, file: !2386, line: 100, baseType: !535, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2391, file: !2386, line: 101, baseType: !418, size: 128, align: 64, offset: 256)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2391, file: !2386, line: 102, baseType: !2384, size: 64, offset: 384)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2371, file: !31, line: 113, baseType: !2385, size: 128, offset: 448)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2371, file: !31, line: 114, baseType: !1535, size: 192, offset: 576)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2371, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2371, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2371, file: !31, line: 117, baseType: !2409, size: 64, offset: 832)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2411)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2412)
!2412 = !{!2413, !2414, !2418, !2419}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2411, file: !31, line: 73, baseType: !885, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2411, file: !31, line: 78, baseType: !2415, size: 64, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{null, !2370}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2411, file: !31, line: 83, baseType: !2415, size: 64, offset: 128)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2411, file: !31, line: 89, baseType: !1072, size: 64, offset: 192)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2371, file: !31, line: 118, baseType: !107, size: 64, offset: 896)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2371, file: !31, line: 119, baseType: !104, size: 32, offset: 960)
!2422 = !DIDerivedType(tag: DW_TAG_member, scope: !2371, file: !31, line: 120, baseType: !2423, size: 128, offset: 1024)
!2423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2371, file: !31, line: 120, size: 128, elements: !2424)
!2424 = !{!2425, !2431}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2423, file: !31, line: 121, baseType: !2426, size: 128)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2427, line: 6, size: 128, elements: !2428)
!2427 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2428 = !{!2429, !2430}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2426, file: !2427, line: 7, baseType: !108, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2426, file: !2427, line: 8, baseType: !108, size: 64, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2423, file: !31, line: 122, baseType: !2432)
!2432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2426, elements: !1756)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2367, file: !768, line: 162, baseType: !107, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !772, file: !768, line: 176, baseType: !418, size: 128, align: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !768, line: 179, baseType: !2436, size: 32, offset: 384)
!2436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !768, line: 179, size: 32, elements: !2437)
!2437 = !{!2438, !2439, !2440, !2441}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2436, file: !768, line: 184, baseType: !792, size: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2436, file: !768, line: 192, baseType: !7, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2436, file: !768, line: 194, baseType: !7, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2436, file: !768, line: 195, baseType: !104, size: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !767, file: !768, line: 199, baseType: !792, size: 32, offset: 416)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !702, file: !44, line: 1964, baseType: !2444, size: 64, offset: 1344)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!115, !644, !2447}
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2449, line: 12, size: 256, elements: !2450)
!2449 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2450 = !{!2451, !2452, !2453, !2454, !2455}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2448, file: !2449, line: 13, baseType: !102, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2448, file: !2449, line: 16, baseType: !104, size: 32, offset: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2448, file: !2449, line: 23, baseType: !106, size: 64, offset: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2448, file: !2449, line: 30, baseType: !106, size: 64, offset: 128)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2448, file: !2449, line: 33, baseType: !2456, size: 64, offset: 192)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !768, line: 27, flags: DIFlagFwdDecl)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !702, file: !44, line: 1966, baseType: !2444, size: 64, offset: 1408)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !645, file: !44, line: 1424, baseType: !2460, size: 64, offset: 448)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2462)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2463)
!2463 = !{!2464, !2510, !2514, !2518, !2519, !2520, !2521, !2522, !2527, !2532, !2536}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2462, file: !38, line: 323, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!104, !2468}
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2470)
!2470 = !{!2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2495, !2496, !2497}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2469, file: !38, line: 295, baseType: !684, size: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2469, file: !38, line: 296, baseType: !164, size: 128, offset: 128)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2469, file: !38, line: 297, baseType: !164, size: 128, offset: 256)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2469, file: !38, line: 298, baseType: !164, size: 128, offset: 384)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2469, file: !38, line: 299, baseType: !1216, size: 192, offset: 512)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2469, file: !38, line: 300, baseType: !289, offset: 704)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2469, file: !38, line: 301, baseType: !792, size: 32, offset: 704)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2469, file: !38, line: 302, baseType: !644, size: 64, offset: 768)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2469, file: !38, line: 303, baseType: !2480, size: 64, offset: 832)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2481)
!2481 = !{!2482, !2494}
!2482 = !DIDerivedType(tag: DW_TAG_member, scope: !2480, file: !38, line: 69, baseType: !2483, size: 32)
!2483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2480, file: !38, line: 69, size: 32, elements: !2484)
!2484 = !{!2485, !2486, !2487}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2483, file: !38, line: 70, baseType: !480, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2483, file: !38, line: 71, baseType: !488, size: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2483, file: !38, line: 72, baseType: !2488, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2489, line: 24, baseType: !2490)
!2489 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2489, line: 22, size: 32, elements: !2491)
!2491 = !{!2492}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2490, file: !2489, line: 23, baseType: !2493, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2489, line: 20, baseType: !486)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2480, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2469, file: !38, line: 304, baseType: !576, size: 64, offset: 896)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2469, file: !38, line: 305, baseType: !106, size: 64, offset: 960)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2469, file: !38, line: 306, baseType: !2498, size: 576, offset: 1024)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2499)
!2499 = !{!2500, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2498, file: !38, line: 206, baseType: !2501, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !578)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2498, file: !38, line: 207, baseType: !2501, size: 64, offset: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2498, file: !38, line: 208, baseType: !2501, size: 64, offset: 128)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2498, file: !38, line: 209, baseType: !2501, size: 64, offset: 192)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2498, file: !38, line: 210, baseType: !2501, size: 64, offset: 256)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2498, file: !38, line: 211, baseType: !2501, size: 64, offset: 320)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2498, file: !38, line: 212, baseType: !2501, size: 64, offset: 384)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2498, file: !38, line: 213, baseType: !584, size: 64, offset: 448)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2498, file: !38, line: 214, baseType: !584, size: 64, offset: 512)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2462, file: !38, line: 324, baseType: !2511, size: 64, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!2468, !644, !104}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2462, file: !38, line: 325, baseType: !2515, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{null, !2468}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2462, file: !38, line: 326, baseType: !2465, size: 64, offset: 192)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2462, file: !38, line: 327, baseType: !2465, size: 64, offset: 256)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2462, file: !38, line: 328, baseType: !2465, size: 64, offset: 320)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2462, file: !38, line: 329, baseType: !730, size: 64, offset: 384)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2462, file: !38, line: 332, baseType: !2523, size: 64, offset: 448)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!2526, !474}
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2462, file: !38, line: 333, baseType: !2528, size: 64, offset: 512)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!104, !474, !2531}
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2462, file: !38, line: 335, baseType: !2533, size: 64, offset: 576)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!104, !474, !2526}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2462, file: !38, line: 337, baseType: !2537, size: 64, offset: 640)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!104, !644, !2540}
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !645, file: !44, line: 1425, baseType: !2542, size: 64, offset: 512)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2544)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2545)
!2545 = !{!2546, !2550, !2551, !2555, !2556, !2557, !2572, !2595, !2599, !2600, !2623}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2544, file: !38, line: 429, baseType: !2547, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!104, !644, !104, !104, !594}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2544, file: !38, line: 430, baseType: !730, size: 64, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2544, file: !38, line: 431, baseType: !2552, size: 64, offset: 128)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!104, !644, !7}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2544, file: !38, line: 432, baseType: !2552, size: 64, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2544, file: !38, line: 433, baseType: !730, size: 64, offset: 256)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2544, file: !38, line: 434, baseType: !2558, size: 64, offset: 320)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!104, !644, !104, !2561}
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2563)
!2563 = !{!2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2562, file: !38, line: 416, baseType: !104, size: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2562, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2562, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2562, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2562, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2562, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2562, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2562, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2544, file: !38, line: 435, baseType: !2573, size: 64, offset: 384)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!104, !644, !2480, !2576}
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2578)
!2578 = !{!2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2577, file: !38, line: 344, baseType: !104, size: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2577, file: !38, line: 345, baseType: !108, size: 64, offset: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2577, file: !38, line: 346, baseType: !108, size: 64, offset: 128)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2577, file: !38, line: 347, baseType: !108, size: 64, offset: 192)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2577, file: !38, line: 348, baseType: !108, size: 64, offset: 256)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2577, file: !38, line: 349, baseType: !108, size: 64, offset: 320)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2577, file: !38, line: 350, baseType: !108, size: 64, offset: 384)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2577, file: !38, line: 351, baseType: !822, size: 64, offset: 448)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2577, file: !38, line: 353, baseType: !822, size: 64, offset: 512)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2577, file: !38, line: 354, baseType: !104, size: 32, offset: 576)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2577, file: !38, line: 355, baseType: !104, size: 32, offset: 608)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2577, file: !38, line: 356, baseType: !108, size: 64, offset: 640)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2577, file: !38, line: 357, baseType: !108, size: 64, offset: 704)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2577, file: !38, line: 358, baseType: !108, size: 64, offset: 768)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2577, file: !38, line: 359, baseType: !822, size: 64, offset: 832)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2577, file: !38, line: 360, baseType: !104, size: 32, offset: 896)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2544, file: !38, line: 436, baseType: !2596, size: 64, offset: 448)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!104, !644, !2540, !2576}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2544, file: !38, line: 438, baseType: !2573, size: 64, offset: 512)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2544, file: !38, line: 439, baseType: !2601, size: 64, offset: 576)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!104, !644, !2604}
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2606)
!2606 = !{!2607, !2608}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2605, file: !38, line: 410, baseType: !7, size: 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2605, file: !38, line: 411, baseType: !2609, size: 1344, offset: 64)
!2609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2610, size: 1344, elements: !331)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2611)
!2611 = !{!2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2622}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2610, file: !38, line: 396, baseType: !7, size: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2610, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2610, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2610, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2610, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2610, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2610, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2610, file: !38, line: 404, baseType: !112, size: 64, offset: 256)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2610, file: !38, line: 405, baseType: !2621, size: 64, offset: 320)
!2621 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !103, line: 126, baseType: !108)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2610, file: !38, line: 406, baseType: !2621, size: 64, offset: 384)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2544, file: !38, line: 440, baseType: !2552, size: 64, offset: 640)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !645, file: !44, line: 1426, baseType: !2625, size: 64, offset: 576)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2627)
!2627 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !645, file: !44, line: 1427, baseType: !106, size: 64, offset: 640)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !645, file: !44, line: 1428, baseType: !106, size: 64, offset: 704)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !645, file: !44, line: 1429, baseType: !106, size: 64, offset: 768)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !645, file: !44, line: 1430, baseType: !435, size: 64, offset: 832)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !645, file: !44, line: 1431, baseType: !812, size: 256, offset: 896)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !645, file: !44, line: 1432, baseType: !104, size: 32, offset: 1152)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !645, file: !44, line: 1433, baseType: !792, size: 32, offset: 1184)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !645, file: !44, line: 1437, baseType: !2636, size: 64, offset: 1216)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2639)
!2639 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !645, file: !44, line: 1449, baseType: !2641, size: 64, offset: 1280)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !451, line: 34, size: 64, elements: !2642)
!2642 = !{!2643}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2641, file: !451, line: 35, baseType: !454, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !645, file: !44, line: 1450, baseType: !164, size: 128, offset: 1344)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !645, file: !44, line: 1451, baseType: !2646, size: 64, offset: 1472)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !645, file: !44, line: 1452, baseType: !1955, size: 64, offset: 1536)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !645, file: !44, line: 1453, baseType: !2650, size: 64, offset: 1600)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !645, file: !44, line: 1454, baseType: !684, size: 128, offset: 1664)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !645, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !645, file: !44, line: 1456, baseType: !2655, size: 2432, offset: 1856)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2656)
!2656 = !{!2657, !2658, !2659, !2661, !2693}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2655, file: !38, line: 519, baseType: !7, size: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2655, file: !38, line: 520, baseType: !812, size: 256, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2655, file: !38, line: 521, baseType: !2660, size: 192, offset: 320)
!2660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 192, elements: !331)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2655, file: !38, line: 522, baseType: !2662, size: 1728, offset: 512)
!2662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2663, size: 1728, elements: !331)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2664)
!2664 = !{!2665, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2663, file: !38, line: 223, baseType: !2666, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2668)
!2668 = !{!2669, !2670, !2683, !2684}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2667, file: !38, line: 444, baseType: !104, size: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2667, file: !38, line: 445, baseType: !2671, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2673)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2674)
!2674 = !{!2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2673, file: !38, line: 311, baseType: !730, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2673, file: !38, line: 312, baseType: !730, size: 64, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2673, file: !38, line: 313, baseType: !730, size: 64, offset: 128)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2673, file: !38, line: 314, baseType: !730, size: 64, offset: 192)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2673, file: !38, line: 315, baseType: !2465, size: 64, offset: 256)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2673, file: !38, line: 316, baseType: !2465, size: 64, offset: 320)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2673, file: !38, line: 317, baseType: !2465, size: 64, offset: 384)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2673, file: !38, line: 318, baseType: !2537, size: 64, offset: 448)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2667, file: !38, line: 446, baseType: !99, size: 64, offset: 128)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2667, file: !38, line: 447, baseType: !2666, size: 64, offset: 192)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2663, file: !38, line: 224, baseType: !104, size: 32, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2663, file: !38, line: 226, baseType: !164, size: 128, offset: 128)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2663, file: !38, line: 227, baseType: !106, size: 64, offset: 256)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2663, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2663, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2663, file: !38, line: 230, baseType: !2501, size: 64, offset: 384)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2663, file: !38, line: 231, baseType: !2501, size: 64, offset: 448)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2663, file: !38, line: 232, baseType: !107, size: 64, offset: 512)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2655, file: !38, line: 523, baseType: !2694, size: 192, offset: 2240)
!2694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2671, size: 192, elements: !331)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !645, file: !44, line: 1458, baseType: !2696, size: 2112, offset: 4288)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2697)
!2697 = !{!2698, !2699, !2700}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2696, file: !44, line: 1411, baseType: !104, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2696, file: !44, line: 1412, baseType: !1514, size: 128, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2696, file: !44, line: 1413, baseType: !2701, size: 1920, offset: 192)
!2701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2702, size: 1920, elements: !331)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2703, line: 12, size: 640, elements: !2704)
!2703 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2704 = !{!2705, !2713, !2715, !2720, !2721}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2702, file: !2703, line: 13, baseType: !2706, size: 320)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2707, line: 17, size: 320, elements: !2708)
!2707 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2708 = !{!2709, !2710, !2711, !2712}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2706, file: !2707, line: 18, baseType: !104, size: 32)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2706, file: !2707, line: 19, baseType: !104, size: 32, offset: 32)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2706, file: !2707, line: 20, baseType: !1514, size: 128, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2706, file: !2707, line: 22, baseType: !418, size: 128, align: 64, offset: 192)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2702, file: !2703, line: 14, baseType: !2714, size: 64, offset: 320)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2702, file: !2703, line: 15, baseType: !2716, size: 64, offset: 384)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2717, line: 16, size: 64, elements: !2718)
!2717 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2718 = !{!2719}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2716, file: !2717, line: 17, baseType: !1259, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2702, file: !2703, line: 16, baseType: !1514, size: 128, offset: 448)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2702, file: !2703, line: 17, baseType: !792, size: 32, offset: 576)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !645, file: !44, line: 1465, baseType: !107, size: 64, offset: 6400)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !645, file: !44, line: 1468, baseType: !245, size: 32, offset: 6464)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !645, file: !44, line: 1470, baseType: !584, size: 64, offset: 6528)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !645, file: !44, line: 1471, baseType: !584, size: 64, offset: 6592)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !645, file: !44, line: 1473, baseType: !178, size: 32, offset: 6656)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !645, file: !44, line: 1474, baseType: !2728, size: 64, offset: 6720)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !645, file: !44, line: 1477, baseType: !2731, size: 256, offset: 6784)
!2731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 256, elements: !2261)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !645, file: !44, line: 1478, baseType: !2733, size: 128, offset: 7040)
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2734, line: 18, baseType: !2735)
!2734 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2734, line: 16, size: 128, elements: !2736)
!2736 = !{!2737}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2735, file: !2734, line: 17, baseType: !2738, size: 128)
!2738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1395, size: 128, elements: !1768)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !645, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !645, file: !44, line: 1481, baseType: !2741, size: 32, offset: 7200)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !103, line: 150, baseType: !7)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !645, file: !44, line: 1487, baseType: !1216, size: 192, offset: 7232)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !645, file: !44, line: 1493, baseType: !170, size: 64, offset: 7424)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !645, file: !44, line: 1495, baseType: !2745, size: 64, offset: 7488)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2747)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !433, line: 135, size: 1024, align: 512, elements: !2748)
!2748 = !{!2749, !2753, !2754, !2761, !2767, !2771, !2775, !2779, !2780, !2784, !2788, !2793, !2797}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2747, file: !433, line: 136, baseType: !2750, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!104, !435, !7}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2747, file: !433, line: 137, baseType: !2750, size: 64, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2747, file: !433, line: 138, baseType: !2755, size: 64, offset: 128)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!104, !2758, !2760}
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2747, file: !433, line: 139, baseType: !2762, size: 64, offset: 192)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!104, !2758, !7, !170, !2765}
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2747, file: !433, line: 141, baseType: !2768, size: 64, offset: 256)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!104, !2758}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2747, file: !433, line: 142, baseType: !2772, size: 64, offset: 320)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!104, !435}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2747, file: !433, line: 143, baseType: !2776, size: 64, offset: 384)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{null, !435}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2747, file: !433, line: 144, baseType: !2776, size: 64, offset: 448)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2747, file: !433, line: 145, baseType: !2781, size: 64, offset: 512)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{null, !435, !474}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2747, file: !433, line: 146, baseType: !2785, size: 64, offset: 576)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!330, !435, !330, !104}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2747, file: !433, line: 147, baseType: !2789, size: 64, offset: 640)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!431, !2792}
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2747, file: !433, line: 148, baseType: !2794, size: 64, offset: 704)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!104, !594, !535}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2747, file: !433, line: 149, baseType: !2798, size: 64, offset: 768)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!435, !435, !2801}
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !645, file: !44, line: 1500, baseType: !104, size: 32, offset: 7552)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !645, file: !44, line: 1502, baseType: !2805, size: 448, offset: 7616)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2449, line: 60, size: 448, elements: !2806)
!2806 = !{!2807, !2812, !2813, !2814, !2815, !2816, !2817}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2805, file: !2449, line: 61, baseType: !2808, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!106, !2811, !2447}
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2805, file: !2449, line: 63, baseType: !2808, size: 64, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2805, file: !2449, line: 66, baseType: !115, size: 64, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2805, file: !2449, line: 67, baseType: !104, size: 32, offset: 192)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2805, file: !2449, line: 68, baseType: !7, size: 32, offset: 224)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2805, file: !2449, line: 71, baseType: !164, size: 128, offset: 256)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2805, file: !2449, line: 77, baseType: !2818, size: 64, offset: 384)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !645, file: !44, line: 1505, baseType: !816, size: 64, offset: 8064)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !645, file: !44, line: 1508, baseType: !816, size: 64, offset: 8128)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !645, file: !44, line: 1511, baseType: !104, size: 32, offset: 8192)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !645, file: !44, line: 1514, baseType: !954, size: 32, offset: 8224)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !645, file: !44, line: 1517, baseType: !2824, size: 64, offset: 8256)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1990, line: 18, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !645, file: !44, line: 1518, baseType: !680, size: 64, offset: 8320)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !645, file: !44, line: 1525, baseType: !1746, size: 64, offset: 8384)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !645, file: !44, line: 1532, baseType: !2829, size: 64, offset: 8448)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2830, line: 52, size: 64, elements: !2831)
!2830 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2831 = !{!2832}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2829, file: !2830, line: 53, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2830, line: 40, size: 256, elements: !2835)
!2835 = !{!2836, !2837, !2842}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2834, file: !2830, line: 42, baseType: !289)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2834, file: !2830, line: 44, baseType: !2838, size: 192)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2830, line: 28, size: 192, elements: !2839)
!2839 = !{!2840, !2841}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2838, file: !2830, line: 29, baseType: !164, size: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2838, file: !2830, line: 31, baseType: !115, size: 64, offset: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2834, file: !2830, line: 49, baseType: !115, size: 64, offset: 192)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !645, file: !44, line: 1533, baseType: !2829, size: 64, offset: 8512)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !645, file: !44, line: 1534, baseType: !418, size: 128, align: 64, offset: 8576)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !645, file: !44, line: 1535, baseType: !1989, size: 256, offset: 8704)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !645, file: !44, line: 1537, baseType: !1216, size: 192, offset: 8960)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !645, file: !44, line: 1542, baseType: !104, size: 32, offset: 9152)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !645, file: !44, line: 1545, baseType: !289, offset: 9184)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !645, file: !44, line: 1546, baseType: !164, size: 128, offset: 9216)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !645, file: !44, line: 1548, baseType: !289, offset: 9344)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !645, file: !44, line: 1549, baseType: !164, size: 128, offset: 9344)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !475, file: !44, line: 624, baseType: !779, size: 64, offset: 256)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !475, file: !44, line: 631, baseType: !106, size: 64, offset: 320)
!2854 = !DIDerivedType(tag: DW_TAG_member, scope: !475, file: !44, line: 639, baseType: !2855, size: 32, offset: 384)
!2855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !475, file: !44, line: 639, size: 32, elements: !2856)
!2856 = !{!2857, !2859}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2855, file: !44, line: 640, baseType: !2858, size: 32)
!2858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2855, file: !44, line: 641, baseType: !7, size: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !475, file: !44, line: 643, baseType: !558, size: 32, offset: 416)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !475, file: !44, line: 644, baseType: !576, size: 64, offset: 448)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !475, file: !44, line: 645, baseType: !580, size: 128, offset: 512)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !475, file: !44, line: 646, baseType: !580, size: 128, offset: 640)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !475, file: !44, line: 647, baseType: !580, size: 128, offset: 768)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !475, file: !44, line: 648, baseType: !289, offset: 896)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !475, file: !44, line: 649, baseType: !268, size: 16, offset: 896)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !475, file: !44, line: 650, baseType: !1394, size: 8, offset: 912)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !475, file: !44, line: 651, baseType: !1394, size: 8, offset: 920)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !475, file: !44, line: 652, baseType: !2621, size: 64, offset: 960)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !475, file: !44, line: 659, baseType: !106, size: 64, offset: 1024)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !475, file: !44, line: 660, baseType: !812, size: 256, offset: 1088)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !475, file: !44, line: 662, baseType: !106, size: 64, offset: 1344)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !475, file: !44, line: 663, baseType: !106, size: 64, offset: 1408)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !475, file: !44, line: 665, baseType: !684, size: 128, offset: 1472)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !475, file: !44, line: 666, baseType: !164, size: 128, offset: 1600)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !475, file: !44, line: 675, baseType: !164, size: 128, offset: 1728)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !475, file: !44, line: 676, baseType: !164, size: 128, offset: 1856)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !475, file: !44, line: 677, baseType: !164, size: 128, offset: 1984)
!2879 = !DIDerivedType(tag: DW_TAG_member, scope: !475, file: !44, line: 678, baseType: !2880, size: 128, offset: 2112)
!2880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !475, file: !44, line: 678, size: 128, elements: !2881)
!2881 = !{!2882, !2883}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2880, file: !44, line: 679, baseType: !680, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2880, file: !44, line: 680, baseType: !418, size: 128, align: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !475, file: !44, line: 682, baseType: !818, size: 64, offset: 2240)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !475, file: !44, line: 683, baseType: !818, size: 64, offset: 2304)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !475, file: !44, line: 684, baseType: !792, size: 32, offset: 2368)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !475, file: !44, line: 685, baseType: !792, size: 32, offset: 2400)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !475, file: !44, line: 686, baseType: !792, size: 32, offset: 2432)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !475, file: !44, line: 688, baseType: !792, size: 32, offset: 2464)
!2890 = !DIDerivedType(tag: DW_TAG_member, scope: !475, file: !44, line: 690, baseType: !2891, size: 64, offset: 2496)
!2891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !475, file: !44, line: 690, size: 64, elements: !2892)
!2892 = !{!2893, !3116}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2891, file: !44, line: 691, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2896)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2897)
!2897 = !{!2898, !2899, !2903, !2908, !2912, !2913, !2914, !2918, !2931, !2932, !2940, !2944, !2945, !2949, !2950, !2954, !2959, !2960, !2964, !2968, !3076, !3080, !3081, !3085, !3086, !3090, !3094, !3099, !3103, !3107, !3111, !3115}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2896, file: !44, line: 1823, baseType: !99, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2896, file: !44, line: 1824, baseType: !2900, size: 64, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!576, !405, !576, !104}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2896, file: !44, line: 1825, baseType: !2904, size: 64, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!361, !405, !330, !375, !2907}
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2896, file: !44, line: 1826, baseType: !2909, size: 64, offset: 192)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!361, !405, !170, !375, !2907}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2896, file: !44, line: 1827, baseType: !889, size: 64, offset: 256)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2896, file: !44, line: 1828, baseType: !889, size: 64, offset: 320)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2896, file: !44, line: 1829, baseType: !2915, size: 64, offset: 384)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!104, !892, !535}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2896, file: !44, line: 1830, baseType: !2919, size: 64, offset: 448)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!104, !405, !2922}
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2924)
!2924 = !{!2925, !2930}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2923, file: !44, line: 1777, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2927)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!104, !2922, !170, !104, !576, !108, !7}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2923, file: !44, line: 1778, baseType: !576, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2896, file: !44, line: 1831, baseType: !2919, size: 64, offset: 512)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2896, file: !44, line: 1832, baseType: !2933, size: 64, offset: 576)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!2936, !405, !2938}
!2936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2937, line: 52, baseType: !7)
!2937 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !664, line: 27, flags: DIFlagFwdDecl)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2896, file: !44, line: 1833, baseType: !2941, size: 64, offset: 640)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!115, !405, !7, !106}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2896, file: !44, line: 1834, baseType: !2941, size: 64, offset: 704)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2896, file: !44, line: 1835, baseType: !2946, size: 64, offset: 768)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!104, !405, !1026}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2896, file: !44, line: 1836, baseType: !106, size: 64, offset: 832)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2896, file: !44, line: 1837, baseType: !2951, size: 64, offset: 896)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!104, !474, !405}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2896, file: !44, line: 1838, baseType: !2955, size: 64, offset: 960)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!104, !405, !2958}
!2958 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !107)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2896, file: !44, line: 1839, baseType: !2951, size: 64, offset: 1024)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2896, file: !44, line: 1840, baseType: !2961, size: 64, offset: 1088)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!104, !405, !576, !576, !104}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2896, file: !44, line: 1841, baseType: !2965, size: 64, offset: 1152)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!104, !104, !405, !104}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2896, file: !44, line: 1842, baseType: !2969, size: 64, offset: 1216)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!104, !405, !104, !2972}
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2974)
!2974 = !{!2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !3006, !3007, !3008, !3021, !3052}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2973, file: !44, line: 1063, baseType: !2972, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2973, file: !44, line: 1064, baseType: !164, size: 128, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2973, file: !44, line: 1065, baseType: !684, size: 128, offset: 192)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2973, file: !44, line: 1066, baseType: !164, size: 128, offset: 320)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2973, file: !44, line: 1069, baseType: !164, size: 128, offset: 448)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2973, file: !44, line: 1072, baseType: !2958, size: 64, offset: 576)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2973, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2973, file: !44, line: 1074, baseType: !259, size: 8, offset: 672)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2973, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2973, file: !44, line: 1076, baseType: !104, size: 32, offset: 736)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2973, file: !44, line: 1077, baseType: !1514, size: 128, offset: 768)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2973, file: !44, line: 1078, baseType: !405, size: 64, offset: 896)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2973, file: !44, line: 1079, baseType: !576, size: 64, offset: 960)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2973, file: !44, line: 1080, baseType: !576, size: 64, offset: 1024)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2973, file: !44, line: 1082, baseType: !2990, size: 64, offset: 1088)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2992)
!2992 = !{!2993, !3001, !3002, !3003, !3004, !3005}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2991, file: !44, line: 1315, baseType: !2994)
!2994 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2995, line: 20, baseType: !2996)
!2995 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2995, line: 11, elements: !2997)
!2997 = !{!2998}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2996, file: !2995, line: 12, baseType: !2999)
!2999 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !301, line: 33, baseType: !3000)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !301, line: 31, elements: !303)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2991, file: !44, line: 1316, baseType: !104, size: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2991, file: !44, line: 1317, baseType: !104, size: 32, offset: 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2991, file: !44, line: 1318, baseType: !2990, size: 64, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2991, file: !44, line: 1319, baseType: !405, size: 64, offset: 128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2991, file: !44, line: 1320, baseType: !418, size: 128, align: 64, offset: 192)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2973, file: !44, line: 1084, baseType: !106, size: 64, offset: 1152)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2973, file: !44, line: 1085, baseType: !106, size: 64, offset: 1216)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2973, file: !44, line: 1087, baseType: !3009, size: 64, offset: 1280)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3011)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3012)
!3012 = !{!3013, !3017}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3011, file: !44, line: 1012, baseType: !3014, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{null, !2972, !2972}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3011, file: !44, line: 1013, baseType: !3018, size: 64, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{null, !2972}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2973, file: !44, line: 1088, baseType: !3022, size: 64, offset: 1344)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3024)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3025)
!3025 = !{!3026, !3030, !3034, !3035, !3039, !3043, !3047, !3051}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3024, file: !44, line: 1017, baseType: !3027, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!2958, !2958}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3024, file: !44, line: 1018, baseType: !3031, size: 64, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{null, !2958}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3024, file: !44, line: 1019, baseType: !3018, size: 64, offset: 128)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3024, file: !44, line: 1020, baseType: !3036, size: 64, offset: 192)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!104, !2972, !104}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3024, file: !44, line: 1021, baseType: !3040, size: 64, offset: 256)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!535, !2972}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3024, file: !44, line: 1022, baseType: !3044, size: 64, offset: 320)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!104, !2972, !104, !167}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3024, file: !44, line: 1023, baseType: !3048, size: 64, offset: 384)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{null, !2972, !866}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3024, file: !44, line: 1024, baseType: !3040, size: 64, offset: 448)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2973, file: !44, line: 1097, baseType: !3053, size: 256, offset: 1408)
!3053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2973, file: !44, line: 1089, size: 256, elements: !3054)
!3054 = !{!3055, !3064, !3070}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3053, file: !44, line: 1090, baseType: !3056, size: 256)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3057, line: 10, size: 256, elements: !3058)
!3057 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3058 = !{!3059, !3060, !3063}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3056, file: !3057, line: 11, baseType: !245, size: 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3056, file: !3057, line: 12, baseType: !3061, size: 64, offset: 64)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3057, line: 5, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3056, file: !3057, line: 13, baseType: !164, size: 128, offset: 128)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3053, file: !44, line: 1091, baseType: !3065, size: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3057, line: 17, size: 64, elements: !3066)
!3066 = !{!3067}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3065, file: !3057, line: 18, baseType: !3068, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3057, line: 16, flags: DIFlagFwdDecl)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3053, file: !44, line: 1096, baseType: !3071, size: 192)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3053, file: !44, line: 1092, size: 192, elements: !3072)
!3072 = !{!3073, !3074, !3075}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3071, file: !44, line: 1093, baseType: !164, size: 128)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3071, file: !44, line: 1094, baseType: !104, size: 32, offset: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3071, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2896, file: !44, line: 1843, baseType: !3077, size: 64, offset: 1280)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!361, !405, !766, !104, !375, !2907, !104}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2896, file: !44, line: 1844, baseType: !1146, size: 64, offset: 1344)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2896, file: !44, line: 1845, baseType: !3082, size: 64, offset: 1408)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!104, !104}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2896, file: !44, line: 1846, baseType: !2969, size: 64, offset: 1472)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2896, file: !44, line: 1847, baseType: !3087, size: 64, offset: 1536)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!361, !2130, !405, !2907, !375, !7}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2896, file: !44, line: 1848, baseType: !3091, size: 64, offset: 1600)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!361, !405, !2907, !2130, !375, !7}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2896, file: !44, line: 1849, baseType: !3095, size: 64, offset: 1664)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!104, !405, !115, !3098, !866}
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2896, file: !44, line: 1850, baseType: !3100, size: 64, offset: 1728)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!115, !405, !104, !576, !576}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2896, file: !44, line: 1852, baseType: !3104, size: 64, offset: 1792)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{null, !756, !405}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2896, file: !44, line: 1856, baseType: !3108, size: 64, offset: 1856)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!361, !405, !576, !405, !576, !375, !7}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2896, file: !44, line: 1858, baseType: !3112, size: 64, offset: 1920)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!576, !405, !576, !405, !576, !576, !7}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2896, file: !44, line: 1861, baseType: !2961, size: 64, offset: 1984)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2891, file: !44, line: 692, baseType: !709, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !475, file: !44, line: 694, baseType: !3118, size: 64, offset: 2560)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3120)
!3120 = !{!3121, !3122, !3123, !3124}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3119, file: !44, line: 1101, baseType: !289)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3119, file: !44, line: 1102, baseType: !164, size: 128)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3119, file: !44, line: 1103, baseType: !164, size: 128, offset: 128)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3119, file: !44, line: 1104, baseType: !164, size: 128, offset: 256)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !475, file: !44, line: 695, baseType: !780, size: 1216, align: 64, offset: 2624)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !475, file: !44, line: 696, baseType: !164, size: 128, offset: 3840)
!3127 = !DIDerivedType(tag: DW_TAG_member, scope: !475, file: !44, line: 697, baseType: !3128, size: 64, offset: 3968)
!3128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !475, file: !44, line: 697, size: 64, elements: !3129)
!3129 = !{!3130, !3131, !3132, !3135, !3136}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3128, file: !44, line: 698, baseType: !2130, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3128, file: !44, line: 699, baseType: !2646, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3128, file: !44, line: 700, baseType: !3133, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3128, file: !44, line: 701, baseType: !330, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3128, file: !44, line: 702, baseType: !7, size: 32)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !475, file: !44, line: 705, baseType: !178, size: 32, offset: 4032)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !475, file: !44, line: 708, baseType: !178, size: 32, offset: 4064)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !475, file: !44, line: 709, baseType: !2728, size: 64, offset: 4096)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !475, file: !44, line: 720, baseType: !107, size: 64, offset: 4160)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !436, file: !433, line: 98, baseType: !3142, size: 256, offset: 448)
!3142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 256, elements: !2261)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !436, file: !433, line: 101, baseType: !3144, size: 32, offset: 704)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3145, line: 25, size: 32, elements: !3146)
!3145 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3146 = !{!3147}
!3147 = !DIDerivedType(tag: DW_TAG_member, scope: !3144, file: !3145, line: 26, baseType: !3148, size: 32)
!3148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3144, file: !3145, line: 26, size: 32, elements: !3149)
!3149 = !{!3150}
!3150 = !DIDerivedType(tag: DW_TAG_member, scope: !3148, file: !3145, line: 30, baseType: !3151, size: 32)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3148, file: !3145, line: 30, size: 32, elements: !3152)
!3152 = !{!3153, !3154}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3151, file: !3145, line: 31, baseType: !289)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3151, file: !3145, line: 32, baseType: !104, size: 32)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !436, file: !433, line: 102, baseType: !2745, size: 64, offset: 768)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !436, file: !433, line: 103, baseType: !644, size: 64, offset: 832)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !436, file: !433, line: 104, baseType: !106, size: 64, offset: 896)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !436, file: !433, line: 105, baseType: !107, size: 64, offset: 960)
!3159 = !DIDerivedType(tag: DW_TAG_member, scope: !436, file: !433, line: 107, baseType: !3160, size: 128, offset: 1024)
!3160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !436, file: !433, line: 107, size: 128, elements: !3161)
!3161 = !{!3162, !3163}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3160, file: !433, line: 108, baseType: !164, size: 128)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3160, file: !433, line: 109, baseType: !3164, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !436, file: !433, line: 111, baseType: !164, size: 128, offset: 1152)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !436, file: !433, line: 112, baseType: !164, size: 128, offset: 1280)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !436, file: !433, line: 120, baseType: !3168, size: 128, offset: 1408)
!3168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !436, file: !433, line: 116, size: 128, elements: !3169)
!3169 = !{!3170, !3171, !3172}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3168, file: !433, line: 117, baseType: !684, size: 128)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3168, file: !433, line: 118, baseType: !450, size: 128)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3168, file: !433, line: 119, baseType: !418, size: 128, align: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !406, file: !44, line: 922, baseType: !474, size: 64, offset: 256)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !406, file: !44, line: 923, baseType: !2894, size: 64, offset: 320)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !406, file: !44, line: 929, baseType: !289, offset: 384)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !406, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !406, file: !44, line: 931, baseType: !816, size: 64, offset: 448)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !406, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !406, file: !44, line: 933, baseType: !2741, size: 32, offset: 544)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !406, file: !44, line: 934, baseType: !1216, size: 192, offset: 576)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !406, file: !44, line: 935, baseType: !576, size: 64, offset: 768)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !406, file: !44, line: 936, baseType: !3183, size: 192, offset: 832)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3184)
!3184 = !{!3185, !3186, !3187, !3188, !3189, !3190}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3183, file: !44, line: 886, baseType: !2994)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3183, file: !44, line: 887, baseType: !1504, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3183, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3183, file: !44, line: 889, baseType: !480, size: 32, offset: 96)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3183, file: !44, line: 889, baseType: !480, size: 32, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3183, file: !44, line: 890, baseType: !104, size: 32, offset: 160)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !406, file: !44, line: 937, baseType: !1580, size: 64, offset: 1024)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !406, file: !44, line: 938, baseType: !3193, size: 256, offset: 1088)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3194)
!3194 = !{!3195, !3196, !3197, !3198, !3199, !3200}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3193, file: !44, line: 897, baseType: !106, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3193, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3193, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3193, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3193, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3193, file: !44, line: 904, baseType: !576, size: 64, offset: 192)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !406, file: !44, line: 940, baseType: !108, size: 64, offset: 1344)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !406, file: !44, line: 945, baseType: !107, size: 64, offset: 1408)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !406, file: !44, line: 949, baseType: !164, size: 128, offset: 1472)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !406, file: !44, line: 950, baseType: !164, size: 128, offset: 1600)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !406, file: !44, line: 952, baseType: !779, size: 64, offset: 1728)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !406, file: !44, line: 953, baseType: !954, size: 32, offset: 1792)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !406, file: !44, line: 954, baseType: !954, size: 32, offset: 1824)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !396, file: !355, line: 174, baseType: !402, size: 64, offset: 320)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !396, file: !355, line: 176, baseType: !3210, size: 64, offset: 384)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!104, !405, !282, !395, !1026}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !384, file: !355, line: 90, baseType: !379, size: 64, offset: 192)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !384, file: !355, line: 91, baseType: !3215, size: 64, offset: 256)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !345, file: !277, line: 143, baseType: !3217, size: 64, offset: 256)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!3220, !282}
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3222)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3223)
!3223 = !{!3224, !3225, !3229, !3233, !3239, !3243}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3222, file: !61, line: 40, baseType: !60, size: 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3222, file: !61, line: 41, baseType: !3226, size: 64, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!535}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3222, file: !61, line: 42, baseType: !3230, size: 64, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!107}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3222, file: !61, line: 43, baseType: !3234, size: 64, offset: 192)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!2158, !3237}
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3222, file: !61, line: 44, baseType: !3240, size: 64, offset: 256)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!2158}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3222, file: !61, line: 45, baseType: !513, size: 64, offset: 320)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !345, file: !277, line: 144, baseType: !3245, size: 64, offset: 320)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!2158, !282}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !345, file: !277, line: 145, baseType: !3249, size: 64, offset: 384)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{null, !282, !3252, !3253}
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !276, file: !277, line: 70, baseType: !3255, size: 64, offset: 384)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !664, line: 123, size: 1024, elements: !3257)
!3257 = !{!3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3386, !3387, !3388, !3389, !3390}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3256, file: !664, line: 124, baseType: !792, size: 32)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3256, file: !664, line: 125, baseType: !792, size: 32, offset: 32)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3256, file: !664, line: 135, baseType: !3255, size: 64, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3256, file: !664, line: 136, baseType: !170, size: 64, offset: 128)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3256, file: !664, line: 138, baseType: !805, size: 192, align: 64, offset: 192)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3256, file: !664, line: 140, baseType: !2158, size: 64, offset: 384)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3256, file: !664, line: 141, baseType: !7, size: 32, offset: 448)
!3265 = !DIDerivedType(tag: DW_TAG_member, scope: !3256, file: !664, line: 142, baseType: !3266, size: 256, offset: 512)
!3266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3256, file: !664, line: 142, size: 256, elements: !3267)
!3267 = !{!3268, !3314, !3318}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3266, file: !664, line: 143, baseType: !3269, size: 192)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !664, line: 91, size: 192, elements: !3270)
!3270 = !{!3271, !3272, !3273}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3269, file: !664, line: 92, baseType: !106, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3269, file: !664, line: 94, baseType: !801, size: 64, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3269, file: !664, line: 100, baseType: !3274, size: 64, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !664, line: 180, size: 704, elements: !3276)
!3276 = !{!3277, !3278, !3279, !3286, !3287, !3288, !3312, !3313}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3275, file: !664, line: 182, baseType: !3255, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3275, file: !664, line: 183, baseType: !7, size: 32, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3275, file: !664, line: 186, baseType: !3280, size: 192, offset: 128)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3281, line: 19, size: 192, elements: !3282)
!3281 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3282 = !{!3283, !3284, !3285}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3280, file: !3281, line: 20, baseType: !784, size: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3280, file: !3281, line: 21, baseType: !7, size: 32, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3280, file: !3281, line: 22, baseType: !7, size: 32, offset: 160)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3275, file: !664, line: 187, baseType: !245, size: 32, offset: 320)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3275, file: !664, line: 188, baseType: !245, size: 32, offset: 352)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3275, file: !664, line: 189, baseType: !3289, size: 64, offset: 384)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !664, line: 168, size: 320, elements: !3291)
!3291 = !{!3292, !3296, !3300, !3304, !3308}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3290, file: !664, line: 169, baseType: !3293, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!104, !756, !3274}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3290, file: !664, line: 171, baseType: !3297, size: 64, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!104, !3255, !170, !370}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3290, file: !664, line: 173, baseType: !3301, size: 64, offset: 128)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!104, !3255}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3290, file: !664, line: 174, baseType: !3305, size: 64, offset: 192)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!104, !3255, !3255, !170}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3290, file: !664, line: 176, baseType: !3309, size: 64, offset: 256)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!104, !756, !3255, !3274}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3275, file: !664, line: 192, baseType: !164, size: 128, offset: 448)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3275, file: !664, line: 194, baseType: !1514, size: 128, offset: 576)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3266, file: !664, line: 144, baseType: !3315, size: 64)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !664, line: 103, size: 64, elements: !3316)
!3316 = !{!3317}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3315, file: !664, line: 104, baseType: !3255, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3266, file: !664, line: 145, baseType: !3319, size: 256)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !664, line: 107, size: 256, elements: !3320)
!3320 = !{!3321, !3381, !3384, !3385}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3319, file: !664, line: 108, baseType: !3322, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3324)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !664, line: 217, size: 768, elements: !3325)
!3325 = !{!3326, !3346, !3350, !3354, !3358, !3362, !3366, !3370, !3371, !3372, !3373, !3377}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3324, file: !664, line: 222, baseType: !3327, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!104, !3330}
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !664, line: 197, size: 1088, elements: !3332)
!3332 = !{!3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3331, file: !664, line: 199, baseType: !3255, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3331, file: !664, line: 200, baseType: !405, size: 64, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3331, file: !664, line: 201, baseType: !756, size: 64, offset: 128)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3331, file: !664, line: 202, baseType: !107, size: 64, offset: 192)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3331, file: !664, line: 205, baseType: !1216, size: 192, offset: 256)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3331, file: !664, line: 206, baseType: !1216, size: 192, offset: 448)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3331, file: !664, line: 207, baseType: !104, size: 32, offset: 640)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3331, file: !664, line: 208, baseType: !164, size: 128, offset: 704)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3331, file: !664, line: 209, baseType: !330, size: 64, offset: 832)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3331, file: !664, line: 211, baseType: !375, size: 64, offset: 896)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3331, file: !664, line: 212, baseType: !535, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3331, file: !664, line: 213, baseType: !535, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3331, file: !664, line: 214, baseType: !1054, size: 64, offset: 1024)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3324, file: !664, line: 223, baseType: !3347, size: 64, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{null, !3330}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3324, file: !664, line: 236, baseType: !3351, size: 64, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!104, !756, !107}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3324, file: !664, line: 238, baseType: !3355, size: 64, offset: 192)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!107, !756, !2907}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3324, file: !664, line: 239, baseType: !3359, size: 64, offset: 256)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!107, !756, !107, !2907}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3324, file: !664, line: 240, baseType: !3363, size: 64, offset: 320)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{null, !756, !107}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3324, file: !664, line: 242, baseType: !3367, size: 64, offset: 384)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!361, !3330, !330, !375, !576}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3324, file: !664, line: 252, baseType: !375, size: 64, offset: 448)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3324, file: !664, line: 259, baseType: !535, size: 8, offset: 512)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3324, file: !664, line: 260, baseType: !3367, size: 64, offset: 576)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3324, file: !664, line: 263, baseType: !3374, size: 64, offset: 640)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!2936, !3330, !2938}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3324, file: !664, line: 266, baseType: !3378, size: 64, offset: 704)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!104, !3330, !1026}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3319, file: !664, line: 109, baseType: !3382, size: 64, offset: 64)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !664, line: 31, flags: DIFlagFwdDecl)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3319, file: !664, line: 110, baseType: !576, size: 64, offset: 128)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3319, file: !664, line: 111, baseType: !3255, size: 64, offset: 192)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3256, file: !664, line: 148, baseType: !107, size: 64, offset: 768)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3256, file: !664, line: 154, baseType: !108, size: 64, offset: 832)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3256, file: !664, line: 156, baseType: !268, size: 16, offset: 896)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3256, file: !664, line: 157, baseType: !370, size: 16, offset: 912)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3256, file: !664, line: 158, baseType: !3391, size: 64, offset: 960)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !664, line: 32, flags: DIFlagFwdDecl)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !276, file: !277, line: 71, baseType: !3394, size: 32, offset: 448)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3395, line: 19, size: 32, elements: !3396)
!3395 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3396 = !{!3397}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3394, file: !3395, line: 20, baseType: !1272, size: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !276, file: !277, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !276, file: !277, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !276, file: !277, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !276, file: !277, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !276, file: !277, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !273, file: !73, line: 463, baseType: !272, size: 64, offset: 512)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !273, file: !73, line: 465, baseType: !3405, size: 64, offset: 576)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !273, file: !73, line: 467, baseType: !170, size: 64, offset: 640)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !273, file: !73, line: 468, baseType: !3409, size: 64, offset: 704)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3411)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3412)
!3412 = !{!3413, !3414, !3415, !3419, !3424, !3428}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3411, file: !73, line: 88, baseType: !170, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3411, file: !73, line: 89, baseType: !381, size: 64, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3411, file: !73, line: 90, baseType: !3416, size: 64, offset: 128)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!104, !272, !325}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3411, file: !73, line: 91, baseType: !3420, size: 64, offset: 192)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!330, !272, !3423, !3252, !3253}
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3411, file: !73, line: 93, baseType: !3425, size: 64, offset: 256)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{null, !272}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3411, file: !73, line: 95, baseType: !3429, size: 64, offset: 320)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3431)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3432)
!3432 = !{!3433, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3431, file: !80, line: 279, baseType: !3434, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!104, !272}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3431, file: !80, line: 280, baseType: !3425, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3431, file: !80, line: 281, baseType: !3434, size: 64, offset: 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3431, file: !80, line: 282, baseType: !3434, size: 64, offset: 192)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3431, file: !80, line: 283, baseType: !3434, size: 64, offset: 256)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3431, file: !80, line: 284, baseType: !3434, size: 64, offset: 320)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3431, file: !80, line: 285, baseType: !3434, size: 64, offset: 384)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3431, file: !80, line: 286, baseType: !3434, size: 64, offset: 448)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3431, file: !80, line: 287, baseType: !3434, size: 64, offset: 512)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3431, file: !80, line: 288, baseType: !3434, size: 64, offset: 576)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3431, file: !80, line: 289, baseType: !3434, size: 64, offset: 640)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3431, file: !80, line: 290, baseType: !3434, size: 64, offset: 704)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3431, file: !80, line: 291, baseType: !3434, size: 64, offset: 768)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3431, file: !80, line: 292, baseType: !3434, size: 64, offset: 832)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3431, file: !80, line: 293, baseType: !3434, size: 64, offset: 896)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3431, file: !80, line: 294, baseType: !3434, size: 64, offset: 960)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3431, file: !80, line: 295, baseType: !3434, size: 64, offset: 1024)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3431, file: !80, line: 296, baseType: !3434, size: 64, offset: 1088)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3431, file: !80, line: 297, baseType: !3434, size: 64, offset: 1152)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3431, file: !80, line: 298, baseType: !3434, size: 64, offset: 1216)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3431, file: !80, line: 299, baseType: !3434, size: 64, offset: 1280)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3431, file: !80, line: 300, baseType: !3434, size: 64, offset: 1344)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3431, file: !80, line: 301, baseType: !3434, size: 64, offset: 1408)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !273, file: !73, line: 470, baseType: !3460, size: 64, offset: 768)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3462, line: 82, size: 1408, elements: !3463)
!3462 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3463 = !{!3464, !3465, !3466, !3467, !3468, !3469, !3470, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3543, !3546, !3547}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3461, file: !3462, line: 83, baseType: !170, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3461, file: !3462, line: 84, baseType: !170, size: 64, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3461, file: !3462, line: 85, baseType: !272, size: 64, offset: 128)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3461, file: !3462, line: 86, baseType: !381, size: 64, offset: 192)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3461, file: !3462, line: 87, baseType: !381, size: 64, offset: 256)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3461, file: !3462, line: 88, baseType: !381, size: 64, offset: 320)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3461, file: !3462, line: 90, baseType: !3471, size: 64, offset: 384)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!104, !272, !3474}
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3476)
!3476 = !{!3477, !3478, !3479, !3480, !3481, !3482, !3483, !3495, !3507, !3508, !3509, !3510, !3511, !3519, !3520, !3521, !3522, !3523, !3524}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3475, file: !67, line: 96, baseType: !170, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3475, file: !67, line: 97, baseType: !3460, size: 64, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3475, file: !67, line: 99, baseType: !99, size: 64, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3475, file: !67, line: 100, baseType: !170, size: 64, offset: 192)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3475, file: !67, line: 102, baseType: !535, size: 8, offset: 256)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3475, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3475, file: !67, line: 105, baseType: !3484, size: 64, offset: 320)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3486)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !175, line: 262, size: 1600, elements: !3487)
!3487 = !{!3488, !3489, !3490, !3494}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3486, file: !175, line: 263, baseType: !2731, size: 256)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3486, file: !175, line: 264, baseType: !2731, size: 256, offset: 256)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3486, file: !175, line: 265, baseType: !3491, size: 1024, offset: 512)
!3491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 1024, elements: !3492)
!3492 = !{!3493}
!3493 = !DISubrange(count: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3486, file: !175, line: 266, baseType: !2158, size: 64, offset: 1536)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3475, file: !67, line: 106, baseType: !3496, size: 64, offset: 384)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3498)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !175, line: 210, size: 256, elements: !3499)
!3499 = !{!3500, !3504, !3505, !3506}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3498, file: !175, line: 211, baseType: !3501, size: 72)
!3501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1395, size: 72, elements: !3502)
!3502 = !{!3503}
!3503 = !DISubrange(count: 9)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3498, file: !175, line: 212, baseType: !185, size: 64, offset: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3498, file: !175, line: 213, baseType: !178, size: 32, offset: 192)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3498, file: !175, line: 214, baseType: !178, size: 32, offset: 224)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3475, file: !67, line: 108, baseType: !3434, size: 64, offset: 448)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3475, file: !67, line: 109, baseType: !3425, size: 64, offset: 512)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3475, file: !67, line: 110, baseType: !3434, size: 64, offset: 576)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3475, file: !67, line: 111, baseType: !3425, size: 64, offset: 640)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3475, file: !67, line: 112, baseType: !3512, size: 64, offset: 704)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!104, !272, !3515}
!3515 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3516)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3517)
!3517 = !{!3518}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3516, file: !80, line: 51, baseType: !104, size: 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3475, file: !67, line: 113, baseType: !3434, size: 64, offset: 768)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3475, file: !67, line: 114, baseType: !381, size: 64, offset: 832)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3475, file: !67, line: 115, baseType: !381, size: 64, offset: 896)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3475, file: !67, line: 117, baseType: !3429, size: 64, offset: 960)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3475, file: !67, line: 118, baseType: !3425, size: 64, offset: 1024)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3475, file: !67, line: 120, baseType: !3525, size: 64, offset: 1088)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3461, file: !3462, line: 91, baseType: !3416, size: 64, offset: 448)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3461, file: !3462, line: 92, baseType: !3434, size: 64, offset: 512)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3461, file: !3462, line: 93, baseType: !3425, size: 64, offset: 576)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3461, file: !3462, line: 94, baseType: !3434, size: 64, offset: 640)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3461, file: !3462, line: 95, baseType: !3425, size: 64, offset: 704)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3461, file: !3462, line: 97, baseType: !3434, size: 64, offset: 768)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3461, file: !3462, line: 98, baseType: !3434, size: 64, offset: 832)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3461, file: !3462, line: 100, baseType: !3512, size: 64, offset: 896)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3461, file: !3462, line: 101, baseType: !3434, size: 64, offset: 960)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3461, file: !3462, line: 103, baseType: !3434, size: 64, offset: 1024)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3461, file: !3462, line: 105, baseType: !3434, size: 64, offset: 1088)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3461, file: !3462, line: 107, baseType: !3429, size: 64, offset: 1152)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3461, file: !3462, line: 109, baseType: !3540, size: 64, offset: 1216)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3542)
!3542 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3462, line: 109, flags: DIFlagFwdDecl)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3461, file: !3462, line: 111, baseType: !3544, size: 64, offset: 1280)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3462, line: 111, flags: DIFlagFwdDecl)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3461, file: !3462, line: 112, baseType: !690, offset: 1344)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3461, file: !3462, line: 114, baseType: !535, size: 8, offset: 1344)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !273, file: !73, line: 471, baseType: !3474, size: 64, offset: 832)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !273, file: !73, line: 473, baseType: !107, size: 64, offset: 896)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !273, file: !73, line: 475, baseType: !107, size: 64, offset: 960)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !273, file: !73, line: 480, baseType: !1216, size: 192, offset: 1024)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !273, file: !73, line: 484, baseType: !3553, size: 576, offset: 1216)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3554)
!3554 = !{!3555, !3556, !3557, !3558, !3559, !3560}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3553, file: !73, line: 362, baseType: !164, size: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3553, file: !73, line: 363, baseType: !164, size: 128, offset: 128)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3553, file: !73, line: 364, baseType: !164, size: 128, offset: 256)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3553, file: !73, line: 365, baseType: !164, size: 128, offset: 384)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3553, file: !73, line: 366, baseType: !535, size: 8, offset: 512)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3553, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !273, file: !73, line: 485, baseType: !3562, size: 2304, offset: 1792)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3563)
!3563 = !{!3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3659, !3663}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3562, file: !80, line: 566, baseType: !3515, size: 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3562, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3562, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3562, file: !80, line: 569, baseType: !535, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3562, file: !80, line: 570, baseType: !535, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3562, file: !80, line: 571, baseType: !535, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3562, file: !80, line: 572, baseType: !535, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3562, file: !80, line: 573, baseType: !535, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3562, file: !80, line: 574, baseType: !535, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3562, file: !80, line: 575, baseType: !535, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3562, file: !80, line: 576, baseType: !535, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3562, file: !80, line: 577, baseType: !245, size: 32, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3562, file: !80, line: 578, baseType: !289, offset: 96)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3562, file: !80, line: 580, baseType: !164, size: 128, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3562, file: !80, line: 581, baseType: !1535, size: 192, offset: 256)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3562, file: !80, line: 582, baseType: !3580, size: 64, offset: 448)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3582, line: 43, size: 1472, elements: !3583)
!3582 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3583 = !{!3584, !3585, !3586, !3587, !3588, !3591, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3581, file: !3582, line: 44, baseType: !170, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3581, file: !3582, line: 45, baseType: !104, size: 32, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3581, file: !3582, line: 46, baseType: !164, size: 128, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3581, file: !3582, line: 47, baseType: !289, offset: 256)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3581, file: !3582, line: 48, baseType: !3589, size: 64, offset: 256)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3581, file: !3582, line: 49, baseType: !3592, size: 320, offset: 320)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3593, line: 11, size: 320, elements: !3594)
!3593 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3594 = !{!3595, !3596, !3597, !3602}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3592, file: !3593, line: 16, baseType: !684, size: 128)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3592, file: !3593, line: 17, baseType: !106, size: 64, offset: 128)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3592, file: !3593, line: 18, baseType: !3598, size: 64, offset: 192)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{null, !3601}
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3592, file: !3593, line: 19, baseType: !245, size: 32, offset: 256)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3581, file: !3582, line: 50, baseType: !106, size: 64, offset: 640)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3581, file: !3582, line: 51, baseType: !1342, size: 64, offset: 704)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3581, file: !3582, line: 52, baseType: !1342, size: 64, offset: 768)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3581, file: !3582, line: 53, baseType: !1342, size: 64, offset: 832)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3581, file: !3582, line: 54, baseType: !1342, size: 64, offset: 896)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3581, file: !3582, line: 55, baseType: !1342, size: 64, offset: 960)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3581, file: !3582, line: 56, baseType: !106, size: 64, offset: 1024)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3581, file: !3582, line: 57, baseType: !106, size: 64, offset: 1088)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3581, file: !3582, line: 58, baseType: !106, size: 64, offset: 1152)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3581, file: !3582, line: 59, baseType: !106, size: 64, offset: 1216)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3581, file: !3582, line: 60, baseType: !106, size: 64, offset: 1280)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3581, file: !3582, line: 61, baseType: !272, size: 64, offset: 1344)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3581, file: !3582, line: 62, baseType: !535, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3581, file: !3582, line: 63, baseType: !535, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3562, file: !80, line: 583, baseType: !535, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3562, file: !80, line: 584, baseType: !535, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3562, file: !80, line: 585, baseType: !535, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3562, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3562, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3562, file: !80, line: 592, baseType: !1334, size: 512, offset: 576)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3562, file: !80, line: 593, baseType: !108, size: 64, offset: 1088)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3562, file: !80, line: 594, baseType: !1989, size: 256, offset: 1152)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3562, file: !80, line: 595, baseType: !1514, size: 128, offset: 1408)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3562, file: !80, line: 596, baseType: !3589, size: 64, offset: 1536)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3562, file: !80, line: 597, baseType: !792, size: 32, offset: 1600)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3562, file: !80, line: 598, baseType: !792, size: 32, offset: 1632)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3562, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3562, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3562, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3562, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3562, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3562, file: !80, line: 604, baseType: !535, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3562, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3562, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3562, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3562, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3562, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3562, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3562, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3562, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3562, file: !80, line: 613, baseType: !104, size: 32, offset: 1792)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3562, file: !80, line: 614, baseType: !104, size: 32, offset: 1824)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3562, file: !80, line: 615, baseType: !108, size: 64, offset: 1856)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3562, file: !80, line: 616, baseType: !108, size: 64, offset: 1920)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3562, file: !80, line: 617, baseType: !108, size: 64, offset: 1984)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3562, file: !80, line: 618, baseType: !108, size: 64, offset: 2048)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3562, file: !80, line: 620, baseType: !3650, size: 64, offset: 2112)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3652)
!3652 = !{!3653, !3654, !3655, !3656}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3651, file: !80, line: 537, baseType: !289)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3651, file: !80, line: 538, baseType: !7, size: 32)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3651, file: !80, line: 540, baseType: !164, size: 128, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3651, file: !80, line: 543, baseType: !3657, size: 64, offset: 192)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3562, file: !80, line: 621, baseType: !3660, size: 64, offset: 2176)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{null, !272, !1478}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3562, file: !80, line: 622, baseType: !3664, size: 64, offset: 2240)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !273, file: !73, line: 486, baseType: !3667, size: 64, offset: 4096)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3669)
!3669 = !{!3670, !3671, !3672, !3676, !3677, !3678}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3668, file: !80, line: 643, baseType: !3431, size: 1472)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3668, file: !80, line: 644, baseType: !3434, size: 64, offset: 1472)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3668, file: !80, line: 645, baseType: !3673, size: 64, offset: 1536)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{null, !272, !535}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3668, file: !80, line: 646, baseType: !3434, size: 64, offset: 1600)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3668, file: !80, line: 647, baseType: !3425, size: 64, offset: 1664)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3668, file: !80, line: 648, baseType: !3425, size: 64, offset: 1728)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !273, file: !73, line: 493, baseType: !3680, size: 64, offset: 4160)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !273, file: !73, line: 499, baseType: !164, size: 128, offset: 4224)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !273, file: !73, line: 502, baseType: !3684, size: 64, offset: 4352)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3686)
!3686 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !273, file: !73, line: 504, baseType: !3688, size: 64, offset: 4416)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !273, file: !73, line: 505, baseType: !108, size: 64, offset: 4480)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !273, file: !73, line: 510, baseType: !108, size: 64, offset: 4544)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !273, file: !73, line: 511, baseType: !3692, size: 64, offset: 4608)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3694)
!3694 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !273, file: !73, line: 513, baseType: !3696, size: 64, offset: 4672)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3698)
!3698 = !{!3699, !3700}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3697, file: !73, line: 293, baseType: !7, size: 32)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3697, file: !73, line: 294, baseType: !106, size: 64, offset: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !273, file: !73, line: 515, baseType: !164, size: 128, offset: 4736)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !273, file: !73, line: 526, baseType: !3703, offset: 4864)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3704, line: 5, elements: !303)
!3704 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !273, file: !73, line: 528, baseType: !3706, size: 64, offset: 4864)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3708, line: 14, flags: DIFlagFwdDecl)
!3708 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !273, file: !73, line: 529, baseType: !3710, size: 64, offset: 4928)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3712, line: 17, size: 192, elements: !3713)
!3712 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3713 = !{!3714, !3715, !3798}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3711, file: !3712, line: 18, baseType: !3710, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3711, file: !3712, line: 19, baseType: !3716, size: 64, offset: 64)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3718)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3712, line: 110, size: 1152, elements: !3719)
!3719 = !{!3720, !3724, !3728, !3734, !3740, !3744, !3748, !3753, !3757, !3758, !3762, !3766, !3770, !3781, !3782, !3783, !3784, !3794}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3718, file: !3712, line: 111, baseType: !3721, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!3710, !3710}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3718, file: !3712, line: 112, baseType: !3725, size: 64, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{null, !3710}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3718, file: !3712, line: 113, baseType: !3729, size: 64, offset: 128)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!535, !3732}
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3711)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3718, file: !3712, line: 114, baseType: !3735, size: 64, offset: 192)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!2158, !3732, !3738}
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3718, file: !3712, line: 116, baseType: !3741, size: 64, offset: 256)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!535, !3732, !170}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3718, file: !3712, line: 118, baseType: !3745, size: 64, offset: 320)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!104, !3732, !170, !7, !107, !375}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3718, file: !3712, line: 123, baseType: !3749, size: 64, offset: 384)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!104, !3732, !170, !3752, !375}
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3718, file: !3712, line: 126, baseType: !3754, size: 64, offset: 448)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!170, !3732}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3718, file: !3712, line: 127, baseType: !3754, size: 64, offset: 512)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3718, file: !3712, line: 128, baseType: !3759, size: 64, offset: 576)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!3710, !3732}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3718, file: !3712, line: 130, baseType: !3763, size: 64, offset: 640)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!3710, !3732, !3710}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3718, file: !3712, line: 133, baseType: !3767, size: 64, offset: 704)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!3710, !3732, !170}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3718, file: !3712, line: 135, baseType: !3771, size: 64, offset: 768)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!104, !3732, !170, !170, !7, !7, !3774}
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3712, line: 43, size: 640, elements: !3776)
!3776 = !{!3777, !3778, !3779}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3775, file: !3712, line: 44, baseType: !3710, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3775, file: !3712, line: 45, baseType: !7, size: 32, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3775, file: !3712, line: 46, baseType: !3780, size: 512, offset: 128)
!3780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 512, elements: !1372)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3718, file: !3712, line: 140, baseType: !3763, size: 64, offset: 832)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3718, file: !3712, line: 143, baseType: !3759, size: 64, offset: 896)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3718, file: !3712, line: 145, baseType: !3721, size: 64, offset: 960)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3718, file: !3712, line: 146, baseType: !3785, size: 64, offset: 1024)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!104, !3732, !3788}
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3712, line: 29, size: 128, elements: !3790)
!3790 = !{!3791, !3792, !3793}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3789, file: !3712, line: 30, baseType: !7, size: 32)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3789, file: !3712, line: 31, baseType: !7, size: 32, offset: 32)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3789, file: !3712, line: 32, baseType: !3732, size: 64, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3718, file: !3712, line: 148, baseType: !3795, size: 64, offset: 1088)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!104, !3732, !272}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3711, file: !3712, line: 20, baseType: !272, size: 64, offset: 128)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !273, file: !73, line: 534, baseType: !558, size: 32, offset: 4992)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !273, file: !73, line: 535, baseType: !245, size: 32, offset: 5024)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !273, file: !73, line: 537, baseType: !289, offset: 5056)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !273, file: !73, line: 538, baseType: !164, size: 128, offset: 5056)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !273, file: !73, line: 540, baseType: !3804, size: 64, offset: 5184)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3806, line: 54, size: 960, elements: !3807)
!3806 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3807 = !{!3808, !3809, !3810, !3811, !3812, !3813, !3814, !3818, !3822, !3823, !3824, !3825, !3829, !3833, !3834}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3805, file: !3806, line: 55, baseType: !170, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3805, file: !3806, line: 56, baseType: !99, size: 64, offset: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3805, file: !3806, line: 58, baseType: !381, size: 64, offset: 128)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3805, file: !3806, line: 59, baseType: !381, size: 64, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3805, file: !3806, line: 60, baseType: !282, size: 64, offset: 256)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3805, file: !3806, line: 62, baseType: !3416, size: 64, offset: 320)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3805, file: !3806, line: 63, baseType: !3815, size: 64, offset: 384)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!330, !272, !3423}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3805, file: !3806, line: 65, baseType: !3819, size: 64, offset: 448)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{null, !3804}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3805, file: !3806, line: 66, baseType: !3425, size: 64, offset: 512)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3805, file: !3806, line: 68, baseType: !3434, size: 64, offset: 576)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3805, file: !3806, line: 70, baseType: !3220, size: 64, offset: 640)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3805, file: !3806, line: 71, baseType: !3826, size: 64, offset: 704)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!2158, !272}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3805, file: !3806, line: 73, baseType: !3830, size: 64, offset: 768)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{null, !272, !3252, !3253}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3805, file: !3806, line: 75, baseType: !3429, size: 64, offset: 832)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3805, file: !3806, line: 77, baseType: !3544, size: 64, offset: 896)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !273, file: !73, line: 541, baseType: !381, size: 64, offset: 5248)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !273, file: !73, line: 543, baseType: !3425, size: 64, offset: 5312)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !273, file: !73, line: 544, baseType: !3838, size: 64, offset: 5376)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !273, file: !73, line: 545, baseType: !3841, size: 64, offset: 5440)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !273, file: !73, line: 547, baseType: !535, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !273, file: !73, line: 548, baseType: !535, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !273, file: !73, line: 549, baseType: !535, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !273, file: !73, line: 550, baseType: !535, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !196, file: !161, line: 635, baseType: !273, size: 5568, offset: 2304)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !196, file: !161, line: 636, baseType: !395, size: 64, offset: 7872)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !196, file: !161, line: 637, baseType: !395, size: 64, offset: 7936)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !196, file: !161, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !191, file: !161, line: 312, baseType: !195, size: 64, offset: 192)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !191, file: !161, line: 314, baseType: !107, size: 64, offset: 256)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !191, file: !161, line: 315, baseType: !255, size: 64, offset: 320)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !191, file: !161, line: 316, baseType: !3855, size: 64, offset: 384)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !161, line: 69, size: 832, elements: !3857)
!3857 = !{!3858, !3859, !3860, !3863, !3864}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3856, file: !161, line: 70, baseType: !195, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3856, file: !161, line: 71, baseType: !164, size: 128, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !3856, file: !161, line: 72, baseType: !3861, size: 64, offset: 192)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !161, line: 72, flags: DIFlagFwdDecl)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3856, file: !161, line: 73, baseType: !259, size: 8, offset: 256)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3856, file: !161, line: 74, baseType: !276, size: 512, offset: 320)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !191, file: !161, line: 318, baseType: !7, size: 32, offset: 448)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !191, file: !161, line: 319, baseType: !268, size: 16, offset: 480)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !191, file: !161, line: 320, baseType: !268, size: 16, offset: 496)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !191, file: !161, line: 321, baseType: !268, size: 16, offset: 512)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !191, file: !161, line: 322, baseType: !268, size: 16, offset: 528)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !191, file: !161, line: 323, baseType: !7, size: 32, offset: 544)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !191, file: !161, line: 324, baseType: !1394, size: 8, offset: 576)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !191, file: !161, line: 325, baseType: !1394, size: 8, offset: 584)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !191, file: !161, line: 330, baseType: !1394, size: 8, offset: 592)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !191, file: !161, line: 331, baseType: !1394, size: 8, offset: 600)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !191, file: !161, line: 332, baseType: !1394, size: 8, offset: 608)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !191, file: !161, line: 333, baseType: !1394, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !191, file: !161, line: 334, baseType: !1394, size: 8, offset: 624)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !191, file: !161, line: 335, baseType: !1394, size: 8, offset: 632)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !191, file: !161, line: 336, baseType: !904, size: 16, offset: 640)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !191, file: !161, line: 337, baseType: !105, size: 64, offset: 704)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !191, file: !161, line: 339, baseType: !3882, size: 64, offset: 768)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !191, file: !161, line: 340, baseType: !108, size: 64, offset: 832)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !191, file: !161, line: 346, baseType: !3697, size: 128, offset: 896)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !191, file: !161, line: 348, baseType: !3886, size: 32, offset: 1024)
!3886 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !161, line: 155, baseType: !104)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !191, file: !161, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !191, file: !161, line: 352, baseType: !1394, size: 8, offset: 1064)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !191, file: !161, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !191, file: !161, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !191, file: !161, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !191, file: !161, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !191, file: !161, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !191, file: !161, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !191, file: !161, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !191, file: !161, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !191, file: !161, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !191, file: !161, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !191, file: !161, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !191, file: !161, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !191, file: !161, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !191, file: !161, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !191, file: !161, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !191, file: !161, line: 376, baseType: !7, size: 32, offset: 1120)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !191, file: !161, line: 377, baseType: !7, size: 32, offset: 1152)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !191, file: !161, line: 380, baseType: !3907, size: 64, offset: 1216)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !161, line: 303, flags: DIFlagFwdDecl)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !191, file: !161, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !191, file: !161, line: 383, baseType: !104, size: 32, offset: 1312)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !191, file: !161, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !191, file: !161, line: 387, baseType: !3913, size: 32, offset: 1376)
!3913 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !161, line: 180, baseType: !7)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !191, file: !161, line: 388, baseType: !273, size: 5568, offset: 1408)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !191, file: !161, line: 390, baseType: !104, size: 32, offset: 6976)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !191, file: !161, line: 396, baseType: !7, size: 32, offset: 7008)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !191, file: !161, line: 397, baseType: !3918, size: 8704, offset: 7040)
!3918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 8704, elements: !3919)
!3919 = !{!3920}
!3920 = !DISubrange(count: 17)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !191, file: !161, line: 399, baseType: !535, size: 8, offset: 15744)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !191, file: !161, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !191, file: !161, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !191, file: !161, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !191, file: !161, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !191, file: !161, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !191, file: !161, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !191, file: !161, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !191, file: !161, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !191, file: !161, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !191, file: !161, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !191, file: !161, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !191, file: !161, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !191, file: !161, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !191, file: !161, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !191, file: !161, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !191, file: !161, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !191, file: !161, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !191, file: !161, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !191, file: !161, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !191, file: !161, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !191, file: !161, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !191, file: !161, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !191, file: !161, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !191, file: !161, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !191, file: !161, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !191, file: !161, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !191, file: !161, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !191, file: !161, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !191, file: !161, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !191, file: !161, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !191, file: !161, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !191, file: !161, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !191, file: !161, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !191, file: !161, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !191, file: !161, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !191, file: !161, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !191, file: !161, line: 450, baseType: !3959, size: 16, offset: 15792)
!3959 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !161, line: 206, baseType: !268)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !191, file: !161, line: 451, baseType: !792, size: 32, offset: 15808)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !191, file: !161, line: 453, baseType: !3962, size: 512, offset: 15840)
!3962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 512, elements: !1768)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !191, file: !161, line: 454, baseType: !680, size: 64, offset: 16384)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !191, file: !161, line: 455, baseType: !395, size: 64, offset: 16448)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !191, file: !161, line: 456, baseType: !104, size: 32, offset: 16512)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !191, file: !161, line: 457, baseType: !3967, size: 1088, offset: 16576)
!3967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 1088, elements: !3919)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !191, file: !161, line: 458, baseType: !3967, size: 1088, offset: 17664)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !191, file: !161, line: 469, baseType: !381, size: 64, offset: 18752)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !191, file: !161, line: 471, baseType: !3971, size: 64, offset: 18816)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !161, line: 304, flags: DIFlagFwdDecl)
!3973 = !DIDerivedType(tag: DW_TAG_member, scope: !191, file: !161, line: 478, baseType: !3974, size: 64, offset: 18880)
!3974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !191, file: !161, line: 478, size: 64, elements: !3975)
!3975 = !{!3976, !3979}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !3974, file: !161, line: 479, baseType: !3977, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !161, line: 305, flags: DIFlagFwdDecl)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !3974, file: !161, line: 480, baseType: !190, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !191, file: !161, line: 482, baseType: !904, size: 16, offset: 18944)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !191, file: !161, line: 483, baseType: !1394, size: 8, offset: 18960)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !191, file: !161, line: 497, baseType: !904, size: 16, offset: 18976)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !191, file: !161, line: 498, baseType: !212, size: 64, offset: 19008)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !191, file: !161, line: 499, baseType: !375, size: 64, offset: 19072)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !191, file: !161, line: 500, baseType: !330, size: 64, offset: 19136)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !191, file: !161, line: 502, baseType: !106, size: 64, offset: 19200)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !160, file: !161, line: 863, baseType: !3988, size: 64, offset: 320)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{null, !190}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !160, file: !161, line: 864, baseType: !3992, size: 64, offset: 384)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!104, !190, !3515}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !160, file: !161, line: 865, baseType: !3996, size: 64, offset: 448)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!104, !190}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !160, file: !161, line: 866, baseType: !3988, size: 64, offset: 512)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !160, file: !161, line: 867, baseType: !4001, size: 64, offset: 576)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!104, !190, !104}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !160, file: !161, line: 868, baseType: !4005, size: 64, offset: 640)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4007)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !161, line: 795, size: 384, elements: !4008)
!4008 = !{!4009, !4014, !4018, !4019, !4020, !4021}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4007, file: !161, line: 797, baseType: !4010, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!4013, !190, !3913}
!4013 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !161, line: 772, baseType: !7)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4007, file: !161, line: 801, baseType: !4015, size: 64, offset: 64)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!4013, !190}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4007, file: !161, line: 804, baseType: !4015, size: 64, offset: 128)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4007, file: !161, line: 807, baseType: !3988, size: 64, offset: 192)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4007, file: !161, line: 808, baseType: !3988, size: 64, offset: 256)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4007, file: !161, line: 811, baseType: !3988, size: 64, offset: 320)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !160, file: !161, line: 869, baseType: !381, size: 64, offset: 704)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !160, file: !161, line: 870, baseType: !3475, size: 1152, offset: 768)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !160, file: !161, line: 871, baseType: !4025, size: 128, offset: 1920)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !161, line: 759, size: 128, elements: !4026)
!4026 = !{!4027, !4028}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4025, file: !161, line: 760, baseType: !289)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4025, file: !161, line: 761, baseType: !164, size: 128)
!4029 = !DIGlobalVariableExpression(var: !4030, expr: !DIExpression())
!4030 = distinct !DIGlobalVariable(name: "fam15h_power_id_table", scope: !2, file: !3, line: 482, type: !4031, isLocal: true, isDefinition: true)
!4031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 1792, elements: !4032)
!4032 = !{!4033}
!4033 = !DISubrange(count: 7)
!4034 = !DIGlobalVariableExpression(var: !4035, expr: !DIExpression())
!4035 = distinct !DIGlobalVariable(name: "affected_device", scope: !2, file: !3, line: 347, type: !4036, isLocal: true, isDefinition: true)
!4036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 512, elements: !1602)
!4037 = !DIGlobalVariableExpression(var: !4038, expr: !DIExpression())
!4038 = distinct !DIGlobalVariable(name: "dev_attr_power1_crit", scope: !2, file: !3, line: 132, type: !4039, isLocal: true, isDefinition: true)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !73, line: 99, size: 256, elements: !4040)
!4040 = !{!4041, !4042, !4047}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4039, file: !73, line: 100, baseType: !366, size: 128)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4039, file: !73, line: 101, baseType: !4043, size: 64, offset: 128)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!361, !272, !4046, !330}
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4039, file: !73, line: 103, baseType: !4048, size: 64, offset: 192)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!361, !272, !4046, !170, !375}
!4051 = !DIGlobalVariableExpression(var: !4052, expr: !DIExpression())
!4052 = distinct !DIGlobalVariable(name: "dev_attr_power1_input", scope: !2, file: !3, line: 123, type: !4039, isLocal: true, isDefinition: true)
!4053 = !DIGlobalVariableExpression(var: !4054, expr: !DIExpression())
!4054 = distinct !DIGlobalVariable(name: "dev_attr_power1_average", scope: !2, file: !3, line: 253, type: !4039, isLocal: true, isDefinition: true)
!4055 = !DIGlobalVariableExpression(var: !4056, expr: !DIExpression())
!4056 = distinct !DIGlobalVariable(name: "dev_attr_power1_average_interval", scope: !2, file: !3, line: 287, type: !4039, isLocal: true, isDefinition: true)
!4057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 544, elements: !4058)
!4058 = !{!4059}
!4059 = !DISubrange(count: 68)
!4060 = !{!"rsp"}
!4061 = !{i32 7, !"Dwarf Version", i32 4}
!4062 = !{i32 2, !"Debug Info Version", i32 3}
!4063 = !{i32 1, !"wchar_size", i32 2}
!4064 = !{i32 1, !"Code Model", i32 2}
!4065 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4066 = distinct !DISubprogram(name: "fam15h_power_driver_init", scope: !3, file: !3, line: 500, type: !4067, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!104}
!4069 = !DILocation(line: 500, column: 1, scope: !4066)
!4070 = distinct !DISubprogram(name: "fam15h_power_driver_exit", scope: !3, file: !3, line: 500, type: !156, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4071 = !DILocation(line: 500, column: 1, scope: !4070)
!4072 = distinct !DISubprogram(name: "fam15h_power_probe", scope: !3, file: !3, line: 446, type: !188, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4073 = !DILocalVariable(name: "pdev", arg: 1, scope: !4072, file: !3, line: 446, type: !190)
!4074 = !DILocation(line: 446, column: 47, scope: !4072)
!4075 = !DILocalVariable(name: "id", arg: 2, scope: !4072, file: !3, line: 447, type: !172)
!4076 = !DILocation(line: 447, column: 38, scope: !4072)
!4077 = !DILocalVariable(name: "data", scope: !4072, file: !3, line: 449, type: !4078)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fam15h_power_data", file: !3, line: 46, size: 2048, elements: !4080)
!4080 = !{!4081, !4082, !4083, !4084, !4085, !4086, !4088, !4089, !4090, !4091, !4092, !4094}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "pdev", scope: !4079, file: !3, line: 47, baseType: !190, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "tdp_to_watts", scope: !4079, file: !3, line: 48, baseType: !7, size: 32, offset: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "base_tdp", scope: !4079, file: !3, line: 49, baseType: !7, size: 32, offset: 96)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "processor_pwr_watts", scope: !4079, file: !3, line: 50, baseType: !7, size: 32, offset: 128)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pwr_sample_ratio", scope: !4079, file: !3, line: 51, baseType: !7, size: 32, offset: 160)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4079, file: !3, line: 52, baseType: !4087, size: 128, offset: 192)
!4087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 128, elements: !1602)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !4079, file: !3, line: 53, baseType: !384, size: 320, offset: 320)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "max_cu_acc_power", scope: !4079, file: !3, line: 55, baseType: !108, size: 64, offset: 640)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "cu_acc_power", scope: !4079, file: !3, line: 57, baseType: !3780, size: 512, offset: 704)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_sw_pwr_ptsc", scope: !4079, file: !3, line: 59, baseType: !3780, size: 512, offset: 1216)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "cu_on", scope: !4079, file: !3, line: 61, baseType: !4093, size: 256, offset: 1728)
!4093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 256, elements: !1372)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "power_period", scope: !4079, file: !3, line: 62, baseType: !106, size: 64, offset: 1984)
!4095 = !DILocation(line: 449, column: 28, scope: !4072)
!4096 = !DILocalVariable(name: "dev", scope: !4072, file: !3, line: 450, type: !272)
!4097 = !DILocation(line: 450, column: 17, scope: !4072)
!4098 = !DILocation(line: 450, column: 24, scope: !4072)
!4099 = !DILocation(line: 450, column: 30, scope: !4072)
!4100 = !DILocalVariable(name: "hwmon_dev", scope: !4072, file: !3, line: 451, type: !272)
!4101 = !DILocation(line: 451, column: 17, scope: !4072)
!4102 = !DILocalVariable(name: "ret", scope: !4072, file: !3, line: 452, type: !104)
!4103 = !DILocation(line: 452, column: 6, scope: !4072)
!4104 = !DILocation(line: 459, column: 21, scope: !4072)
!4105 = !DILocation(line: 459, column: 2, scope: !4072)
!4106 = !DILocation(line: 461, column: 32, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4072, file: !3, line: 461, column: 6)
!4108 = !DILocation(line: 461, column: 7, scope: !4107)
!4109 = !DILocation(line: 461, column: 6, scope: !4072)
!4110 = !DILocation(line: 462, column: 3, scope: !4107)
!4111 = !DILocation(line: 464, column: 22, scope: !4072)
!4112 = !DILocation(line: 464, column: 9, scope: !4072)
!4113 = !DILocation(line: 464, column: 7, scope: !4072)
!4114 = !DILocation(line: 465, column: 7, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4072, file: !3, line: 465, column: 6)
!4116 = !DILocation(line: 465, column: 6, scope: !4072)
!4117 = !DILocation(line: 466, column: 3, scope: !4115)
!4118 = !DILocation(line: 468, column: 31, scope: !4072)
!4119 = !DILocation(line: 468, column: 37, scope: !4072)
!4120 = !DILocation(line: 468, column: 8, scope: !4072)
!4121 = !DILocation(line: 468, column: 6, scope: !4072)
!4122 = !DILocation(line: 469, column: 6, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4072, file: !3, line: 469, column: 6)
!4124 = !DILocation(line: 469, column: 6, scope: !4072)
!4125 = !DILocation(line: 470, column: 10, scope: !4123)
!4126 = !DILocation(line: 470, column: 3, scope: !4123)
!4127 = !DILocation(line: 472, column: 15, scope: !4072)
!4128 = !DILocation(line: 472, column: 2, scope: !4072)
!4129 = !DILocation(line: 472, column: 8, scope: !4072)
!4130 = !DILocation(line: 472, column: 13, scope: !4072)
!4131 = !DILocation(line: 474, column: 21, scope: !4072)
!4132 = !DILocation(line: 474, column: 27, scope: !4072)
!4133 = !DILocation(line: 474, column: 2, scope: !4072)
!4134 = !DILocation(line: 474, column: 8, scope: !4072)
!4135 = !DILocation(line: 474, column: 18, scope: !4072)
!4136 = !DILocation(line: 476, column: 53, scope: !4072)
!4137 = !DILocation(line: 477, column: 11, scope: !4072)
!4138 = !DILocation(line: 478, column: 12, scope: !4072)
!4139 = !DILocation(line: 478, column: 18, scope: !4072)
!4140 = !DILocation(line: 476, column: 14, scope: !4072)
!4141 = !DILocation(line: 476, column: 12, scope: !4072)
!4142 = !DILocation(line: 479, column: 25, scope: !4072)
!4143 = !DILocation(line: 479, column: 9, scope: !4072)
!4144 = !DILocation(line: 479, column: 2, scope: !4072)
!4145 = !DILocation(line: 480, column: 1, scope: !4072)
!4146 = distinct !DISubprogram(name: "fam15h_power_resume", scope: !3, file: !3, line: 377, type: !3997, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4147 = !DILocalVariable(name: "pdev", arg: 1, scope: !4146, file: !3, line: 377, type: !190)
!4148 = !DILocation(line: 377, column: 48, scope: !4146)
!4149 = !DILocation(line: 379, column: 21, scope: !4146)
!4150 = !DILocation(line: 379, column: 2, scope: !4146)
!4151 = !DILocation(line: 380, column: 2, scope: !4146)
!4152 = distinct !DISubprogram(name: "tweak_runavg_range", scope: !3, file: !3, line: 352, type: !3989, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4153 = !DILocalVariable(name: "pdev", arg: 1, scope: !4152, file: !3, line: 352, type: !190)
!4154 = !DILocation(line: 352, column: 48, scope: !4152)
!4155 = !DILocalVariable(name: "val", scope: !4152, file: !3, line: 354, type: !245)
!4156 = !DILocation(line: 354, column: 6, scope: !4152)
!4157 = !DILocation(line: 360, column: 37, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 360, column: 6)
!4159 = !DILocation(line: 360, column: 7, scope: !4158)
!4160 = !DILocation(line: 360, column: 6, scope: !4152)
!4161 = !DILocation(line: 361, column: 3, scope: !4158)
!4162 = !DILocation(line: 363, column: 28, scope: !4152)
!4163 = !DILocation(line: 363, column: 34, scope: !4152)
!4164 = !DILocation(line: 364, column: 3, scope: !4152)
!4165 = !DILocation(line: 363, column: 2, scope: !4152)
!4166 = !DILocation(line: 366, column: 7, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 366, column: 6)
!4168 = !DILocation(line: 366, column: 11, scope: !4167)
!4169 = !DILocation(line: 366, column: 18, scope: !4167)
!4170 = !DILocation(line: 366, column: 6, scope: !4152)
!4171 = !DILocation(line: 367, column: 3, scope: !4167)
!4172 = !DILocation(line: 369, column: 6, scope: !4152)
!4173 = !DILocation(line: 370, column: 6, scope: !4152)
!4174 = !DILocation(line: 371, column: 29, scope: !4152)
!4175 = !DILocation(line: 371, column: 35, scope: !4152)
!4176 = !DILocation(line: 372, column: 3, scope: !4152)
!4177 = !DILocation(line: 373, column: 28, scope: !4152)
!4178 = !DILocation(line: 371, column: 2, scope: !4152)
!4179 = !DILocation(line: 374, column: 1, scope: !4152)
!4180 = distinct !DISubprogram(name: "should_load_on_this_node", scope: !3, file: !3, line: 329, type: !4181, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!535, !190}
!4183 = !DILocalVariable(name: "f4", arg: 1, scope: !4180, file: !3, line: 329, type: !190)
!4184 = !DILocation(line: 329, column: 54, scope: !4180)
!4185 = !DILocalVariable(name: "val", scope: !4180, file: !3, line: 331, type: !245)
!4186 = !DILocation(line: 331, column: 6, scope: !4180)
!4187 = !DILocation(line: 333, column: 28, scope: !4180)
!4188 = !DILocation(line: 333, column: 32, scope: !4180)
!4189 = !DILocation(line: 333, column: 37, scope: !4180)
!4190 = !DILocation(line: 333, column: 2, scope: !4180)
!4191 = !DILocation(line: 335, column: 7, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4180, file: !3, line: 335, column: 6)
!4193 = !DILocation(line: 335, column: 11, scope: !4192)
!4194 = !DILocation(line: 335, column: 22, scope: !4192)
!4195 = !DILocation(line: 335, column: 27, scope: !4192)
!4196 = !DILocation(line: 335, column: 31, scope: !4192)
!4197 = !DILocation(line: 335, column: 38, scope: !4192)
!4198 = !DILocation(line: 335, column: 6, scope: !4180)
!4199 = !DILocation(line: 336, column: 3, scope: !4192)
!4200 = !DILocation(line: 338, column: 2, scope: !4180)
!4201 = !DILocation(line: 339, column: 1, scope: !4180)
!4202 = distinct !DISubprogram(name: "devm_kzalloc", scope: !73, file: !73, line: 215, type: !4203, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!107, !272, !375, !102}
!4205 = !DILocalVariable(name: "dev", arg: 1, scope: !4202, file: !73, line: 215, type: !272)
!4206 = !DILocation(line: 215, column: 49, scope: !4202)
!4207 = !DILocalVariable(name: "size", arg: 2, scope: !4202, file: !73, line: 215, type: !375)
!4208 = !DILocation(line: 215, column: 61, scope: !4202)
!4209 = !DILocalVariable(name: "gfp", arg: 3, scope: !4202, file: !73, line: 215, type: !102)
!4210 = !DILocation(line: 215, column: 73, scope: !4202)
!4211 = !DILocation(line: 217, column: 22, scope: !4202)
!4212 = !DILocation(line: 217, column: 27, scope: !4202)
!4213 = !DILocation(line: 217, column: 33, scope: !4202)
!4214 = !DILocation(line: 217, column: 37, scope: !4202)
!4215 = !DILocation(line: 217, column: 9, scope: !4202)
!4216 = !DILocation(line: 217, column: 2, scope: !4202)
!4217 = distinct !DISubprogram(name: "fam15h_power_init_data", scope: !3, file: !3, line: 386, type: !4218, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!104, !190, !4078}
!4220 = !DILocalVariable(name: "f4", arg: 1, scope: !4217, file: !3, line: 386, type: !190)
!4221 = !DILocation(line: 386, column: 51, scope: !4217)
!4222 = !DILocalVariable(name: "data", arg: 2, scope: !4217, file: !3, line: 387, type: !4078)
!4223 = !DILocation(line: 387, column: 33, scope: !4217)
!4224 = !DILocalVariable(name: "val", scope: !4217, file: !3, line: 389, type: !245)
!4225 = !DILocation(line: 389, column: 6, scope: !4217)
!4226 = !DILocalVariable(name: "tmp", scope: !4217, file: !3, line: 390, type: !108)
!4227 = !DILocation(line: 390, column: 6, scope: !4217)
!4228 = !DILocalVariable(name: "ret", scope: !4217, file: !3, line: 391, type: !104)
!4229 = !DILocation(line: 391, column: 6, scope: !4217)
!4230 = !DILocation(line: 393, column: 24, scope: !4217)
!4231 = !DILocation(line: 393, column: 2, scope: !4217)
!4232 = !DILocation(line: 394, column: 19, scope: !4217)
!4233 = !DILocation(line: 394, column: 23, scope: !4217)
!4234 = !DILocation(line: 394, column: 2, scope: !4217)
!4235 = !DILocation(line: 394, column: 8, scope: !4217)
!4236 = !DILocation(line: 394, column: 17, scope: !4217)
!4237 = !DILocation(line: 395, column: 8, scope: !4217)
!4238 = !DILocation(line: 395, column: 12, scope: !4217)
!4239 = !DILocation(line: 395, column: 6, scope: !4217)
!4240 = !DILocation(line: 397, column: 28, scope: !4217)
!4241 = !DILocation(line: 397, column: 32, scope: !4217)
!4242 = !DILocation(line: 397, column: 37, scope: !4217)
!4243 = !DILocation(line: 397, column: 2, scope: !4217)
!4244 = !DILocation(line: 400, column: 25, scope: !4217)
!4245 = !DILocation(line: 400, column: 29, scope: !4217)
!4246 = !DILocation(line: 400, column: 38, scope: !4217)
!4247 = !DILocation(line: 400, column: 48, scope: !4217)
!4248 = !DILocation(line: 400, column: 52, scope: !4217)
!4249 = !DILocation(line: 400, column: 59, scope: !4217)
!4250 = !DILocation(line: 400, column: 44, scope: !4217)
!4251 = !DILocation(line: 400, column: 2, scope: !4217)
!4252 = !DILocation(line: 400, column: 8, scope: !4217)
!4253 = !DILocation(line: 400, column: 21, scope: !4217)
!4254 = !DILocation(line: 401, column: 9, scope: !4217)
!4255 = !DILocation(line: 401, column: 15, scope: !4217)
!4256 = !DILocation(line: 401, column: 6, scope: !4217)
!4257 = !DILocation(line: 404, column: 7, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4217, file: !3, line: 404, column: 6)
!4259 = !DILocation(line: 404, column: 11, scope: !4258)
!4260 = !DILocation(line: 404, column: 18, scope: !4258)
!4261 = !DILocation(line: 404, column: 6, scope: !4217)
!4262 = !DILocation(line: 405, column: 3, scope: !4258)
!4263 = !DILocation(line: 410, column: 31, scope: !4217)
!4264 = !DILocation(line: 410, column: 35, scope: !4217)
!4265 = !DILocation(line: 410, column: 44, scope: !4217)
!4266 = !DILocation(line: 410, column: 30, scope: !4217)
!4267 = !DILocation(line: 410, column: 2, scope: !4217)
!4268 = !DILocation(line: 410, column: 8, scope: !4217)
!4269 = !DILocation(line: 410, column: 28, scope: !4217)
!4270 = !DILocation(line: 412, column: 32, scope: !4217)
!4271 = !DILocation(line: 412, column: 36, scope: !4217)
!4272 = !DILocation(line: 412, column: 8, scope: !4217)
!4273 = !DILocation(line: 412, column: 6, scope: !4217)
!4274 = !DILocation(line: 413, column: 6, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4217, file: !3, line: 413, column: 6)
!4276 = !DILocation(line: 413, column: 6, scope: !4217)
!4277 = !DILocation(line: 414, column: 10, scope: !4275)
!4278 = !DILocation(line: 414, column: 3, scope: !4275)
!4279 = !DILocation(line: 418, column: 6, scope: !4217)
!4280 = !DILocation(line: 418, column: 7, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4217, file: !3, line: 418, column: 6)
!4282 = !DILocation(line: 419, column: 3, scope: !4281)
!4283 = !DILocation(line: 426, column: 31, scope: !4217)
!4284 = !DILocation(line: 426, column: 2, scope: !4217)
!4285 = !DILocation(line: 426, column: 8, scope: !4217)
!4286 = !DILocation(line: 426, column: 29, scope: !4217)
!4287 = !DILocation(line: 428, column: 6, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4217, file: !3, line: 428, column: 6)
!4289 = !DILocation(line: 428, column: 6, scope: !4217)
!4290 = !DILocation(line: 429, column: 3, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 428, column: 58)
!4292 = !DILocation(line: 430, column: 3, scope: !4291)
!4293 = !DILocation(line: 433, column: 27, scope: !4217)
!4294 = !DILocation(line: 433, column: 2, scope: !4217)
!4295 = !DILocation(line: 433, column: 8, scope: !4217)
!4296 = !DILocation(line: 433, column: 25, scope: !4217)
!4297 = !DILocation(line: 441, column: 2, scope: !4217)
!4298 = !DILocation(line: 441, column: 8, scope: !4217)
!4299 = !DILocation(line: 441, column: 21, scope: !4217)
!4300 = !DILocation(line: 443, column: 24, scope: !4217)
!4301 = !DILocation(line: 443, column: 9, scope: !4217)
!4302 = !DILocation(line: 443, column: 2, scope: !4217)
!4303 = !DILocation(line: 444, column: 1, scope: !4217)
!4304 = distinct !DISubprogram(name: "PTR_ERR_OR_ZERO", scope: !4305, file: !4305, line: 57, type: !4306, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4305 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!104, !2158}
!4308 = !DILocalVariable(name: "ptr", arg: 1, scope: !4304, file: !4305, line: 57, type: !2158)
!4309 = !DILocation(line: 57, column: 68, scope: !4304)
!4310 = !DILocation(line: 59, column: 13, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4304, file: !4305, line: 59, column: 6)
!4312 = !DILocation(line: 59, column: 6, scope: !4311)
!4313 = !DILocation(line: 59, column: 6, scope: !4304)
!4314 = !DILocation(line: 60, column: 18, scope: !4311)
!4315 = !DILocation(line: 60, column: 10, scope: !4311)
!4316 = !DILocation(line: 60, column: 3, scope: !4311)
!4317 = !DILocation(line: 62, column: 3, scope: !4311)
!4318 = !DILocation(line: 63, column: 1, scope: !4304)
!4319 = distinct !DISubprogram(name: "fam15h_power_init_attrs", scope: !3, file: !3, line: 289, type: !4218, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4320 = !DILocalVariable(name: "pdev", arg: 1, scope: !4319, file: !3, line: 289, type: !190)
!4321 = !DILocation(line: 289, column: 52, scope: !4319)
!4322 = !DILocalVariable(name: "data", arg: 2, scope: !4319, file: !3, line: 290, type: !4078)
!4323 = !DILocation(line: 290, column: 34, scope: !4319)
!4324 = !DILocalVariable(name: "n", scope: !4319, file: !3, line: 292, type: !104)
!4325 = !DILocation(line: 292, column: 6, scope: !4319)
!4326 = !DILocalVariable(name: "fam15h_power_attrs", scope: !4319, file: !3, line: 293, type: !379)
!4327 = !DILocation(line: 293, column: 21, scope: !4319)
!4328 = !DILocalVariable(name: "c", scope: !4319, file: !3, line: 294, type: !4329)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !2170, line: 81, size: 2048, elements: !4331)
!4331 = !{!4332, !4333, !4334, !4335, !4336, !4337, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4351, !4352, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !4330, file: !2170, line: 82, baseType: !1395, size: 8)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !4330, file: !2170, line: 83, baseType: !1395, size: 8, offset: 8)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !4330, file: !2170, line: 84, baseType: !1395, size: 8, offset: 16)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !4330, file: !2170, line: 85, baseType: !1395, size: 8, offset: 24)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !4330, file: !2170, line: 88, baseType: !104, size: 32, offset: 32)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !4330, file: !2170, line: 91, baseType: !4338, size: 96, offset: 64)
!4338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 96, elements: !331)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !4330, file: !2170, line: 93, baseType: !1395, size: 8, offset: 160)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !4330, file: !2170, line: 94, baseType: !1395, size: 8, offset: 168)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !4330, file: !2170, line: 96, baseType: !1395, size: 8, offset: 176)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !4330, file: !2170, line: 97, baseType: !1395, size: 8, offset: 184)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !4330, file: !2170, line: 99, baseType: !178, size: 32, offset: 192)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !4330, file: !2170, line: 101, baseType: !104, size: 32, offset: 224)
!4345 = !DIDerivedType(tag: DW_TAG_member, scope: !4330, file: !2170, line: 107, baseType: !4346, size: 640, offset: 256)
!4346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4330, file: !2170, line: 107, size: 640, elements: !4347)
!4347 = !{!4348, !4350}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !4346, file: !2170, line: 108, baseType: !4349, size: 640)
!4349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 640, elements: !2232)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !4346, file: !2170, line: 109, baseType: !106, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !4330, file: !2170, line: 111, baseType: !1767, size: 128, offset: 896)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !4330, file: !2170, line: 112, baseType: !4353, size: 512, offset: 1024)
!4353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 512, elements: !335)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !4330, file: !2170, line: 114, baseType: !7, size: 32, offset: 1536)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !4330, file: !2170, line: 115, baseType: !104, size: 32, offset: 1568)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !4330, file: !2170, line: 117, baseType: !104, size: 32, offset: 1600)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !4330, file: !2170, line: 118, baseType: !104, size: 32, offset: 1632)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !4330, file: !2170, line: 119, baseType: !104, size: 32, offset: 1664)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !4330, file: !2170, line: 120, baseType: !104, size: 32, offset: 1696)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !4330, file: !2170, line: 121, baseType: !106, size: 64, offset: 1728)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !4330, file: !2170, line: 123, baseType: !904, size: 16, offset: 1792)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !4330, file: !2170, line: 124, baseType: !904, size: 16, offset: 1808)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !4330, file: !2170, line: 125, baseType: !904, size: 16, offset: 1824)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !4330, file: !2170, line: 126, baseType: !904, size: 16, offset: 1840)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !4330, file: !2170, line: 128, baseType: !904, size: 16, offset: 1856)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !4330, file: !2170, line: 130, baseType: !904, size: 16, offset: 1872)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !4330, file: !2170, line: 132, baseType: !904, size: 16, offset: 1888)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !4330, file: !2170, line: 134, baseType: !904, size: 16, offset: 1904)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !4330, file: !2170, line: 135, baseType: !904, size: 16, offset: 1920)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !4330, file: !2170, line: 136, baseType: !904, size: 16, offset: 1936)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !4330, file: !2170, line: 138, baseType: !904, size: 16, offset: 1952)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !4330, file: !2170, line: 139, baseType: !245, size: 32, offset: 1984)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !4330, file: !2170, line: 141, baseType: !1394, size: 8, offset: 2016)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !4330, file: !2170, line: 142, baseType: !7, size: 1, offset: 2024, flags: DIFlagBitField, extraData: i64 2024)
!4375 = !DILocation(line: 294, column: 22, scope: !4319)
!4376 = !DILocation(line: 296, column: 6, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 296, column: 6)
!4378 = !DILocation(line: 296, column: 9, scope: !4377)
!4379 = !DILocation(line: 296, column: 13, scope: !4377)
!4380 = !DILocation(line: 296, column: 21, scope: !4377)
!4381 = !DILocation(line: 297, column: 7, scope: !4377)
!4382 = !DILocation(line: 297, column: 10, scope: !4377)
!4383 = !DILocation(line: 297, column: 20, scope: !4377)
!4384 = !DILocation(line: 297, column: 27, scope: !4377)
!4385 = !DILocation(line: 298, column: 8, scope: !4377)
!4386 = !DILocation(line: 298, column: 11, scope: !4377)
!4387 = !DILocation(line: 298, column: 21, scope: !4377)
!4388 = !DILocation(line: 298, column: 29, scope: !4377)
!4389 = !DILocation(line: 298, column: 32, scope: !4377)
!4390 = !DILocation(line: 298, column: 35, scope: !4377)
!4391 = !DILocation(line: 298, column: 45, scope: !4377)
!4392 = !DILocation(line: 296, column: 6, scope: !4319)
!4393 = !DILocation(line: 299, column: 5, scope: !4377)
!4394 = !DILocation(line: 299, column: 3, scope: !4377)
!4395 = !DILocation(line: 302, column: 6, scope: !4319)
!4396 = !DILocation(line: 302, column: 6, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 302, column: 6)
!4398 = !DILocation(line: 303, column: 5, scope: !4397)
!4399 = !DILocation(line: 303, column: 3, scope: !4397)
!4400 = !DILocation(line: 305, column: 37, scope: !4319)
!4401 = !DILocation(line: 305, column: 43, scope: !4319)
!4402 = !DILocation(line: 305, column: 48, scope: !4319)
!4403 = !DILocation(line: 305, column: 23, scope: !4319)
!4404 = !DILocation(line: 305, column: 21, scope: !4319)
!4405 = !DILocation(line: 309, column: 7, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 309, column: 6)
!4407 = !DILocation(line: 309, column: 6, scope: !4319)
!4408 = !DILocation(line: 310, column: 3, scope: !4406)
!4409 = !DILocation(line: 312, column: 4, scope: !4319)
!4410 = !DILocation(line: 313, column: 2, scope: !4319)
!4411 = !DILocation(line: 313, column: 22, scope: !4319)
!4412 = !DILocation(line: 313, column: 26, scope: !4319)
!4413 = !DILocation(line: 314, column: 6, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 314, column: 6)
!4415 = !DILocation(line: 314, column: 9, scope: !4414)
!4416 = !DILocation(line: 314, column: 13, scope: !4414)
!4417 = !DILocation(line: 314, column: 21, scope: !4414)
!4418 = !DILocation(line: 315, column: 7, scope: !4414)
!4419 = !DILocation(line: 315, column: 10, scope: !4414)
!4420 = !DILocation(line: 315, column: 20, scope: !4414)
!4421 = !DILocation(line: 315, column: 27, scope: !4414)
!4422 = !DILocation(line: 316, column: 8, scope: !4414)
!4423 = !DILocation(line: 316, column: 11, scope: !4414)
!4424 = !DILocation(line: 316, column: 21, scope: !4414)
!4425 = !DILocation(line: 316, column: 29, scope: !4414)
!4426 = !DILocation(line: 316, column: 32, scope: !4414)
!4427 = !DILocation(line: 316, column: 35, scope: !4414)
!4428 = !DILocation(line: 316, column: 45, scope: !4414)
!4429 = !DILocation(line: 314, column: 6, scope: !4319)
!4430 = !DILocation(line: 317, column: 3, scope: !4414)
!4431 = !DILocation(line: 317, column: 23, scope: !4414)
!4432 = !DILocation(line: 317, column: 27, scope: !4414)
!4433 = !DILocation(line: 319, column: 6, scope: !4319)
!4434 = !DILocation(line: 319, column: 6, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 319, column: 6)
!4436 = !DILocation(line: 320, column: 3, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4435, file: !3, line: 319, column: 43)
!4438 = !DILocation(line: 320, column: 23, scope: !4437)
!4439 = !DILocation(line: 320, column: 27, scope: !4437)
!4440 = !DILocation(line: 321, column: 3, scope: !4437)
!4441 = !DILocation(line: 321, column: 23, scope: !4437)
!4442 = !DILocation(line: 321, column: 27, scope: !4437)
!4443 = !DILocation(line: 322, column: 2, scope: !4437)
!4444 = !DILocation(line: 324, column: 22, scope: !4319)
!4445 = !DILocation(line: 324, column: 2, scope: !4319)
!4446 = !DILocation(line: 324, column: 8, scope: !4319)
!4447 = !DILocation(line: 324, column: 14, scope: !4319)
!4448 = !DILocation(line: 324, column: 20, scope: !4319)
!4449 = !DILocation(line: 326, column: 2, scope: !4319)
!4450 = !DILocation(line: 327, column: 1, scope: !4319)
!4451 = distinct !DISubprogram(name: "test_bit", scope: !4452, file: !4452, line: 132, type: !4453, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4452 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!535, !115, !4455}
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4457)
!4457 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !106)
!4458 = !DILocalVariable(name: "nr", arg: 1, scope: !4459, file: !4460, line: 210, type: !115)
!4459 = distinct !DISubprogram(name: "variable_test_bit", scope: !4460, file: !4460, line: 210, type: !4453, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4460 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4461 = !DILocation(line: 210, column: 52, scope: !4459, inlinedAt: !4462)
!4462 = distinct !DILocation(line: 135, column: 9, scope: !4451)
!4463 = !DILocalVariable(name: "addr", arg: 2, scope: !4459, file: !4460, line: 210, type: !4455)
!4464 = !DILocation(line: 210, column: 86, scope: !4459, inlinedAt: !4462)
!4465 = !DILocalVariable(name: "oldbit", scope: !4459, file: !4460, line: 212, type: !535)
!4466 = !DILocation(line: 212, column: 7, scope: !4459, inlinedAt: !4462)
!4467 = !DILocalVariable(name: "nr", arg: 1, scope: !4468, file: !4460, line: 204, type: !115)
!4468 = distinct !DISubprogram(name: "constant_test_bit", scope: !4460, file: !4460, line: 204, type: !4453, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4469 = !DILocation(line: 204, column: 52, scope: !4468, inlinedAt: !4470)
!4470 = distinct !DILocation(line: 135, column: 9, scope: !4451)
!4471 = !DILocalVariable(name: "addr", arg: 2, scope: !4468, file: !4460, line: 204, type: !4455)
!4472 = !DILocation(line: 204, column: 86, scope: !4468, inlinedAt: !4470)
!4473 = !DILocalVariable(name: "v", arg: 1, scope: !4474, file: !4475, line: 69, type: !4478)
!4474 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4475, file: !4475, line: 69, type: !4476, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4475 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4476 = !DISubroutineType(types: !4477)
!4477 = !{null, !4478, !375}
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4480)
!4480 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4481 = !DILocation(line: 69, column: 73, scope: !4474, inlinedAt: !4482)
!4482 = distinct !DILocation(line: 134, column: 2, scope: !4451)
!4483 = !DILocalVariable(name: "size", arg: 2, scope: !4474, file: !4475, line: 69, type: !375)
!4484 = !DILocation(line: 69, column: 83, scope: !4474, inlinedAt: !4482)
!4485 = !DILocalVariable(name: "nr", arg: 1, scope: !4451, file: !4452, line: 132, type: !115)
!4486 = !DILocation(line: 132, column: 34, scope: !4451)
!4487 = !DILocalVariable(name: "addr", arg: 2, scope: !4451, file: !4452, line: 132, type: !4455)
!4488 = !DILocation(line: 132, column: 68, scope: !4451)
!4489 = !DILocation(line: 134, column: 25, scope: !4451)
!4490 = !DILocation(line: 134, column: 32, scope: !4451)
!4491 = !DILocation(line: 134, column: 30, scope: !4451)
!4492 = !DILocation(line: 71, column: 19, scope: !4474, inlinedAt: !4482)
!4493 = !DILocation(line: 71, column: 22, scope: !4474, inlinedAt: !4482)
!4494 = !DILocation(line: 71, column: 2, scope: !4474, inlinedAt: !4482)
!4495 = !DILocation(line: 72, column: 2, scope: !4474, inlinedAt: !4482)
!4496 = !DILocation(line: 135, column: 9, scope: !4451)
!4497 = !DILocation(line: 206, column: 19, scope: !4468, inlinedAt: !4470)
!4498 = !DILocation(line: 206, column: 22, scope: !4468, inlinedAt: !4470)
!4499 = !DILocation(line: 206, column: 15, scope: !4468, inlinedAt: !4470)
!4500 = !DILocation(line: 207, column: 4, scope: !4468, inlinedAt: !4470)
!4501 = !DILocation(line: 207, column: 9, scope: !4468, inlinedAt: !4470)
!4502 = !DILocation(line: 207, column: 12, scope: !4468, inlinedAt: !4470)
!4503 = !DILocation(line: 206, column: 44, scope: !4468, inlinedAt: !4470)
!4504 = !DILocation(line: 207, column: 37, scope: !4468, inlinedAt: !4470)
!4505 = !DILocation(line: 217, column: 33, scope: !4459, inlinedAt: !4462)
!4506 = !DILocation(line: 217, column: 46, scope: !4459, inlinedAt: !4462)
!4507 = !DILocation(line: 214, column: 2, scope: !4459, inlinedAt: !4462)
!4508 = !{i32 -2147218582, i32 -2147218522}
!4509 = !DILocation(line: 219, column: 9, scope: !4459, inlinedAt: !4462)
!4510 = !DILocation(line: 135, column: 2, scope: !4451)
!4511 = distinct !DISubprogram(name: "cpuid_ecx", scope: !2170, file: !2170, line: 655, type: !4512, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!7, !7}
!4514 = !DILocalVariable(name: "op", arg: 1, scope: !4511, file: !2170, line: 655, type: !7)
!4515 = !DILocation(line: 655, column: 51, scope: !4511)
!4516 = !DILocalVariable(name: "eax", scope: !4511, file: !2170, line: 657, type: !7)
!4517 = !DILocation(line: 657, column: 15, scope: !4511)
!4518 = !DILocalVariable(name: "ebx", scope: !4511, file: !2170, line: 657, type: !7)
!4519 = !DILocation(line: 657, column: 20, scope: !4511)
!4520 = !DILocalVariable(name: "ecx", scope: !4511, file: !2170, line: 657, type: !7)
!4521 = !DILocation(line: 657, column: 25, scope: !4511)
!4522 = !DILocalVariable(name: "edx", scope: !4511, file: !2170, line: 657, type: !7)
!4523 = !DILocation(line: 657, column: 30, scope: !4511)
!4524 = !DILocation(line: 659, column: 8, scope: !4511)
!4525 = !DILocation(line: 659, column: 2, scope: !4511)
!4526 = !DILocation(line: 661, column: 9, scope: !4511)
!4527 = !DILocation(line: 661, column: 2, scope: !4511)
!4528 = distinct !DISubprogram(name: "rdmsrl_safe", scope: !4529, file: !4529, line: 219, type: !4530, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4529 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!104, !7, !116}
!4532 = !DILocalVariable(name: "msr", arg: 1, scope: !4528, file: !4529, line: 219, type: !7)
!4533 = !DILocation(line: 219, column: 40, scope: !4528)
!4534 = !DILocalVariable(name: "p", arg: 2, scope: !4528, file: !4529, line: 219, type: !116)
!4535 = !DILocation(line: 219, column: 65, scope: !4528)
!4536 = !DILocalVariable(name: "err", scope: !4528, file: !4529, line: 221, type: !104)
!4537 = !DILocation(line: 221, column: 6, scope: !4528)
!4538 = !DILocation(line: 223, column: 30, scope: !4528)
!4539 = !DILocation(line: 223, column: 7, scope: !4528)
!4540 = !DILocation(line: 223, column: 3, scope: !4528)
!4541 = !DILocation(line: 223, column: 5, scope: !4528)
!4542 = !DILocation(line: 224, column: 9, scope: !4528)
!4543 = !DILocation(line: 224, column: 2, scope: !4528)
!4544 = distinct !DISubprogram(name: "read_registers", scope: !3, file: !3, line: 157, type: !4545, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4545 = !DISubroutineType(types: !4546)
!4546 = !{!104, !4078}
!4547 = !DILocalVariable(name: "data", arg: 1, scope: !4544, file: !3, line: 157, type: !4078)
!4548 = !DILocation(line: 157, column: 53, scope: !4544)
!4549 = !DILocalVariable(name: "core", scope: !4544, file: !3, line: 159, type: !104)
!4550 = !DILocation(line: 159, column: 6, scope: !4544)
!4551 = !DILocalVariable(name: "this_core", scope: !4544, file: !3, line: 159, type: !104)
!4552 = !DILocation(line: 159, column: 12, scope: !4544)
!4553 = !DILocalVariable(name: "mask", scope: !4544, file: !3, line: 160, type: !4554)
!4554 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !120, line: 756, baseType: !4555)
!4555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 64, elements: !124)
!4556 = !DILocation(line: 160, column: 16, scope: !4544)
!4557 = !DILocalVariable(name: "ret", scope: !4544, file: !3, line: 161, type: !104)
!4558 = !DILocation(line: 161, column: 6, scope: !4544)
!4559 = !DILocalVariable(name: "cpu", scope: !4544, file: !3, line: 161, type: !104)
!4560 = !DILocation(line: 161, column: 11, scope: !4544)
!4561 = !DILocation(line: 163, column: 8, scope: !4544)
!4562 = !DILocation(line: 163, column: 6, scope: !4544)
!4563 = !DILocation(line: 164, column: 7, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4544, file: !3, line: 164, column: 6)
!4565 = !DILocation(line: 164, column: 6, scope: !4544)
!4566 = !DILocation(line: 165, column: 3, scope: !4564)
!4567 = !DILocation(line: 167, column: 9, scope: !4544)
!4568 = !DILocation(line: 167, column: 15, scope: !4544)
!4569 = !DILocation(line: 167, column: 2, scope: !4544)
!4570 = !DILocation(line: 169, column: 2, scope: !4544)
!4571 = !DILocation(line: 177, column: 7, scope: !4544)
!4572 = !DILocation(line: 179, column: 2, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4544, file: !3, line: 179, column: 2)
!4574 = !DILocation(line: 179, column: 2, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 179, column: 2)
!4576 = !DILocation(line: 180, column: 15, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 179, column: 27)
!4578 = !DILocation(line: 180, column: 13, scope: !4577)
!4579 = !DILocation(line: 182, column: 7, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4577, file: !3, line: 182, column: 7)
!4581 = !DILocation(line: 182, column: 20, scope: !4580)
!4582 = !DILocation(line: 182, column: 17, scope: !4580)
!4583 = !DILocation(line: 182, column: 7, scope: !4577)
!4584 = !DILocation(line: 183, column: 4, scope: !4580)
!4585 = !DILocation(line: 185, column: 10, scope: !4577)
!4586 = !DILocation(line: 185, column: 8, scope: !4577)
!4587 = !DILocation(line: 188, column: 19, scope: !4577)
!4588 = !DILocation(line: 188, column: 63, scope: !4577)
!4589 = !DILocation(line: 188, column: 3, scope: !4577)
!4590 = !DILocation(line: 189, column: 2, scope: !4577)
!4591 = distinct !{!4591, !4572, !4592}
!4592 = !DILocation(line: 189, column: 2, scope: !4573)
!4593 = !DILocation(line: 191, column: 19, scope: !4544)
!4594 = !DILocation(line: 191, column: 50, scope: !4544)
!4595 = !DILocation(line: 191, column: 2, scope: !4544)
!4596 = !DILocation(line: 193, column: 2, scope: !4544)
!4597 = !DILocation(line: 194, column: 19, scope: !4544)
!4598 = !DILocation(line: 194, column: 2, scope: !4544)
!4599 = !DILocation(line: 196, column: 2, scope: !4544)
!4600 = !DILocation(line: 197, column: 1, scope: !4544)
!4601 = distinct !DISubprogram(name: "devm_kcalloc", scope: !73, file: !73, line: 229, type: !4602, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!107, !272, !375, !375, !102}
!4604 = !DILocalVariable(name: "dev", arg: 1, scope: !4601, file: !73, line: 229, type: !272)
!4605 = !DILocation(line: 229, column: 49, scope: !4601)
!4606 = !DILocalVariable(name: "n", arg: 2, scope: !4601, file: !73, line: 230, type: !375)
!4607 = !DILocation(line: 230, column: 13, scope: !4601)
!4608 = !DILocalVariable(name: "size", arg: 3, scope: !4601, file: !73, line: 230, type: !375)
!4609 = !DILocation(line: 230, column: 23, scope: !4601)
!4610 = !DILocalVariable(name: "flags", arg: 4, scope: !4601, file: !73, line: 230, type: !102)
!4611 = !DILocation(line: 230, column: 35, scope: !4601)
!4612 = !DILocation(line: 232, column: 28, scope: !4601)
!4613 = !DILocation(line: 232, column: 33, scope: !4601)
!4614 = !DILocation(line: 232, column: 36, scope: !4601)
!4615 = !DILocation(line: 232, column: 42, scope: !4601)
!4616 = !DILocation(line: 232, column: 48, scope: !4601)
!4617 = !DILocation(line: 232, column: 9, scope: !4601)
!4618 = !DILocation(line: 232, column: 2, scope: !4601)
!4619 = distinct !DISubprogram(name: "devm_kmalloc_array", scope: !73, file: !73, line: 219, type: !4602, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4620 = !DILocalVariable(name: "dev", arg: 1, scope: !4619, file: !73, line: 219, type: !272)
!4621 = !DILocation(line: 219, column: 55, scope: !4619)
!4622 = !DILocalVariable(name: "n", arg: 2, scope: !4619, file: !73, line: 220, type: !375)
!4623 = !DILocation(line: 220, column: 19, scope: !4619)
!4624 = !DILocalVariable(name: "size", arg: 3, scope: !4619, file: !73, line: 220, type: !375)
!4625 = !DILocation(line: 220, column: 29, scope: !4619)
!4626 = !DILocalVariable(name: "flags", arg: 4, scope: !4619, file: !73, line: 220, type: !102)
!4627 = !DILocation(line: 220, column: 41, scope: !4619)
!4628 = !DILocalVariable(name: "bytes", scope: !4619, file: !73, line: 222, type: !375)
!4629 = !DILocation(line: 222, column: 9, scope: !4619)
!4630 = !DILocalVariable(name: "__a", scope: !4631, file: !73, line: 224, type: !375)
!4631 = distinct !DILexicalBlock(scope: !4632, file: !73, line: 224, column: 6)
!4632 = distinct !DILexicalBlock(scope: !4619, file: !73, line: 224, column: 6)
!4633 = !DILocation(line: 224, column: 6, scope: !4631)
!4634 = !DILocalVariable(name: "__b", scope: !4631, file: !73, line: 224, type: !375)
!4635 = !DILocalVariable(name: "__d", scope: !4631, file: !73, line: 224, type: !4636)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!4637 = !DILocation(line: 224, column: 6, scope: !4632)
!4638 = !DILocation(line: 224, column: 6, scope: !4619)
!4639 = !DILocation(line: 225, column: 3, scope: !4632)
!4640 = !DILocation(line: 227, column: 22, scope: !4619)
!4641 = !DILocation(line: 227, column: 27, scope: !4619)
!4642 = !DILocation(line: 227, column: 34, scope: !4619)
!4643 = !DILocation(line: 227, column: 9, scope: !4619)
!4644 = !DILocation(line: 227, column: 2, scope: !4619)
!4645 = !DILocation(line: 228, column: 1, scope: !4619)
!4646 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4647, file: !4647, line: 52, type: !4648, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4647 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!535, !535}
!4650 = !DILocalVariable(name: "overflow", arg: 1, scope: !4646, file: !4647, line: 52, type: !535)
!4651 = !DILocation(line: 52, column: 60, scope: !4646)
!4652 = !DILocation(line: 54, column: 9, scope: !4646)
!4653 = !DILocation(line: 54, column: 2, scope: !4646)
!4654 = distinct !DISubprogram(name: "power1_crit_show", scope: !3, file: !3, line: 125, type: !4044, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4655 = !DILocalVariable(name: "dev", arg: 1, scope: !4654, file: !3, line: 125, type: !272)
!4656 = !DILocation(line: 125, column: 48, scope: !4654)
!4657 = !DILocalVariable(name: "attr", arg: 2, scope: !4654, file: !3, line: 126, type: !4046)
!4658 = !DILocation(line: 126, column: 30, scope: !4654)
!4659 = !DILocalVariable(name: "buf", arg: 3, scope: !4654, file: !3, line: 126, type: !330)
!4660 = !DILocation(line: 126, column: 42, scope: !4654)
!4661 = !DILocalVariable(name: "data", scope: !4654, file: !3, line: 128, type: !4078)
!4662 = !DILocation(line: 128, column: 28, scope: !4654)
!4663 = !DILocation(line: 128, column: 51, scope: !4654)
!4664 = !DILocation(line: 128, column: 35, scope: !4654)
!4665 = !DILocation(line: 130, column: 17, scope: !4654)
!4666 = !DILocation(line: 130, column: 30, scope: !4654)
!4667 = !DILocation(line: 130, column: 36, scope: !4654)
!4668 = !DILocation(line: 130, column: 9, scope: !4654)
!4669 = !DILocation(line: 130, column: 2, scope: !4654)
!4670 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !4671, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!107, !3738}
!4673 = !DILocalVariable(name: "dev", arg: 1, scope: !4670, file: !73, line: 655, type: !3738)
!4674 = !DILocation(line: 655, column: 58, scope: !4670)
!4675 = !DILocation(line: 657, column: 9, scope: !4670)
!4676 = !DILocation(line: 657, column: 14, scope: !4670)
!4677 = !DILocation(line: 657, column: 2, scope: !4670)
!4678 = distinct !DISubprogram(name: "power1_input_show", scope: !3, file: !3, line: 70, type: !4044, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4679 = !DILocalVariable(name: "value", arg: 1, scope: !4680, file: !4681, line: 165, type: !178)
!4680 = distinct !DISubprogram(name: "sign_extend32", scope: !4681, file: !4681, line: 165, type: !4682, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4681 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4682 = !DISubroutineType(types: !4683)
!4683 = !{!113, !178, !104}
!4684 = !DILocation(line: 165, column: 50, scope: !4680, inlinedAt: !4685)
!4685 = distinct !DILocation(line: 91, column: 25, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 89, column: 9)
!4687 = distinct !DILexicalBlock(scope: !4678, file: !3, line: 86, column: 6)
!4688 = !DILocalVariable(name: "index", arg: 2, scope: !4680, file: !4681, line: 165, type: !104)
!4689 = !DILocation(line: 165, column: 61, scope: !4680, inlinedAt: !4685)
!4690 = !DILocalVariable(name: "shift", scope: !4680, file: !4681, line: 167, type: !1395)
!4691 = !DILocation(line: 167, column: 7, scope: !4680, inlinedAt: !4685)
!4692 = !DILocation(line: 165, column: 50, scope: !4680, inlinedAt: !4693)
!4693 = distinct !DILocation(line: 88, column: 25, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 86, column: 29)
!4695 = !DILocation(line: 165, column: 61, scope: !4680, inlinedAt: !4693)
!4696 = !DILocation(line: 167, column: 7, scope: !4680, inlinedAt: !4693)
!4697 = !DILocalVariable(name: "dev", arg: 1, scope: !4678, file: !3, line: 70, type: !272)
!4698 = !DILocation(line: 70, column: 49, scope: !4678)
!4699 = !DILocalVariable(name: "attr", arg: 2, scope: !4678, file: !3, line: 71, type: !4046)
!4700 = !DILocation(line: 71, column: 31, scope: !4678)
!4701 = !DILocalVariable(name: "buf", arg: 3, scope: !4678, file: !3, line: 71, type: !330)
!4702 = !DILocation(line: 71, column: 43, scope: !4678)
!4703 = !DILocalVariable(name: "val", scope: !4678, file: !3, line: 73, type: !245)
!4704 = !DILocation(line: 73, column: 6, scope: !4678)
!4705 = !DILocalVariable(name: "tdp_limit", scope: !4678, file: !3, line: 73, type: !245)
!4706 = !DILocation(line: 73, column: 11, scope: !4678)
!4707 = !DILocalVariable(name: "running_avg_range", scope: !4678, file: !3, line: 73, type: !245)
!4708 = !DILocation(line: 73, column: 22, scope: !4678)
!4709 = !DILocalVariable(name: "running_avg_capture", scope: !4678, file: !3, line: 74, type: !1478)
!4710 = !DILocation(line: 74, column: 6, scope: !4678)
!4711 = !DILocalVariable(name: "curr_pwr_watts", scope: !4678, file: !3, line: 75, type: !108)
!4712 = !DILocation(line: 75, column: 6, scope: !4678)
!4713 = !DILocalVariable(name: "data", scope: !4678, file: !3, line: 76, type: !4078)
!4714 = !DILocation(line: 76, column: 28, scope: !4678)
!4715 = !DILocation(line: 76, column: 51, scope: !4678)
!4716 = !DILocation(line: 76, column: 35, scope: !4678)
!4717 = !DILocalVariable(name: "f4", scope: !4678, file: !3, line: 77, type: !190)
!4718 = !DILocation(line: 77, column: 18, scope: !4678)
!4719 = !DILocation(line: 77, column: 23, scope: !4678)
!4720 = !DILocation(line: 77, column: 29, scope: !4678)
!4721 = !DILocation(line: 79, column: 28, scope: !4678)
!4722 = !DILocation(line: 79, column: 32, scope: !4678)
!4723 = !DILocation(line: 79, column: 37, scope: !4678)
!4724 = !DILocation(line: 79, column: 2, scope: !4678)
!4725 = !DILocation(line: 86, column: 6, scope: !4687)
!4726 = !DILocation(line: 86, column: 6, scope: !4678)
!4727 = !DILocation(line: 87, column: 25, scope: !4694)
!4728 = !DILocation(line: 87, column: 29, scope: !4694)
!4729 = !DILocation(line: 87, column: 23, scope: !4694)
!4730 = !DILocation(line: 88, column: 39, scope: !4694)
!4731 = !DILocation(line: 167, column: 20, scope: !4680, inlinedAt: !4693)
!4732 = !DILocation(line: 167, column: 18, scope: !4680, inlinedAt: !4693)
!4733 = !DILocation(line: 167, column: 15, scope: !4680, inlinedAt: !4693)
!4734 = !DILocation(line: 168, column: 17, scope: !4680, inlinedAt: !4693)
!4735 = !DILocation(line: 168, column: 26, scope: !4680, inlinedAt: !4693)
!4736 = !DILocation(line: 168, column: 23, scope: !4680, inlinedAt: !4693)
!4737 = !DILocation(line: 168, column: 36, scope: !4680, inlinedAt: !4693)
!4738 = !DILocation(line: 168, column: 33, scope: !4680, inlinedAt: !4693)
!4739 = !DILocation(line: 88, column: 23, scope: !4694)
!4740 = !DILocation(line: 89, column: 2, scope: !4694)
!4741 = !DILocation(line: 90, column: 26, scope: !4686)
!4742 = !DILocation(line: 90, column: 30, scope: !4686)
!4743 = !DILocation(line: 90, column: 36, scope: !4686)
!4744 = !DILocation(line: 90, column: 23, scope: !4686)
!4745 = !DILocation(line: 91, column: 39, scope: !4686)
!4746 = !DILocation(line: 167, column: 20, scope: !4680, inlinedAt: !4685)
!4747 = !DILocation(line: 167, column: 18, scope: !4680, inlinedAt: !4685)
!4748 = !DILocation(line: 167, column: 15, scope: !4680, inlinedAt: !4685)
!4749 = !DILocation(line: 168, column: 17, scope: !4680, inlinedAt: !4685)
!4750 = !DILocation(line: 168, column: 26, scope: !4680, inlinedAt: !4685)
!4751 = !DILocation(line: 168, column: 23, scope: !4680, inlinedAt: !4685)
!4752 = !DILocation(line: 168, column: 36, scope: !4680, inlinedAt: !4685)
!4753 = !DILocation(line: 168, column: 33, scope: !4680, inlinedAt: !4685)
!4754 = !DILocation(line: 91, column: 23, scope: !4686)
!4755 = !DILocation(line: 94, column: 23, scope: !4678)
!4756 = !DILocation(line: 94, column: 27, scope: !4678)
!4757 = !DILocation(line: 94, column: 34, scope: !4678)
!4758 = !DILocation(line: 94, column: 20, scope: !4678)
!4759 = !DILocation(line: 96, column: 28, scope: !4678)
!4760 = !DILocation(line: 96, column: 32, scope: !4678)
!4761 = !DILocation(line: 96, column: 37, scope: !4678)
!4762 = !DILocation(line: 96, column: 2, scope: !4678)
!4763 = !DILocation(line: 103, column: 6, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4678, file: !3, line: 103, column: 6)
!4765 = !DILocation(line: 103, column: 6, scope: !4678)
!4766 = !DILocation(line: 104, column: 15, scope: !4764)
!4767 = !DILocation(line: 104, column: 19, scope: !4764)
!4768 = !DILocation(line: 104, column: 13, scope: !4764)
!4769 = !DILocation(line: 104, column: 3, scope: !4764)
!4770 = !DILocation(line: 106, column: 16, scope: !4764)
!4771 = !DILocation(line: 106, column: 20, scope: !4764)
!4772 = !DILocation(line: 106, column: 27, scope: !4764)
!4773 = !DILocation(line: 106, column: 13, scope: !4764)
!4774 = !DILocation(line: 108, column: 26, scope: !4678)
!4775 = !DILocation(line: 109, column: 5, scope: !4678)
!4776 = !DILocation(line: 109, column: 11, scope: !4678)
!4777 = !DILocation(line: 108, column: 36, scope: !4678)
!4778 = !DILocation(line: 108, column: 20, scope: !4678)
!4779 = !DILocation(line: 109, column: 25, scope: !4678)
!4780 = !DILocation(line: 109, column: 22, scope: !4678)
!4781 = !DILocation(line: 108, column: 17, scope: !4678)
!4782 = !DILocation(line: 110, column: 20, scope: !4678)
!4783 = !DILocation(line: 110, column: 17, scope: !4678)
!4784 = !DILocation(line: 111, column: 20, scope: !4678)
!4785 = !DILocation(line: 111, column: 26, scope: !4678)
!4786 = !DILocation(line: 111, column: 17, scope: !4678)
!4787 = !DILocation(line: 120, column: 20, scope: !4678)
!4788 = !DILocation(line: 120, column: 35, scope: !4678)
!4789 = !DILocation(line: 120, column: 53, scope: !4678)
!4790 = !DILocation(line: 120, column: 51, scope: !4678)
!4791 = !DILocation(line: 120, column: 44, scope: !4678)
!4792 = !DILocation(line: 120, column: 17, scope: !4678)
!4793 = !DILocation(line: 121, column: 17, scope: !4678)
!4794 = !DILocation(line: 121, column: 45, scope: !4678)
!4795 = !DILocation(line: 121, column: 30, scope: !4678)
!4796 = !DILocation(line: 121, column: 9, scope: !4678)
!4797 = !DILocation(line: 121, column: 2, scope: !4678)
!4798 = distinct !DISubprogram(name: "is_carrizo_or_later", scope: !3, file: !3, line: 65, type: !3227, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4799 = !DILocation(line: 67, column: 23, scope: !4798)
!4800 = !DILocation(line: 67, column: 9, scope: !4798)
!4801 = !DILocation(line: 67, column: 27, scope: !4798)
!4802 = !DILocation(line: 67, column: 35, scope: !4798)
!4803 = !DILocation(line: 67, column: 52, scope: !4798)
!4804 = !DILocation(line: 67, column: 38, scope: !4798)
!4805 = !DILocation(line: 67, column: 62, scope: !4798)
!4806 = !DILocation(line: 0, scope: !4798)
!4807 = !DILocation(line: 67, column: 2, scope: !4798)
!4808 = distinct !DISubprogram(name: "power1_average_show", scope: !3, file: !3, line: 199, type: !4044, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4809 = !DILocalVariable(name: "m", arg: 1, scope: !4810, file: !4811, line: 363, type: !2858)
!4810 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !4811, file: !4811, line: 363, type: !4812, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4811 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!4812 = !DISubroutineType(types: !4813)
!4813 = !{!106, !2858}
!4814 = !DILocation(line: 363, column: 74, scope: !4810, inlinedAt: !4815)
!4815 = distinct !DILocation(line: 224, column: 44, scope: !4808)
!4816 = !DILocalVariable(name: "dev", arg: 1, scope: !4808, file: !3, line: 199, type: !272)
!4817 = !DILocation(line: 199, column: 51, scope: !4808)
!4818 = !DILocalVariable(name: "attr", arg: 2, scope: !4808, file: !3, line: 200, type: !4046)
!4819 = !DILocation(line: 200, column: 33, scope: !4808)
!4820 = !DILocalVariable(name: "buf", arg: 3, scope: !4808, file: !3, line: 200, type: !330)
!4821 = !DILocation(line: 200, column: 45, scope: !4808)
!4822 = !DILocalVariable(name: "data", scope: !4808, file: !3, line: 202, type: !4078)
!4823 = !DILocation(line: 202, column: 28, scope: !4808)
!4824 = !DILocation(line: 202, column: 51, scope: !4808)
!4825 = !DILocation(line: 202, column: 35, scope: !4808)
!4826 = !DILocalVariable(name: "prev_cu_acc_power", scope: !4808, file: !3, line: 203, type: !3780)
!4827 = !DILocation(line: 203, column: 6, scope: !4808)
!4828 = !DILocalVariable(name: "prev_ptsc", scope: !4808, file: !3, line: 203, type: !3780)
!4829 = !DILocation(line: 203, column: 34, scope: !4808)
!4830 = !DILocalVariable(name: "jdelta", scope: !4808, file: !3, line: 204, type: !3780)
!4831 = !DILocation(line: 204, column: 6, scope: !4808)
!4832 = !DILocalVariable(name: "tdelta", scope: !4808, file: !3, line: 205, type: !108)
!4833 = !DILocation(line: 205, column: 6, scope: !4808)
!4834 = !DILocalVariable(name: "avg_acc", scope: !4808, file: !3, line: 205, type: !108)
!4835 = !DILocation(line: 205, column: 14, scope: !4808)
!4836 = !DILocalVariable(name: "cu", scope: !4808, file: !3, line: 206, type: !104)
!4837 = !DILocation(line: 206, column: 6, scope: !4808)
!4838 = !DILocalVariable(name: "cu_num", scope: !4808, file: !3, line: 206, type: !104)
!4839 = !DILocation(line: 206, column: 10, scope: !4808)
!4840 = !DILocalVariable(name: "ret", scope: !4808, file: !3, line: 206, type: !104)
!4841 = !DILocation(line: 206, column: 18, scope: !4808)
!4842 = !DILocalVariable(name: "leftover", scope: !4808, file: !3, line: 207, type: !115)
!4843 = !DILocation(line: 207, column: 14, scope: !4808)
!4844 = !DILocation(line: 213, column: 25, scope: !4808)
!4845 = !DILocation(line: 213, column: 11, scope: !4808)
!4846 = !DILocation(line: 213, column: 9, scope: !4808)
!4847 = !DILocation(line: 215, column: 23, scope: !4808)
!4848 = !DILocation(line: 215, column: 8, scope: !4808)
!4849 = !DILocation(line: 215, column: 6, scope: !4808)
!4850 = !DILocation(line: 216, column: 6, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 216, column: 6)
!4852 = !DILocation(line: 216, column: 6, scope: !4808)
!4853 = !DILocation(line: 217, column: 3, scope: !4851)
!4854 = !DILocation(line: 219, column: 10, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 219, column: 2)
!4856 = !DILocation(line: 219, column: 7, scope: !4855)
!4857 = !DILocation(line: 219, column: 15, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 219, column: 2)
!4859 = !DILocation(line: 219, column: 20, scope: !4858)
!4860 = !DILocation(line: 219, column: 18, scope: !4858)
!4861 = !DILocation(line: 219, column: 2, scope: !4855)
!4862 = !DILocation(line: 220, column: 27, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 219, column: 34)
!4864 = !DILocation(line: 220, column: 33, scope: !4863)
!4865 = !DILocation(line: 220, column: 46, scope: !4863)
!4866 = !DILocation(line: 220, column: 21, scope: !4863)
!4867 = !DILocation(line: 220, column: 3, scope: !4863)
!4868 = !DILocation(line: 220, column: 25, scope: !4863)
!4869 = !DILocation(line: 221, column: 19, scope: !4863)
!4870 = !DILocation(line: 221, column: 25, scope: !4863)
!4871 = !DILocation(line: 221, column: 41, scope: !4863)
!4872 = !DILocation(line: 221, column: 13, scope: !4863)
!4873 = !DILocation(line: 221, column: 3, scope: !4863)
!4874 = !DILocation(line: 221, column: 17, scope: !4863)
!4875 = !DILocation(line: 222, column: 2, scope: !4863)
!4876 = !DILocation(line: 219, column: 30, scope: !4858)
!4877 = !DILocation(line: 219, column: 2, scope: !4858)
!4878 = distinct !{!4878, !4861, !4879}
!4879 = !DILocation(line: 222, column: 2, scope: !4855)
!4880 = !DILocation(line: 224, column: 61, scope: !4808)
!4881 = !DILocation(line: 224, column: 67, scope: !4808)
!4882 = !DILocation(line: 365, column: 27, scope: !4883, inlinedAt: !4815)
!4883 = distinct !DILexicalBlock(scope: !4810, file: !4811, line: 365, column: 6)
!4884 = !DILocation(line: 365, column: 6, scope: !4883, inlinedAt: !4815)
!4885 = !DILocation(line: 365, column: 6, scope: !4810, inlinedAt: !4815)
!4886 = !DILocation(line: 366, column: 12, scope: !4887, inlinedAt: !4815)
!4887 = distinct !DILexicalBlock(scope: !4888, file: !4811, line: 366, column: 7)
!4888 = distinct !DILexicalBlock(scope: !4883, file: !4811, line: 365, column: 31)
!4889 = !DILocation(line: 366, column: 14, scope: !4887, inlinedAt: !4815)
!4890 = !DILocation(line: 366, column: 7, scope: !4888, inlinedAt: !4815)
!4891 = !DILocation(line: 367, column: 4, scope: !4887, inlinedAt: !4815)
!4892 = !DILocation(line: 368, column: 28, scope: !4888, inlinedAt: !4815)
!4893 = !DILocation(line: 368, column: 10, scope: !4888, inlinedAt: !4815)
!4894 = !DILocation(line: 368, column: 3, scope: !4888, inlinedAt: !4815)
!4895 = !DILocation(line: 370, column: 29, scope: !4896, inlinedAt: !4815)
!4896 = distinct !DILexicalBlock(scope: !4883, file: !4811, line: 369, column: 9)
!4897 = !DILocation(line: 370, column: 10, scope: !4896, inlinedAt: !4815)
!4898 = !DILocation(line: 370, column: 3, scope: !4896, inlinedAt: !4815)
!4899 = !DILocation(line: 372, column: 1, scope: !4810, inlinedAt: !4815)
!4900 = !DILocation(line: 224, column: 13, scope: !4808)
!4901 = !DILocation(line: 224, column: 11, scope: !4808)
!4902 = !DILocation(line: 225, column: 6, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 225, column: 6)
!4904 = !DILocation(line: 225, column: 6, scope: !4808)
!4905 = !DILocation(line: 226, column: 3, scope: !4903)
!4906 = !DILocation(line: 228, column: 23, scope: !4808)
!4907 = !DILocation(line: 228, column: 8, scope: !4808)
!4908 = !DILocation(line: 228, column: 6, scope: !4808)
!4909 = !DILocation(line: 229, column: 6, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 229, column: 6)
!4911 = !DILocation(line: 229, column: 6, scope: !4808)
!4912 = !DILocation(line: 230, column: 3, scope: !4910)
!4913 = !DILocation(line: 232, column: 10, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 232, column: 2)
!4915 = !DILocation(line: 232, column: 23, scope: !4914)
!4916 = !DILocation(line: 232, column: 7, scope: !4914)
!4917 = !DILocation(line: 232, column: 28, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4914, file: !3, line: 232, column: 2)
!4919 = !DILocation(line: 232, column: 33, scope: !4918)
!4920 = !DILocation(line: 232, column: 31, scope: !4918)
!4921 = !DILocation(line: 232, column: 2, scope: !4914)
!4922 = !DILocation(line: 234, column: 7, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4924, file: !3, line: 234, column: 7)
!4924 = distinct !DILexicalBlock(scope: !4918, file: !3, line: 232, column: 47)
!4925 = !DILocation(line: 234, column: 13, scope: !4923)
!4926 = !DILocation(line: 234, column: 19, scope: !4923)
!4927 = !DILocation(line: 234, column: 23, scope: !4923)
!4928 = !DILocation(line: 234, column: 7, scope: !4924)
!4929 = !DILocation(line: 235, column: 4, scope: !4923)
!4930 = !DILocation(line: 237, column: 7, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4924, file: !3, line: 237, column: 7)
!4932 = !DILocation(line: 237, column: 13, scope: !4931)
!4933 = !DILocation(line: 237, column: 26, scope: !4931)
!4934 = !DILocation(line: 237, column: 50, scope: !4931)
!4935 = !DILocation(line: 237, column: 32, scope: !4931)
!4936 = !DILocation(line: 237, column: 30, scope: !4931)
!4937 = !DILocation(line: 237, column: 7, scope: !4924)
!4938 = !DILocation(line: 238, column: 17, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4931, file: !3, line: 237, column: 55)
!4940 = !DILocation(line: 238, column: 23, scope: !4939)
!4941 = !DILocation(line: 238, column: 42, scope: !4939)
!4942 = !DILocation(line: 238, column: 48, scope: !4939)
!4943 = !DILocation(line: 238, column: 61, scope: !4939)
!4944 = !DILocation(line: 238, column: 40, scope: !4939)
!4945 = !DILocation(line: 238, column: 11, scope: !4939)
!4946 = !DILocation(line: 238, column: 4, scope: !4939)
!4947 = !DILocation(line: 238, column: 15, scope: !4939)
!4948 = !DILocation(line: 239, column: 36, scope: !4939)
!4949 = !DILocation(line: 239, column: 18, scope: !4939)
!4950 = !DILocation(line: 239, column: 11, scope: !4939)
!4951 = !DILocation(line: 239, column: 4, scope: !4939)
!4952 = !DILocation(line: 239, column: 15, scope: !4939)
!4953 = !DILocation(line: 240, column: 3, scope: !4939)
!4954 = !DILocation(line: 241, column: 17, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4931, file: !3, line: 240, column: 10)
!4956 = !DILocation(line: 241, column: 23, scope: !4955)
!4957 = !DILocation(line: 241, column: 36, scope: !4955)
!4958 = !DILocation(line: 241, column: 60, scope: !4955)
!4959 = !DILocation(line: 241, column: 42, scope: !4955)
!4960 = !DILocation(line: 241, column: 40, scope: !4955)
!4961 = !DILocation(line: 241, column: 11, scope: !4955)
!4962 = !DILocation(line: 241, column: 4, scope: !4955)
!4963 = !DILocation(line: 241, column: 15, scope: !4955)
!4964 = !DILocation(line: 243, column: 12, scope: !4924)
!4965 = !DILocation(line: 243, column: 18, scope: !4924)
!4966 = !DILocation(line: 243, column: 34, scope: !4924)
!4967 = !DILocation(line: 243, column: 50, scope: !4924)
!4968 = !DILocation(line: 243, column: 40, scope: !4924)
!4969 = !DILocation(line: 243, column: 38, scope: !4924)
!4970 = !DILocation(line: 243, column: 10, scope: !4924)
!4971 = !DILocation(line: 244, column: 17, scope: !4924)
!4972 = !DILocation(line: 244, column: 23, scope: !4924)
!4973 = !DILocation(line: 244, column: 44, scope: !4924)
!4974 = !DILocation(line: 244, column: 10, scope: !4924)
!4975 = !DILocation(line: 244, column: 3, scope: !4924)
!4976 = !DILocation(line: 244, column: 14, scope: !4924)
!4977 = !DILocalVariable(name: "__base", scope: !4978, file: !3, line: 245, type: !604)
!4978 = distinct !DILexicalBlock(scope: !4924, file: !3, line: 245, column: 3)
!4979 = !DILocation(line: 245, column: 3, scope: !4978)
!4980 = !DILocalVariable(name: "__rem", scope: !4978, file: !3, line: 245, type: !604)
!4981 = !DILocation(line: 248, column: 21, scope: !4924)
!4982 = !DILocation(line: 248, column: 14, scope: !4924)
!4983 = !DILocation(line: 248, column: 11, scope: !4924)
!4984 = !DILocation(line: 249, column: 2, scope: !4924)
!4985 = !DILocation(line: 232, column: 43, scope: !4918)
!4986 = !DILocation(line: 232, column: 2, scope: !4918)
!4987 = distinct !{!4987, !4921, !4988}
!4988 = !DILocation(line: 249, column: 2, scope: !4914)
!4989 = !DILocation(line: 251, column: 17, scope: !4808)
!4990 = !DILocation(line: 251, column: 52, scope: !4808)
!4991 = !DILocation(line: 251, column: 9, scope: !4808)
!4992 = !DILocation(line: 251, column: 2, scope: !4808)
!4993 = !DILocation(line: 252, column: 1, scope: !4808)
!4994 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !4811, file: !4811, line: 308, type: !4812, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!4995 = !DILocalVariable(name: "m", arg: 1, scope: !4994, file: !4811, line: 308, type: !2858)
!4996 = !DILocation(line: 308, column: 66, scope: !4994)
!4997 = !DILocation(line: 310, column: 10, scope: !4994)
!4998 = !DILocation(line: 310, column: 12, scope: !4994)
!4999 = !DILocation(line: 310, column: 34, scope: !4994)
!5000 = !DILocation(line: 310, column: 39, scope: !4994)
!5001 = !DILocation(line: 310, column: 2, scope: !4994)
!5002 = distinct !DISubprogram(name: "power1_average_interval_show", scope: !3, file: !3, line: 255, type: !4044, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5003 = !DILocalVariable(name: "dev", arg: 1, scope: !5002, file: !3, line: 255, type: !272)
!5004 = !DILocation(line: 255, column: 60, scope: !5002)
!5005 = !DILocalVariable(name: "attr", arg: 2, scope: !5002, file: !3, line: 256, type: !4046)
!5006 = !DILocation(line: 256, column: 35, scope: !5002)
!5007 = !DILocalVariable(name: "buf", arg: 3, scope: !5002, file: !3, line: 257, type: !330)
!5008 = !DILocation(line: 257, column: 16, scope: !5002)
!5009 = !DILocalVariable(name: "data", scope: !5002, file: !3, line: 259, type: !4078)
!5010 = !DILocation(line: 259, column: 28, scope: !5002)
!5011 = !DILocation(line: 259, column: 51, scope: !5002)
!5012 = !DILocation(line: 259, column: 35, scope: !5002)
!5013 = !DILocation(line: 261, column: 17, scope: !5002)
!5014 = !DILocation(line: 261, column: 31, scope: !5002)
!5015 = !DILocation(line: 261, column: 37, scope: !5002)
!5016 = !DILocation(line: 261, column: 9, scope: !5002)
!5017 = !DILocation(line: 261, column: 2, scope: !5002)
!5018 = distinct !DISubprogram(name: "power1_average_interval_store", scope: !3, file: !3, line: 264, type: !4049, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5019 = !DILocalVariable(name: "dev", arg: 1, scope: !5018, file: !3, line: 264, type: !272)
!5020 = !DILocation(line: 264, column: 61, scope: !5018)
!5021 = !DILocalVariable(name: "attr", arg: 2, scope: !5018, file: !3, line: 265, type: !4046)
!5022 = !DILocation(line: 265, column: 36, scope: !5018)
!5023 = !DILocalVariable(name: "buf", arg: 3, scope: !5018, file: !3, line: 266, type: !170)
!5024 = !DILocation(line: 266, column: 23, scope: !5018)
!5025 = !DILocalVariable(name: "count", arg: 4, scope: !5018, file: !3, line: 266, type: !375)
!5026 = !DILocation(line: 266, column: 35, scope: !5018)
!5027 = !DILocalVariable(name: "data", scope: !5018, file: !3, line: 268, type: !4078)
!5028 = !DILocation(line: 268, column: 28, scope: !5018)
!5029 = !DILocation(line: 268, column: 51, scope: !5018)
!5030 = !DILocation(line: 268, column: 35, scope: !5018)
!5031 = !DILocalVariable(name: "temp", scope: !5018, file: !3, line: 269, type: !106)
!5032 = !DILocation(line: 269, column: 16, scope: !5018)
!5033 = !DILocalVariable(name: "ret", scope: !5018, file: !3, line: 270, type: !104)
!5034 = !DILocation(line: 270, column: 6, scope: !5018)
!5035 = !DILocation(line: 272, column: 17, scope: !5018)
!5036 = !DILocation(line: 272, column: 8, scope: !5018)
!5037 = !DILocation(line: 272, column: 6, scope: !5018)
!5038 = !DILocation(line: 273, column: 6, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 273, column: 6)
!5040 = !DILocation(line: 273, column: 6, scope: !5018)
!5041 = !DILocation(line: 274, column: 10, scope: !5039)
!5042 = !DILocation(line: 274, column: 3, scope: !5039)
!5043 = !DILocation(line: 276, column: 6, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 276, column: 6)
!5045 = !DILocation(line: 276, column: 11, scope: !5044)
!5046 = !DILocation(line: 276, column: 6, scope: !5018)
!5047 = !DILocation(line: 277, column: 3, scope: !5044)
!5048 = !DILocation(line: 280, column: 6, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 280, column: 6)
!5050 = !DILocation(line: 280, column: 11, scope: !5049)
!5051 = !DILocation(line: 280, column: 6, scope: !5018)
!5052 = !DILocation(line: 281, column: 3, scope: !5049)
!5053 = !DILocation(line: 283, column: 23, scope: !5018)
!5054 = !DILocation(line: 283, column: 2, scope: !5018)
!5055 = !DILocation(line: 283, column: 8, scope: !5018)
!5056 = !DILocation(line: 283, column: 21, scope: !5018)
!5057 = !DILocation(line: 285, column: 9, scope: !5018)
!5058 = !DILocation(line: 285, column: 2, scope: !5018)
!5059 = !DILocation(line: 286, column: 1, scope: !5018)
!5060 = distinct !DISubprogram(name: "kstrtoul", scope: !5061, file: !5061, line: 351, type: !5062, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5061 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!5062 = !DISubroutineType(types: !5063)
!5063 = !{!104, !170, !7, !105}
!5064 = !DILocalVariable(name: "s", arg: 1, scope: !5060, file: !5061, line: 351, type: !170)
!5065 = !DILocation(line: 351, column: 53, scope: !5060)
!5066 = !DILocalVariable(name: "base", arg: 2, scope: !5060, file: !5061, line: 351, type: !7)
!5067 = !DILocation(line: 351, column: 69, scope: !5060)
!5068 = !DILocalVariable(name: "res", arg: 3, scope: !5060, file: !5061, line: 351, type: !105)
!5069 = !DILocation(line: 351, column: 90, scope: !5060)
!5070 = !DILocation(line: 359, column: 20, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5060, file: !5061, line: 357, column: 6)
!5072 = !DILocation(line: 359, column: 23, scope: !5071)
!5073 = !DILocation(line: 359, column: 51, scope: !5071)
!5074 = !DILocation(line: 359, column: 10, scope: !5071)
!5075 = !DILocation(line: 359, column: 3, scope: !5071)
!5076 = distinct !DISubprogram(name: "kasan_check_read", scope: !5077, file: !5077, line: 34, type: !5078, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5077 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5078 = !DISubroutineType(types: !5079)
!5079 = !{!535, !4478, !7}
!5080 = !DILocalVariable(name: "p", arg: 1, scope: !5076, file: !5077, line: 34, type: !4478)
!5081 = !DILocation(line: 34, column: 58, scope: !5076)
!5082 = !DILocalVariable(name: "size", arg: 2, scope: !5076, file: !5077, line: 34, type: !7)
!5083 = !DILocation(line: 34, column: 74, scope: !5076)
!5084 = !DILocation(line: 36, column: 2, scope: !5076)
!5085 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5086, file: !5086, line: 178, type: !5087, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5086 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5087 = !DISubroutineType(types: !5088)
!5088 = !{null, !4478, !375, !104}
!5089 = !DILocalVariable(name: "ptr", arg: 1, scope: !5085, file: !5086, line: 178, type: !4478)
!5090 = !DILocation(line: 178, column: 60, scope: !5085)
!5091 = !DILocalVariable(name: "size", arg: 2, scope: !5085, file: !5086, line: 178, type: !375)
!5092 = !DILocation(line: 178, column: 72, scope: !5085)
!5093 = !DILocalVariable(name: "type", arg: 3, scope: !5085, file: !5086, line: 179, type: !104)
!5094 = !DILocation(line: 179, column: 15, scope: !5085)
!5095 = !DILocation(line: 179, column: 23, scope: !5085)
!5096 = distinct !DISubprogram(name: "cpuid", scope: !2170, file: !2170, line: 615, type: !5097, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5097 = !DISubroutineType(types: !5098)
!5098 = !{null, !7, !2714, !2714, !2714, !2714}
!5099 = !DILocalVariable(name: "op", arg: 1, scope: !5096, file: !2170, line: 615, type: !7)
!5100 = !DILocation(line: 615, column: 39, scope: !5096)
!5101 = !DILocalVariable(name: "eax", arg: 2, scope: !5096, file: !2170, line: 616, type: !2714)
!5102 = !DILocation(line: 616, column: 19, scope: !5096)
!5103 = !DILocalVariable(name: "ebx", arg: 3, scope: !5096, file: !2170, line: 616, type: !2714)
!5104 = !DILocation(line: 616, column: 38, scope: !5096)
!5105 = !DILocalVariable(name: "ecx", arg: 4, scope: !5096, file: !2170, line: 617, type: !2714)
!5106 = !DILocation(line: 617, column: 19, scope: !5096)
!5107 = !DILocalVariable(name: "edx", arg: 5, scope: !5096, file: !2170, line: 617, type: !2714)
!5108 = !DILocation(line: 617, column: 38, scope: !5096)
!5109 = !DILocation(line: 619, column: 9, scope: !5096)
!5110 = !DILocation(line: 619, column: 3, scope: !5096)
!5111 = !DILocation(line: 619, column: 7, scope: !5096)
!5112 = !DILocation(line: 620, column: 3, scope: !5096)
!5113 = !DILocation(line: 620, column: 7, scope: !5096)
!5114 = !DILocation(line: 621, column: 10, scope: !5096)
!5115 = !DILocation(line: 621, column: 15, scope: !5096)
!5116 = !DILocation(line: 621, column: 20, scope: !5096)
!5117 = !DILocation(line: 621, column: 25, scope: !5096)
!5118 = !DILocation(line: 621, column: 2, scope: !5096)
!5119 = !DILocation(line: 622, column: 1, scope: !5096)
!5120 = distinct !DISubprogram(name: "__cpuid", scope: !4529, file: !4529, line: 94, type: !5121, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{null, !2714, !2714, !2714, !2714}
!5123 = !DILocalVariable(name: "eax", arg: 1, scope: !5120, file: !4529, line: 94, type: !2714)
!5124 = !DILocation(line: 94, column: 42, scope: !5120)
!5125 = !DILocalVariable(name: "ebx", arg: 2, scope: !5120, file: !4529, line: 94, type: !2714)
!5126 = !DILocation(line: 94, column: 61, scope: !5120)
!5127 = !DILocalVariable(name: "ecx", arg: 3, scope: !5120, file: !4529, line: 95, type: !2714)
!5128 = !DILocation(line: 95, column: 21, scope: !5120)
!5129 = !DILocalVariable(name: "edx", arg: 4, scope: !5120, file: !4529, line: 95, type: !2714)
!5130 = !DILocation(line: 95, column: 40, scope: !5120)
!5131 = !DILocalVariable(name: "__edi", scope: !5132, file: !4529, line: 97, type: !106)
!5132 = distinct !DILexicalBlock(scope: !5120, file: !4529, line: 97, column: 2)
!5133 = !DILocation(line: 97, column: 2, scope: !5132)
!5134 = !DILocalVariable(name: "__esi", scope: !5132, file: !4529, line: 97, type: !106)
!5135 = !DILocalVariable(name: "__edx", scope: !5132, file: !4529, line: 97, type: !106)
!5136 = !DILocalVariable(name: "__ecx", scope: !5132, file: !4529, line: 97, type: !106)
!5137 = !DILocalVariable(name: "__eax", scope: !5132, file: !4529, line: 97, type: !106)
!5138 = !{i32 -2145981528, i32 -2145980548, i32 -2145980314, i32 -2145980263, i32 -2145980235, i32 -2145980210, i32 -2145980526, i32 -2145980513, i32 -2145980075, i32 -2145979956, i32 -2145980421, i32 -2145980394, i32 -2145980366, i32 -2145980336}
!5139 = !DILocation(line: 98, column: 1, scope: !5120)
!5140 = distinct !DISubprogram(name: "paravirt_read_msr_safe", scope: !4529, file: !4529, line: 174, type: !5141, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{!108, !7, !750}
!5143 = !DILocalVariable(name: "msr", arg: 1, scope: !5140, file: !4529, line: 174, type: !7)
!5144 = !DILocation(line: 174, column: 51, scope: !5140)
!5145 = !DILocalVariable(name: "err", arg: 2, scope: !5140, file: !4529, line: 174, type: !750)
!5146 = !DILocation(line: 174, column: 61, scope: !5140)
!5147 = !DILocalVariable(name: "__ret", scope: !5148, file: !4529, line: 176, type: !108)
!5148 = distinct !DILexicalBlock(scope: !5140, file: !4529, line: 176, column: 9)
!5149 = !DILocation(line: 176, column: 9, scope: !5148)
!5150 = !DILocalVariable(name: "__edi", scope: !5148, file: !4529, line: 176, type: !106)
!5151 = !DILocalVariable(name: "__esi", scope: !5148, file: !4529, line: 176, type: !106)
!5152 = !DILocalVariable(name: "__edx", scope: !5148, file: !4529, line: 176, type: !106)
!5153 = !DILocalVariable(name: "__ecx", scope: !5148, file: !4529, line: 176, type: !106)
!5154 = !DILocalVariable(name: "__eax", scope: !5148, file: !4529, line: 176, type: !106)
!5155 = !DILocation(line: 176, column: 9, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5157, file: !4529, line: 176, column: 9)
!5157 = distinct !DILexicalBlock(scope: !5148, file: !4529, line: 176, column: 9)
!5158 = !{i32 -2145925828, i32 -2145923317, i32 -2145923083, i32 -2145923032, i32 -2145923004, i32 -2145922979, i32 -2145923295, i32 -2145923282, i32 -2145922844, i32 -2145922725, i32 -2145923190, i32 -2145923163, i32 -2145923135, i32 -2145923105}
!5159 = !DILocalVariable(name: "__mask", scope: !5160, file: !4529, line: 176, type: !106)
!5160 = distinct !DILexicalBlock(scope: !5156, file: !4529, line: 176, column: 9)
!5161 = !DILocation(line: 176, column: 9, scope: !5160)
!5162 = !DILocation(line: 176, column: 9, scope: !5157)
!5163 = !DILocation(line: 176, column: 2, scope: !5140)
!5164 = distinct !DISubprogram(name: "zalloc_cpumask_var", scope: !120, file: !120, line: 772, type: !5165, scopeLine: 773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5165 = !DISubroutineType(types: !5166)
!5166 = !{!535, !5167, !102}
!5167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!5168 = !DILocalVariable(name: "mask", arg: 1, scope: !5164, file: !120, line: 772, type: !5167)
!5169 = !DILocation(line: 772, column: 54, scope: !5164)
!5170 = !DILocalVariable(name: "flags", arg: 2, scope: !5164, file: !120, line: 772, type: !102)
!5171 = !DILocation(line: 772, column: 66, scope: !5164)
!5172 = !DILocation(line: 774, column: 17, scope: !5164)
!5173 = !DILocation(line: 774, column: 16, scope: !5164)
!5174 = !DILocation(line: 774, column: 2, scope: !5164)
!5175 = !DILocation(line: 775, column: 2, scope: !5164)
!5176 = distinct !DISubprogram(name: "get_online_cpus", scope: !5177, file: !5177, line: 144, type: !156, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5177 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/lizy2001/genbc/linux")
!5178 = !DILocation(line: 144, column: 44, scope: !5176)
!5179 = !DILocation(line: 144, column: 62, scope: !5176)
!5180 = distinct !DISubprogram(name: "cpumask_set_cpu", scope: !120, file: !120, line: 332, type: !5181, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5181 = !DISubroutineType(types: !5182)
!5182 = !{null, !7, !131}
!5183 = !DILocalVariable(name: "cpu", arg: 1, scope: !5180, file: !120, line: 332, type: !7)
!5184 = !DILocation(line: 332, column: 49, scope: !5180)
!5185 = !DILocalVariable(name: "dstp", arg: 2, scope: !5180, file: !120, line: 332, type: !131)
!5186 = !DILocation(line: 332, column: 70, scope: !5180)
!5187 = !DILocation(line: 334, column: 24, scope: !5180)
!5188 = !DILocation(line: 334, column: 10, scope: !5180)
!5189 = !DILocation(line: 334, column: 30, scope: !5180)
!5190 = !DILocation(line: 334, column: 2, scope: !5180)
!5191 = !DILocation(line: 335, column: 1, scope: !5180)
!5192 = distinct !DISubprogram(name: "cpumask_first", scope: !120, file: !120, line: 150, type: !5193, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5193 = !DISubroutineType(types: !5194)
!5194 = !{!7, !117}
!5195 = !DILocalVariable(name: "srcp", arg: 1, scope: !5192, file: !120, line: 150, type: !117)
!5196 = !DILocation(line: 150, column: 64, scope: !5192)
!5197 = !DILocation(line: 152, column: 2, scope: !5192)
!5198 = distinct !DISubprogram(name: "get_cpu_mask", scope: !120, file: !120, line: 884, type: !5199, scopeLine: 885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5199 = !DISubroutineType(types: !5200)
!5200 = !{!117, !7}
!5201 = !DILocalVariable(name: "cpu", arg: 1, scope: !5198, file: !120, line: 884, type: !7)
!5202 = !DILocation(line: 884, column: 63, scope: !5198)
!5203 = !DILocalVariable(name: "p", scope: !5198, file: !120, line: 886, type: !5204)
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!5205 = !DILocation(line: 886, column: 23, scope: !5198)
!5206 = !DILocation(line: 886, column: 46, scope: !5198)
!5207 = !DILocation(line: 886, column: 50, scope: !5198)
!5208 = !DILocation(line: 886, column: 44, scope: !5198)
!5209 = !DILocation(line: 886, column: 27, scope: !5198)
!5210 = !DILocation(line: 887, column: 7, scope: !5198)
!5211 = !DILocation(line: 887, column: 11, scope: !5198)
!5212 = !DILocation(line: 887, column: 4, scope: !5198)
!5213 = !DILocation(line: 888, column: 9, scope: !5198)
!5214 = !DILocation(line: 888, column: 2, scope: !5198)
!5215 = distinct !DISubprogram(name: "do_read_registers_on_cu", scope: !3, file: !3, line: 134, type: !514, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5216 = !DILocalVariable(name: "_data", arg: 1, scope: !5215, file: !3, line: 134, type: !107)
!5217 = !DILocation(line: 134, column: 43, scope: !5215)
!5218 = !DILocalVariable(name: "data", scope: !5215, file: !3, line: 136, type: !4078)
!5219 = !DILocation(line: 136, column: 28, scope: !5215)
!5220 = !DILocation(line: 136, column: 35, scope: !5215)
!5221 = !DILocalVariable(name: "cpu", scope: !5215, file: !3, line: 137, type: !104)
!5222 = !DILocation(line: 137, column: 6, scope: !5215)
!5223 = !DILocalVariable(name: "cu", scope: !5215, file: !3, line: 137, type: !104)
!5224 = !DILocation(line: 137, column: 11, scope: !5215)
!5225 = !DILocation(line: 139, column: 6, scope: !5215)
!5226 = !DILocation(line: 145, column: 21, scope: !5215)
!5227 = !DILocation(line: 145, column: 7, scope: !5215)
!5228 = !DILocation(line: 145, column: 5, scope: !5215)
!5229 = !DILocation(line: 147, column: 44, scope: !5215)
!5230 = !DILocation(line: 147, column: 50, scope: !5215)
!5231 = !DILocation(line: 147, column: 63, scope: !5215)
!5232 = !DILocation(line: 147, column: 2, scope: !5215)
!5233 = !DILocation(line: 148, column: 30, scope: !5215)
!5234 = !DILocation(line: 148, column: 36, scope: !5215)
!5235 = !DILocation(line: 148, column: 52, scope: !5215)
!5236 = !DILocation(line: 148, column: 2, scope: !5215)
!5237 = !DILocation(line: 150, column: 2, scope: !5215)
!5238 = !DILocation(line: 150, column: 8, scope: !5215)
!5239 = !DILocation(line: 150, column: 14, scope: !5215)
!5240 = !DILocation(line: 150, column: 18, scope: !5215)
!5241 = !DILocation(line: 151, column: 1, scope: !5215)
!5242 = distinct !DISubprogram(name: "put_online_cpus", scope: !5177, file: !5177, line: 145, type: !156, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5243 = !DILocation(line: 145, column: 44, scope: !5242)
!5244 = !DILocation(line: 145, column: 64, scope: !5242)
!5245 = distinct !DISubprogram(name: "free_cpumask_var", scope: !120, file: !120, line: 789, type: !5246, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{null, !131}
!5248 = !DILocalVariable(name: "mask", arg: 1, scope: !5245, file: !120, line: 789, type: !131)
!5249 = !DILocation(line: 789, column: 51, scope: !5245)
!5250 = !DILocation(line: 791, column: 1, scope: !5245)
!5251 = distinct !DISubprogram(name: "cpumask_clear", scope: !120, file: !120, line: 411, type: !5246, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5252 = !DILocalVariable(name: "dstp", arg: 1, scope: !5251, file: !120, line: 411, type: !131)
!5253 = !DILocation(line: 411, column: 50, scope: !5251)
!5254 = !DILocation(line: 413, column: 14, scope: !5251)
!5255 = !DILocation(line: 413, column: 2, scope: !5251)
!5256 = !DILocation(line: 414, column: 1, scope: !5251)
!5257 = distinct !DISubprogram(name: "bitmap_zero", scope: !5258, file: !5258, line: 235, type: !5259, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5258 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/lizy2001/genbc/linux")
!5259 = !DISubroutineType(types: !5260)
!5260 = !{null, !105, !7}
!5261 = !DILocalVariable(name: "dst", arg: 1, scope: !5257, file: !5258, line: 235, type: !105)
!5262 = !DILocation(line: 235, column: 47, scope: !5257)
!5263 = !DILocalVariable(name: "nbits", arg: 2, scope: !5257, file: !5258, line: 235, type: !7)
!5264 = !DILocation(line: 235, column: 65, scope: !5257)
!5265 = !DILocalVariable(name: "len", scope: !5257, file: !5258, line: 237, type: !7)
!5266 = !DILocation(line: 237, column: 15, scope: !5257)
!5267 = !DILocation(line: 237, column: 21, scope: !5257)
!5268 = !DILocation(line: 237, column: 42, scope: !5257)
!5269 = !DILocation(line: 238, column: 9, scope: !5257)
!5270 = !DILocation(line: 238, column: 2, scope: !5257)
!5271 = !DILocation(line: 238, column: 17, scope: !5257)
!5272 = !DILocation(line: 239, column: 1, scope: !5257)
!5273 = distinct !DISubprogram(name: "cpus_read_lock", scope: !5177, file: !5177, line: 132, type: !156, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5274 = !DILocation(line: 132, column: 43, scope: !5273)
!5275 = distinct !DISubprogram(name: "set_bit", scope: !5276, file: !5276, line: 26, type: !5277, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5276 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5277 = !DISubroutineType(types: !5278)
!5278 = !{null, !115, !5279}
!5279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!5280 = !DILocalVariable(name: "nr", arg: 1, scope: !5281, file: !4460, line: 52, type: !115)
!5281 = distinct !DISubprogram(name: "arch_set_bit", scope: !4460, file: !4460, line: 52, type: !5277, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5282 = !DILocation(line: 52, column: 19, scope: !5281, inlinedAt: !5283)
!5283 = distinct !DILocation(line: 29, column: 2, scope: !5275)
!5284 = !DILocalVariable(name: "addr", arg: 2, scope: !5281, file: !4460, line: 52, type: !5279)
!5285 = !DILocation(line: 52, column: 47, scope: !5281, inlinedAt: !5283)
!5286 = !DILocalVariable(name: "v", arg: 1, scope: !5287, file: !4475, line: 84, type: !4478)
!5287 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4475, file: !4475, line: 84, type: !4476, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5288 = !DILocation(line: 84, column: 74, scope: !5287, inlinedAt: !5289)
!5289 = distinct !DILocation(line: 28, column: 2, scope: !5275)
!5290 = !DILocalVariable(name: "size", arg: 2, scope: !5287, file: !4475, line: 84, type: !375)
!5291 = !DILocation(line: 84, column: 84, scope: !5287, inlinedAt: !5289)
!5292 = !DILocalVariable(name: "nr", arg: 1, scope: !5275, file: !5276, line: 26, type: !115)
!5293 = !DILocation(line: 26, column: 33, scope: !5275)
!5294 = !DILocalVariable(name: "addr", arg: 2, scope: !5275, file: !5276, line: 26, type: !5279)
!5295 = !DILocation(line: 26, column: 61, scope: !5275)
!5296 = !DILocation(line: 28, column: 26, scope: !5275)
!5297 = !DILocation(line: 28, column: 33, scope: !5275)
!5298 = !DILocation(line: 28, column: 31, scope: !5275)
!5299 = !DILocation(line: 86, column: 20, scope: !5287, inlinedAt: !5289)
!5300 = !DILocation(line: 86, column: 23, scope: !5287, inlinedAt: !5289)
!5301 = !DILocation(line: 86, column: 2, scope: !5287, inlinedAt: !5289)
!5302 = !DILocation(line: 87, column: 2, scope: !5287, inlinedAt: !5289)
!5303 = !DILocation(line: 29, column: 15, scope: !5275)
!5304 = !DILocation(line: 29, column: 19, scope: !5275)
!5305 = !DILocation(line: 54, column: 27, scope: !5306, inlinedAt: !5283)
!5306 = distinct !DILexicalBlock(scope: !5281, file: !4460, line: 54, column: 6)
!5307 = !DILocation(line: 54, column: 6, scope: !5306, inlinedAt: !5283)
!5308 = !DILocation(line: 54, column: 6, scope: !5281, inlinedAt: !5283)
!5309 = !DILocation(line: 56, column: 6, scope: !5310, inlinedAt: !5283)
!5310 = distinct !DILexicalBlock(scope: !5306, file: !4460, line: 54, column: 32)
!5311 = !DILocation(line: 57, column: 12, scope: !5310, inlinedAt: !5283)
!5312 = !DILocation(line: 55, column: 3, scope: !5310, inlinedAt: !5283)
!5313 = !{i32 -2147227898}
!5314 = !DILocation(line: 59, column: 2, scope: !5310, inlinedAt: !5283)
!5315 = !DILocation(line: 61, column: 8, scope: !5316, inlinedAt: !5283)
!5316 = distinct !DILexicalBlock(scope: !5306, file: !4460, line: 59, column: 9)
!5317 = !DILocation(line: 61, column: 32, scope: !5316, inlinedAt: !5283)
!5318 = !DILocation(line: 60, column: 3, scope: !5316, inlinedAt: !5283)
!5319 = !{i32 -2147227766}
!5320 = !DILocation(line: 30, column: 1, scope: !5275)
!5321 = distinct !DISubprogram(name: "cpumask_check", scope: !120, file: !120, line: 142, type: !4512, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5322 = !DILocalVariable(name: "cpu", arg: 1, scope: !5321, file: !120, line: 142, type: !7)
!5323 = !DILocation(line: 142, column: 55, scope: !5321)
!5324 = !DILocation(line: 144, column: 20, scope: !5321)
!5325 = !DILocation(line: 144, column: 2, scope: !5321)
!5326 = !DILocation(line: 145, column: 9, scope: !5321)
!5327 = !DILocation(line: 145, column: 2, scope: !5321)
!5328 = distinct !DISubprogram(name: "kasan_check_write", scope: !5077, file: !5077, line: 38, type: !5078, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5329 = !DILocalVariable(name: "p", arg: 1, scope: !5328, file: !5077, line: 38, type: !4478)
!5330 = !DILocation(line: 38, column: 59, scope: !5328)
!5331 = !DILocalVariable(name: "size", arg: 2, scope: !5328, file: !5077, line: 38, type: !7)
!5332 = !DILocation(line: 38, column: 75, scope: !5328)
!5333 = !DILocation(line: 40, column: 2, scope: !5328)
!5334 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !120, file: !120, line: 134, type: !5335, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5335 = !DISubroutineType(types: !5336)
!5336 = !{null, !7, !7}
!5337 = !DILocalVariable(name: "cpu", arg: 1, scope: !5334, file: !120, line: 134, type: !7)
!5338 = !DILocation(line: 134, column: 51, scope: !5334)
!5339 = !DILocalVariable(name: "bits", arg: 2, scope: !5334, file: !120, line: 134, type: !7)
!5340 = !DILocation(line: 134, column: 69, scope: !5334)
!5341 = !DILocation(line: 139, column: 1, scope: !5334)
!5342 = distinct !DISubprogram(name: "cpus_read_unlock", scope: !5177, file: !5177, line: 133, type: !156, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5343 = !DILocation(line: 133, column: 45, scope: !5342)
!5344 = distinct !DISubprogram(name: "IS_ERR", scope: !4305, file: !4305, line: 34, type: !5345, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5345 = !DISubroutineType(types: !5346)
!5346 = !{!535, !2158}
!5347 = !DILocalVariable(name: "ptr", arg: 1, scope: !5344, file: !4305, line: 34, type: !2158)
!5348 = !DILocation(line: 34, column: 60, scope: !5344)
!5349 = !DILocation(line: 36, column: 9, scope: !5344)
!5350 = !DILocation(line: 36, column: 2, scope: !5344)
!5351 = distinct !DISubprogram(name: "PTR_ERR", scope: !4305, file: !4305, line: 29, type: !5352, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !303)
!5352 = !DISubroutineType(types: !5353)
!5353 = !{!115, !2158}
!5354 = !DILocalVariable(name: "ptr", arg: 1, scope: !5351, file: !4305, line: 29, type: !2158)
!5355 = !DILocation(line: 29, column: 61, scope: !5351)
!5356 = !DILocation(line: 31, column: 16, scope: !5351)
!5357 = !DILocation(line: 31, column: 9, scope: !5351)
!5358 = !DILocation(line: 31, column: 2, scope: !5351)
