; ModuleID = '../bcout/drivers/i2c/busses/i2c-amd8111.llvm.bc'
source_filename = "drivers/i2c/busses/i2c-amd8111.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_amd8111_driver_init6:\09\09\09"
module asm ".long\09amd8111_driver_init - .\09\09\09"
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
%struct.i2c_algorithm = type { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*)* }
%struct.i2c_adapter = type { %struct.module*, i32, %struct.i2c_algorithm*, i8*, %struct.i2c_lock_operations*, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i64, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, %struct.i2c_bus_recovery_info*, %struct.i2c_adapter_quirks*, %struct.irq_domain* }
%struct.i2c_lock_operations = type { void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)* }
%struct.rt_mutex = type { %struct.raw_spinlock, %struct.rb_root_cached, %struct.task_struct* }
%struct.i2c_bus_recovery_info = type { i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.pinctrl*, %struct.pinctrl_state*, %struct.pinctrl_state* }
%struct.gpio_desc = type opaque
%struct.pinctrl = type opaque
%struct.pinctrl_state = type opaque
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, i8* }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.kmem_cache = type opaque
%struct.amd_smbus = type { %struct.pci_dev*, %struct.i2c_adapter, i32, i32 }

@__UNIQUE_ID_file240 = internal constant [48 x i8] c"i2c_amd8111.file=drivers/i2c/busses/i2c-amd8111\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_license241 = internal constant [24 x i8] c"i2c_amd8111.license=GPL\00", section ".modinfo", align 1, !dbg !127
@__UNIQUE_ID_author242 = internal constant [52 x i8] c"i2c_amd8111.author=Vojtech Pavlik <vojtech@suse.cz>\00", section ".modinfo", align 1, !dbg !134
@__UNIQUE_ID_description243 = internal constant [49 x i8] c"i2c_amd8111.description=AMD8111 SMBus 2.0 driver\00", section ".modinfo", align 1, !dbg !139
@__UNIQUE_ID___addressable_amd8111_driver_init252 = internal global i8* bitcast (i32 ()* @amd8111_driver_init to i8*), section ".discard.addressable", align 8, !dbg !144
@amd8111_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([2 x %struct.pci_device_id], [2 x %struct.pci_device_id]* @amd8111_ids, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @amd8111_probe, void (%struct.pci_dev*)* @amd8111_remove, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !153
@__exitcall_amd8111_driver_exit = internal global void ()* @amd8111_driver_exit, section ".exitcall.exit", align 8, !dbg !146
@.str = private unnamed_addr constant [12 x i8] c"i2c_amd8111\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"amd8111_smbus2\00", align 1
@amd8111_ids = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4130, i32 29802, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4136
@ioport_resource = external dso_local global %struct.resource, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"SMBus2 AMD8111 adapter at %04x\00", align 1
@smbus_algorithm = internal constant %struct.i2c_algorithm { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* null, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* @amd8111_access, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*)* @amd8111_func }, align 8, !dbg !4139
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Timeout while waiting for IBF to clear\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Timeout while waiting for OBF to set\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__UNIQUE_ID_file240, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__UNIQUE_ID_license241, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_author242, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_description243, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_amd8111_driver_init252 to i8*), i8* bitcast (void ()* @amd8111_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_amd8111_driver_exit to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @amd8111_driver_init() #0 section ".init.text" !dbg !4266 {
entry:
  %call = call i32 @__pci_register_driver(%struct.pci_driver* @amd8111_driver, %struct.module* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #8, !dbg !4269
  ret i32 %call, !dbg !4269
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @amd8111_driver_exit() #0 section ".exit.text" !dbg !4270 {
entry:
  call void @pci_unregister_driver(%struct.pci_driver* @amd8111_driver) #8, !dbg !4271
  ret void, !dbg !4271
}

; Function Attrs: noredzone
declare dso_local void @pci_unregister_driver(%struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__pci_register_driver(%struct.pci_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @amd8111_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !4272 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  %smbus = alloca %struct.amd_smbus*, align 8
  %error = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4273, metadata !DIExpression()), !dbg !4274
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !4275, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.declare(metadata %struct.amd_smbus** %smbus, metadata !4277, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4286, metadata !DIExpression()), !dbg !4287
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4288
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 44, !dbg !4288
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !4288
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 3, !dbg !4288
  %1 = load i64, i64* %flags, align 8, !dbg !4288
  %and = and i64 %1, 256, !dbg !4290
  %tobool = icmp ne i64 %and, 0, !dbg !4290
  br i1 %tobool, label %if.end, label %if.then, !dbg !4291

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4292
  br label %return, !dbg !4292

if.end:                                           ; preds = %entry
  %call = call i8* @kzalloc(i64 960, i32 3264) #8, !dbg !4293
  %2 = bitcast i8* %call to %struct.amd_smbus*, !dbg !4293
  store %struct.amd_smbus* %2, %struct.amd_smbus** %smbus, align 8, !dbg !4294
  %3 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4295
  %tobool1 = icmp ne %struct.amd_smbus* %3, null, !dbg !4295
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4297

if.then2:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4298
  br label %return, !dbg !4298

if.end3:                                          ; preds = %if.end
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4299
  %5 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4300
  %dev4 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %5, i32 0, i32 0, !dbg !4301
  store %struct.pci_dev* %4, %struct.pci_dev** %dev4, align 8, !dbg !4302
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4303
  %resource5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 44, !dbg !4303
  %arrayidx6 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource5, i64 0, i64 0, !dbg !4303
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx6, i32 0, i32 0, !dbg !4303
  %7 = load i64, i64* %start, align 8, !dbg !4303
  %conv = trunc i64 %7 to i32, !dbg !4303
  %8 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4304
  %base = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %8, i32 0, i32 2, !dbg !4305
  store i32 %conv, i32* %base, align 8, !dbg !4306
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4307
  %resource7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 44, !dbg !4307
  %arrayidx8 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource7, i64 0, i64 0, !dbg !4307
  %start9 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx8, i32 0, i32 0, !dbg !4307
  %10 = load i64, i64* %start9, align 8, !dbg !4307
  %cmp = icmp eq i64 %10, 0, !dbg !4307
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !4307

land.lhs.true:                                    ; preds = %if.end3
  %11 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4307
  %resource11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 44, !dbg !4307
  %arrayidx12 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource11, i64 0, i64 0, !dbg !4307
  %end = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx12, i32 0, i32 1, !dbg !4307
  %12 = load i64, i64* %end, align 8, !dbg !4307
  %13 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4307
  %resource13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 44, !dbg !4307
  %arrayidx14 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource13, i64 0, i64 0, !dbg !4307
  %start15 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx14, i32 0, i32 0, !dbg !4307
  %14 = load i64, i64* %start15, align 8, !dbg !4307
  %cmp16 = icmp eq i64 %12, %14, !dbg !4307
  br i1 %cmp16, label %cond.true, label %cond.false, !dbg !4307

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end, !dbg !4307

cond.false:                                       ; preds = %land.lhs.true, %if.end3
  %15 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4307
  %resource18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 44, !dbg !4307
  %arrayidx19 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource18, i64 0, i64 0, !dbg !4307
  %end20 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx19, i32 0, i32 1, !dbg !4307
  %16 = load i64, i64* %end20, align 8, !dbg !4307
  %17 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4307
  %resource21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 44, !dbg !4307
  %arrayidx22 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource21, i64 0, i64 0, !dbg !4307
  %start23 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx22, i32 0, i32 0, !dbg !4307
  %18 = load i64, i64* %start23, align 8, !dbg !4307
  %sub = sub i64 %16, %18, !dbg !4307
  %add = add i64 %sub, 1, !dbg !4307
  br label %cond.end, !dbg !4307

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %add, %cond.false ], !dbg !4307
  %conv24 = trunc i64 %cond to i32, !dbg !4307
  %19 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4308
  %size = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %19, i32 0, i32 3, !dbg !4309
  store i32 %conv24, i32* %size, align 4, !dbg !4310
  %20 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4311
  %resource25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 44, !dbg !4312
  %arrayidx26 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource25, i64 0, i64 0, !dbg !4311
  %call27 = call i32 @acpi_check_resource_conflict(%struct.resource* %arrayidx26) #8, !dbg !4313
  store i32 %call27, i32* %error, align 4, !dbg !4314
  %21 = load i32, i32* %error, align 4, !dbg !4315
  %tobool28 = icmp ne i32 %21, 0, !dbg !4315
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !4317

if.then29:                                        ; preds = %cond.end
  store i32 -19, i32* %error, align 4, !dbg !4318
  br label %out_kfree, !dbg !4320

if.end30:                                         ; preds = %cond.end
  %22 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4321
  %base31 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %22, i32 0, i32 2, !dbg !4321
  %23 = load i32, i32* %base31, align 8, !dbg !4321
  %conv32 = sext i32 %23 to i64, !dbg !4321
  %24 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4321
  %size33 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %24, i32 0, i32 3, !dbg !4321
  %25 = load i32, i32* %size33, align 4, !dbg !4321
  %conv34 = sext i32 %25 to i64, !dbg !4321
  %26 = load i8*, i8** getelementptr inbounds (%struct.pci_driver, %struct.pci_driver* @amd8111_driver, i32 0, i32 1), align 8, !dbg !4321
  %call35 = call %struct.resource* @__request_region(%struct.resource* @ioport_resource, i64 %conv32, i64 %conv34, i8* %26, i32 0) #8, !dbg !4321
  %tobool36 = icmp ne %struct.resource* %call35, null, !dbg !4321
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !4323

if.then37:                                        ; preds = %if.end30
  store i32 -16, i32* %error, align 4, !dbg !4324
  br label %out_kfree, !dbg !4326

if.end38:                                         ; preds = %if.end30
  %27 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4327
  %adapter = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %27, i32 0, i32 1, !dbg !4328
  %owner = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adapter, i32 0, i32 0, !dbg !4329
  store %struct.module* null, %struct.module** %owner, align 8, !dbg !4330
  %28 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4331
  %adapter39 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %28, i32 0, i32 1, !dbg !4332
  %name = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adapter39, i32 0, i32 12, !dbg !4333
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %name, i64 0, i64 0, !dbg !4331
  %29 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4334
  %base40 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %29, i32 0, i32 2, !dbg !4335
  %30 = load i32, i32* %base40, align 8, !dbg !4335
  %call41 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %30) #8, !dbg !4336
  %31 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4337
  %adapter42 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %31, i32 0, i32 1, !dbg !4338
  %class = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adapter42, i32 0, i32 1, !dbg !4339
  store i32 129, i32* %class, align 8, !dbg !4340
  %32 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4341
  %adapter43 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %32, i32 0, i32 1, !dbg !4342
  %algo = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adapter43, i32 0, i32 2, !dbg !4343
  store %struct.i2c_algorithm* @smbus_algorithm, %struct.i2c_algorithm** %algo, align 8, !dbg !4344
  %33 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4345
  %34 = bitcast %struct.amd_smbus* %33 to i8*, !dbg !4345
  %35 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4346
  %adapter44 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %35, i32 0, i32 1, !dbg !4347
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adapter44, i32 0, i32 3, !dbg !4348
  store i8* %34, i8** %algo_data, align 8, !dbg !4349
  %36 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4350
  %dev45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 41, !dbg !4351
  %37 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4352
  %adapter46 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %37, i32 0, i32 1, !dbg !4353
  %dev47 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adapter46, i32 0, i32 9, !dbg !4354
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev47, i32 0, i32 1, !dbg !4355
  store %struct.device* %dev45, %struct.device** %parent, align 8, !dbg !4356
  %38 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4357
  %dev48 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %38, i32 0, i32 0, !dbg !4358
  %39 = load %struct.pci_dev*, %struct.pci_dev** %dev48, align 8, !dbg !4358
  %call49 = call i32 @pci_write_config_dword(%struct.pci_dev* %39, i32 72, i32 0) #8, !dbg !4359
  %40 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4360
  %adapter50 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %40, i32 0, i32 1, !dbg !4361
  %call51 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %adapter50) #8, !dbg !4362
  store i32 %call51, i32* %error, align 4, !dbg !4363
  %41 = load i32, i32* %error, align 4, !dbg !4364
  %tobool52 = icmp ne i32 %41, 0, !dbg !4364
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !4366

if.then53:                                        ; preds = %if.end38
  br label %out_release_region, !dbg !4367

if.end54:                                         ; preds = %if.end38
  %42 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4368
  %43 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4369
  %44 = bitcast %struct.amd_smbus* %43 to i8*, !dbg !4369
  call void @pci_set_drvdata(%struct.pci_dev* %42, i8* %44) #8, !dbg !4370
  store i32 0, i32* %retval, align 4, !dbg !4371
  br label %return, !dbg !4371

out_release_region:                               ; preds = %if.then53
  call void @llvm.dbg.label(metadata !4372), !dbg !4373
  %45 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4374
  %base55 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %45, i32 0, i32 2, !dbg !4374
  %46 = load i32, i32* %base55, align 8, !dbg !4374
  %conv56 = sext i32 %46 to i64, !dbg !4374
  %47 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4374
  %size57 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %47, i32 0, i32 3, !dbg !4374
  %48 = load i32, i32* %size57, align 4, !dbg !4374
  %conv58 = sext i32 %48 to i64, !dbg !4374
  call void @__release_region(%struct.resource* @ioport_resource, i64 %conv56, i64 %conv58) #8, !dbg !4374
  br label %out_kfree, !dbg !4374

out_kfree:                                        ; preds = %out_release_region, %if.then37, %if.then29
  call void @llvm.dbg.label(metadata !4375), !dbg !4376
  %49 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4377
  %50 = bitcast %struct.amd_smbus* %49 to i8*, !dbg !4377
  call void @kfree(i8* %50) #8, !dbg !4378
  %51 = load i32, i32* %error, align 4, !dbg !4379
  store i32 %51, i32* %retval, align 4, !dbg !4380
  br label %return, !dbg !4380

return:                                           ; preds = %out_kfree, %if.end54, %if.then2, %if.then
  %52 = load i32, i32* %retval, align 4, !dbg !4381
  ret i32 %52, !dbg !4381
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @amd8111_remove(%struct.pci_dev* %dev) #2 !dbg !4382 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %smbus = alloca %struct.amd_smbus*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4383, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.declare(metadata %struct.amd_smbus** %smbus, metadata !4385, metadata !DIExpression()), !dbg !4386
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4387
  %call = call i8* @pci_get_drvdata(%struct.pci_dev* %0) #8, !dbg !4388
  %1 = bitcast i8* %call to %struct.amd_smbus*, !dbg !4388
  store %struct.amd_smbus* %1, %struct.amd_smbus** %smbus, align 8, !dbg !4386
  %2 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4389
  %adapter = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %2, i32 0, i32 1, !dbg !4390
  call void @i2c_del_adapter(%struct.i2c_adapter* %adapter) #8, !dbg !4391
  %3 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4392
  %base = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %3, i32 0, i32 2, !dbg !4392
  %4 = load i32, i32* %base, align 8, !dbg !4392
  %conv = sext i32 %4 to i64, !dbg !4392
  %5 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4392
  %size = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %5, i32 0, i32 3, !dbg !4392
  %6 = load i32, i32* %size, align 4, !dbg !4392
  %conv1 = sext i32 %6 to i64, !dbg !4392
  call void @__release_region(%struct.resource* @ioport_resource, i64 %conv, i64 %conv1) #8, !dbg !4392
  %7 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4393
  %8 = bitcast %struct.amd_smbus* %7 to i8*, !dbg !4393
  call void @kfree(i8* %8) #8, !dbg !4394
  ret void, !dbg !4395
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4396 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4399, metadata !DIExpression()), !dbg !4403
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4409, metadata !DIExpression()), !dbg !4410
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4411, metadata !DIExpression()), !dbg !4412
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4413, metadata !DIExpression()), !dbg !4414
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4415, metadata !DIExpression()), !dbg !4419
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4421, metadata !DIExpression()), !dbg !4425
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4427, metadata !DIExpression()), !dbg !4431
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4436, metadata !DIExpression()), !dbg !4437
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4438, metadata !DIExpression()), !dbg !4439
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4440, metadata !DIExpression()), !dbg !4441
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4442, metadata !DIExpression()), !dbg !4443
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4444, metadata !DIExpression()), !dbg !4445
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4446, metadata !DIExpression()), !dbg !4447
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4448, metadata !DIExpression()), !dbg !4449
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4450, metadata !DIExpression()), !dbg !4451
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4452, metadata !DIExpression()), !dbg !4453
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4454, metadata !DIExpression()), !dbg !4455
  %0 = load i64, i64* %size.addr, align 8, !dbg !4456
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4457
  %or = or i32 %1, 256, !dbg !4458
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4459
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4460
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4461

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4462
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4463
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4464

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4465
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4466
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4467
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4468
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4445
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4469
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4470
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4471
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4472
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4473
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4474
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4475
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4475
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4475
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4475
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4475
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4476
  br label %kmalloc.exit, !dbg !4476

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4477
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4478
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4478
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4480

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4481
  br label %kmalloc_index.exit.i, !dbg !4481

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4482
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4484
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4485

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4486
  br label %kmalloc_index.exit.i, !dbg !4486

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4487
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4489
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4490

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4491
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4492
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4493

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4494
  br label %kmalloc_index.exit.i, !dbg !4494

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4495
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4497
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4498

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4499
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4500
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4501

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4502
  br label %kmalloc_index.exit.i, !dbg !4502

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4503
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4505
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4506

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4507
  br label %kmalloc_index.exit.i, !dbg !4507

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4508
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4510
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4511

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4512
  br label %kmalloc_index.exit.i, !dbg !4512

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4513
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4515
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4516

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4517
  br label %kmalloc_index.exit.i, !dbg !4517

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4518
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4520
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4521

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4522
  br label %kmalloc_index.exit.i, !dbg !4522

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4523
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4525
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4526

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4527
  br label %kmalloc_index.exit.i, !dbg !4527

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4528
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4530
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4531

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4532
  br label %kmalloc_index.exit.i, !dbg !4532

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4533
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4535
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4536

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4537
  br label %kmalloc_index.exit.i, !dbg !4537

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4538
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4540
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4541

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4542
  br label %kmalloc_index.exit.i, !dbg !4542

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4543
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4545
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4546

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4547
  br label %kmalloc_index.exit.i, !dbg !4547

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4548
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4550
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4551

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4552
  br label %kmalloc_index.exit.i, !dbg !4552

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4553
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4555
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4556

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4557
  br label %kmalloc_index.exit.i, !dbg !4557

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4558
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4560
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4561

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4562
  br label %kmalloc_index.exit.i, !dbg !4562

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4563
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4565
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4566

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4567
  br label %kmalloc_index.exit.i, !dbg !4567

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4568
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4570
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4571

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4572
  br label %kmalloc_index.exit.i, !dbg !4572

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4573
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4575
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4576

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4577
  br label %kmalloc_index.exit.i, !dbg !4577

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4578
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4580
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4581

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4582
  br label %kmalloc_index.exit.i, !dbg !4582

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4583
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4585
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4586

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4587
  br label %kmalloc_index.exit.i, !dbg !4587

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4588
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4590
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4591

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4592
  br label %kmalloc_index.exit.i, !dbg !4592

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4593
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4595
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4596

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4597
  br label %kmalloc_index.exit.i, !dbg !4597

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4598
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4600
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4601

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4602
  br label %kmalloc_index.exit.i, !dbg !4602

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4603
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4605
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4606

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4607
  br label %kmalloc_index.exit.i, !dbg !4607

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4608
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4610
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4611

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4612
  br label %kmalloc_index.exit.i, !dbg !4612

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4613
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4615
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4616

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4617
  br label %kmalloc_index.exit.i, !dbg !4617

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4618
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4620
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4621

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4622
  br label %kmalloc_index.exit.i, !dbg !4622

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4623, !srcloc !4626
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #9, !dbg !4627, !srcloc !4630
  unreachable, !dbg !4631

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4632
  store i32 %45, i32* %index.i, align 4, !dbg !4633
  %46 = load i32, i32* %index.i, align 4, !dbg !4634
  %tobool.i = icmp ne i32 %46, 0, !dbg !4634
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4636

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4637
  br label %kmalloc.exit, !dbg !4637

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4638
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4639
  %and.i.i = and i32 %48, 17, !dbg !4639
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4639
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4639
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4639
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4639
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4641

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4642
  br label %kmalloc_type.exit.i, !dbg !4642

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4643
  %and2.i.i = and i32 %49, 1, !dbg !4644
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4643
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4643
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4643
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4645
  br label %kmalloc_type.exit.i, !dbg !4645

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4646
  %idxprom.i = zext i32 %51 to i64, !dbg !4647
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4647
  %52 = load i32, i32* %index.i, align 4, !dbg !4648
  %idxprom6.i = zext i32 %52 to i64, !dbg !4647
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4647
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4647
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4649
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4650
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4651
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4652
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4653
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4653
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4653
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4653
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4653
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4414
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4654
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4655
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4656
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4657
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4658
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4659
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4660
  store i8* %62, i8** %retval.i, align 8, !dbg !4661
  br label %kmalloc.exit, !dbg !4661

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4662
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4663
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4664
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4664
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4664
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4664
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4664
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4665
  br label %kmalloc.exit, !dbg !4665

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4666
  ret i8* %65, !dbg !4667
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_check_resource_conflict(%struct.resource*) #1

; Function Attrs: noredzone
declare dso_local %struct.resource* @__request_region(%struct.resource*, i64, i64, i8*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noredzone
declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci_set_drvdata(%struct.pci_dev* %pdev, i8* %data) #2 !dbg !4668 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4671, metadata !DIExpression()), !dbg !4672
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4673, metadata !DIExpression()), !dbg !4674
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4675
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !4676
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4677
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #8, !dbg !4678
  ret void, !dbg !4679
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @__release_region(%struct.resource*, i64, i64) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !4680 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4684, metadata !DIExpression()), !dbg !4689
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4691, metadata !DIExpression()), !dbg !4692
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4693, metadata !DIExpression()), !dbg !4694
  %0 = load i64, i64* %size.addr, align 8, !dbg !4695
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4697
  br i1 %1, label %if.then, label %if.end447, !dbg !4698

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4699
  %tobool = icmp ne i64 %2, 0, !dbg !4699
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4702

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4703
  br label %return, !dbg !4703

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4704
  %cmp = icmp ult i64 %3, 4096, !dbg !4706
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4707

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4708
  br label %return, !dbg !4708

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub = sub i64 %4, 1, !dbg !4709
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4709
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4709

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub4 = sub i64 %6, 1, !dbg !4709
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4709
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4709

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub6 = sub i64 %8, 1, !dbg !4709
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4709
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4709

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4709

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub9 = sub i64 %9, 1, !dbg !4709
  %and = and i64 %sub9, -9223372036854775808, !dbg !4709
  %tobool10 = icmp ne i64 %and, 0, !dbg !4709
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4709

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4709

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub13 = sub i64 %10, 1, !dbg !4709
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4709
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4709
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4709

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4709

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub18 = sub i64 %11, 1, !dbg !4709
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4709
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4709
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4709

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4709

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub23 = sub i64 %12, 1, !dbg !4709
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4709
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4709
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4709

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4709

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub28 = sub i64 %13, 1, !dbg !4709
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4709
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4709
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4709

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4709

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub33 = sub i64 %14, 1, !dbg !4709
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4709
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4709
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4709

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4709

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub38 = sub i64 %15, 1, !dbg !4709
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4709
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4709
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4709

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4709

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub43 = sub i64 %16, 1, !dbg !4709
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4709
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4709
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4709

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4709

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub48 = sub i64 %17, 1, !dbg !4709
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4709
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4709
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4709

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4709

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub53 = sub i64 %18, 1, !dbg !4709
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4709
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4709
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4709

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4709

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub58 = sub i64 %19, 1, !dbg !4709
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4709
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4709
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4709

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4709

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub63 = sub i64 %20, 1, !dbg !4709
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4709
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4709
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4709

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4709

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub68 = sub i64 %21, 1, !dbg !4709
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4709
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4709
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4709

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4709

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub73 = sub i64 %22, 1, !dbg !4709
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4709
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4709
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4709

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4709

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub78 = sub i64 %23, 1, !dbg !4709
  %and79 = and i64 %sub78, 562949953421312, !dbg !4709
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4709
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4709

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4709

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub83 = sub i64 %24, 1, !dbg !4709
  %and84 = and i64 %sub83, 281474976710656, !dbg !4709
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4709
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4709

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4709

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub88 = sub i64 %25, 1, !dbg !4709
  %and89 = and i64 %sub88, 140737488355328, !dbg !4709
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4709
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4709

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4709

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub93 = sub i64 %26, 1, !dbg !4709
  %and94 = and i64 %sub93, 70368744177664, !dbg !4709
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4709
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4709

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4709

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub98 = sub i64 %27, 1, !dbg !4709
  %and99 = and i64 %sub98, 35184372088832, !dbg !4709
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4709
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4709

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4709

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub103 = sub i64 %28, 1, !dbg !4709
  %and104 = and i64 %sub103, 17592186044416, !dbg !4709
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4709
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4709

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4709

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub108 = sub i64 %29, 1, !dbg !4709
  %and109 = and i64 %sub108, 8796093022208, !dbg !4709
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4709
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4709

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4709

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub113 = sub i64 %30, 1, !dbg !4709
  %and114 = and i64 %sub113, 4398046511104, !dbg !4709
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4709
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4709

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4709

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub118 = sub i64 %31, 1, !dbg !4709
  %and119 = and i64 %sub118, 2199023255552, !dbg !4709
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4709
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4709

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4709

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub123 = sub i64 %32, 1, !dbg !4709
  %and124 = and i64 %sub123, 1099511627776, !dbg !4709
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4709
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4709

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4709

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub128 = sub i64 %33, 1, !dbg !4709
  %and129 = and i64 %sub128, 549755813888, !dbg !4709
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4709
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4709

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4709

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub133 = sub i64 %34, 1, !dbg !4709
  %and134 = and i64 %sub133, 274877906944, !dbg !4709
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4709
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4709

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4709

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub138 = sub i64 %35, 1, !dbg !4709
  %and139 = and i64 %sub138, 137438953472, !dbg !4709
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4709
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4709

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4709

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub143 = sub i64 %36, 1, !dbg !4709
  %and144 = and i64 %sub143, 68719476736, !dbg !4709
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4709
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4709

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4709

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub148 = sub i64 %37, 1, !dbg !4709
  %and149 = and i64 %sub148, 34359738368, !dbg !4709
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4709
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4709

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4709

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub153 = sub i64 %38, 1, !dbg !4709
  %and154 = and i64 %sub153, 17179869184, !dbg !4709
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4709
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4709

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4709

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub158 = sub i64 %39, 1, !dbg !4709
  %and159 = and i64 %sub158, 8589934592, !dbg !4709
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4709
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4709

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4709

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub163 = sub i64 %40, 1, !dbg !4709
  %and164 = and i64 %sub163, 4294967296, !dbg !4709
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4709
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4709

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4709

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub168 = sub i64 %41, 1, !dbg !4709
  %and169 = and i64 %sub168, 2147483648, !dbg !4709
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4709
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4709

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4709

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub173 = sub i64 %42, 1, !dbg !4709
  %and174 = and i64 %sub173, 1073741824, !dbg !4709
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4709
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4709

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4709

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub178 = sub i64 %43, 1, !dbg !4709
  %and179 = and i64 %sub178, 536870912, !dbg !4709
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4709
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4709

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4709

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub183 = sub i64 %44, 1, !dbg !4709
  %and184 = and i64 %sub183, 268435456, !dbg !4709
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4709
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4709

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4709

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub188 = sub i64 %45, 1, !dbg !4709
  %and189 = and i64 %sub188, 134217728, !dbg !4709
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4709
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4709

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4709

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub193 = sub i64 %46, 1, !dbg !4709
  %and194 = and i64 %sub193, 67108864, !dbg !4709
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4709
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4709

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4709

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub198 = sub i64 %47, 1, !dbg !4709
  %and199 = and i64 %sub198, 33554432, !dbg !4709
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4709
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4709

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4709

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub203 = sub i64 %48, 1, !dbg !4709
  %and204 = and i64 %sub203, 16777216, !dbg !4709
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4709
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4709

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4709

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub208 = sub i64 %49, 1, !dbg !4709
  %and209 = and i64 %sub208, 8388608, !dbg !4709
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4709
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4709

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4709

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub213 = sub i64 %50, 1, !dbg !4709
  %and214 = and i64 %sub213, 4194304, !dbg !4709
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4709
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4709

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4709

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub218 = sub i64 %51, 1, !dbg !4709
  %and219 = and i64 %sub218, 2097152, !dbg !4709
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4709
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4709

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4709

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub223 = sub i64 %52, 1, !dbg !4709
  %and224 = and i64 %sub223, 1048576, !dbg !4709
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4709
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4709

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4709

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub228 = sub i64 %53, 1, !dbg !4709
  %and229 = and i64 %sub228, 524288, !dbg !4709
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4709
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4709

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4709

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub233 = sub i64 %54, 1, !dbg !4709
  %and234 = and i64 %sub233, 262144, !dbg !4709
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4709
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4709

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4709

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub238 = sub i64 %55, 1, !dbg !4709
  %and239 = and i64 %sub238, 131072, !dbg !4709
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4709
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4709

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4709

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub243 = sub i64 %56, 1, !dbg !4709
  %and244 = and i64 %sub243, 65536, !dbg !4709
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4709
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4709

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4709

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub248 = sub i64 %57, 1, !dbg !4709
  %and249 = and i64 %sub248, 32768, !dbg !4709
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4709
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4709

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4709

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub253 = sub i64 %58, 1, !dbg !4709
  %and254 = and i64 %sub253, 16384, !dbg !4709
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4709
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4709

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4709

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub258 = sub i64 %59, 1, !dbg !4709
  %and259 = and i64 %sub258, 8192, !dbg !4709
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4709
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4709

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4709

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub263 = sub i64 %60, 1, !dbg !4709
  %and264 = and i64 %sub263, 4096, !dbg !4709
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4709
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4709

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4709

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub268 = sub i64 %61, 1, !dbg !4709
  %and269 = and i64 %sub268, 2048, !dbg !4709
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4709
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4709

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4709

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub273 = sub i64 %62, 1, !dbg !4709
  %and274 = and i64 %sub273, 1024, !dbg !4709
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4709
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4709

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4709

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub278 = sub i64 %63, 1, !dbg !4709
  %and279 = and i64 %sub278, 512, !dbg !4709
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4709
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4709

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4709

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub283 = sub i64 %64, 1, !dbg !4709
  %and284 = and i64 %sub283, 256, !dbg !4709
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4709
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4709

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4709

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub288 = sub i64 %65, 1, !dbg !4709
  %and289 = and i64 %sub288, 128, !dbg !4709
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4709
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4709

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4709

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub293 = sub i64 %66, 1, !dbg !4709
  %and294 = and i64 %sub293, 64, !dbg !4709
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4709
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4709

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4709

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub298 = sub i64 %67, 1, !dbg !4709
  %and299 = and i64 %sub298, 32, !dbg !4709
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4709
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4709

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4709

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub303 = sub i64 %68, 1, !dbg !4709
  %and304 = and i64 %sub303, 16, !dbg !4709
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4709
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4709

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4709

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub308 = sub i64 %69, 1, !dbg !4709
  %and309 = and i64 %sub308, 8, !dbg !4709
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4709
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4709

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4709

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub313 = sub i64 %70, 1, !dbg !4709
  %and314 = and i64 %sub313, 4, !dbg !4709
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4709
  %71 = zext i1 %tobool315 to i64, !dbg !4709
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4709
  br label %cond.end, !dbg !4709

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4709
  br label %cond.end317, !dbg !4709

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4709
  br label %cond.end319, !dbg !4709

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4709
  br label %cond.end321, !dbg !4709

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4709
  br label %cond.end323, !dbg !4709

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4709
  br label %cond.end325, !dbg !4709

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4709
  br label %cond.end327, !dbg !4709

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4709
  br label %cond.end329, !dbg !4709

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4709
  br label %cond.end331, !dbg !4709

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4709
  br label %cond.end333, !dbg !4709

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4709
  br label %cond.end335, !dbg !4709

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4709
  br label %cond.end337, !dbg !4709

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4709
  br label %cond.end339, !dbg !4709

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4709
  br label %cond.end341, !dbg !4709

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4709
  br label %cond.end343, !dbg !4709

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4709
  br label %cond.end345, !dbg !4709

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4709
  br label %cond.end347, !dbg !4709

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4709
  br label %cond.end349, !dbg !4709

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4709
  br label %cond.end351, !dbg !4709

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4709
  br label %cond.end353, !dbg !4709

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4709
  br label %cond.end355, !dbg !4709

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4709
  br label %cond.end357, !dbg !4709

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4709
  br label %cond.end359, !dbg !4709

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4709
  br label %cond.end361, !dbg !4709

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4709
  br label %cond.end363, !dbg !4709

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4709
  br label %cond.end365, !dbg !4709

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4709
  br label %cond.end367, !dbg !4709

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4709
  br label %cond.end369, !dbg !4709

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4709
  br label %cond.end371, !dbg !4709

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4709
  br label %cond.end373, !dbg !4709

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4709
  br label %cond.end375, !dbg !4709

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4709
  br label %cond.end377, !dbg !4709

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4709
  br label %cond.end379, !dbg !4709

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4709
  br label %cond.end381, !dbg !4709

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4709
  br label %cond.end383, !dbg !4709

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4709
  br label %cond.end385, !dbg !4709

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4709
  br label %cond.end387, !dbg !4709

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4709
  br label %cond.end389, !dbg !4709

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4709
  br label %cond.end391, !dbg !4709

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4709
  br label %cond.end393, !dbg !4709

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4709
  br label %cond.end395, !dbg !4709

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4709
  br label %cond.end397, !dbg !4709

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4709
  br label %cond.end399, !dbg !4709

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4709
  br label %cond.end401, !dbg !4709

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4709
  br label %cond.end403, !dbg !4709

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4709
  br label %cond.end405, !dbg !4709

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4709
  br label %cond.end407, !dbg !4709

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4709
  br label %cond.end409, !dbg !4709

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4709
  br label %cond.end411, !dbg !4709

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4709
  br label %cond.end413, !dbg !4709

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4709
  br label %cond.end415, !dbg !4709

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4709
  br label %cond.end417, !dbg !4709

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4709
  br label %cond.end419, !dbg !4709

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4709
  br label %cond.end421, !dbg !4709

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4709
  br label %cond.end423, !dbg !4709

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4709
  br label %cond.end425, !dbg !4709

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4709
  br label %cond.end427, !dbg !4709

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4709
  br label %cond.end429, !dbg !4709

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4709
  br label %cond.end431, !dbg !4709

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4709
  br label %cond.end433, !dbg !4709

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4709
  br label %cond.end435, !dbg !4709

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4709
  br label %cond.end437, !dbg !4709

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4709
  br label %cond.end440, !dbg !4709

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4709

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4709
  br label %cond.end444, !dbg !4709

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4709
  %sub443 = sub i64 %72, 1, !dbg !4709
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !4709
  br label %cond.end444, !dbg !4709

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4709
  %sub446 = sub i32 %cond445, 12, !dbg !4710
  %add = add i32 %sub446, 1, !dbg !4711
  store i32 %add, i32* %retval, align 4, !dbg !4712
  br label %return, !dbg !4712

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4713
  %dec = add i64 %73, -1, !dbg !4713
  store i64 %dec, i64* %size.addr, align 8, !dbg !4713
  %74 = load i64, i64* %size.addr, align 8, !dbg !4714
  %shr = lshr i64 %74, 12, !dbg !4714
  store i64 %shr, i64* %size.addr, align 8, !dbg !4714
  %75 = load i64, i64* %size.addr, align 8, !dbg !4715
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4692
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4716
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4717
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !4716, !srcloc !4718
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4716
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4719
  %add.i = add i32 %79, 1, !dbg !4720
  store i32 %add.i, i32* %retval, align 4, !dbg !4721
  br label %return, !dbg !4721

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4722
  ret i32 %80, !dbg !4722
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !4723 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4684, metadata !DIExpression()), !dbg !4727
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4691, metadata !DIExpression()), !dbg !4729
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4730, metadata !DIExpression()), !dbg !4731
  %0 = load i64, i64* %n.addr, align 8, !dbg !4732
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4729
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4733
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4734
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !4733, !srcloc !4718
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4733
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4735
  %add.i = add i32 %4, 1, !dbg !4736
  %sub = sub i32 %add.i, 1, !dbg !4737
  ret i32 %sub, !dbg !4738
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !4739 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4743, metadata !DIExpression()), !dbg !4744
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4745, metadata !DIExpression()), !dbg !4746
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4747, metadata !DIExpression()), !dbg !4748
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4749, metadata !DIExpression()), !dbg !4750
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4751
  ret i8* %0, !dbg !4752
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @amd8111_access(%struct.i2c_adapter* %adap, i16 zeroext %addr, i16 zeroext %flags, i8 signext %read_write, i8 zeroext %command, i32 %size, %union.i2c_smbus_data* %data) #2 !dbg !4753 {
entry:
  %retval = alloca i32, align 4
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %addr.addr = alloca i16, align 2
  %flags.addr = alloca i16, align 2
  %read_write.addr = alloca i8, align 1
  %command.addr = alloca i8, align 1
  %size.addr = alloca i32, align 4
  %data.addr = alloca %union.i2c_smbus_data*, align 8
  %smbus = alloca %struct.amd_smbus*, align 8
  %protocol = alloca i8, align 1
  %len = alloca i8, align 1
  %pec = alloca i8, align 1
  %temp = alloca [2 x i8], align 1
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %__UNIQUE_ID___x244 = alloca i8, align 1
  %__UNIQUE_ID___y245 = alloca i8, align 1
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x246 = alloca i8, align 1
  %__UNIQUE_ID___y247 = alloca i8, align 1
  %tmp105 = alloca i32, align 4
  %__UNIQUE_ID___x248 = alloca i8, align 1
  %__UNIQUE_ID___y249 = alloca i8, align 1
  %tmp178 = alloca i32, align 4
  %__UNIQUE_ID___x250 = alloca i8, align 1
  %__UNIQUE_ID___y251 = alloca i8, align 1
  %tmp306 = alloca i32, align 4
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !4756, metadata !DIExpression()), !dbg !4757
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !4758, metadata !DIExpression()), !dbg !4759
  store i16 %flags, i16* %flags.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %flags.addr, metadata !4760, metadata !DIExpression()), !dbg !4761
  store i8 %read_write, i8* %read_write.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %read_write.addr, metadata !4762, metadata !DIExpression()), !dbg !4763
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !4764, metadata !DIExpression()), !dbg !4765
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4766, metadata !DIExpression()), !dbg !4767
  store %union.i2c_smbus_data* %data, %union.i2c_smbus_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %union.i2c_smbus_data** %data.addr, metadata !4768, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.declare(metadata %struct.amd_smbus** %smbus, metadata !4770, metadata !DIExpression()), !dbg !4771
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !4772
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 3, !dbg !4773
  %1 = load i8*, i8** %algo_data, align 8, !dbg !4773
  %2 = bitcast i8* %1 to %struct.amd_smbus*, !dbg !4772
  store %struct.amd_smbus* %2, %struct.amd_smbus** %smbus, align 8, !dbg !4771
  call void @llvm.dbg.declare(metadata i8* %protocol, metadata !4774, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.declare(metadata i8* %len, metadata !4776, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.declare(metadata i8* %pec, metadata !4778, metadata !DIExpression()), !dbg !4779
  call void @llvm.dbg.declare(metadata [2 x i8]* %temp, metadata !4780, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4783, metadata !DIExpression()), !dbg !4784
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4785, metadata !DIExpression()), !dbg !4786
  %3 = load i8, i8* %read_write.addr, align 1, !dbg !4787
  %conv = sext i8 %3 to i32, !dbg !4787
  %cmp = icmp eq i32 %conv, 1, !dbg !4788
  %4 = zext i1 %cmp to i64, !dbg !4789
  %cond = select i1 %cmp, i32 1, i32 0, !dbg !4789
  %conv2 = trunc i32 %cond to i8, !dbg !4789
  store i8 %conv2, i8* %protocol, align 1, !dbg !4790
  %5 = load i16, i16* %flags.addr, align 2, !dbg !4791
  %conv3 = zext i16 %5 to i32, !dbg !4791
  %and = and i32 %conv3, 4, !dbg !4792
  %tobool = icmp ne i32 %and, 0, !dbg !4793
  %6 = zext i1 %tobool to i64, !dbg !4793
  %cond4 = select i1 %tobool, i32 128, i32 0, !dbg !4793
  %conv5 = trunc i32 %cond4 to i8, !dbg !4793
  store i8 %conv5, i8* %pec, align 1, !dbg !4794
  %7 = load i32, i32* %size.addr, align 4, !dbg !4795
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb18
    i32 3, label %sw.bb35
    i32 5, label %sw.bb64
    i32 8, label %sw.bb102
    i32 4, label %sw.bb151
    i32 7, label %sw.bb175
  ], !dbg !4796

sw.bb:                                            ; preds = %entry
  %8 = load i8, i8* %protocol, align 1, !dbg !4797
  %conv6 = zext i8 %8 to i32, !dbg !4797
  %or = or i32 %conv6, 2, !dbg !4797
  %conv7 = trunc i32 %or to i8, !dbg !4797
  store i8 %conv7, i8* %protocol, align 1, !dbg !4797
  store i8 0, i8* %read_write.addr, align 1, !dbg !4799
  br label %sw.epilog, !dbg !4800

sw.bb8:                                           ; preds = %entry
  %9 = load i8, i8* %read_write.addr, align 1, !dbg !4801
  %conv9 = sext i8 %9 to i32, !dbg !4801
  %cmp10 = icmp eq i32 %conv9, 0, !dbg !4803
  br i1 %cmp10, label %if.then, label %if.end14, !dbg !4804

if.then:                                          ; preds = %sw.bb8
  %10 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4805
  %11 = load i8, i8* %command.addr, align 1, !dbg !4807
  %call = call i32 @amd_ec_write(%struct.amd_smbus* %10, i8 zeroext 3, i8 zeroext %11) #8, !dbg !4808
  store i32 %call, i32* %status, align 4, !dbg !4809
  %12 = load i32, i32* %status, align 4, !dbg !4810
  %tobool12 = icmp ne i32 %12, 0, !dbg !4810
  br i1 %tobool12, label %if.then13, label %if.end, !dbg !4812

if.then13:                                        ; preds = %if.then
  %13 = load i32, i32* %status, align 4, !dbg !4813
  store i32 %13, i32* %retval, align 4, !dbg !4814
  br label %return, !dbg !4814

if.end:                                           ; preds = %if.then
  br label %if.end14, !dbg !4815

if.end14:                                         ; preds = %if.end, %sw.bb8
  %14 = load i8, i8* %protocol, align 1, !dbg !4816
  %conv15 = zext i8 %14 to i32, !dbg !4816
  %or16 = or i32 %conv15, 4, !dbg !4816
  %conv17 = trunc i32 %or16 to i8, !dbg !4816
  store i8 %conv17, i8* %protocol, align 1, !dbg !4816
  br label %sw.epilog, !dbg !4817

sw.bb18:                                          ; preds = %entry
  %15 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4818
  %16 = load i8, i8* %command.addr, align 1, !dbg !4819
  %call19 = call i32 @amd_ec_write(%struct.amd_smbus* %15, i8 zeroext 3, i8 zeroext %16) #8, !dbg !4820
  store i32 %call19, i32* %status, align 4, !dbg !4821
  %17 = load i32, i32* %status, align 4, !dbg !4822
  %tobool20 = icmp ne i32 %17, 0, !dbg !4822
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !4824

if.then21:                                        ; preds = %sw.bb18
  %18 = load i32, i32* %status, align 4, !dbg !4825
  store i32 %18, i32* %retval, align 4, !dbg !4826
  br label %return, !dbg !4826

if.end22:                                         ; preds = %sw.bb18
  %19 = load i8, i8* %read_write.addr, align 1, !dbg !4827
  %conv23 = sext i8 %19 to i32, !dbg !4827
  %cmp24 = icmp eq i32 %conv23, 0, !dbg !4829
  br i1 %cmp24, label %if.then26, label %if.end31, !dbg !4830

if.then26:                                        ; preds = %if.end22
  %20 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4831
  %21 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !4833
  %byte = bitcast %union.i2c_smbus_data* %21 to i8*, !dbg !4834
  %22 = load i8, i8* %byte, align 2, !dbg !4834
  %call27 = call i32 @amd_ec_write(%struct.amd_smbus* %20, i8 zeroext 4, i8 zeroext %22) #8, !dbg !4835
  store i32 %call27, i32* %status, align 4, !dbg !4836
  %23 = load i32, i32* %status, align 4, !dbg !4837
  %tobool28 = icmp ne i32 %23, 0, !dbg !4837
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !4839

if.then29:                                        ; preds = %if.then26
  %24 = load i32, i32* %status, align 4, !dbg !4840
  store i32 %24, i32* %retval, align 4, !dbg !4841
  br label %return, !dbg !4841

if.end30:                                         ; preds = %if.then26
  br label %if.end31, !dbg !4842

if.end31:                                         ; preds = %if.end30, %if.end22
  %25 = load i8, i8* %protocol, align 1, !dbg !4843
  %conv32 = zext i8 %25 to i32, !dbg !4843
  %or33 = or i32 %conv32, 6, !dbg !4843
  %conv34 = trunc i32 %or33 to i8, !dbg !4843
  store i8 %conv34, i8* %protocol, align 1, !dbg !4843
  br label %sw.epilog, !dbg !4844

sw.bb35:                                          ; preds = %entry
  %26 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4845
  %27 = load i8, i8* %command.addr, align 1, !dbg !4846
  %call36 = call i32 @amd_ec_write(%struct.amd_smbus* %26, i8 zeroext 3, i8 zeroext %27) #8, !dbg !4847
  store i32 %call36, i32* %status, align 4, !dbg !4848
  %28 = load i32, i32* %status, align 4, !dbg !4849
  %tobool37 = icmp ne i32 %28, 0, !dbg !4849
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !4851

if.then38:                                        ; preds = %sw.bb35
  %29 = load i32, i32* %status, align 4, !dbg !4852
  store i32 %29, i32* %retval, align 4, !dbg !4853
  br label %return, !dbg !4853

if.end39:                                         ; preds = %sw.bb35
  %30 = load i8, i8* %read_write.addr, align 1, !dbg !4854
  %conv40 = sext i8 %30 to i32, !dbg !4854
  %cmp41 = icmp eq i32 %conv40, 0, !dbg !4856
  br i1 %cmp41, label %if.then43, label %if.end58, !dbg !4857

if.then43:                                        ; preds = %if.end39
  %31 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4858
  %32 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !4860
  %word = bitcast %union.i2c_smbus_data* %32 to i16*, !dbg !4861
  %33 = load i16, i16* %word, align 2, !dbg !4861
  %conv44 = zext i16 %33 to i32, !dbg !4860
  %and45 = and i32 %conv44, 255, !dbg !4862
  %conv46 = trunc i32 %and45 to i8, !dbg !4860
  %call47 = call i32 @amd_ec_write(%struct.amd_smbus* %31, i8 zeroext 4, i8 zeroext %conv46) #8, !dbg !4863
  store i32 %call47, i32* %status, align 4, !dbg !4864
  %34 = load i32, i32* %status, align 4, !dbg !4865
  %tobool48 = icmp ne i32 %34, 0, !dbg !4865
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !4867

if.then49:                                        ; preds = %if.then43
  %35 = load i32, i32* %status, align 4, !dbg !4868
  store i32 %35, i32* %retval, align 4, !dbg !4869
  br label %return, !dbg !4869

if.end50:                                         ; preds = %if.then43
  %36 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4870
  %37 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !4871
  %word51 = bitcast %union.i2c_smbus_data* %37 to i16*, !dbg !4872
  %38 = load i16, i16* %word51, align 2, !dbg !4872
  %conv52 = zext i16 %38 to i32, !dbg !4871
  %shr = ashr i32 %conv52, 8, !dbg !4873
  %conv53 = trunc i32 %shr to i8, !dbg !4871
  %call54 = call i32 @amd_ec_write(%struct.amd_smbus* %36, i8 zeroext 5, i8 zeroext %conv53) #8, !dbg !4874
  store i32 %call54, i32* %status, align 4, !dbg !4875
  %39 = load i32, i32* %status, align 4, !dbg !4876
  %tobool55 = icmp ne i32 %39, 0, !dbg !4876
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !4878

if.then56:                                        ; preds = %if.end50
  %40 = load i32, i32* %status, align 4, !dbg !4879
  store i32 %40, i32* %retval, align 4, !dbg !4880
  br label %return, !dbg !4880

if.end57:                                         ; preds = %if.end50
  br label %if.end58, !dbg !4881

if.end58:                                         ; preds = %if.end57, %if.end39
  %41 = load i8, i8* %pec, align 1, !dbg !4882
  %conv59 = zext i8 %41 to i32, !dbg !4882
  %or60 = or i32 8, %conv59, !dbg !4883
  %42 = load i8, i8* %protocol, align 1, !dbg !4884
  %conv61 = zext i8 %42 to i32, !dbg !4884
  %or62 = or i32 %conv61, %or60, !dbg !4884
  %conv63 = trunc i32 %or62 to i8, !dbg !4884
  store i8 %conv63, i8* %protocol, align 1, !dbg !4884
  br label %sw.epilog, !dbg !4885

sw.bb64:                                          ; preds = %entry
  %43 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4886
  %44 = load i8, i8* %command.addr, align 1, !dbg !4887
  %call65 = call i32 @amd_ec_write(%struct.amd_smbus* %43, i8 zeroext 3, i8 zeroext %44) #8, !dbg !4888
  store i32 %call65, i32* %status, align 4, !dbg !4889
  %45 = load i32, i32* %status, align 4, !dbg !4890
  %tobool66 = icmp ne i32 %45, 0, !dbg !4890
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !4892

if.then67:                                        ; preds = %sw.bb64
  %46 = load i32, i32* %status, align 4, !dbg !4893
  store i32 %46, i32* %retval, align 4, !dbg !4894
  br label %return, !dbg !4894

if.end68:                                         ; preds = %sw.bb64
  %47 = load i8, i8* %read_write.addr, align 1, !dbg !4895
  %conv69 = sext i8 %47 to i32, !dbg !4895
  %cmp70 = icmp eq i32 %conv69, 0, !dbg !4897
  br i1 %cmp70, label %if.then72, label %if.end96, !dbg !4898

if.then72:                                        ; preds = %if.end68
  call void @llvm.dbg.declare(metadata i8* %__UNIQUE_ID___x244, metadata !4899, metadata !DIExpression()), !dbg !4902
  %48 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !4902
  %block = bitcast %union.i2c_smbus_data* %48 to [34 x i8]*, !dbg !4902
  %arrayidx = getelementptr [34 x i8], [34 x i8]* %block, i64 0, i64 0, !dbg !4902
  %49 = load i8, i8* %arrayidx, align 2, !dbg !4902
  store i8 %49, i8* %__UNIQUE_ID___x244, align 1, !dbg !4902
  call void @llvm.dbg.declare(metadata i8* %__UNIQUE_ID___y245, metadata !4903, metadata !DIExpression()), !dbg !4902
  store i8 32, i8* %__UNIQUE_ID___y245, align 1, !dbg !4902
  %50 = load i8, i8* %__UNIQUE_ID___x244, align 1, !dbg !4902
  %conv73 = zext i8 %50 to i32, !dbg !4902
  %51 = load i8, i8* %__UNIQUE_ID___y245, align 1, !dbg !4902
  %conv74 = zext i8 %51 to i32, !dbg !4902
  %cmp75 = icmp slt i32 %conv73, %conv74, !dbg !4902
  br i1 %cmp75, label %cond.true, label %cond.false, !dbg !4902

cond.true:                                        ; preds = %if.then72
  %52 = load i8, i8* %__UNIQUE_ID___x244, align 1, !dbg !4902
  %conv77 = zext i8 %52 to i32, !dbg !4902
  br label %cond.end, !dbg !4902

cond.false:                                       ; preds = %if.then72
  %53 = load i8, i8* %__UNIQUE_ID___y245, align 1, !dbg !4902
  %conv78 = zext i8 %53 to i32, !dbg !4902
  br label %cond.end, !dbg !4902

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond79 = phi i32 [ %conv77, %cond.true ], [ %conv78, %cond.false ], !dbg !4902
  store i32 %cond79, i32* %tmp, align 4, !dbg !4902
  %54 = load i32, i32* %tmp, align 4, !dbg !4902
  %conv80 = trunc i32 %54 to i8, !dbg !4904
  store i8 %conv80, i8* %len, align 1, !dbg !4905
  %55 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4906
  %56 = load i8, i8* %len, align 1, !dbg !4907
  %call81 = call i32 @amd_ec_write(%struct.amd_smbus* %55, i8 zeroext 36, i8 zeroext %56) #8, !dbg !4908
  store i32 %call81, i32* %status, align 4, !dbg !4909
  %57 = load i32, i32* %status, align 4, !dbg !4910
  %tobool82 = icmp ne i32 %57, 0, !dbg !4910
  br i1 %tobool82, label %if.then83, label %if.end84, !dbg !4912

if.then83:                                        ; preds = %cond.end
  %58 = load i32, i32* %status, align 4, !dbg !4913
  store i32 %58, i32* %retval, align 4, !dbg !4914
  br label %return, !dbg !4914

if.end84:                                         ; preds = %cond.end
  store i32 0, i32* %i, align 4, !dbg !4915
  br label %for.cond, !dbg !4917

for.cond:                                         ; preds = %for.inc, %if.end84
  %59 = load i32, i32* %i, align 4, !dbg !4918
  %60 = load i8, i8* %len, align 1, !dbg !4920
  %conv85 = zext i8 %60 to i32, !dbg !4920
  %cmp86 = icmp slt i32 %59, %conv85, !dbg !4921
  br i1 %cmp86, label %for.body, label %for.end, !dbg !4922

for.body:                                         ; preds = %for.cond
  %61 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4923
  %62 = load i32, i32* %i, align 4, !dbg !4925
  %add = add i32 4, %62, !dbg !4926
  %conv88 = trunc i32 %add to i8, !dbg !4927
  %63 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !4928
  %block89 = bitcast %union.i2c_smbus_data* %63 to [34 x i8]*, !dbg !4929
  %64 = load i32, i32* %i, align 4, !dbg !4930
  %add90 = add i32 %64, 1, !dbg !4931
  %idxprom = sext i32 %add90 to i64, !dbg !4928
  %arrayidx91 = getelementptr [34 x i8], [34 x i8]* %block89, i64 0, i64 %idxprom, !dbg !4928
  %65 = load i8, i8* %arrayidx91, align 1, !dbg !4928
  %call92 = call i32 @amd_ec_write(%struct.amd_smbus* %61, i8 zeroext %conv88, i8 zeroext %65) #8, !dbg !4932
  store i32 %call92, i32* %status, align 4, !dbg !4933
  %66 = load i32, i32* %status, align 4, !dbg !4934
  %tobool93 = icmp ne i32 %66, 0, !dbg !4934
  br i1 %tobool93, label %if.then94, label %if.end95, !dbg !4936

if.then94:                                        ; preds = %for.body
  %67 = load i32, i32* %status, align 4, !dbg !4937
  store i32 %67, i32* %retval, align 4, !dbg !4938
  br label %return, !dbg !4938

if.end95:                                         ; preds = %for.body
  br label %for.inc, !dbg !4939

for.inc:                                          ; preds = %if.end95
  %68 = load i32, i32* %i, align 4, !dbg !4940
  %inc = add i32 %68, 1, !dbg !4940
  store i32 %inc, i32* %i, align 4, !dbg !4940
  br label %for.cond, !dbg !4941, !llvm.loop !4942

for.end:                                          ; preds = %for.cond
  br label %if.end96, !dbg !4944

if.end96:                                         ; preds = %for.end, %if.end68
  %69 = load i8, i8* %pec, align 1, !dbg !4945
  %conv97 = zext i8 %69 to i32, !dbg !4945
  %or98 = or i32 10, %conv97, !dbg !4946
  %70 = load i8, i8* %protocol, align 1, !dbg !4947
  %conv99 = zext i8 %70 to i32, !dbg !4947
  %or100 = or i32 %conv99, %or98, !dbg !4947
  %conv101 = trunc i32 %or100 to i8, !dbg !4947
  store i8 %conv101, i8* %protocol, align 1, !dbg !4947
  br label %sw.epilog, !dbg !4948

sw.bb102:                                         ; preds = %entry
  call void @llvm.dbg.declare(metadata i8* %__UNIQUE_ID___x246, metadata !4949, metadata !DIExpression()), !dbg !4951
  %71 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !4951
  %block103 = bitcast %union.i2c_smbus_data* %71 to [34 x i8]*, !dbg !4951
  %arrayidx104 = getelementptr [34 x i8], [34 x i8]* %block103, i64 0, i64 0, !dbg !4951
  %72 = load i8, i8* %arrayidx104, align 2, !dbg !4951
  store i8 %72, i8* %__UNIQUE_ID___x246, align 1, !dbg !4951
  call void @llvm.dbg.declare(metadata i8* %__UNIQUE_ID___y247, metadata !4952, metadata !DIExpression()), !dbg !4951
  store i8 32, i8* %__UNIQUE_ID___y247, align 1, !dbg !4951
  %73 = load i8, i8* %__UNIQUE_ID___x246, align 1, !dbg !4951
  %conv106 = zext i8 %73 to i32, !dbg !4951
  %74 = load i8, i8* %__UNIQUE_ID___y247, align 1, !dbg !4951
  %conv107 = zext i8 %74 to i32, !dbg !4951
  %cmp108 = icmp slt i32 %conv106, %conv107, !dbg !4951
  br i1 %cmp108, label %cond.true110, label %cond.false112, !dbg !4951

cond.true110:                                     ; preds = %sw.bb102
  %75 = load i8, i8* %__UNIQUE_ID___x246, align 1, !dbg !4951
  %conv111 = zext i8 %75 to i32, !dbg !4951
  br label %cond.end114, !dbg !4951

cond.false112:                                    ; preds = %sw.bb102
  %76 = load i8, i8* %__UNIQUE_ID___y247, align 1, !dbg !4951
  %conv113 = zext i8 %76 to i32, !dbg !4951
  br label %cond.end114, !dbg !4951

cond.end114:                                      ; preds = %cond.false112, %cond.true110
  %cond115 = phi i32 [ %conv111, %cond.true110 ], [ %conv113, %cond.false112 ], !dbg !4951
  store i32 %cond115, i32* %tmp105, align 4, !dbg !4951
  %77 = load i32, i32* %tmp105, align 4, !dbg !4951
  %conv116 = trunc i32 %77 to i8, !dbg !4953
  store i8 %conv116, i8* %len, align 1, !dbg !4954
  %78 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4955
  %79 = load i8, i8* %command.addr, align 1, !dbg !4956
  %call117 = call i32 @amd_ec_write(%struct.amd_smbus* %78, i8 zeroext 3, i8 zeroext %79) #8, !dbg !4957
  store i32 %call117, i32* %status, align 4, !dbg !4958
  %80 = load i32, i32* %status, align 4, !dbg !4959
  %tobool118 = icmp ne i32 %80, 0, !dbg !4959
  br i1 %tobool118, label %if.then119, label %if.end120, !dbg !4961

if.then119:                                       ; preds = %cond.end114
  %81 = load i32, i32* %status, align 4, !dbg !4962
  store i32 %81, i32* %retval, align 4, !dbg !4963
  br label %return, !dbg !4963

if.end120:                                        ; preds = %cond.end114
  %82 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4964
  %83 = load i8, i8* %len, align 1, !dbg !4965
  %call121 = call i32 @amd_ec_write(%struct.amd_smbus* %82, i8 zeroext 36, i8 zeroext %83) #8, !dbg !4966
  store i32 %call121, i32* %status, align 4, !dbg !4967
  %84 = load i32, i32* %status, align 4, !dbg !4968
  %tobool122 = icmp ne i32 %84, 0, !dbg !4968
  br i1 %tobool122, label %if.then123, label %if.end124, !dbg !4970

if.then123:                                       ; preds = %if.end120
  %85 = load i32, i32* %status, align 4, !dbg !4971
  store i32 %85, i32* %retval, align 4, !dbg !4972
  br label %return, !dbg !4972

if.end124:                                        ; preds = %if.end120
  %86 = load i8, i8* %read_write.addr, align 1, !dbg !4973
  %conv125 = sext i8 %86 to i32, !dbg !4973
  %cmp126 = icmp eq i32 %conv125, 0, !dbg !4975
  br i1 %cmp126, label %if.then128, label %if.end147, !dbg !4976

if.then128:                                       ; preds = %if.end124
  store i32 0, i32* %i, align 4, !dbg !4977
  br label %for.cond129, !dbg !4979

for.cond129:                                      ; preds = %for.inc144, %if.then128
  %87 = load i32, i32* %i, align 4, !dbg !4980
  %88 = load i8, i8* %len, align 1, !dbg !4982
  %conv130 = zext i8 %88 to i32, !dbg !4982
  %cmp131 = icmp slt i32 %87, %conv130, !dbg !4983
  br i1 %cmp131, label %for.body133, label %for.end146, !dbg !4984

for.body133:                                      ; preds = %for.cond129
  %89 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !4985
  %90 = load i32, i32* %i, align 4, !dbg !4987
  %add134 = add i32 4, %90, !dbg !4988
  %conv135 = trunc i32 %add134 to i8, !dbg !4989
  %91 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !4990
  %block136 = bitcast %union.i2c_smbus_data* %91 to [34 x i8]*, !dbg !4991
  %92 = load i32, i32* %i, align 4, !dbg !4992
  %add137 = add i32 %92, 1, !dbg !4993
  %idxprom138 = sext i32 %add137 to i64, !dbg !4990
  %arrayidx139 = getelementptr [34 x i8], [34 x i8]* %block136, i64 0, i64 %idxprom138, !dbg !4990
  %93 = load i8, i8* %arrayidx139, align 1, !dbg !4990
  %call140 = call i32 @amd_ec_write(%struct.amd_smbus* %89, i8 zeroext %conv135, i8 zeroext %93) #8, !dbg !4994
  store i32 %call140, i32* %status, align 4, !dbg !4995
  %94 = load i32, i32* %status, align 4, !dbg !4996
  %tobool141 = icmp ne i32 %94, 0, !dbg !4996
  br i1 %tobool141, label %if.then142, label %if.end143, !dbg !4998

if.then142:                                       ; preds = %for.body133
  %95 = load i32, i32* %status, align 4, !dbg !4999
  store i32 %95, i32* %retval, align 4, !dbg !5000
  br label %return, !dbg !5000

if.end143:                                        ; preds = %for.body133
  br label %for.inc144, !dbg !5001

for.inc144:                                       ; preds = %if.end143
  %96 = load i32, i32* %i, align 4, !dbg !5002
  %inc145 = add i32 %96, 1, !dbg !5002
  store i32 %inc145, i32* %i, align 4, !dbg !5002
  br label %for.cond129, !dbg !5003, !llvm.loop !5004

for.end146:                                       ; preds = %for.cond129
  br label %if.end147, !dbg !5005

if.end147:                                        ; preds = %for.end146, %if.end124
  %97 = load i8, i8* %protocol, align 1, !dbg !5006
  %conv148 = zext i8 %97 to i32, !dbg !5006
  %or149 = or i32 %conv148, 74, !dbg !5006
  %conv150 = trunc i32 %or149 to i8, !dbg !5006
  store i8 %conv150, i8* %protocol, align 1, !dbg !5006
  br label %sw.epilog, !dbg !5007

sw.bb151:                                         ; preds = %entry
  %98 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !5008
  %99 = load i8, i8* %command.addr, align 1, !dbg !5009
  %call152 = call i32 @amd_ec_write(%struct.amd_smbus* %98, i8 zeroext 3, i8 zeroext %99) #8, !dbg !5010
  store i32 %call152, i32* %status, align 4, !dbg !5011
  %100 = load i32, i32* %status, align 4, !dbg !5012
  %tobool153 = icmp ne i32 %100, 0, !dbg !5012
  br i1 %tobool153, label %if.then154, label %if.end155, !dbg !5014

if.then154:                                       ; preds = %sw.bb151
  %101 = load i32, i32* %status, align 4, !dbg !5015
  store i32 %101, i32* %retval, align 4, !dbg !5016
  br label %return, !dbg !5016

if.end155:                                        ; preds = %sw.bb151
  %102 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !5017
  %103 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !5018
  %word156 = bitcast %union.i2c_smbus_data* %103 to i16*, !dbg !5019
  %104 = load i16, i16* %word156, align 2, !dbg !5019
  %conv157 = zext i16 %104 to i32, !dbg !5018
  %and158 = and i32 %conv157, 255, !dbg !5020
  %conv159 = trunc i32 %and158 to i8, !dbg !5018
  %call160 = call i32 @amd_ec_write(%struct.amd_smbus* %102, i8 zeroext 4, i8 zeroext %conv159) #8, !dbg !5021
  store i32 %call160, i32* %status, align 4, !dbg !5022
  %105 = load i32, i32* %status, align 4, !dbg !5023
  %tobool161 = icmp ne i32 %105, 0, !dbg !5023
  br i1 %tobool161, label %if.then162, label %if.end163, !dbg !5025

if.then162:                                       ; preds = %if.end155
  %106 = load i32, i32* %status, align 4, !dbg !5026
  store i32 %106, i32* %retval, align 4, !dbg !5027
  br label %return, !dbg !5027

if.end163:                                        ; preds = %if.end155
  %107 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !5028
  %108 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !5029
  %word164 = bitcast %union.i2c_smbus_data* %108 to i16*, !dbg !5030
  %109 = load i16, i16* %word164, align 2, !dbg !5030
  %conv165 = zext i16 %109 to i32, !dbg !5029
  %shr166 = ashr i32 %conv165, 8, !dbg !5031
  %conv167 = trunc i32 %shr166 to i8, !dbg !5029
  %call168 = call i32 @amd_ec_write(%struct.amd_smbus* %107, i8 zeroext 5, i8 zeroext %conv167) #8, !dbg !5032
  store i32 %call168, i32* %status, align 4, !dbg !5033
  %110 = load i32, i32* %status, align 4, !dbg !5034
  %tobool169 = icmp ne i32 %110, 0, !dbg !5034
  br i1 %tobool169, label %if.then170, label %if.end171, !dbg !5036

if.then170:                                       ; preds = %if.end163
  %111 = load i32, i32* %status, align 4, !dbg !5037
  store i32 %111, i32* %retval, align 4, !dbg !5038
  br label %return, !dbg !5038

if.end171:                                        ; preds = %if.end163
  %112 = load i8, i8* %pec, align 1, !dbg !5039
  %conv172 = zext i8 %112 to i32, !dbg !5039
  %or173 = or i32 12, %conv172, !dbg !5040
  %conv174 = trunc i32 %or173 to i8, !dbg !5041
  store i8 %conv174, i8* %protocol, align 1, !dbg !5042
  store i8 1, i8* %read_write.addr, align 1, !dbg !5043
  br label %sw.epilog, !dbg !5044

sw.bb175:                                         ; preds = %entry
  call void @llvm.dbg.declare(metadata i8* %__UNIQUE_ID___x248, metadata !5045, metadata !DIExpression()), !dbg !5047
  %113 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !5047
  %block176 = bitcast %union.i2c_smbus_data* %113 to [34 x i8]*, !dbg !5047
  %arrayidx177 = getelementptr [34 x i8], [34 x i8]* %block176, i64 0, i64 0, !dbg !5047
  %114 = load i8, i8* %arrayidx177, align 2, !dbg !5047
  store i8 %114, i8* %__UNIQUE_ID___x248, align 1, !dbg !5047
  call void @llvm.dbg.declare(metadata i8* %__UNIQUE_ID___y249, metadata !5048, metadata !DIExpression()), !dbg !5047
  store i8 31, i8* %__UNIQUE_ID___y249, align 1, !dbg !5047
  %115 = load i8, i8* %__UNIQUE_ID___x248, align 1, !dbg !5047
  %conv179 = zext i8 %115 to i32, !dbg !5047
  %116 = load i8, i8* %__UNIQUE_ID___y249, align 1, !dbg !5047
  %conv180 = zext i8 %116 to i32, !dbg !5047
  %cmp181 = icmp slt i32 %conv179, %conv180, !dbg !5047
  br i1 %cmp181, label %cond.true183, label %cond.false185, !dbg !5047

cond.true183:                                     ; preds = %sw.bb175
  %117 = load i8, i8* %__UNIQUE_ID___x248, align 1, !dbg !5047
  %conv184 = zext i8 %117 to i32, !dbg !5047
  br label %cond.end187, !dbg !5047

cond.false185:                                    ; preds = %sw.bb175
  %118 = load i8, i8* %__UNIQUE_ID___y249, align 1, !dbg !5047
  %conv186 = zext i8 %118 to i32, !dbg !5047
  br label %cond.end187, !dbg !5047

cond.end187:                                      ; preds = %cond.false185, %cond.true183
  %cond188 = phi i32 [ %conv184, %cond.true183 ], [ %conv186, %cond.false185 ], !dbg !5047
  store i32 %cond188, i32* %tmp178, align 4, !dbg !5047
  %119 = load i32, i32* %tmp178, align 4, !dbg !5047
  %conv189 = trunc i32 %119 to i8, !dbg !5049
  store i8 %conv189, i8* %len, align 1, !dbg !5050
  %120 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !5051
  %121 = load i8, i8* %command.addr, align 1, !dbg !5052
  %call190 = call i32 @amd_ec_write(%struct.amd_smbus* %120, i8 zeroext 3, i8 zeroext %121) #8, !dbg !5053
  store i32 %call190, i32* %status, align 4, !dbg !5054
  %122 = load i32, i32* %status, align 4, !dbg !5055
  %tobool191 = icmp ne i32 %122, 0, !dbg !5055
  br i1 %tobool191, label %if.then192, label %if.end193, !dbg !5057

if.then192:                                       ; preds = %cond.end187
  %123 = load i32, i32* %status, align 4, !dbg !5058
  store i32 %123, i32* %retval, align 4, !dbg !5059
  br label %return, !dbg !5059

if.end193:                                        ; preds = %cond.end187
  %124 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !5060
  %125 = load i8, i8* %len, align 1, !dbg !5061
  %call194 = call i32 @amd_ec_write(%struct.amd_smbus* %124, i8 zeroext 36, i8 zeroext %125) #8, !dbg !5062
  store i32 %call194, i32* %status, align 4, !dbg !5063
  %126 = load i32, i32* %status, align 4, !dbg !5064
  %tobool195 = icmp ne i32 %126, 0, !dbg !5064
  br i1 %tobool195, label %if.then196, label %if.end197, !dbg !5066

if.then196:                                       ; preds = %if.end193
  %127 = load i32, i32* %status, align 4, !dbg !5067
  store i32 %127, i32* %retval, align 4, !dbg !5068
  br label %return, !dbg !5068

if.end197:                                        ; preds = %if.end193
  store i32 0, i32* %i, align 4, !dbg !5069
  br label %for.cond198, !dbg !5071

for.cond198:                                      ; preds = %for.inc213, %if.end197
  %128 = load i32, i32* %i, align 4, !dbg !5072
  %129 = load i8, i8* %len, align 1, !dbg !5074
  %conv199 = zext i8 %129 to i32, !dbg !5074
  %cmp200 = icmp slt i32 %128, %conv199, !dbg !5075
  br i1 %cmp200, label %for.body202, label %for.end215, !dbg !5076

for.body202:                                      ; preds = %for.cond198
  %130 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !5077
  %131 = load i32, i32* %i, align 4, !dbg !5079
  %add203 = add i32 4, %131, !dbg !5080
  %conv204 = trunc i32 %add203 to i8, !dbg !5081
  %132 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !5082
  %block205 = bitcast %union.i2c_smbus_data* %132 to [34 x i8]*, !dbg !5083
  %133 = load i32, i32* %i, align 4, !dbg !5084
  %add206 = add i32 %133, 1, !dbg !5085
  %idxprom207 = sext i32 %add206 to i64, !dbg !5082
  %arrayidx208 = getelementptr [34 x i8], [34 x i8]* %block205, i64 0, i64 %idxprom207, !dbg !5082
  %134 = load i8, i8* %arrayidx208, align 1, !dbg !5082
  %call209 = call i32 @amd_ec_write(%struct.amd_smbus* %130, i8 zeroext %conv204, i8 zeroext %134) #8, !dbg !5086
  store i32 %call209, i32* %status, align 4, !dbg !5087
  %135 = load i32, i32* %status, align 4, !dbg !5088
  %tobool210 = icmp ne i32 %135, 0, !dbg !5088
  br i1 %tobool210, label %if.then211, label %if.end212, !dbg !5090

if.then211:                                       ; preds = %for.body202
  %136 = load i32, i32* %status, align 4, !dbg !5091
  store i32 %136, i32* %retval, align 4, !dbg !5092
  br label %return, !dbg !5092

if.end212:                                        ; preds = %for.body202
  br label %for.inc213, !dbg !5093

for.inc213:                                       ; preds = %if.end212
  %137 = load i32, i32* %i, align 4, !dbg !5094
  %inc214 = add i32 %137, 1, !dbg !5094
  store i32 %inc214, i32* %i, align 4, !dbg !5094
  br label %for.cond198, !dbg !5095, !llvm.loop !5096

for.end215:                                       ; preds = %for.cond198
  %138 = load i8, i8* %pec, align 1, !dbg !5098
  %conv216 = zext i8 %138 to i32, !dbg !5098
  %or217 = or i32 13, %conv216, !dbg !5099
  %conv218 = trunc i32 %or217 to i8, !dbg !5100
  store i8 %conv218, i8* %protocol, align 1, !dbg !5101
  store i8 1, i8* %read_write.addr, align 1, !dbg !5102
  br label %sw.epilog, !dbg !5103

sw.default:                                       ; preds = %entry
  %139 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !5104
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %139, i32 0, i32 9, !dbg !5104
  %140 = load i32, i32* %size.addr, align 4, !dbg !5104
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %140) #13, !dbg !5104
  store i32 -95, i32* %retval, align 4, !dbg !5105
  br label %return, !dbg !5105

sw.epilog:                                        ; preds = %for.end215, %if.end171, %if.end147, %if.end96, %if.end58, %if.end31, %if.end14, %sw.bb
  %141 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !5106
  %142 = load i16, i16* %addr.addr, align 2, !dbg !5107
  %conv219 = zext i16 %142 to i32, !dbg !5107
  %shl = shl i32 %conv219, 1, !dbg !5108
  %conv220 = trunc i32 %shl to i8, !dbg !5107
  %call221 = call i32 @amd_ec_write(%struct.amd_smbus* %141, i8 zeroext 2, i8 zeroext %conv220) #8, !dbg !5109
  store i32 %call221, i32* %status, align 4, !dbg !5110
  %143 = load i32, i32* %status, align 4, !dbg !5111
  %tobool222 = icmp ne i32 %143, 0, !dbg !5111
  br i1 %tobool222, label %if.then223, label %if.end224, !dbg !5113

if.then223:                                       ; preds = %sw.epilog
  %144 = load i32, i32* %status, align 4, !dbg !5114
  store i32 %144, i32* %retval, align 4, !dbg !5115
  br label %return, !dbg !5115

if.end224:                                        ; preds = %sw.epilog
  %145 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !5116
  %146 = load i8, i8* %protocol, align 1, !dbg !5117
  %call225 = call i32 @amd_ec_write(%struct.amd_smbus* %145, i8 zeroext 0, i8 zeroext %146) #8, !dbg !5118
  store i32 %call225, i32* %status, align 4, !dbg !5119
  %147 = load i32, i32* %status, align 4, !dbg !5120
  %tobool226 = icmp ne i32 %147, 0, !dbg !5120
  br i1 %tobool226, label %if.then227, label %if.end228, !dbg !5122

if.then227:                                       ; preds = %if.end224
  %148 = load i32, i32* %status, align 4, !dbg !5123
  store i32 %148, i32* %retval, align 4, !dbg !5124
  br label %return, !dbg !5124

if.end228:                                        ; preds = %if.end224
  %149 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !5125
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %temp, i64 0, i64 0, !dbg !5126
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 0, !dbg !5127
  %call229 = call i32 @amd_ec_read(%struct.amd_smbus* %149, i8 zeroext 1, i8* %add.ptr) #8, !dbg !5128
  store i32 %call229, i32* %status, align 4, !dbg !5129
  %150 = load i32, i32* %status, align 4, !dbg !5130
  %tobool230 = icmp ne i32 %150, 0, !dbg !5130
  br i1 %tobool230, label %if.then231, label %if.end232, !dbg !5132

if.then231:                                       ; preds = %if.end228
  %151 = load i32, i32* %status, align 4, !dbg !5133
  store i32 %151, i32* %retval, align 4, !dbg !5134
  br label %return, !dbg !5134

if.end232:                                        ; preds = %if.end228
  %arrayidx233 = getelementptr [2 x i8], [2 x i8]* %temp, i64 0, i64 0, !dbg !5135
  %152 = load i8, i8* %arrayidx233, align 1, !dbg !5135
  %conv234 = zext i8 %152 to i32, !dbg !5135
  %neg = xor i32 %conv234, -1, !dbg !5137
  %and235 = and i32 %neg, 128, !dbg !5138
  %tobool236 = icmp ne i32 %and235, 0, !dbg !5138
  br i1 %tobool236, label %if.then237, label %if.end244, !dbg !5139

if.then237:                                       ; preds = %if.end232
  call void @__const_udelay(i64 2147500) #8, !dbg !5140
  %153 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !5146
  %arraydecay238 = getelementptr inbounds [2 x i8], [2 x i8]* %temp, i64 0, i64 0, !dbg !5147
  %add.ptr239 = getelementptr i8, i8* %arraydecay238, i64 0, !dbg !5148
  %call240 = call i32 @amd_ec_read(%struct.amd_smbus* %153, i8 zeroext 1, i8* %add.ptr239) #8, !dbg !5149
  store i32 %call240, i32* %status, align 4, !dbg !5150
  %154 = load i32, i32* %status, align 4, !dbg !5151
  %tobool241 = icmp ne i32 %154, 0, !dbg !5151
  br i1 %tobool241, label %if.then242, label %if.end243, !dbg !5153

if.then242:                                       ; preds = %if.then237
  %155 = load i32, i32* %status, align 4, !dbg !5154
  store i32 %155, i32* %retval, align 4, !dbg !5155
  br label %return, !dbg !5155

if.end243:                                        ; preds = %if.then237
  br label %if.end244, !dbg !5156

if.end244:                                        ; preds = %if.end243, %if.end232
  %arrayidx245 = getelementptr [2 x i8], [2 x i8]* %temp, i64 0, i64 0, !dbg !5157
  %156 = load i8, i8* %arrayidx245, align 1, !dbg !5157
  %conv246 = zext i8 %156 to i32, !dbg !5157
  %neg247 = xor i32 %conv246, -1, !dbg !5159
  %and248 = and i32 %neg247, 128, !dbg !5160
  %tobool249 = icmp ne i32 %and248, 0, !dbg !5160
  br i1 %tobool249, label %if.then250, label %if.end257, !dbg !5161

if.then250:                                       ; preds = %if.end244
  call void @msleep(i32 1) #8, !dbg !5162
  %157 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !5164
  %arraydecay251 = getelementptr inbounds [2 x i8], [2 x i8]* %temp, i64 0, i64 0, !dbg !5165
  %add.ptr252 = getelementptr i8, i8* %arraydecay251, i64 0, !dbg !5166
  %call253 = call i32 @amd_ec_read(%struct.amd_smbus* %157, i8 zeroext 1, i8* %add.ptr252) #8, !dbg !5167
  store i32 %call253, i32* %status, align 4, !dbg !5168
  %158 = load i32, i32* %status, align 4, !dbg !5169
  %tobool254 = icmp ne i32 %158, 0, !dbg !5169
  br i1 %tobool254, label %if.then255, label %if.end256, !dbg !5171

if.then255:                                       ; preds = %if.then250
  %159 = load i32, i32* %status, align 4, !dbg !5172
  store i32 %159, i32* %retval, align 4, !dbg !5173
  br label %return, !dbg !5173

if.end256:                                        ; preds = %if.then250
  br label %if.end257, !dbg !5174

if.end257:                                        ; preds = %if.end256, %if.end244
  %arrayidx258 = getelementptr [2 x i8], [2 x i8]* %temp, i64 0, i64 0, !dbg !5175
  %160 = load i8, i8* %arrayidx258, align 1, !dbg !5175
  %conv259 = zext i8 %160 to i32, !dbg !5175
  %neg260 = xor i32 %conv259, -1, !dbg !5177
  %and261 = and i32 %neg260, 128, !dbg !5178
  %tobool262 = icmp ne i32 %and261, 0, !dbg !5178
  br i1 %tobool262, label %if.then267, label %lor.lhs.false, !dbg !5179

lor.lhs.false:                                    ; preds = %if.end257
  %arrayidx263 = getelementptr [2 x i8], [2 x i8]* %temp, i64 0, i64 0, !dbg !5180
  %161 = load i8, i8* %arrayidx263, align 1, !dbg !5180
  %conv264 = zext i8 %161 to i32, !dbg !5180
  %and265 = and i32 %conv264, 31, !dbg !5181
  %tobool266 = icmp ne i32 %and265, 0, !dbg !5181
  br i1 %tobool266, label %if.then267, label %if.end268, !dbg !5182

if.then267:                                       ; preds = %lor.lhs.false, %if.end257
  store i32 -5, i32* %retval, align 4, !dbg !5183
  br label %return, !dbg !5183

if.end268:                                        ; preds = %lor.lhs.false
  %162 = load i8, i8* %read_write.addr, align 1, !dbg !5184
  %conv269 = sext i8 %162 to i32, !dbg !5184
  %cmp270 = icmp eq i32 %conv269, 0, !dbg !5186
  br i1 %cmp270, label %if.then272, label %if.end273, !dbg !5187

if.then272:                                       ; preds = %if.end268
  store i32 0, i32* %retval, align 4, !dbg !5188
  br label %return, !dbg !5188

if.end273:                                        ; preds = %if.end268
  %163 = load i32, i32* %size.addr, align 4, !dbg !5189
  switch i32 %163, label %sw.epilog339 [
    i32 1, label %sw.bb274
    i32 2, label %sw.bb274
    i32 3, label %sw.bb280
    i32 4, label %sw.bb280
    i32 5, label %sw.bb301
    i32 7, label %sw.bb301
    i32 8, label %sw.bb318
  ], !dbg !5190

sw.bb274:                                         ; preds = %if.end273, %if.end273
  %164 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !5191
  %165 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !5193
  %byte275 = bitcast %union.i2c_smbus_data* %165 to i8*, !dbg !5194
  %call276 = call i32 @amd_ec_read(%struct.amd_smbus* %164, i8 zeroext 4, i8* %byte275) #8, !dbg !5195
  store i32 %call276, i32* %status, align 4, !dbg !5196
  %166 = load i32, i32* %status, align 4, !dbg !5197
  %tobool277 = icmp ne i32 %166, 0, !dbg !5197
  br i1 %tobool277, label %if.then278, label %if.end279, !dbg !5199

if.then278:                                       ; preds = %sw.bb274
  %167 = load i32, i32* %status, align 4, !dbg !5200
  store i32 %167, i32* %retval, align 4, !dbg !5201
  br label %return, !dbg !5201

if.end279:                                        ; preds = %sw.bb274
  br label %sw.epilog339, !dbg !5202

sw.bb280:                                         ; preds = %if.end273, %if.end273
  %168 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !5203
  %arraydecay281 = getelementptr inbounds [2 x i8], [2 x i8]* %temp, i64 0, i64 0, !dbg !5204
  %add.ptr282 = getelementptr i8, i8* %arraydecay281, i64 0, !dbg !5205
  %call283 = call i32 @amd_ec_read(%struct.amd_smbus* %168, i8 zeroext 4, i8* %add.ptr282) #8, !dbg !5206
  store i32 %call283, i32* %status, align 4, !dbg !5207
  %169 = load i32, i32* %status, align 4, !dbg !5208
  %tobool284 = icmp ne i32 %169, 0, !dbg !5208
  br i1 %tobool284, label %if.then285, label %if.end286, !dbg !5210

if.then285:                                       ; preds = %sw.bb280
  %170 = load i32, i32* %status, align 4, !dbg !5211
  store i32 %170, i32* %retval, align 4, !dbg !5212
  br label %return, !dbg !5212

if.end286:                                        ; preds = %sw.bb280
  %171 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !5213
  %arraydecay287 = getelementptr inbounds [2 x i8], [2 x i8]* %temp, i64 0, i64 0, !dbg !5214
  %add.ptr288 = getelementptr i8, i8* %arraydecay287, i64 1, !dbg !5215
  %call289 = call i32 @amd_ec_read(%struct.amd_smbus* %171, i8 zeroext 5, i8* %add.ptr288) #8, !dbg !5216
  store i32 %call289, i32* %status, align 4, !dbg !5217
  %172 = load i32, i32* %status, align 4, !dbg !5218
  %tobool290 = icmp ne i32 %172, 0, !dbg !5218
  br i1 %tobool290, label %if.then291, label %if.end292, !dbg !5220

if.then291:                                       ; preds = %if.end286
  %173 = load i32, i32* %status, align 4, !dbg !5221
  store i32 %173, i32* %retval, align 4, !dbg !5222
  br label %return, !dbg !5222

if.end292:                                        ; preds = %if.end286
  %arrayidx293 = getelementptr [2 x i8], [2 x i8]* %temp, i64 0, i64 1, !dbg !5223
  %174 = load i8, i8* %arrayidx293, align 1, !dbg !5223
  %conv294 = zext i8 %174 to i32, !dbg !5223
  %shl295 = shl i32 %conv294, 8, !dbg !5224
  %arrayidx296 = getelementptr [2 x i8], [2 x i8]* %temp, i64 0, i64 0, !dbg !5225
  %175 = load i8, i8* %arrayidx296, align 1, !dbg !5225
  %conv297 = zext i8 %175 to i32, !dbg !5225
  %or298 = or i32 %shl295, %conv297, !dbg !5226
  %conv299 = trunc i32 %or298 to i16, !dbg !5227
  %176 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !5228
  %word300 = bitcast %union.i2c_smbus_data* %176 to i16*, !dbg !5229
  store i16 %conv299, i16* %word300, align 2, !dbg !5230
  br label %sw.epilog339, !dbg !5231

sw.bb301:                                         ; preds = %if.end273, %if.end273
  %177 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !5232
  %call302 = call i32 @amd_ec_read(%struct.amd_smbus* %177, i8 zeroext 36, i8* %len) #8, !dbg !5233
  store i32 %call302, i32* %status, align 4, !dbg !5234
  %178 = load i32, i32* %status, align 4, !dbg !5235
  %tobool303 = icmp ne i32 %178, 0, !dbg !5235
  br i1 %tobool303, label %if.then304, label %if.end305, !dbg !5237

if.then304:                                       ; preds = %sw.bb301
  %179 = load i32, i32* %status, align 4, !dbg !5238
  store i32 %179, i32* %retval, align 4, !dbg !5239
  br label %return, !dbg !5239

if.end305:                                        ; preds = %sw.bb301
  call void @llvm.dbg.declare(metadata i8* %__UNIQUE_ID___x250, metadata !5240, metadata !DIExpression()), !dbg !5242
  %180 = load i8, i8* %len, align 1, !dbg !5242
  store i8 %180, i8* %__UNIQUE_ID___x250, align 1, !dbg !5242
  call void @llvm.dbg.declare(metadata i8* %__UNIQUE_ID___y251, metadata !5243, metadata !DIExpression()), !dbg !5242
  store i8 32, i8* %__UNIQUE_ID___y251, align 1, !dbg !5242
  %181 = load i8, i8* %__UNIQUE_ID___x250, align 1, !dbg !5242
  %conv307 = zext i8 %181 to i32, !dbg !5242
  %182 = load i8, i8* %__UNIQUE_ID___y251, align 1, !dbg !5242
  %conv308 = zext i8 %182 to i32, !dbg !5242
  %cmp309 = icmp slt i32 %conv307, %conv308, !dbg !5242
  br i1 %cmp309, label %cond.true311, label %cond.false313, !dbg !5242

cond.true311:                                     ; preds = %if.end305
  %183 = load i8, i8* %__UNIQUE_ID___x250, align 1, !dbg !5242
  %conv312 = zext i8 %183 to i32, !dbg !5242
  br label %cond.end315, !dbg !5242

cond.false313:                                    ; preds = %if.end305
  %184 = load i8, i8* %__UNIQUE_ID___y251, align 1, !dbg !5242
  %conv314 = zext i8 %184 to i32, !dbg !5242
  br label %cond.end315, !dbg !5242

cond.end315:                                      ; preds = %cond.false313, %cond.true311
  %cond316 = phi i32 [ %conv312, %cond.true311 ], [ %conv314, %cond.false313 ], !dbg !5242
  store i32 %cond316, i32* %tmp306, align 4, !dbg !5242
  %185 = load i32, i32* %tmp306, align 4, !dbg !5242
  %conv317 = trunc i32 %185 to i8, !dbg !5244
  store i8 %conv317, i8* %len, align 1, !dbg !5245
  br label %sw.bb318, !dbg !5246

sw.bb318:                                         ; preds = %if.end273, %cond.end315
  store i32 0, i32* %i, align 4, !dbg !5247
  br label %for.cond319, !dbg !5249

for.cond319:                                      ; preds = %for.inc334, %sw.bb318
  %186 = load i32, i32* %i, align 4, !dbg !5250
  %187 = load i8, i8* %len, align 1, !dbg !5252
  %conv320 = zext i8 %187 to i32, !dbg !5252
  %cmp321 = icmp slt i32 %186, %conv320, !dbg !5253
  br i1 %cmp321, label %for.body323, label %for.end336, !dbg !5254

for.body323:                                      ; preds = %for.cond319
  %188 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus, align 8, !dbg !5255
  %189 = load i32, i32* %i, align 4, !dbg !5257
  %add324 = add i32 4, %189, !dbg !5258
  %conv325 = trunc i32 %add324 to i8, !dbg !5259
  %190 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !5260
  %block326 = bitcast %union.i2c_smbus_data* %190 to [34 x i8]*, !dbg !5261
  %arraydecay327 = getelementptr inbounds [34 x i8], [34 x i8]* %block326, i64 0, i64 0, !dbg !5260
  %191 = load i32, i32* %i, align 4, !dbg !5262
  %idx.ext = sext i32 %191 to i64, !dbg !5263
  %add.ptr328 = getelementptr i8, i8* %arraydecay327, i64 %idx.ext, !dbg !5263
  %add.ptr329 = getelementptr i8, i8* %add.ptr328, i64 1, !dbg !5264
  %call330 = call i32 @amd_ec_read(%struct.amd_smbus* %188, i8 zeroext %conv325, i8* %add.ptr329) #8, !dbg !5265
  store i32 %call330, i32* %status, align 4, !dbg !5266
  %192 = load i32, i32* %status, align 4, !dbg !5267
  %tobool331 = icmp ne i32 %192, 0, !dbg !5267
  br i1 %tobool331, label %if.then332, label %if.end333, !dbg !5269

if.then332:                                       ; preds = %for.body323
  %193 = load i32, i32* %status, align 4, !dbg !5270
  store i32 %193, i32* %retval, align 4, !dbg !5271
  br label %return, !dbg !5271

if.end333:                                        ; preds = %for.body323
  br label %for.inc334, !dbg !5272

for.inc334:                                       ; preds = %if.end333
  %194 = load i32, i32* %i, align 4, !dbg !5273
  %inc335 = add i32 %194, 1, !dbg !5273
  store i32 %inc335, i32* %i, align 4, !dbg !5273
  br label %for.cond319, !dbg !5274, !llvm.loop !5275

for.end336:                                       ; preds = %for.cond319
  %195 = load i8, i8* %len, align 1, !dbg !5277
  %196 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !5278
  %block337 = bitcast %union.i2c_smbus_data* %196 to [34 x i8]*, !dbg !5279
  %arrayidx338 = getelementptr [34 x i8], [34 x i8]* %block337, i64 0, i64 0, !dbg !5278
  store i8 %195, i8* %arrayidx338, align 2, !dbg !5280
  br label %sw.epilog339, !dbg !5281

sw.epilog339:                                     ; preds = %if.end273, %for.end336, %if.end292, %if.end279
  store i32 0, i32* %retval, align 4, !dbg !5282
  br label %return, !dbg !5282

return:                                           ; preds = %sw.epilog339, %if.then332, %if.then304, %if.then291, %if.then285, %if.then278, %if.then272, %if.then267, %if.then255, %if.then242, %if.then231, %if.then227, %if.then223, %sw.default, %if.then211, %if.then196, %if.then192, %if.then170, %if.then162, %if.then154, %if.then142, %if.then123, %if.then119, %if.then94, %if.then83, %if.then67, %if.then56, %if.then49, %if.then38, %if.then29, %if.then21, %if.then13
  %197 = load i32, i32* %retval, align 4, !dbg !5283
  ret i32 %197, !dbg !5283
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @amd8111_func(%struct.i2c_adapter* %adapter) #2 !dbg !5284 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !5285, metadata !DIExpression()), !dbg !5286
  ret i32 268402696, !dbg !5287
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @amd_ec_write(%struct.amd_smbus* %smbus, i8 zeroext %address, i8 zeroext %data) #2 !dbg !5288 {
entry:
  %retval = alloca i32, align 4
  %smbus.addr = alloca %struct.amd_smbus*, align 8
  %address.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  %status = alloca i32, align 4
  store %struct.amd_smbus* %smbus, %struct.amd_smbus** %smbus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.amd_smbus** %smbus.addr, metadata !5291, metadata !DIExpression()), !dbg !5292
  store i8 %address, i8* %address.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %address.addr, metadata !5293, metadata !DIExpression()), !dbg !5294
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !5295, metadata !DIExpression()), !dbg !5296
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5297, metadata !DIExpression()), !dbg !5298
  %0 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus.addr, align 8, !dbg !5299
  %call = call i32 @amd_ec_wait_write(%struct.amd_smbus* %0) #8, !dbg !5300
  store i32 %call, i32* %status, align 4, !dbg !5301
  %1 = load i32, i32* %status, align 4, !dbg !5302
  %tobool = icmp ne i32 %1, 0, !dbg !5302
  br i1 %tobool, label %if.then, label %if.end, !dbg !5304

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !5305
  store i32 %2, i32* %retval, align 4, !dbg !5306
  br label %return, !dbg !5306

if.end:                                           ; preds = %entry
  %3 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus.addr, align 8, !dbg !5307
  %base = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %3, i32 0, i32 2, !dbg !5308
  %4 = load i32, i32* %base, align 8, !dbg !5308
  %add = add i32 %4, 4, !dbg !5309
  call void @outb(i8 zeroext -127, i32 %add) #8, !dbg !5310
  %5 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus.addr, align 8, !dbg !5311
  %call1 = call i32 @amd_ec_wait_write(%struct.amd_smbus* %5) #8, !dbg !5312
  store i32 %call1, i32* %status, align 4, !dbg !5313
  %6 = load i32, i32* %status, align 4, !dbg !5314
  %tobool2 = icmp ne i32 %6, 0, !dbg !5314
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5316

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %status, align 4, !dbg !5317
  store i32 %7, i32* %retval, align 4, !dbg !5318
  br label %return, !dbg !5318

if.end4:                                          ; preds = %if.end
  %8 = load i8, i8* %address.addr, align 1, !dbg !5319
  %9 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus.addr, align 8, !dbg !5320
  %base5 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %9, i32 0, i32 2, !dbg !5321
  %10 = load i32, i32* %base5, align 8, !dbg !5321
  %add6 = add i32 %10, 0, !dbg !5322
  call void @outb(i8 zeroext %8, i32 %add6) #8, !dbg !5323
  %11 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus.addr, align 8, !dbg !5324
  %call7 = call i32 @amd_ec_wait_write(%struct.amd_smbus* %11) #8, !dbg !5325
  store i32 %call7, i32* %status, align 4, !dbg !5326
  %12 = load i32, i32* %status, align 4, !dbg !5327
  %tobool8 = icmp ne i32 %12, 0, !dbg !5327
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5329

if.then9:                                         ; preds = %if.end4
  %13 = load i32, i32* %status, align 4, !dbg !5330
  store i32 %13, i32* %retval, align 4, !dbg !5331
  br label %return, !dbg !5331

if.end10:                                         ; preds = %if.end4
  %14 = load i8, i8* %data.addr, align 1, !dbg !5332
  %15 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus.addr, align 8, !dbg !5333
  %base11 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %15, i32 0, i32 2, !dbg !5334
  %16 = load i32, i32* %base11, align 8, !dbg !5334
  %add12 = add i32 %16, 0, !dbg !5335
  call void @outb(i8 zeroext %14, i32 %add12) #8, !dbg !5336
  store i32 0, i32* %retval, align 4, !dbg !5337
  br label %return, !dbg !5337

return:                                           ; preds = %if.end10, %if.then9, %if.then3, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !5338
  ret i32 %17, !dbg !5338
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @amd_ec_read(%struct.amd_smbus* %smbus, i8 zeroext %address, i8* %data) #2 !dbg !5339 {
entry:
  %retval = alloca i32, align 4
  %smbus.addr = alloca %struct.amd_smbus*, align 8
  %address.addr = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  store %struct.amd_smbus* %smbus, %struct.amd_smbus** %smbus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.amd_smbus** %smbus.addr, metadata !5343, metadata !DIExpression()), !dbg !5344
  store i8 %address, i8* %address.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %address.addr, metadata !5345, metadata !DIExpression()), !dbg !5346
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5347, metadata !DIExpression()), !dbg !5348
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5349, metadata !DIExpression()), !dbg !5350
  %0 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus.addr, align 8, !dbg !5351
  %call = call i32 @amd_ec_wait_write(%struct.amd_smbus* %0) #8, !dbg !5352
  store i32 %call, i32* %status, align 4, !dbg !5353
  %1 = load i32, i32* %status, align 4, !dbg !5354
  %tobool = icmp ne i32 %1, 0, !dbg !5354
  br i1 %tobool, label %if.then, label %if.end, !dbg !5356

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !5357
  store i32 %2, i32* %retval, align 4, !dbg !5358
  br label %return, !dbg !5358

if.end:                                           ; preds = %entry
  %3 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus.addr, align 8, !dbg !5359
  %base = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %3, i32 0, i32 2, !dbg !5360
  %4 = load i32, i32* %base, align 8, !dbg !5360
  %add = add i32 %4, 4, !dbg !5361
  call void @outb(i8 zeroext -128, i32 %add) #8, !dbg !5362
  %5 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus.addr, align 8, !dbg !5363
  %call1 = call i32 @amd_ec_wait_write(%struct.amd_smbus* %5) #8, !dbg !5364
  store i32 %call1, i32* %status, align 4, !dbg !5365
  %6 = load i32, i32* %status, align 4, !dbg !5366
  %tobool2 = icmp ne i32 %6, 0, !dbg !5366
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5368

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %status, align 4, !dbg !5369
  store i32 %7, i32* %retval, align 4, !dbg !5370
  br label %return, !dbg !5370

if.end4:                                          ; preds = %if.end
  %8 = load i8, i8* %address.addr, align 1, !dbg !5371
  %9 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus.addr, align 8, !dbg !5372
  %base5 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %9, i32 0, i32 2, !dbg !5373
  %10 = load i32, i32* %base5, align 8, !dbg !5373
  %add6 = add i32 %10, 0, !dbg !5374
  call void @outb(i8 zeroext %8, i32 %add6) #8, !dbg !5375
  %11 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus.addr, align 8, !dbg !5376
  %call7 = call i32 @amd_ec_wait_read(%struct.amd_smbus* %11) #8, !dbg !5377
  store i32 %call7, i32* %status, align 4, !dbg !5378
  %12 = load i32, i32* %status, align 4, !dbg !5379
  %tobool8 = icmp ne i32 %12, 0, !dbg !5379
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5381

if.then9:                                         ; preds = %if.end4
  %13 = load i32, i32* %status, align 4, !dbg !5382
  store i32 %13, i32* %retval, align 4, !dbg !5383
  br label %return, !dbg !5383

if.end10:                                         ; preds = %if.end4
  %14 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus.addr, align 8, !dbg !5384
  %base11 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %14, i32 0, i32 2, !dbg !5385
  %15 = load i32, i32* %base11, align 8, !dbg !5385
  %add12 = add i32 %15, 0, !dbg !5386
  %call13 = call zeroext i8 @inb(i32 %add12) #8, !dbg !5387
  %16 = load i8*, i8** %data.addr, align 8, !dbg !5388
  store i8 %call13, i8* %16, align 1, !dbg !5389
  store i32 0, i32* %retval, align 4, !dbg !5390
  br label %return, !dbg !5390

return:                                           ; preds = %if.end10, %if.then9, %if.then3, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !5391
  ret i32 %17, !dbg !5391
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #1

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @amd_ec_wait_write(%struct.amd_smbus* %smbus) #2 !dbg !5392 {
entry:
  %retval = alloca i32, align 4
  %smbus.addr = alloca %struct.amd_smbus*, align 8
  %timeout = alloca i32, align 4
  store %struct.amd_smbus* %smbus, %struct.amd_smbus** %smbus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.amd_smbus** %smbus.addr, metadata !5395, metadata !DIExpression()), !dbg !5396
  call void @llvm.dbg.declare(metadata i32* %timeout, metadata !5397, metadata !DIExpression()), !dbg !5398
  store i32 500, i32* %timeout, align 4, !dbg !5398
  br label %while.cond, !dbg !5399

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus.addr, align 8, !dbg !5400
  %base = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %0, i32 0, i32 2, !dbg !5401
  %1 = load i32, i32* %base, align 8, !dbg !5401
  %add = add i32 %1, 4, !dbg !5402
  %call = call zeroext i8 @inb(i32 %add) #8, !dbg !5403
  %conv = zext i8 %call to i32, !dbg !5403
  %and = and i32 %conv, 2, !dbg !5404
  %tobool = icmp ne i32 %and, 0, !dbg !5404
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5405

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %timeout, align 4, !dbg !5406
  %dec = add i32 %2, -1, !dbg !5406
  store i32 %dec, i32* %timeout, align 4, !dbg !5406
  %tobool1 = icmp ne i32 %dec, 0, !dbg !5405
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ], !dbg !5407
  br i1 %3, label %while.body, label %while.end, !dbg !5399

while.body:                                       ; preds = %land.end
  call void @__const_udelay(i64 4295) #8, !dbg !5408
  br label %while.cond, !dbg !5399, !llvm.loop !5413

while.end:                                        ; preds = %land.end
  %4 = load i32, i32* %timeout, align 4, !dbg !5415
  %tobool2 = icmp ne i32 %4, 0, !dbg !5415
  br i1 %tobool2, label %if.end, label %if.then, !dbg !5417

if.then:                                          ; preds = %while.end
  %5 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus.addr, align 8, !dbg !5418
  %dev = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %5, i32 0, i32 0, !dbg !5418
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5418
  %dev3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 41, !dbg !5418
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0)) #13, !dbg !5418
  store i32 -110, i32* %retval, align 4, !dbg !5420
  br label %return, !dbg !5420

if.end:                                           ; preds = %while.end
  store i32 0, i32* %retval, align 4, !dbg !5421
  br label %return, !dbg !5421

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5422
  ret i32 %7, !dbg !5422
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb(i8 zeroext %value, i32 %port) #2 !dbg !5423 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !5427, metadata !DIExpression()), !dbg !5428
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5429, metadata !DIExpression()), !dbg !5428
  %0 = load i8, i8* %value.addr, align 1, !dbg !5428
  %1 = load i32, i32* %port.addr, align 4, !dbg !5428
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i32 %1) #9, !dbg !5428, !srcloc !5430
  ret void, !dbg !5428
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb(i32 %port) #2 !dbg !5431 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5434, metadata !DIExpression()), !dbg !5435
  call void @llvm.dbg.declare(metadata i8* %value, metadata !5436, metadata !DIExpression()), !dbg !5435
  %0 = load i32, i32* %port.addr, align 4, !dbg !5435
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #9, !dbg !5435, !srcloc !5437
  store i8 %1, i8* %value, align 1, !dbg !5435
  %2 = load i8, i8* %value, align 1, !dbg !5435
  ret i8 %2, !dbg !5435
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @amd_ec_wait_read(%struct.amd_smbus* %smbus) #2 !dbg !5438 {
entry:
  %retval = alloca i32, align 4
  %smbus.addr = alloca %struct.amd_smbus*, align 8
  %timeout = alloca i32, align 4
  store %struct.amd_smbus* %smbus, %struct.amd_smbus** %smbus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.amd_smbus** %smbus.addr, metadata !5439, metadata !DIExpression()), !dbg !5440
  call void @llvm.dbg.declare(metadata i32* %timeout, metadata !5441, metadata !DIExpression()), !dbg !5442
  store i32 500, i32* %timeout, align 4, !dbg !5442
  br label %while.cond, !dbg !5443

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus.addr, align 8, !dbg !5444
  %base = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %0, i32 0, i32 2, !dbg !5445
  %1 = load i32, i32* %base, align 8, !dbg !5445
  %add = add i32 %1, 4, !dbg !5446
  %call = call zeroext i8 @inb(i32 %add) #8, !dbg !5447
  %conv = zext i8 %call to i32, !dbg !5447
  %neg = xor i32 %conv, -1, !dbg !5448
  %and = and i32 %neg, 1, !dbg !5449
  %tobool = icmp ne i32 %and, 0, !dbg !5449
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5450

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %timeout, align 4, !dbg !5451
  %dec = add i32 %2, -1, !dbg !5451
  store i32 %dec, i32* %timeout, align 4, !dbg !5451
  %tobool1 = icmp ne i32 %dec, 0, !dbg !5450
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ], !dbg !5452
  br i1 %3, label %while.body, label %while.end, !dbg !5443

while.body:                                       ; preds = %land.end
  call void @__const_udelay(i64 4295) #8, !dbg !5453
  br label %while.cond, !dbg !5443, !llvm.loop !5458

while.end:                                        ; preds = %land.end
  %4 = load i32, i32* %timeout, align 4, !dbg !5460
  %tobool2 = icmp ne i32 %4, 0, !dbg !5460
  br i1 %tobool2, label %if.end, label %if.then, !dbg !5462

if.then:                                          ; preds = %while.end
  %5 = load %struct.amd_smbus*, %struct.amd_smbus** %smbus.addr, align 8, !dbg !5463
  %dev = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %5, i32 0, i32 0, !dbg !5463
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5463
  %dev3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 41, !dbg !5463
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0)) #13, !dbg !5463
  store i32 -110, i32* %retval, align 4, !dbg !5465
  br label %return, !dbg !5465

if.end:                                           ; preds = %while.end
  store i32 0, i32* %retval, align 4, !dbg !5466
  br label %return, !dbg !5466

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5467
  ret i32 %7, !dbg !5467
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !5468 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5471, metadata !DIExpression()), !dbg !5472
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5473, metadata !DIExpression()), !dbg !5474
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5475
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5476
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5477
  store i8* %0, i8** %driver_data, align 8, !dbg !5478
  ret void, !dbg !5479
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_get_drvdata(%struct.pci_dev* %pdev) #2 !dbg !5480 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5483, metadata !DIExpression()), !dbg !5484
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5485
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !5486
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #8, !dbg !5487
  ret i8* %call, !dbg !5488
}

; Function Attrs: noredzone
declare dso_local void @i2c_del_adapter(%struct.i2c_adapter*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5489 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5492, metadata !DIExpression()), !dbg !5493
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5494
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5495
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5495
  ret i8* %1, !dbg !5496
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }
attributes #13 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4261, !4262, !4263, !4264}
!llvm.ident = !{!4265}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file240", scope: !2, file: !3, line: 19, type: !4260, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !114, globals: !126, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/i2c/busses/i2c-amd8111.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107}
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !108, line: 305, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112, !113}
!110 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!114 = !{!115, !118, !120, !121}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !117, line: 76, flags: DIFlagFwdDecl)
!117 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !119, line: 148, baseType: !7)
!119 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !122, line: 17, baseType: !123)
!122 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !124, line: 21, baseType: !125)
!124 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!125 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!126 = !{!0, !127, !134, !139, !144, !146, !153, !4136, !4139}
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license241", scope: !2, file: !3, line: 19, type: !129, isLocal: true, isDefinition: true, align: 8)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 192, elements: !132)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!132 = !{!133}
!133 = !DISubrange(count: 24)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author242", scope: !2, file: !3, line: 20, type: !136, isLocal: true, isDefinition: true, align: 8)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 416, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 52)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description243", scope: !2, file: !3, line: 21, type: !141, isLocal: true, isDefinition: true, align: 8)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 392, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 49)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_amd8111_driver_init252", scope: !2, file: !3, line: 490, type: !120, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "__exitcall_amd8111_driver_exit", scope: !2, file: !3, line: 490, type: !148, isLocal: true, isDefinition: true)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !149, line: 117, baseType: !150)
!149 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{null}
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "amd8111_driver", scope: !2, file: !3, line: 483, type: !155, isLocal: true, isDefinition: true)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !156, line: 858, size: 2048, elements: !157)
!156 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!157 = !{!158, !164, !166, !182, !4094, !4098, !4102, !4106, !4107, !4111, !4129, !4130, !4131}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !155, file: !156, line: 859, baseType: !159, size: 128)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !119, line: 178, size: 128, elements: !160)
!160 = !{!161, !163}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !159, file: !119, line: 179, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !159, file: !119, line: 179, baseType: !162, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !155, file: !156, line: 860, baseType: !165, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !155, file: !156, line: 861, baseType: !167, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !170, line: 38, size: 256, elements: !171)
!170 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!171 = !{!172, !174, !175, !176, !177, !178, !179}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !169, file: !170, line: 39, baseType: !173, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !124, line: 27, baseType: !7)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !169, file: !170, line: 39, baseType: !173, size: 32, offset: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !169, file: !170, line: 40, baseType: !173, size: 32, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !169, file: !170, line: 40, baseType: !173, size: 32, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !169, file: !170, line: 41, baseType: !173, size: 32, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !169, file: !170, line: 41, baseType: !173, size: 32, offset: 160)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !169, file: !170, line: 42, baseType: !180, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !170, line: 14, baseType: !181)
!181 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !155, file: !156, line: 862, baseType: !183, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!186, !187, !167}
!186 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !156, line: 309, size: 19264, elements: !189)
!189 = !{!190, !191, !3959, !3960, !3961, !3962, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3991, !3992, !3993, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4017, !4018, !4019, !4020, !4022, !4023, !4024, !4025, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4068, !4069, !4070, !4071, !4072, !4073, !4075, !4076, !4077, !4080, !4087, !4088, !4089, !4090, !4091, !4092, !4093}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !188, file: !156, line: 310, baseType: !159, size: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !188, file: !156, line: 311, baseType: !192, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !156, line: 605, size: 8064, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200, !201, !222, !223, !224, !250, !253, !254, !258, !259, !260, !261, !262, !266, !268, !270, !3955, !3956, !3957, !3958}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !193, file: !156, line: 606, baseType: !159, size: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !193, file: !156, line: 607, baseType: !192, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !193, file: !156, line: 608, baseType: !159, size: 128, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !193, file: !156, line: 609, baseType: !159, size: 128, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !193, file: !156, line: 610, baseType: !187, size: 64, offset: 448)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !193, file: !156, line: 611, baseType: !159, size: 128, offset: 512)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !193, file: !156, line: 613, baseType: !202, size: 256, offset: 640)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 256, elements: !220)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !205, line: 20, size: 512, elements: !206)
!205 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!206 = !{!207, !213, !214, !215, !216, !217, !218, !219}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !204, file: !205, line: 21, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !119, line: 158, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !119, line: 153, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !122, line: 23, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !124, line: 31, baseType: !212)
!212 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !204, file: !205, line: 22, baseType: !208, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !204, file: !205, line: 23, baseType: !165, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !204, file: !205, line: 24, baseType: !181, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !204, file: !205, line: 25, baseType: !181, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !204, file: !205, line: 26, baseType: !203, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !204, file: !205, line: 26, baseType: !203, size: 64, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !204, file: !205, line: 26, baseType: !203, size: 64, offset: 448)
!220 = !{!221}
!221 = !DISubrange(count: 4)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !193, file: !156, line: 614, baseType: !159, size: 128, offset: 896)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !193, file: !156, line: 615, baseType: !204, size: 512, offset: 1024)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !193, file: !156, line: 617, baseType: !225, size: 64, offset: 1536)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !156, line: 731, size: 320, elements: !227)
!227 = !{!228, !232, !236, !240, !246}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !226, file: !156, line: 732, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!186, !192}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !226, file: !156, line: 733, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !192}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !226, file: !156, line: 734, baseType: !237, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!120, !192, !7, !186}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !226, file: !156, line: 735, baseType: !241, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!186, !192, !7, !186, !186, !244}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !122, line: 21, baseType: !173)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !226, file: !156, line: 736, baseType: !247, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!186, !192, !7, !186, !186, !245}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !193, file: !156, line: 618, baseType: !251, size: 64, offset: 1600)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !156, line: 537, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !193, file: !156, line: 619, baseType: !120, size: 64, offset: 1664)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !193, file: !156, line: 620, baseType: !255, size: 64, offset: 1728)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !257, line: 123, flags: DIFlagFwdDecl)
!257 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!258 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !193, file: !156, line: 622, baseType: !125, size: 8, offset: 1792)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !193, file: !156, line: 623, baseType: !125, size: 8, offset: 1800)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !193, file: !156, line: 624, baseType: !125, size: 8, offset: 1808)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !193, file: !156, line: 625, baseType: !125, size: 8, offset: 1816)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !156, line: 630, baseType: !263, size: 384, offset: 1824)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 384, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 48)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !193, file: !156, line: 632, baseType: !267, size: 16, offset: 2208)
!267 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !193, file: !156, line: 633, baseType: !269, size: 16, offset: 2224)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !156, line: 237, baseType: !267)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !193, file: !156, line: 634, baseType: !271, size: 64, offset: 2240)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !273)
!273 = !{!274, !3411, !3412, !3415, !3416, !3467, !3556, !3557, !3558, !3559, !3560, !3569, !3674, !3687, !3882, !3883, !3887, !3889, !3890, !3891, !3895, !3901, !3902, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3943, !3944, !3945, !3948, !3951, !3952, !3953, !3954}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !272, file: !73, line: 462, baseType: !275, size: 512)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !276, line: 64, size: 512, elements: !277)
!276 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!277 = !{!278, !279, !280, !282, !342, !3262, !3401, !3406, !3407, !3408, !3409, !3410}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !275, file: !276, line: 65, baseType: !165, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !275, file: !276, line: 66, baseType: !159, size: 128, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !275, file: !276, line: 67, baseType: !281, size: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !275, file: !276, line: 68, baseType: !283, size: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !276, line: 192, size: 704, elements: !285)
!285 = !{!286, !287, !303, !304}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !284, file: !276, line: 193, baseType: !159, size: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !284, file: !276, line: 194, baseType: !288, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !289, line: 83, baseType: !290)
!289 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !289, line: 71, elements: !291)
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_member, scope: !290, file: !289, line: 72, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !290, file: !289, line: 72, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !293, file: !289, line: 73, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !289, line: 20, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !296, file: !289, line: 21, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !300, line: 25, baseType: !301)
!300 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !300, line: 25, elements: !302)
!302 = !{}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !284, file: !276, line: 195, baseType: !275, size: 512, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !284, file: !276, line: 196, baseType: !305, size: 64, offset: 640)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !276, line: 156, size: 192, elements: !308)
!308 = !{!309, !314, !319}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !307, file: !276, line: 157, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!186, !283, !281}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !307, file: !276, line: 158, baseType: !315, size: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!165, !283, !281}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !307, file: !276, line: 159, baseType: !320, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!186, !283, !281, !324}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !276, line: 148, size: 20736, elements: !326)
!326 = !{!327, !332, !336, !337, !341}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !325, file: !276, line: 149, baseType: !328, size: 192)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 192, elements: !330)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!330 = !{!331}
!331 = !DISubrange(count: 3)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !325, file: !276, line: 150, baseType: !333, size: 4096, offset: 192)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 4096, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !325, file: !276, line: 151, baseType: !186, size: 32, offset: 4288)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !325, file: !276, line: 152, baseType: !338, size: 16384, offset: 4320)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 16384, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 2048)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !325, file: !276, line: 153, baseType: !186, size: 32, offset: 20704)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !275, file: !276, line: 69, baseType: !343, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !276, line: 138, size: 448, elements: !345)
!345 = !{!346, !350, !378, !380, !3224, !3252, !3256}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !344, file: !276, line: 139, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !281}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !344, file: !276, line: 140, baseType: !351, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !354, line: 230, size: 128, elements: !355)
!354 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!355 = !{!356, !371}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !353, file: !354, line: 231, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!360, !281, !365, !329}
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !119, line: 60, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !362, line: 73, baseType: !363)
!362 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !362, line: 15, baseType: !364)
!364 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !354, line: 30, size: 128, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !366, file: !354, line: 31, baseType: !165, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !366, file: !354, line: 32, baseType: !370, size: 16, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !119, line: 19, baseType: !267)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !353, file: !354, line: 232, baseType: !372, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!360, !281, !365, !165, !375}
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !119, line: 55, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !362, line: 72, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !362, line: 16, baseType: !181)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !344, file: !276, line: 141, baseType: !379, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !344, file: !276, line: 142, baseType: !381, size: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !354, line: 84, size: 320, elements: !385)
!385 = !{!386, !387, !391, !3221, !3222}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !384, file: !354, line: 85, baseType: !165, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !384, file: !354, line: 86, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!370, !281, !365, !186}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !384, file: !354, line: 88, baseType: !392, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!370, !281, !395, !186}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !354, line: 168, size: 448, elements: !397)
!397 = !{!398, !399, !400, !401, !3216, !3217}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !396, file: !354, line: 169, baseType: !366, size: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !396, file: !354, line: 170, baseType: !375, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !396, file: !354, line: 171, baseType: !120, size: 64, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !396, file: !354, line: 172, baseType: !402, size: 64, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!360, !405, !281, !395, !329, !576, !375}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !407)
!407 = !{!408, !426, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3199, !3200, !3209, !3210, !3211, !3212, !3213, !3214, !3215}
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
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !119, line: 216, size: 128, align: 64, elements: !419)
!419 = !{!420, !422}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !418, file: !119, line: 217, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !418, file: !119, line: 218, baseType: !423, size: 64, offset: 64)
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
!437 = !{!438, !439, !449, !457, !458, !473, !3149, !3151, !3163, !3164, !3165, !3166, !3167, !3173, !3174, !3175}
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
!469 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !462, file: !433, line: 52, baseType: !210, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !459, file: !433, line: 54, baseType: !471, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !436, file: !433, line: 96, baseType: !474, size: 64, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !476)
!476 = !{!477, !478, !479, !487, !494, !495, !643, !2860, !2861, !2862, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !3125, !3133, !3134, !3135, !3145, !3146, !3147, !3148}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !475, file: !44, line: 611, baseType: !370, size: 16)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !475, file: !44, line: 612, baseType: !267, size: 16, offset: 16)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !475, file: !44, line: 613, baseType: !480, size: 32, offset: 32)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !481, line: 23, baseType: !482)
!481 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !481, line: 21, size: 32, elements: !483)
!483 = !{!484}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !482, file: !481, line: 22, baseType: !485, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !119, line: 32, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !362, line: 49, baseType: !7)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !475, file: !44, line: 614, baseType: !488, size: 32, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !481, line: 28, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !481, line: 26, size: 32, elements: !490)
!490 = !{!491}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !489, file: !481, line: 27, baseType: !492, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !119, line: 33, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !362, line: 50, baseType: !7)
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
!507 = !{!165, !435, !474, !508}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !510, line: 10, size: 128, elements: !511)
!510 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!511 = !{!512, !516}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !509, file: !510, line: 11, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !120}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !509, file: !510, line: 12, baseType: !120, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !498, file: !44, line: 1867, baseType: !518, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!186, !474, !186}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !498, file: !44, line: 1868, baseType: !522, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!525, !474, !186}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !498, file: !44, line: 1870, baseType: !528, size: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!186, !435, !329, !186}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !498, file: !44, line: 1872, baseType: !532, size: 64, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!186, !474, !435, !370, !535}
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !119, line: 30, baseType: !536)
!536 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !498, file: !44, line: 1873, baseType: !538, size: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!186, !435, !474, !435}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !498, file: !44, line: 1874, baseType: !542, size: 64, offset: 448)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!186, !474, !435}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !498, file: !44, line: 1875, baseType: !546, size: 64, offset: 512)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!186, !474, !435, !165}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !498, file: !44, line: 1876, baseType: !550, size: 64, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!186, !474, !435, !370}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !498, file: !44, line: 1877, baseType: !542, size: 64, offset: 640)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !498, file: !44, line: 1878, baseType: !555, size: 64, offset: 704)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!186, !474, !435, !370, !558}
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !119, line: 16, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !119, line: 13, baseType: !245)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !498, file: !44, line: 1879, baseType: !561, size: 64, offset: 768)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!186, !474, !435, !474, !435, !7}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !498, file: !44, line: 1881, baseType: !565, size: 64, offset: 832)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!186, !435, !568}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !579, !587, !588, !589}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !569, file: !44, line: 220, baseType: !7, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !569, file: !44, line: 221, baseType: !370, size: 16, offset: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !569, file: !44, line: 222, baseType: !480, size: 32, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !569, file: !44, line: 223, baseType: !488, size: 32, offset: 96)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !569, file: !44, line: 224, baseType: !576, size: 64, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !119, line: 46, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !362, line: 88, baseType: !578)
!578 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !569, file: !44, line: 225, baseType: !580, size: 128, offset: 192)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !581, line: 13, size: 128, elements: !582)
!581 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!582 = !{!583, !586}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !580, file: !581, line: 14, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !581, line: 8, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !124, line: 30, baseType: !578)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !580, file: !581, line: 15, baseType: !364, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !569, file: !44, line: 226, baseType: !580, size: 128, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !569, file: !44, line: 227, baseType: !580, size: 128, offset: 448)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !569, file: !44, line: 234, baseType: !405, size: 64, offset: 576)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !498, file: !44, line: 1882, baseType: !591, size: 64, offset: 896)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!186, !594, !596, !245, !7}
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
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !119, line: 104, baseType: !245)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !597, file: !598, line: 27, baseType: !210, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !597, file: !598, line: 28, baseType: !210, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !597, file: !598, line: 37, baseType: !210, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !597, file: !598, line: 38, baseType: !558, size: 32, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !597, file: !598, line: 39, baseType: !558, size: 32, offset: 352)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !597, file: !598, line: 40, baseType: !480, size: 32, offset: 384)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !597, file: !598, line: 41, baseType: !488, size: 32, offset: 416)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !597, file: !598, line: 42, baseType: !576, size: 64, offset: 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !597, file: !598, line: 43, baseType: !580, size: 128, offset: 512)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !597, file: !598, line: 44, baseType: !580, size: 128, offset: 640)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !597, file: !598, line: 45, baseType: !580, size: 128, offset: 768)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !597, file: !598, line: 46, baseType: !580, size: 128, offset: 896)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !597, file: !598, line: 47, baseType: !210, size: 64, offset: 1024)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !597, file: !598, line: 48, baseType: !210, size: 64, offset: 1088)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !498, file: !44, line: 1883, baseType: !620, size: 64, offset: 960)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!360, !435, !329, !375}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !498, file: !44, line: 1884, baseType: !624, size: 64, offset: 1024)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!186, !474, !627, !210, !210}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !498, file: !44, line: 1886, baseType: !630, size: 64, offset: 1088)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!186, !474, !633, !186}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !498, file: !44, line: 1887, baseType: !635, size: 64, offset: 1152)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!186, !474, !435, !405, !7, !370}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !498, file: !44, line: 1890, baseType: !550, size: 64, offset: 1216)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !498, file: !44, line: 1891, baseType: !640, size: 64, offset: 1280)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!186, !474, !525, !186}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !475, file: !44, line: 623, baseType: !644, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !646)
!646 = !{!647, !648, !649, !650, !651, !652, !699, !2467, !2549, !2632, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2648, !2652, !2653, !2656, !2657, !2660, !2661, !2662, !2703, !2730, !2731, !2732, !2733, !2734, !2735, !2738, !2740, !2747, !2748, !2750, !2751, !2752, !2811, !2812, !2827, !2828, !2829, !2830, !2831, !2834, !2835, !2836, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !645, file: !44, line: 1417, baseType: !159, size: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !645, file: !44, line: 1418, baseType: !558, size: 32, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !645, file: !44, line: 1419, baseType: !125, size: 8, offset: 160)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !645, file: !44, line: 1420, baseType: !181, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !645, file: !44, line: 1421, baseType: !576, size: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !645, file: !44, line: 1422, baseType: !653, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !655)
!655 = !{!656, !657, !658, !665, !669, !673, !677, !678, !679, !689, !692, !693, !694, !696, !697, !698}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !654, file: !44, line: 2229, baseType: !165, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !654, file: !44, line: 2230, baseType: !186, size: 32, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !654, file: !44, line: 2238, baseType: !659, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!186, !662}
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
!672 = !{!435, !653, !186, !165, !120}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !654, file: !44, line: 2242, baseType: !674, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !644}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !654, file: !44, line: 2243, baseType: !115, size: 64, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !654, file: !44, line: 2244, baseType: !653, size: 64, offset: 448)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !654, file: !44, line: 2245, baseType: !680, size: 64, offset: 512)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !119, line: 182, size: 64, elements: !681)
!681 = !{!682}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !680, file: !119, line: 183, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !119, line: 186, size: 128, elements: !685)
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !684, file: !119, line: 187, baseType: !683, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !684, file: !119, line: 187, baseType: !688, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !654, file: !44, line: 2247, baseType: !690, offset: 576)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !691, line: 187, elements: !302)
!691 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!692 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !654, file: !44, line: 2248, baseType: !690, offset: 576)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !654, file: !44, line: 2249, baseType: !690, offset: 576)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !654, file: !44, line: 2250, baseType: !695, offset: 576)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, elements: !330)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !654, file: !44, line: 2252, baseType: !690, offset: 576)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !654, file: !44, line: 2253, baseType: !690, offset: 576)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !654, file: !44, line: 2254, baseType: !690, offset: 576)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !645, file: !44, line: 1423, baseType: !700, size: 64, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !703)
!703 = !{!704, !708, !712, !713, !717, !723, !727, !728, !729, !733, !737, !738, !739, !740, !746, !751, !752, !759, !760, !761, !762, !2451, !2466}
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
!716 = !{null, !474, !186}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !702, file: !44, line: 1941, baseType: !718, size: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!186, !474, !721}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !702, file: !44, line: 1942, baseType: !724, size: 64, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!186, !474}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !702, file: !44, line: 1943, baseType: !709, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !702, file: !44, line: 1944, baseType: !674, size: 64, offset: 448)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !702, file: !44, line: 1945, baseType: !730, size: 64, offset: 512)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!186, !644, !186}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !702, file: !44, line: 1946, baseType: !734, size: 64, offset: 576)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!186, !644}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !702, file: !44, line: 1947, baseType: !734, size: 64, offset: 640)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !702, file: !44, line: 1948, baseType: !734, size: 64, offset: 704)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !702, file: !44, line: 1949, baseType: !734, size: 64, offset: 768)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !702, file: !44, line: 1950, baseType: !741, size: 64, offset: 832)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!186, !435, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !702, file: !44, line: 1951, baseType: !747, size: 64, offset: 896)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!186, !644, !750, !329}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !702, file: !44, line: 1952, baseType: !674, size: 64, offset: 960)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !702, file: !44, line: 1954, baseType: !753, size: 64, offset: 1024)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!186, !756, !435}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !758, line: 539, flags: DIFlagFwdDecl)
!758 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!759 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !702, file: !44, line: 1955, baseType: !753, size: 64, offset: 1088)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !702, file: !44, line: 1956, baseType: !753, size: 64, offset: 1152)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !702, file: !44, line: 1957, baseType: !753, size: 64, offset: 1216)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !702, file: !44, line: 1963, baseType: !763, size: 64, offset: 1280)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!186, !644, !766, !118}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !768, line: 68, size: 512, align: 128, elements: !769)
!768 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!769 = !{!770, !771, !2443, !2450}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !768, line: 69, baseType: !181, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !768, line: 77, baseType: !772, size: 320, offset: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !768, line: 77, size: 320, elements: !773)
!773 = !{!774, !961, !966, !994, !1002, !1008, !2374, !2442}
!774 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !768, line: 78, baseType: !775, size: 320)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !772, file: !768, line: 78, size: 320, elements: !776)
!776 = !{!777, !778, !959, !960}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !775, file: !768, line: 84, baseType: !159, size: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !775, file: !768, line: 86, baseType: !779, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !781)
!781 = !{!782, !783, !790, !791, !796, !811, !827, !828, !829, !830, !952, !953, !956, !957, !958}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !780, file: !44, line: 452, baseType: !474, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !780, file: !44, line: 453, baseType: !784, size: 128, offset: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !785, line: 292, size: 128, elements: !786)
!785 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!786 = !{!787, !788, !789}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !784, file: !785, line: 293, baseType: !288)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !784, file: !785, line: 295, baseType: !118, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !784, file: !785, line: 296, baseType: !120, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !780, file: !44, line: 454, baseType: !118, size: 32, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !780, file: !44, line: 455, baseType: !792, size: 32, offset: 224)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !119, line: 168, baseType: !793)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 166, size: 32, elements: !794)
!794 = !{!795}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !793, file: !119, line: 167, baseType: !186, size: 32)
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
!807 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !805, file: !798, line: 25, baseType: !181, size: 64)
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
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !119, line: 175, baseType: !819)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 173, size: 64, elements: !820)
!820 = !{!821}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !819, file: !119, line: 174, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !122, line: 22, baseType: !585)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !812, file: !813, line: 42, baseType: !816, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !812, file: !813, line: 46, baseType: !825, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !289, line: 29, baseType: !296)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !812, file: !813, line: 47, baseType: !159, size: 128, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !780, file: !44, line: 462, baseType: !181, size: 64, offset: 640)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !780, file: !44, line: 463, baseType: !181, size: 64, offset: 704)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !780, file: !44, line: 464, baseType: !181, size: 64, offset: 768)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !780, file: !44, line: 465, baseType: !831, size: 64, offset: 832)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !833)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !834)
!834 = !{!835, !839, !843, !847, !851, !855, !861, !867, !871, !876, !880, !884, !888, !916, !920, !926, !927, !928, !932, !937, !941, !948}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !833, file: !44, line: 368, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!186, !766, !721}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !833, file: !44, line: 369, baseType: !840, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!186, !405, !766}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !833, file: !44, line: 372, baseType: !844, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!186, !779, !721}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !833, file: !44, line: 375, baseType: !848, size: 64, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!186, !766}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !833, file: !44, line: 381, baseType: !852, size: 64, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!186, !405, !779, !162, !7}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !833, file: !44, line: 383, baseType: !856, size: 64, offset: 320)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !859}
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !833, file: !44, line: 385, baseType: !862, size: 64, offset: 384)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!186, !405, !779, !576, !7, !7, !865, !866}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !833, file: !44, line: 388, baseType: !868, size: 64, offset: 448)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!186, !405, !779, !576, !7, !7, !766, !120}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !833, file: !44, line: 393, baseType: !872, size: 64, offset: 512)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!875, !779, !875}
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !119, line: 125, baseType: !210)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !833, file: !44, line: 394, baseType: !877, size: 64, offset: 576)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !766, !7, !7}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !833, file: !44, line: 395, baseType: !881, size: 64, offset: 640)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!186, !766, !118}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !833, file: !44, line: 396, baseType: !885, size: 64, offset: 704)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !766}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !833, file: !44, line: 397, baseType: !889, size: 64, offset: 768)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!360, !892, !914}
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !894)
!894 = !{!895, !896, !897, !901, !902, !903, !906, !907}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !893, file: !44, line: 321, baseType: !405, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !893, file: !44, line: 326, baseType: !576, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !893, file: !44, line: 327, baseType: !898, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{null, !892, !364, !364}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !893, file: !44, line: 328, baseType: !120, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !893, file: !44, line: 329, baseType: !186, size: 32, offset: 256)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !893, file: !44, line: 330, baseType: !904, size: 16, offset: 288)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !122, line: 19, baseType: !905)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !124, line: 24, baseType: !267)
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
!919 = !{!186, !779, !766, !766, !5}
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
!931 = !{!186, !766, !181, !181}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !833, file: !44, line: 409, baseType: !933, size: 64, offset: 1152)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{null, !766, !936, !936}
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !833, file: !44, line: 410, baseType: !938, size: 64, offset: 1216)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!186, !779, !766}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !833, file: !44, line: 413, baseType: !942, size: 64, offset: 1280)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!186, !945, !405, !947}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !833, file: !44, line: 415, baseType: !949, size: 64, offset: 1344)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{null, !405}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !780, file: !44, line: 466, baseType: !181, size: 64, offset: 896)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !780, file: !44, line: 467, baseType: !954, size: 32, offset: 960)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !955, line: 8, baseType: !245)
!955 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!956 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !780, file: !44, line: 468, baseType: !288, offset: 992)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !780, file: !44, line: 469, baseType: !159, size: 128, offset: 1024)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !780, file: !44, line: 470, baseType: !120, size: 64, offset: 1152)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !775, file: !768, line: 87, baseType: !181, size: 64, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !775, file: !768, line: 94, baseType: !181, size: 64, offset: 256)
!961 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !768, line: 96, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !772, file: !768, line: 96, size: 64, elements: !963)
!963 = !{!964}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !962, file: !768, line: 101, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !119, line: 143, baseType: !210)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !768, line: 103, baseType: !967, size: 320)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !772, file: !768, line: 103, size: 320, elements: !968)
!968 = !{!969, !979, !982, !983}
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !768, line: 104, baseType: !970, size: 128)
!970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !768, line: 104, size: 128, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !970, file: !768, line: 105, baseType: !159, size: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !768, line: 106, baseType: !974, size: 128)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !970, file: !768, line: 106, size: 128, elements: !975)
!975 = !{!976, !977, !978}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !974, file: !768, line: 107, baseType: !766, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !974, file: !768, line: 109, baseType: !186, size: 32, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !974, file: !768, line: 110, baseType: !186, size: 32, offset: 96)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !967, file: !768, line: 117, baseType: !980, size: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !768, line: 117, flags: DIFlagFwdDecl)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !967, file: !768, line: 119, baseType: !120, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !768, line: 120, baseType: !984, size: 64, offset: 256)
!984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !768, line: 120, size: 64, elements: !985)
!985 = !{!986, !987, !988}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !984, file: !768, line: 121, baseType: !120, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !984, file: !768, line: 122, baseType: !181, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, scope: !984, file: !768, line: 123, baseType: !989, size: 32)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !984, file: !768, line: 123, size: 32, elements: !990)
!990 = !{!991, !992, !993}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !989, file: !768, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !989, file: !768, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !989, file: !768, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !768, line: 130, baseType: !995, size: 192)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !772, file: !768, line: 130, size: 192, elements: !996)
!996 = !{!997, !998, !999, !1000, !1001}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !995, file: !768, line: 131, baseType: !181, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !995, file: !768, line: 134, baseType: !125, size: 8, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !995, file: !768, line: 135, baseType: !125, size: 8, offset: 72)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !995, file: !768, line: 136, baseType: !792, size: 32, offset: 96)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !995, file: !768, line: 137, baseType: !7, size: 32, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !768, line: 139, baseType: !1003, size: 256)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !772, file: !768, line: 139, size: 256, elements: !1004)
!1004 = !{!1005, !1006, !1007}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1003, file: !768, line: 140, baseType: !181, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1003, file: !768, line: 141, baseType: !792, size: 32, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1003, file: !768, line: 143, baseType: !159, size: 128, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !768, line: 145, baseType: !1009, size: 256)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !772, file: !768, line: 145, size: 256, elements: !1010)
!1010 = !{!1011, !1012, !1014, !1015, !2373}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1009, file: !768, line: 146, baseType: !181, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1009, file: !768, line: 147, baseType: !1013, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !758, line: 509, baseType: !766)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1009, file: !768, line: 148, baseType: !181, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !768, line: 149, baseType: !1016, size: 64, offset: 192)
!1016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1009, file: !768, line: 149, size: 64, elements: !1017)
!1017 = !{!1018, !2372}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1016, file: !768, line: 150, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !768, line: 388, size: 7296, elements: !1021)
!1021 = !{!1022, !2368}
!1022 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !768, line: 389, baseType: !1023, size: 7296)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !768, line: 389, size: 7296, elements: !1024)
!1024 = !{!1025, !1143, !1144, !1145, !1149, !1150, !1151, !1152, !1153, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1194, !1200, !1203, !1249, !1250, !2352, !2353, !2356, !2357, !2358, !2361, !2362, !2363, !2366, !2367}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1023, file: !768, line: 390, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !768, line: 305, size: 1472, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1043, !1044, !1049, !1050, !1053, !1137, !1138, !1139, !1140, !1141}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1027, file: !768, line: 308, baseType: !181, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1027, file: !768, line: 309, baseType: !181, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1027, file: !768, line: 313, baseType: !1026, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1027, file: !768, line: 313, baseType: !1026, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1027, file: !768, line: 315, baseType: !805, size: 192, align: 64, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1027, file: !768, line: 323, baseType: !181, size: 64, offset: 448)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1027, file: !768, line: 327, baseType: !1019, size: 64, offset: 512)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1027, file: !768, line: 333, baseType: !1037, size: 64, offset: 576)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !758, line: 284, baseType: !1038)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !758, line: 284, size: 64, elements: !1039)
!1039 = !{!1040}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1038, file: !758, line: 284, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1042, line: 19, baseType: !181)
!1042 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1027, file: !768, line: 334, baseType: !181, size: 64, offset: 640)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1027, file: !768, line: 343, baseType: !1045, size: 256, offset: 704)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1027, file: !768, line: 340, size: 256, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1045, file: !768, line: 341, baseType: !805, size: 192, align: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1045, file: !768, line: 342, baseType: !181, size: 64, offset: 192)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1027, file: !768, line: 351, baseType: !159, size: 128, offset: 960)
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
!1066 = !{!186, !1026, !181}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1056, file: !14, line: 561, baseType: !1068, size: 64, offset: 192)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!186, !1026}
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
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1077, file: !14, line: 511, baseType: !118, size: 32, offset: 96)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1077, file: !14, line: 512, baseType: !181, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1077, file: !14, line: 513, baseType: !181, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1077, file: !14, line: 514, baseType: !1085, size: 64, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !758, line: 385, baseType: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !758, line: 385, size: 64, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1087, file: !758, line: 385, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1042, line: 15, baseType: !181)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1077, file: !14, line: 516, baseType: !1092, size: 64, offset: 320)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !758, line: 359, baseType: !1094)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !758, line: 359, size: 64, elements: !1095)
!1095 = !{!1096}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1094, file: !758, line: 359, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1042, line: 16, baseType: !181)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1077, file: !14, line: 519, baseType: !1099, size: 64, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1042, line: 21, baseType: !1100)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1042, line: 21, size: 64, elements: !1101)
!1101 = !{!1102}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1100, file: !1042, line: 21, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1042, line: 14, baseType: !181)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1077, file: !14, line: 521, baseType: !766, size: 64, offset: 448)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1077, file: !14, line: 522, baseType: !766, size: 64, offset: 512)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1077, file: !14, line: 528, baseType: !1107, size: 64, offset: 576)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1077, file: !14, line: 532, baseType: !1109, size: 64, offset: 640)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1077, file: !14, line: 536, baseType: !1013, size: 64, offset: 704)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1056, file: !14, line: 563, baseType: !1112, size: 64, offset: 320)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!1075, !1076, !13}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1056, file: !14, line: 565, baseType: !1116, size: 64, offset: 384)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !1076, !181, !181}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1056, file: !14, line: 567, baseType: !1120, size: 64, offset: 448)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!181, !1026}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1056, file: !14, line: 571, baseType: !1072, size: 64, offset: 512)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1056, file: !14, line: 574, baseType: !1072, size: 64, offset: 576)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1056, file: !14, line: 579, baseType: !1126, size: 64, offset: 640)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!186, !1026, !181, !120, !186, !186}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1056, file: !14, line: 585, baseType: !1130, size: 64, offset: 704)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!165, !1026}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1056, file: !14, line: 615, baseType: !1134, size: 64, offset: 768)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!766, !1026, !181}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1027, file: !768, line: 359, baseType: !181, size: 64, offset: 1216)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1027, file: !768, line: 361, baseType: !405, size: 64, offset: 1280)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1027, file: !768, line: 362, baseType: !120, size: 64, offset: 1344)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1027, file: !768, line: 365, baseType: !816, size: 64, offset: 1408)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1027, file: !768, line: 373, baseType: !1142, offset: 1472)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !768, line: 296, elements: !302)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1023, file: !768, line: 391, baseType: !801, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1023, file: !768, line: 392, baseType: !210, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1023, file: !768, line: 394, baseType: !1146, size: 64, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!181, !405, !181, !181, !181, !181}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1023, file: !768, line: 398, baseType: !181, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1023, file: !768, line: 399, baseType: !181, size: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1023, file: !768, line: 405, baseType: !181, size: 64, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1023, file: !768, line: 406, baseType: !181, size: 64, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1023, file: !768, line: 407, baseType: !1154, size: 64, offset: 512)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !758, line: 286, baseType: !1156)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !758, line: 286, size: 64, elements: !1157)
!1157 = !{!1158}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1156, file: !758, line: 286, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1042, line: 18, baseType: !181)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1023, file: !768, line: 416, baseType: !792, size: 32, offset: 576)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1023, file: !768, line: 428, baseType: !792, size: 32, offset: 608)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1023, file: !768, line: 437, baseType: !792, size: 32, offset: 640)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1023, file: !768, line: 447, baseType: !792, size: 32, offset: 672)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1023, file: !768, line: 450, baseType: !816, size: 64, offset: 704)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1023, file: !768, line: 452, baseType: !186, size: 32, offset: 768)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1023, file: !768, line: 454, baseType: !288, offset: 800)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1023, file: !768, line: 457, baseType: !812, size: 256, offset: 832)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1023, file: !768, line: 459, baseType: !159, size: 128, offset: 1088)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1023, file: !768, line: 466, baseType: !181, size: 64, offset: 1216)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1023, file: !768, line: 467, baseType: !181, size: 64, offset: 1280)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1023, file: !768, line: 469, baseType: !181, size: 64, offset: 1344)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1023, file: !768, line: 470, baseType: !181, size: 64, offset: 1408)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1023, file: !768, line: 471, baseType: !818, size: 64, offset: 1472)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1023, file: !768, line: 472, baseType: !181, size: 64, offset: 1536)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1023, file: !768, line: 473, baseType: !181, size: 64, offset: 1600)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1023, file: !768, line: 474, baseType: !181, size: 64, offset: 1664)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1023, file: !768, line: 475, baseType: !181, size: 64, offset: 1728)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1023, file: !768, line: 477, baseType: !288, offset: 1792)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1023, file: !768, line: 478, baseType: !181, size: 64, offset: 1792)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1023, file: !768, line: 478, baseType: !181, size: 64, offset: 1856)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1023, file: !768, line: 478, baseType: !181, size: 64, offset: 1920)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1023, file: !768, line: 478, baseType: !181, size: 64, offset: 1984)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1023, file: !768, line: 479, baseType: !181, size: 64, offset: 2048)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1023, file: !768, line: 479, baseType: !181, size: 64, offset: 2112)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1023, file: !768, line: 479, baseType: !181, size: 64, offset: 2176)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1023, file: !768, line: 480, baseType: !181, size: 64, offset: 2240)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1023, file: !768, line: 480, baseType: !181, size: 64, offset: 2304)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1023, file: !768, line: 480, baseType: !181, size: 64, offset: 2368)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1023, file: !768, line: 480, baseType: !181, size: 64, offset: 2432)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1023, file: !768, line: 482, baseType: !1191, size: 2816, offset: 2496)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 2816, elements: !1192)
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
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1206, file: !1205, line: 18, baseType: !210, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1206, file: !1205, line: 28, baseType: !818, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1206, file: !1205, line: 31, baseType: !812, size: 256, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1206, file: !1205, line: 32, baseType: !1212, size: 64, offset: 384)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1205, line: 32, flags: DIFlagFwdDecl)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1206, file: !1205, line: 37, baseType: !267, size: 16, offset: 448)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1206, file: !1205, line: 40, baseType: !1216, size: 192, offset: 512)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1217, line: 53, size: 192, elements: !1218)
!1217 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1218 = !{!1219, !1220, !1221}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1216, file: !1217, line: 54, baseType: !816, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1216, file: !1217, line: 55, baseType: !288, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1216, file: !1217, line: 59, baseType: !159, size: 128, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1206, file: !1205, line: 41, baseType: !120, size: 64, offset: 704)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1206, file: !1205, line: 42, baseType: !1224, size: 64, offset: 768)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1226)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1227, line: 13, size: 896, elements: !1228)
!1227 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1226, file: !1227, line: 14, baseType: !120, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1226, file: !1227, line: 15, baseType: !181, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1226, file: !1227, line: 17, baseType: !181, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1226, file: !1227, line: 17, baseType: !181, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1226, file: !1227, line: 19, baseType: !364, size: 64, offset: 256)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1226, file: !1227, line: 21, baseType: !364, size: 64, offset: 320)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1226, file: !1227, line: 22, baseType: !364, size: 64, offset: 384)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1226, file: !1227, line: 23, baseType: !364, size: 64, offset: 448)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1226, file: !1227, line: 24, baseType: !364, size: 64, offset: 512)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1226, file: !1227, line: 25, baseType: !364, size: 64, offset: 576)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1226, file: !1227, line: 26, baseType: !364, size: 64, offset: 640)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1226, file: !1227, line: 27, baseType: !364, size: 64, offset: 704)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1226, file: !1227, line: 28, baseType: !364, size: 64, offset: 768)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1226, file: !1227, line: 29, baseType: !364, size: 64, offset: 832)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1206, file: !1205, line: 44, baseType: !792, size: 32, offset: 832)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1206, file: !1205, line: 50, baseType: !904, size: 16, offset: 864)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1206, file: !1205, line: 51, baseType: !1246, size: 16, offset: 880)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !122, line: 18, baseType: !1247)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !124, line: 23, baseType: !1248)
!1248 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1023, file: !768, line: 495, baseType: !181, size: 64, offset: 6528)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1023, file: !768, line: 497, baseType: !1251, size: 64, offset: 6592)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !768, line: 381, size: 384, elements: !1253)
!1253 = !{!1254, !1255, !2351}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1252, file: !768, line: 382, baseType: !792, size: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1252, file: !768, line: 383, baseType: !1256, size: 128, offset: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !768, line: 376, size: 128, elements: !1257)
!1257 = !{!1258, !2349}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1256, file: !768, line: 377, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1261, line: 640, size: 48640, elements: !1262)
!1261 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1262 = !{!1263, !1269, !1271, !1272, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1289, !1307, !1318, !1401, !1402, !1403, !1414, !1415, !1417, !1418, !1419, !1420, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1498, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1536, !1538, !1539, !1540, !1552, !1553, !1554, !1555, !1556, !1557, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1581, !1586, !1770, !1771, !1772, !1773, !1777, !1780, !1783, !1786, !1789, !1793, !1894, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1938, !1939, !1940, !1941, !1942, !1947, !1948, !1949, !1952, !1953, !1956, !1959, !1962, !1965, !2008, !2011, !2012, !2091, !2092, !2095, !2096, !2099, !2100, !2101, !2105, !2106, !2107, !2120, !2121, !2122, !2132, !2137, !2140, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1260, file: !1261, line: 646, baseType: !1264, size: 128)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1265, line: 56, size: 128, elements: !1266)
!1265 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1266 = !{!1267, !1268}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1264, file: !1265, line: 57, baseType: !181, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1264, file: !1265, line: 58, baseType: !245, size: 32, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1260, file: !1261, line: 649, baseType: !1270, size: 64, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !364)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1260, file: !1261, line: 657, baseType: !120, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1260, file: !1261, line: 658, baseType: !1273, size: 32, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1274, line: 113, baseType: !1275)
!1274 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1274, line: 111, size: 32, elements: !1276)
!1276 = !{!1277}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1275, file: !1274, line: 112, baseType: !792, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1260, file: !1261, line: 660, baseType: !7, size: 32, offset: 288)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1260, file: !1261, line: 661, baseType: !7, size: 32, offset: 320)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1260, file: !1261, line: 684, baseType: !186, size: 32, offset: 352)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1260, file: !1261, line: 686, baseType: !186, size: 32, offset: 384)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1260, file: !1261, line: 687, baseType: !186, size: 32, offset: 416)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1260, file: !1261, line: 688, baseType: !186, size: 32, offset: 448)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1260, file: !1261, line: 689, baseType: !7, size: 32, offset: 480)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1260, file: !1261, line: 691, baseType: !1286, size: 64, offset: 512)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1288)
!1288 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1261, line: 691, flags: DIFlagFwdDecl)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1260, file: !1261, line: 692, baseType: !1290, size: 832, offset: 576)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1261, line: 451, size: 832, elements: !1291)
!1291 = !{!1292, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1290, file: !1261, line: 453, baseType: !1293, size: 128)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1261, line: 325, size: 128, elements: !1294)
!1294 = !{!1295, !1296}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1293, file: !1261, line: 326, baseType: !181, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1293, file: !1261, line: 327, baseType: !245, size: 32, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1290, file: !1261, line: 454, baseType: !805, size: 192, align: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1290, file: !1261, line: 455, baseType: !159, size: 128, offset: 320)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1290, file: !1261, line: 456, baseType: !7, size: 32, offset: 448)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1290, file: !1261, line: 458, baseType: !210, size: 64, offset: 512)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1290, file: !1261, line: 459, baseType: !210, size: 64, offset: 576)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1290, file: !1261, line: 460, baseType: !210, size: 64, offset: 640)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1290, file: !1261, line: 461, baseType: !210, size: 64, offset: 704)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1290, file: !1261, line: 463, baseType: !210, size: 64, offset: 768)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1290, file: !1261, line: 465, baseType: !1306, offset: 832)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1261, line: 415, elements: !302)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1260, file: !1261, line: 693, baseType: !1308, size: 384, offset: 1408)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1261, line: 489, size: 384, elements: !1309)
!1309 = !{!1310, !1311, !1312, !1313, !1314, !1315, !1316}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1308, file: !1261, line: 490, baseType: !159, size: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1308, file: !1261, line: 491, baseType: !181, size: 64, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1308, file: !1261, line: 492, baseType: !181, size: 64, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1308, file: !1261, line: 493, baseType: !7, size: 32, offset: 256)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1308, file: !1261, line: 494, baseType: !267, size: 16, offset: 288)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1308, file: !1261, line: 495, baseType: !267, size: 16, offset: 304)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1308, file: !1261, line: 497, baseType: !1317, size: 64, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1260, file: !1261, line: 697, baseType: !1319, size: 1792, offset: 1792)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1261, line: 507, size: 1792, elements: !1320)
!1320 = !{!1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1398, !1399}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1319, file: !1261, line: 508, baseType: !805, size: 192, align: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1319, file: !1261, line: 515, baseType: !210, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1319, file: !1261, line: 516, baseType: !210, size: 64, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1319, file: !1261, line: 517, baseType: !210, size: 64, offset: 320)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1319, file: !1261, line: 518, baseType: !210, size: 64, offset: 384)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1319, file: !1261, line: 519, baseType: !210, size: 64, offset: 448)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1319, file: !1261, line: 526, baseType: !822, size: 64, offset: 512)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1319, file: !1261, line: 527, baseType: !210, size: 64, offset: 576)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1319, file: !1261, line: 528, baseType: !7, size: 32, offset: 640)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1319, file: !1261, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1319, file: !1261, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1319, file: !1261, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1319, file: !1261, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1319, file: !1261, line: 563, baseType: !1335, size: 512, offset: 704)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1336)
!1336 = !{!1337, !1345, !1346, !1351, !1394, !1395, !1396, !1397}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1335, file: !20, line: 119, baseType: !1338, size: 256)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1339, line: 9, size: 256, elements: !1340)
!1339 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1340 = !{!1341, !1342}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1338, file: !1339, line: 10, baseType: !805, size: 192, align: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1338, file: !1339, line: 11, baseType: !1343, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1344, line: 29, baseType: !822)
!1344 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1335, file: !20, line: 120, baseType: !1343, size: 64, offset: 256)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1335, file: !20, line: 121, baseType: !1347, size: 64, offset: 320)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!19, !1350}
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1335, file: !20, line: 122, baseType: !1352, size: 64, offset: 384)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1354)
!1354 = !{!1355, !1375, !1376, !1379, !1384, !1385, !1389, !1393}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1353, file: !20, line: 160, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1358)
!1358 = !{!1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1357, file: !20, line: 215, baseType: !825)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1357, file: !20, line: 216, baseType: !7, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1357, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1357, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1357, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1357, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1357, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1357, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1357, file: !20, line: 233, baseType: !1343, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1357, file: !20, line: 234, baseType: !1350, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1357, file: !20, line: 235, baseType: !1343, size: 64, offset: 256)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1357, file: !20, line: 236, baseType: !1350, size: 64, offset: 320)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1357, file: !20, line: 237, baseType: !1372, size: 4096, offset: 512)
!1372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1353, size: 4096, elements: !1373)
!1373 = !{!1374}
!1374 = !DISubrange(count: 8)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1353, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1353, file: !20, line: 162, baseType: !1377, size: 32, offset: 96)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !119, line: 27, baseType: !1378)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !362, line: 96, baseType: !186)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1353, file: !20, line: 163, baseType: !1380, size: 32, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !441, line: 276, baseType: !1381)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !441, line: 276, size: 32, elements: !1382)
!1382 = !{!1383}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1381, file: !441, line: 276, baseType: !445, size: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1353, file: !20, line: 164, baseType: !1350, size: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1353, file: !20, line: 165, baseType: !1386, size: 128, offset: 256)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1339, line: 14, size: 128, elements: !1387)
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1386, file: !1339, line: 15, baseType: !797, size: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1353, file: !20, line: 166, baseType: !1390, size: 64, offset: 384)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!1343}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1353, file: !20, line: 167, baseType: !1343, size: 64, offset: 448)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1335, file: !20, line: 123, baseType: !121, size: 8, offset: 448)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1335, file: !20, line: 124, baseType: !121, size: 8, offset: 456)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1335, file: !20, line: 125, baseType: !121, size: 8, offset: 464)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1335, file: !20, line: 126, baseType: !121, size: 8, offset: 472)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1319, file: !1261, line: 572, baseType: !1335, size: 512, offset: 1216)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1319, file: !1261, line: 580, baseType: !1400, size: 64, offset: 1728)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1260, file: !1261, line: 721, baseType: !7, size: 32, offset: 3584)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1260, file: !1261, line: 722, baseType: !186, size: 32, offset: 3616)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1260, file: !1261, line: 723, baseType: !1404, size: 64, offset: 3648)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1406)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1407, line: 17, baseType: !1408)
!1407 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1407, line: 17, size: 64, elements: !1409)
!1409 = !{!1410}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1408, file: !1407, line: 17, baseType: !1411, size: 64)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 64, elements: !1412)
!1412 = !{!1413}
!1413 = !DISubrange(count: 1)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1260, file: !1261, line: 724, baseType: !1406, size: 64, offset: 3712)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1260, file: !1261, line: 749, baseType: !1416, offset: 3776)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1261, line: 290, elements: !302)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1260, file: !1261, line: 751, baseType: !159, size: 128, offset: 3776)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1260, file: !1261, line: 757, baseType: !1019, size: 64, offset: 3904)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1260, file: !1261, line: 758, baseType: !1019, size: 64, offset: 3968)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1260, file: !1261, line: 761, baseType: !1421, size: 320, offset: 4032)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1196, line: 34, size: 320, elements: !1422)
!1422 = !{!1423, !1424}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1421, file: !1196, line: 35, baseType: !210, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1421, file: !1196, line: 36, baseType: !1425, size: 256, offset: 64)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1026, size: 256, elements: !220)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1260, file: !1261, line: 766, baseType: !186, size: 32, offset: 4352)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1260, file: !1261, line: 767, baseType: !186, size: 32, offset: 4384)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1260, file: !1261, line: 768, baseType: !186, size: 32, offset: 4416)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1260, file: !1261, line: 770, baseType: !186, size: 32, offset: 4448)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1260, file: !1261, line: 772, baseType: !181, size: 64, offset: 4480)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1260, file: !1261, line: 775, baseType: !7, size: 32, offset: 4544)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1260, file: !1261, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1260, file: !1261, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1260, file: !1261, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1260, file: !1261, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1260, file: !1261, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1260, file: !1261, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1260, file: !1261, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1260, file: !1261, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1260, file: !1261, line: 831, baseType: !181, size: 64, offset: 4672)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1260, file: !1261, line: 833, baseType: !1442, size: 384, offset: 4736)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1443)
!1443 = !{!1444, !1449}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1442, file: !25, line: 26, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!364, !1448}
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, scope: !1442, file: !25, line: 27, baseType: !1450, size: 320, offset: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1442, file: !25, line: 27, size: 320, elements: !1451)
!1451 = !{!1452, !1461, !1488}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1450, file: !25, line: 36, baseType: !1453, size: 320)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1450, file: !25, line: 29, size: 320, elements: !1454)
!1454 = !{!1455, !1456, !1457, !1458, !1459, !1460}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1453, file: !25, line: 30, baseType: !244, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1453, file: !25, line: 31, baseType: !245, size: 32, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1453, file: !25, line: 32, baseType: !245, size: 32, offset: 96)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1453, file: !25, line: 33, baseType: !245, size: 32, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1453, file: !25, line: 34, baseType: !210, size: 64, offset: 192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1453, file: !25, line: 35, baseType: !244, size: 64, offset: 256)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1450, file: !25, line: 46, baseType: !1462, size: 192)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1450, file: !25, line: 38, size: 192, elements: !1463)
!1463 = !{!1464, !1465, !1466, !1487}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1462, file: !25, line: 39, baseType: !1377, size: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1462, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !25, line: 41, baseType: !1467, size: 64, offset: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !25, line: 41, size: 64, elements: !1468)
!1468 = !{!1469, !1477}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1467, file: !25, line: 42, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1472, line: 7, size: 128, elements: !1473)
!1472 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1473 = !{!1474, !1476}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1471, file: !1472, line: 8, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !362, line: 93, baseType: !578)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1471, file: !1472, line: 9, baseType: !578, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1467, file: !25, line: 43, baseType: !1478, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1480, line: 7, size: 64, elements: !1481)
!1480 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1481 = !{!1482, !1486}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1479, file: !1480, line: 8, baseType: !1483, size: 32)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1480, line: 5, baseType: !1484)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !122, line: 20, baseType: !1485)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !124, line: 26, baseType: !186)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1479, file: !1480, line: 9, baseType: !1484, size: 32, offset: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1462, file: !25, line: 45, baseType: !210, size: 64, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1450, file: !25, line: 54, baseType: !1489, size: 256)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1450, file: !25, line: 48, size: 256, elements: !1490)
!1490 = !{!1491, !1494, !1495, !1496, !1497}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1489, file: !25, line: 49, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1489, file: !25, line: 50, baseType: !186, size: 32, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1489, file: !25, line: 51, baseType: !186, size: 32, offset: 96)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1489, file: !25, line: 52, baseType: !181, size: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1489, file: !25, line: 53, baseType: !181, size: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1260, file: !1261, line: 835, baseType: !1499, size: 32, offset: 5120)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !119, line: 22, baseType: !1500)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !362, line: 28, baseType: !186)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1260, file: !1261, line: 836, baseType: !1499, size: 32, offset: 5152)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1260, file: !1261, line: 840, baseType: !181, size: 64, offset: 5184)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1260, file: !1261, line: 849, baseType: !1259, size: 64, offset: 5248)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1260, file: !1261, line: 852, baseType: !1259, size: 64, offset: 5312)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1260, file: !1261, line: 857, baseType: !159, size: 128, offset: 5376)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1260, file: !1261, line: 858, baseType: !159, size: 128, offset: 5504)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1260, file: !1261, line: 859, baseType: !1259, size: 64, offset: 5632)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1260, file: !1261, line: 867, baseType: !159, size: 128, offset: 5696)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1260, file: !1261, line: 868, baseType: !159, size: 128, offset: 5824)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1260, file: !1261, line: 871, baseType: !1511, size: 64, offset: 5952)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1513)
!1513 = !{!1514, !1515, !1516, !1517, !1519, !1520, !1527, !1528}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1512, file: !53, line: 61, baseType: !1273, size: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1512, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1512, file: !53, line: 63, baseType: !288, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1512, file: !53, line: 65, baseType: !1518, size: 256, offset: 64)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 256, elements: !220)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1512, file: !53, line: 66, baseType: !680, size: 64, offset: 320)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1512, file: !53, line: 68, baseType: !1521, size: 128, offset: 384)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1522, line: 40, baseType: !1523)
!1522 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1522, line: 36, size: 128, elements: !1524)
!1524 = !{!1525, !1526}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1523, file: !1522, line: 37, baseType: !288)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1523, file: !1522, line: 38, baseType: !159, size: 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1512, file: !53, line: 69, baseType: !418, size: 128, align: 64, offset: 512)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1512, file: !53, line: 70, baseType: !1529, size: 128, offset: 640)
!1529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1530, size: 128, elements: !1412)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1530, file: !53, line: 55, baseType: !186, size: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1530, file: !53, line: 56, baseType: !1534, size: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1260, file: !1261, line: 872, baseType: !1537, size: 512, offset: 6016)
!1537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 512, elements: !220)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1260, file: !1261, line: 873, baseType: !159, size: 128, offset: 6528)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1260, file: !1261, line: 874, baseType: !159, size: 128, offset: 6656)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1260, file: !1261, line: 876, baseType: !1541, size: 64, offset: 6784)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1543, line: 26, size: 192, elements: !1544)
!1543 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1544 = !{!1545, !1546}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1542, file: !1543, line: 27, baseType: !7, size: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1542, file: !1543, line: 28, baseType: !1547, size: 128, offset: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1548, line: 43, size: 128, elements: !1549)
!1548 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1549 = !{!1550, !1551}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1547, file: !1548, line: 44, baseType: !825)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1547, file: !1548, line: 45, baseType: !159, size: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1260, file: !1261, line: 879, baseType: !750, size: 64, offset: 6848)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1260, file: !1261, line: 882, baseType: !750, size: 64, offset: 6912)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1260, file: !1261, line: 884, baseType: !210, size: 64, offset: 6976)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1260, file: !1261, line: 885, baseType: !210, size: 64, offset: 7040)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1260, file: !1261, line: 890, baseType: !210, size: 64, offset: 7104)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1260, file: !1261, line: 891, baseType: !1558, size: 128, offset: 7168)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1261, line: 242, size: 128, elements: !1559)
!1559 = !{!1560, !1561, !1562}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1558, file: !1261, line: 244, baseType: !210, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1558, file: !1261, line: 245, baseType: !210, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1558, file: !1261, line: 246, baseType: !825, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1260, file: !1261, line: 900, baseType: !181, size: 64, offset: 7296)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1260, file: !1261, line: 901, baseType: !181, size: 64, offset: 7360)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1260, file: !1261, line: 904, baseType: !210, size: 64, offset: 7424)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1260, file: !1261, line: 907, baseType: !210, size: 64, offset: 7488)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1260, file: !1261, line: 910, baseType: !181, size: 64, offset: 7552)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1260, file: !1261, line: 911, baseType: !181, size: 64, offset: 7616)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1260, file: !1261, line: 914, baseType: !1570, size: 640, offset: 7680)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1571, line: 123, size: 640, elements: !1572)
!1571 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1572 = !{!1573, !1579, !1580}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1570, file: !1571, line: 124, baseType: !1574, size: 576)
!1574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1575, size: 576, elements: !330)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1571, line: 108, size: 192, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1575, file: !1571, line: 109, baseType: !210, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1575, file: !1571, line: 110, baseType: !1386, size: 128, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1570, file: !1571, line: 125, baseType: !7, size: 32, offset: 576)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1570, file: !1571, line: 126, baseType: !7, size: 32, offset: 608)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1260, file: !1261, line: 917, baseType: !1582, size: 192, offset: 8320)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1571, line: 134, size: 192, elements: !1583)
!1583 = !{!1584, !1585}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1582, file: !1571, line: 135, baseType: !418, size: 128, align: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1582, file: !1571, line: 136, baseType: !7, size: 32, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1260, file: !1261, line: 923, baseType: !1587, size: 64, offset: 8512)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1589)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1590, line: 111, size: 1280, elements: !1591)
!1590 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1591 = !{!1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1611, !1612, !1613, !1614, !1615, !1616, !1723, !1724, !1725, !1726, !1752, !1755, !1765}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1589, file: !1590, line: 112, baseType: !792, size: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1589, file: !1590, line: 120, baseType: !480, size: 32, offset: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1589, file: !1590, line: 121, baseType: !488, size: 32, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1589, file: !1590, line: 122, baseType: !480, size: 32, offset: 96)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1589, file: !1590, line: 123, baseType: !488, size: 32, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1589, file: !1590, line: 124, baseType: !480, size: 32, offset: 160)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1589, file: !1590, line: 125, baseType: !488, size: 32, offset: 192)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1589, file: !1590, line: 126, baseType: !480, size: 32, offset: 224)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1589, file: !1590, line: 127, baseType: !488, size: 32, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1589, file: !1590, line: 128, baseType: !7, size: 32, offset: 288)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1589, file: !1590, line: 129, baseType: !1603, size: 64, offset: 320)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1604, line: 26, baseType: !1605)
!1604 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1604, line: 24, size: 64, elements: !1606)
!1606 = !{!1607}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1605, file: !1604, line: 25, baseType: !1608, size: 64)
!1608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 64, elements: !1609)
!1609 = !{!1610}
!1610 = !DISubrange(count: 2)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1589, file: !1590, line: 130, baseType: !1603, size: 64, offset: 384)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1589, file: !1590, line: 131, baseType: !1603, size: 64, offset: 448)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1589, file: !1590, line: 132, baseType: !1603, size: 64, offset: 512)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1589, file: !1590, line: 133, baseType: !1603, size: 64, offset: 576)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1589, file: !1590, line: 135, baseType: !125, size: 8, offset: 640)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1589, file: !1590, line: 137, baseType: !1617, size: 64, offset: 704)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1619, line: 189, size: 1664, elements: !1620)
!1619 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1620 = !{!1621, !1622, !1625, !1630, !1631, !1634, !1635, !1640, !1641, !1642, !1643, !1645, !1646, !1647, !1648, !1649, !1687, !1708}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1618, file: !1619, line: 190, baseType: !1273, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1618, file: !1619, line: 191, baseType: !1623, size: 32, offset: 32)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1619, line: 28, baseType: !1624)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !119, line: 98, baseType: !1484)
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1618, file: !1619, line: 192, baseType: !1626, size: 192, offset: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1618, file: !1619, line: 192, size: 192, elements: !1627)
!1627 = !{!1628, !1629}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1626, file: !1619, line: 193, baseType: !159, size: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1626, file: !1619, line: 194, baseType: !805, size: 192, align: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1618, file: !1619, line: 199, baseType: !812, size: 256, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1618, file: !1619, line: 200, baseType: !1632, size: 64, offset: 512)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1619, line: 200, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1618, file: !1619, line: 201, baseType: !120, size: 64, offset: 576)
!1635 = !DIDerivedType(tag: DW_TAG_member, scope: !1618, file: !1619, line: 202, baseType: !1636, size: 64, offset: 640)
!1636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1618, file: !1619, line: 202, size: 64, elements: !1637)
!1637 = !{!1638, !1639}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1636, file: !1619, line: 203, baseType: !584, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1636, file: !1619, line: 204, baseType: !584, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1618, file: !1619, line: 206, baseType: !584, size: 64, offset: 704)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1618, file: !1619, line: 207, baseType: !480, size: 32, offset: 768)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1618, file: !1619, line: 208, baseType: !488, size: 32, offset: 800)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1618, file: !1619, line: 209, baseType: !1644, size: 32, offset: 832)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1619, line: 31, baseType: !604)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1618, file: !1619, line: 210, baseType: !267, size: 16, offset: 864)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1618, file: !1619, line: 211, baseType: !267, size: 16, offset: 880)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1618, file: !1619, line: 215, baseType: !1248, size: 16, offset: 896)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1618, file: !1619, line: 222, baseType: !181, size: 64, offset: 960)
!1649 = !DIDerivedType(tag: DW_TAG_member, scope: !1618, file: !1619, line: 239, baseType: !1650, size: 320, offset: 1024)
!1650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1618, file: !1619, line: 239, size: 320, elements: !1651)
!1651 = !{!1652, !1679}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1650, file: !1619, line: 240, baseType: !1653, size: 320)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1619, line: 108, size: 320, elements: !1654)
!1654 = !{!1655, !1656, !1668, !1671, !1678}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1653, file: !1619, line: 110, baseType: !181, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, scope: !1653, file: !1619, line: 111, baseType: !1657, size: 64, offset: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1653, file: !1619, line: 111, size: 64, elements: !1658)
!1658 = !{!1659, !1667}
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1657, file: !1619, line: 112, baseType: !1660, size: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1657, file: !1619, line: 112, size: 64, elements: !1661)
!1661 = !{!1662, !1663}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1660, file: !1619, line: 114, baseType: !904, size: 16)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1660, file: !1619, line: 115, baseType: !1664, size: 48, offset: 16)
!1664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 48, elements: !1665)
!1665 = !{!1666}
!1666 = !DISubrange(count: 6)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1657, file: !1619, line: 121, baseType: !181, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1653, file: !1619, line: 123, baseType: !1669, size: 64, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1619, line: 96, flags: DIFlagFwdDecl)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1653, file: !1619, line: 124, baseType: !1672, size: 64, offset: 192)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1619, line: 102, size: 192, elements: !1674)
!1674 = !{!1675, !1676, !1677}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1673, file: !1619, line: 103, baseType: !418, size: 128, align: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1673, file: !1619, line: 104, baseType: !1273, size: 32, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1673, file: !1619, line: 105, baseType: !535, size: 8, offset: 160)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1653, file: !1619, line: 125, baseType: !165, size: 64, offset: 256)
!1679 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !1619, line: 241, baseType: !1680, size: 320)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1650, file: !1619, line: 241, size: 320, elements: !1681)
!1681 = !{!1682, !1683, !1684, !1685, !1686}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1680, file: !1619, line: 242, baseType: !181, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1680, file: !1619, line: 243, baseType: !181, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1680, file: !1619, line: 244, baseType: !1669, size: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1680, file: !1619, line: 245, baseType: !1672, size: 64, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1680, file: !1619, line: 246, baseType: !329, size: 64, offset: 256)
!1687 = !DIDerivedType(tag: DW_TAG_member, scope: !1618, file: !1619, line: 254, baseType: !1688, size: 256, offset: 1344)
!1688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1618, file: !1619, line: 254, size: 256, elements: !1689)
!1689 = !{!1690, !1696}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1688, file: !1619, line: 255, baseType: !1691, size: 256)
!1691 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1619, line: 128, size: 256, elements: !1692)
!1692 = !{!1693, !1694}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1691, file: !1619, line: 129, baseType: !120, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1691, file: !1619, line: 130, baseType: !1695, size: 256)
!1695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 256, elements: !220)
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1688, file: !1619, line: 256, baseType: !1697, size: 256)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1688, file: !1619, line: 256, size: 256, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1697, file: !1619, line: 258, baseType: !159, size: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1697, file: !1619, line: 259, baseType: !1701, size: 128, offset: 128)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1702, line: 22, size: 128, elements: !1703)
!1702 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1703 = !{!1704, !1707}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1701, file: !1702, line: 23, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1702, line: 23, flags: DIFlagFwdDecl)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1701, file: !1702, line: 24, baseType: !181, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1618, file: !1619, line: 274, baseType: !1709, size: 64, offset: 1600)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1619, line: 170, size: 192, elements: !1711)
!1711 = !{!1712, !1721, !1722}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1710, file: !1619, line: 171, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1619, line: 165, baseType: !1714)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!186, !1617, !1717, !1719, !1617}
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1670)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1691)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1710, file: !1619, line: 172, baseType: !1617, size: 64, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1710, file: !1619, line: 173, baseType: !1669, size: 64, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1589, file: !1590, line: 138, baseType: !1617, size: 64, offset: 768)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1589, file: !1590, line: 139, baseType: !1617, size: 64, offset: 832)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1589, file: !1590, line: 140, baseType: !1617, size: 64, offset: 896)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1589, file: !1590, line: 145, baseType: !1727, size: 64, offset: 960)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1729, line: 13, size: 896, elements: !1730)
!1729 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1730 = !{!1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1728, file: !1729, line: 14, baseType: !1273, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1728, file: !1729, line: 15, baseType: !792, size: 32, offset: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1728, file: !1729, line: 16, baseType: !792, size: 32, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1728, file: !1729, line: 21, baseType: !816, size: 64, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1728, file: !1729, line: 27, baseType: !181, size: 64, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1728, file: !1729, line: 28, baseType: !181, size: 64, offset: 256)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1728, file: !1729, line: 29, baseType: !816, size: 64, offset: 320)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1728, file: !1729, line: 32, baseType: !684, size: 128, offset: 384)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1728, file: !1729, line: 33, baseType: !480, size: 32, offset: 512)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1728, file: !1729, line: 37, baseType: !816, size: 64, offset: 576)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1728, file: !1729, line: 44, baseType: !1742, size: 256, offset: 640)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1743, line: 15, size: 256, elements: !1744)
!1743 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1744 = !{!1745, !1746, !1747, !1748, !1749, !1750, !1751}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1742, file: !1743, line: 16, baseType: !825)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1742, file: !1743, line: 18, baseType: !186, size: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1742, file: !1743, line: 19, baseType: !186, size: 32, offset: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1742, file: !1743, line: 20, baseType: !186, size: 32, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1742, file: !1743, line: 21, baseType: !186, size: 32, offset: 96)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1742, file: !1743, line: 22, baseType: !181, size: 64, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1742, file: !1743, line: 23, baseType: !181, size: 64, offset: 192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1589, file: !1590, line: 146, baseType: !1753, size: 64, offset: 1024)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !481, line: 18, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1589, file: !1590, line: 147, baseType: !1756, size: 64, offset: 1088)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1590, line: 25, size: 64, elements: !1758)
!1758 = !{!1759, !1760, !1761}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1757, file: !1590, line: 26, baseType: !792, size: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1757, file: !1590, line: 27, baseType: !186, size: 32, offset: 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1757, file: !1590, line: 28, baseType: !1762, offset: 64)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, elements: !1763)
!1763 = !{!1764}
!1764 = !DISubrange(count: 0)
!1765 = !DIDerivedType(tag: DW_TAG_member, scope: !1589, file: !1590, line: 149, baseType: !1766, size: 128, offset: 1152)
!1766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1589, file: !1590, line: 149, size: 128, elements: !1767)
!1767 = !{!1768, !1769}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1766, file: !1590, line: 150, baseType: !186, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1766, file: !1590, line: 151, baseType: !418, size: 128, align: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1260, file: !1261, line: 926, baseType: !1587, size: 64, offset: 8576)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1260, file: !1261, line: 929, baseType: !1587, size: 64, offset: 8640)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1260, file: !1261, line: 933, baseType: !1617, size: 64, offset: 8704)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1260, file: !1261, line: 943, baseType: !1774, size: 128, offset: 8768)
!1774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 128, elements: !1775)
!1775 = !{!1776}
!1776 = !DISubrange(count: 16)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1260, file: !1261, line: 945, baseType: !1778, size: 64, offset: 8896)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1261, line: 49, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1260, file: !1261, line: 956, baseType: !1781, size: 64, offset: 8960)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1261, line: 45, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1260, file: !1261, line: 959, baseType: !1784, size: 64, offset: 9024)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1261, line: 959, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1260, file: !1261, line: 962, baseType: !1787, size: 64, offset: 9088)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1261, line: 66, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1260, file: !1261, line: 966, baseType: !1790, size: 64, offset: 9152)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1792, line: 35, flags: DIFlagFwdDecl)
!1792 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1260, file: !1261, line: 969, baseType: !1794, size: 64, offset: 9216)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1796, line: 82, size: 7296, elements: !1797)
!1796 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1797 = !{!1798, !1799, !1800, !1801, !1802, !1803, !1804, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1833, !1842, !1843, !1845, !1846, !1847, !1850, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1880, !1881, !1888, !1889, !1890, !1891, !1892, !1893}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1795, file: !1796, line: 83, baseType: !1273, size: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1795, file: !1796, line: 84, baseType: !792, size: 32, offset: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1795, file: !1796, line: 85, baseType: !186, size: 32, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1795, file: !1796, line: 86, baseType: !159, size: 128, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1795, file: !1796, line: 88, baseType: !1521, size: 128, offset: 256)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1795, file: !1796, line: 91, baseType: !1259, size: 64, offset: 384)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1795, file: !1796, line: 94, baseType: !1805, size: 192, offset: 448)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1806, line: 30, size: 192, elements: !1807)
!1806 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1807 = !{!1808, !1809}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1805, file: !1806, line: 31, baseType: !159, size: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1805, file: !1806, line: 32, baseType: !1810, size: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1811, line: 25, baseType: !1812)
!1811 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1811, line: 23, size: 64, elements: !1813)
!1813 = !{!1814}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1812, file: !1811, line: 24, baseType: !1411, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1795, file: !1796, line: 97, baseType: !680, size: 64, offset: 640)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1795, file: !1796, line: 100, baseType: !186, size: 32, offset: 704)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1795, file: !1796, line: 106, baseType: !186, size: 32, offset: 736)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1795, file: !1796, line: 107, baseType: !1259, size: 64, offset: 768)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1795, file: !1796, line: 110, baseType: !186, size: 32, offset: 832)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1795, file: !1796, line: 111, baseType: !7, size: 32, offset: 864)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1795, file: !1796, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1795, file: !1796, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1795, file: !1796, line: 128, baseType: !186, size: 32, offset: 928)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1795, file: !1796, line: 129, baseType: !159, size: 128, offset: 960)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1795, file: !1796, line: 132, baseType: !1335, size: 512, offset: 1088)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1795, file: !1796, line: 133, baseType: !1343, size: 64, offset: 1600)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1795, file: !1796, line: 140, baseType: !1828, size: 256, offset: 1664)
!1828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1829, size: 256, elements: !1609)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1796, line: 38, size: 128, elements: !1830)
!1830 = !{!1831, !1832}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1829, file: !1796, line: 39, baseType: !210, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1829, file: !1796, line: 40, baseType: !210, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1795, file: !1796, line: 146, baseType: !1834, size: 192, offset: 1920)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1796, line: 66, size: 192, elements: !1835)
!1835 = !{!1836}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1834, file: !1796, line: 67, baseType: !1837, size: 192)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1796, line: 47, size: 192, elements: !1838)
!1838 = !{!1839, !1840, !1841}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1837, file: !1796, line: 48, baseType: !818, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1837, file: !1796, line: 49, baseType: !818, size: 64, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1837, file: !1796, line: 50, baseType: !818, size: 64, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1795, file: !1796, line: 150, baseType: !1570, size: 640, offset: 2112)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1795, file: !1796, line: 153, baseType: !1844, size: 256, offset: 2752)
!1844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1511, size: 256, elements: !220)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1795, file: !1796, line: 159, baseType: !1511, size: 64, offset: 3008)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1795, file: !1796, line: 162, baseType: !186, size: 32, offset: 3072)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1795, file: !1796, line: 164, baseType: !1848, size: 64, offset: 3136)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1796, line: 164, flags: DIFlagFwdDecl)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1795, file: !1796, line: 175, baseType: !1851, size: 32, offset: 3200)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !441, line: 805, baseType: !1852)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 798, size: 32, elements: !1853)
!1853 = !{!1854, !1855}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1852, file: !441, line: 803, baseType: !440, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1852, file: !441, line: 804, baseType: !288, offset: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1795, file: !1796, line: 176, baseType: !210, size: 64, offset: 3264)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1795, file: !1796, line: 176, baseType: !210, size: 64, offset: 3328)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1795, file: !1796, line: 176, baseType: !210, size: 64, offset: 3392)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1795, file: !1796, line: 176, baseType: !210, size: 64, offset: 3456)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1795, file: !1796, line: 177, baseType: !210, size: 64, offset: 3520)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1795, file: !1796, line: 178, baseType: !210, size: 64, offset: 3584)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1795, file: !1796, line: 179, baseType: !1558, size: 128, offset: 3648)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1795, file: !1796, line: 180, baseType: !181, size: 64, offset: 3776)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1795, file: !1796, line: 180, baseType: !181, size: 64, offset: 3840)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1795, file: !1796, line: 180, baseType: !181, size: 64, offset: 3904)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1795, file: !1796, line: 180, baseType: !181, size: 64, offset: 3968)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1795, file: !1796, line: 181, baseType: !181, size: 64, offset: 4032)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1795, file: !1796, line: 181, baseType: !181, size: 64, offset: 4096)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1795, file: !1796, line: 181, baseType: !181, size: 64, offset: 4160)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1795, file: !1796, line: 181, baseType: !181, size: 64, offset: 4224)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1795, file: !1796, line: 182, baseType: !181, size: 64, offset: 4288)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1795, file: !1796, line: 182, baseType: !181, size: 64, offset: 4352)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1795, file: !1796, line: 182, baseType: !181, size: 64, offset: 4416)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1795, file: !1796, line: 182, baseType: !181, size: 64, offset: 4480)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1795, file: !1796, line: 183, baseType: !181, size: 64, offset: 4544)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1795, file: !1796, line: 183, baseType: !181, size: 64, offset: 4608)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1795, file: !1796, line: 184, baseType: !1878, offset: 4672)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1879, line: 12, elements: !302)
!1879 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1795, file: !1796, line: 192, baseType: !212, size: 64, offset: 4672)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1795, file: !1796, line: 203, baseType: !1882, size: 2048, offset: 4736)
!1882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1883, size: 2048, elements: !1775)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1884, line: 43, size: 128, elements: !1885)
!1884 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1885 = !{!1886, !1887}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1883, file: !1884, line: 44, baseType: !377, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1883, file: !1884, line: 45, baseType: !377, size: 64, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1795, file: !1796, line: 220, baseType: !535, size: 8, offset: 6784)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1795, file: !1796, line: 221, baseType: !1248, size: 16, offset: 6800)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1795, file: !1796, line: 222, baseType: !1248, size: 16, offset: 6816)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1795, file: !1796, line: 224, baseType: !1019, size: 64, offset: 6848)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1795, file: !1796, line: 227, baseType: !1216, size: 192, offset: 6912)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1795, file: !1796, line: 233, baseType: !1216, size: 192, offset: 7104)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1260, file: !1261, line: 970, baseType: !1895, size: 64, offset: 9280)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1796, line: 20, size: 16576, elements: !1897)
!1897 = !{!1898, !1899, !1900, !1901}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1896, file: !1796, line: 21, baseType: !288)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1896, file: !1796, line: 22, baseType: !1273, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1896, file: !1796, line: 23, baseType: !1521, size: 128, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1896, file: !1796, line: 24, baseType: !1902, size: 16384, offset: 192)
!1902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1903, size: 16384, elements: !334)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1806, line: 49, size: 256, elements: !1904)
!1904 = !{!1905}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1903, file: !1806, line: 50, baseType: !1906, size: 256)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1806, line: 35, size: 256, elements: !1907)
!1907 = !{!1908, !1915, !1916, !1920}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1906, file: !1806, line: 37, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1910, line: 19, baseType: !1911)
!1910 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1910, line: 18, baseType: !1913)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{null, !186}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1906, file: !1806, line: 38, baseType: !181, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1906, file: !1806, line: 44, baseType: !1917, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1910, line: 22, baseType: !1918)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1910, line: 21, baseType: !151)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1906, file: !1806, line: 46, baseType: !1810, size: 64, offset: 192)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1260, file: !1261, line: 971, baseType: !1810, size: 64, offset: 9344)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1260, file: !1261, line: 972, baseType: !1810, size: 64, offset: 9408)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1260, file: !1261, line: 974, baseType: !1810, size: 64, offset: 9472)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1260, file: !1261, line: 975, baseType: !1805, size: 192, offset: 9536)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1260, file: !1261, line: 976, baseType: !181, size: 64, offset: 9728)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1260, file: !1261, line: 977, baseType: !375, size: 64, offset: 9792)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1260, file: !1261, line: 978, baseType: !7, size: 32, offset: 9856)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1260, file: !1261, line: 980, baseType: !421, size: 64, offset: 9920)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1260, file: !1261, line: 989, baseType: !1930, size: 128, offset: 9984)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1931, line: 35, size: 128, elements: !1932)
!1931 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1932 = !{!1933, !1934, !1935}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1930, file: !1931, line: 36, baseType: !186, size: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1930, file: !1931, line: 37, baseType: !792, size: 32, offset: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1930, file: !1931, line: 38, baseType: !1936, size: 64, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1931, line: 23, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1260, file: !1261, line: 992, baseType: !210, size: 64, offset: 10112)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1260, file: !1261, line: 993, baseType: !210, size: 64, offset: 10176)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1260, file: !1261, line: 996, baseType: !288, offset: 10240)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1260, file: !1261, line: 999, baseType: !825, offset: 10240)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1260, file: !1261, line: 1001, baseType: !1943, size: 64, offset: 10240)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1261, line: 636, size: 64, elements: !1944)
!1944 = !{!1945}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1943, file: !1261, line: 637, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1260, file: !1261, line: 1005, baseType: !797, size: 128, offset: 10304)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1260, file: !1261, line: 1007, baseType: !1259, size: 64, offset: 10432)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1260, file: !1261, line: 1009, baseType: !1950, size: 64, offset: 10496)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1261, line: 1009, flags: DIFlagFwdDecl)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1260, file: !1261, line: 1043, baseType: !120, size: 64, offset: 10560)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1260, file: !1261, line: 1046, baseType: !1954, size: 64, offset: 10624)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1261, line: 41, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1260, file: !1261, line: 1050, baseType: !1957, size: 64, offset: 10688)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1261, line: 42, flags: DIFlagFwdDecl)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1260, file: !1261, line: 1054, baseType: !1960, size: 64, offset: 10752)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1261, line: 55, flags: DIFlagFwdDecl)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1260, file: !1261, line: 1056, baseType: !1963, size: 64, offset: 10816)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1261, line: 40, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1260, file: !1261, line: 1058, baseType: !1966, size: 64, offset: 10880)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1968, line: 99, size: 704, elements: !1969)
!1968 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1969 = !{!1970, !1971, !1972, !1973, !1974, !1975, !1976, !1995, !1996}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1967, file: !1968, line: 100, baseType: !816, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1967, file: !1968, line: 101, baseType: !792, size: 32, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1967, file: !1968, line: 102, baseType: !792, size: 32, offset: 96)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1967, file: !1968, line: 105, baseType: !288, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1967, file: !1968, line: 107, baseType: !267, size: 16, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1967, file: !1968, line: 109, baseType: !784, size: 128, offset: 192)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1967, file: !1968, line: 110, baseType: !1977, size: 64, offset: 320)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1968, line: 73, size: 448, elements: !1979)
!1979 = !{!1980, !1983, !1984, !1989, !1994}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1978, file: !1968, line: 74, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1968, line: 74, flags: DIFlagFwdDecl)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1978, file: !1968, line: 75, baseType: !1966, size: 64, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, scope: !1978, file: !1968, line: 83, baseType: !1985, size: 128, offset: 128)
!1985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1978, file: !1968, line: 83, size: 128, elements: !1986)
!1986 = !{!1987, !1988}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1985, file: !1968, line: 84, baseType: !159, size: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1985, file: !1968, line: 85, baseType: !980, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, scope: !1978, file: !1968, line: 87, baseType: !1990, size: 128, offset: 256)
!1990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1978, file: !1968, line: 87, size: 128, elements: !1991)
!1991 = !{!1992, !1993}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1990, file: !1968, line: 88, baseType: !684, size: 128)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1990, file: !1968, line: 89, baseType: !418, size: 128, align: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1978, file: !1968, line: 92, baseType: !7, size: 32, offset: 384)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1967, file: !1968, line: 111, baseType: !680, size: 64, offset: 384)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1967, file: !1968, line: 113, baseType: !1997, size: 256, offset: 448)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1998, line: 102, size: 256, elements: !1999)
!1998 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1999 = !{!2000, !2001, !2002}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1997, file: !1998, line: 103, baseType: !816, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1997, file: !1998, line: 104, baseType: !159, size: 128, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1997, file: !1998, line: 105, baseType: !2003, size: 64, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1998, line: 21, baseType: !2004)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{null, !2007}
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1260, file: !1261, line: 1061, baseType: !2009, size: 64, offset: 10944)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1261, line: 43, flags: DIFlagFwdDecl)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1260, file: !1261, line: 1064, baseType: !181, size: 64, offset: 11008)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1260, file: !1261, line: 1065, baseType: !2013, size: 64, offset: 11072)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1806, line: 14, baseType: !2015)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1806, line: 12, size: 384, elements: !2016)
!2016 = !{!2017}
!2017 = !DIDerivedType(tag: DW_TAG_member, scope: !2015, file: !1806, line: 13, baseType: !2018, size: 384)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2015, file: !1806, line: 13, size: 384, elements: !2019)
!2019 = !{!2020, !2021, !2022, !2023}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2018, file: !1806, line: 13, baseType: !186, size: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2018, file: !1806, line: 13, baseType: !186, size: 32, offset: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2018, file: !1806, line: 13, baseType: !186, size: 32, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2018, file: !1806, line: 13, baseType: !2024, size: 256, offset: 128)
!2024 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2025, line: 32, size: 256, elements: !2026)
!2025 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2026 = !{!2027, !2032, !2045, !2051, !2060, !2080, !2085}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2024, file: !2025, line: 37, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2024, file: !2025, line: 34, size: 64, elements: !2029)
!2029 = !{!2030, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2028, file: !2025, line: 35, baseType: !1500, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2028, file: !2025, line: 36, baseType: !486, size: 32, offset: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2024, file: !2025, line: 45, baseType: !2033, size: 192)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2024, file: !2025, line: 40, size: 192, elements: !2034)
!2034 = !{!2035, !2037, !2038, !2044}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2033, file: !2025, line: 41, baseType: !2036, size: 32)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !362, line: 95, baseType: !186)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2033, file: !2025, line: 42, baseType: !186, size: 32, offset: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2033, file: !2025, line: 43, baseType: !2039, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2025, line: 11, baseType: !2040)
!2040 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2025, line: 8, size: 64, elements: !2041)
!2041 = !{!2042, !2043}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2040, file: !2025, line: 9, baseType: !186, size: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2040, file: !2025, line: 10, baseType: !120, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2033, file: !2025, line: 44, baseType: !186, size: 32, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2024, file: !2025, line: 52, baseType: !2046, size: 128)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2024, file: !2025, line: 48, size: 128, elements: !2047)
!2047 = !{!2048, !2049, !2050}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2046, file: !2025, line: 49, baseType: !1500, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2046, file: !2025, line: 50, baseType: !486, size: 32, offset: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2046, file: !2025, line: 51, baseType: !2039, size: 64, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2024, file: !2025, line: 61, baseType: !2052, size: 256)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2024, file: !2025, line: 55, size: 256, elements: !2053)
!2053 = !{!2054, !2055, !2056, !2057, !2059}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2052, file: !2025, line: 56, baseType: !1500, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2052, file: !2025, line: 57, baseType: !486, size: 32, offset: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2052, file: !2025, line: 58, baseType: !186, size: 32, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2052, file: !2025, line: 59, baseType: !2058, size: 64, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !362, line: 94, baseType: !363)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2052, file: !2025, line: 60, baseType: !2058, size: 64, offset: 192)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2024, file: !2025, line: 95, baseType: !2061, size: 256)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2024, file: !2025, line: 64, size: 256, elements: !2062)
!2062 = !{!2063, !2064}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2061, file: !2025, line: 65, baseType: !120, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !2025, line: 77, baseType: !2065, size: 192, offset: 64)
!2065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2061, file: !2025, line: 77, size: 192, elements: !2066)
!2066 = !{!2067, !2068, !2075}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2065, file: !2025, line: 82, baseType: !1248, size: 16)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2065, file: !2025, line: 88, baseType: !2069, size: 192)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2065, file: !2025, line: 84, size: 192, elements: !2070)
!2070 = !{!2071, !2073, !2074}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2069, file: !2025, line: 85, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 64, elements: !1373)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2069, file: !2025, line: 86, baseType: !120, size: 64, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2069, file: !2025, line: 87, baseType: !120, size: 64, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2065, file: !2025, line: 93, baseType: !2076, size: 96)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2065, file: !2025, line: 90, size: 96, elements: !2077)
!2077 = !{!2078, !2079}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2076, file: !2025, line: 91, baseType: !2072, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2076, file: !2025, line: 92, baseType: !173, size: 32, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2024, file: !2025, line: 101, baseType: !2081, size: 128)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2024, file: !2025, line: 98, size: 128, elements: !2082)
!2082 = !{!2083, !2084}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2081, file: !2025, line: 99, baseType: !364, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2081, file: !2025, line: 100, baseType: !186, size: 32, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2024, file: !2025, line: 108, baseType: !2086, size: 128)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2024, file: !2025, line: 104, size: 128, elements: !2087)
!2087 = !{!2088, !2089, !2090}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2086, file: !2025, line: 105, baseType: !120, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2086, file: !2025, line: 106, baseType: !186, size: 32, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2086, file: !2025, line: 107, baseType: !7, size: 32, offset: 96)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1260, file: !1261, line: 1067, baseType: !1878, offset: 11136)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1260, file: !1261, line: 1099, baseType: !2093, size: 64, offset: 11136)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1261, line: 56, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1260, file: !1261, line: 1103, baseType: !159, size: 128, offset: 11200)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1260, file: !1261, line: 1104, baseType: !2097, size: 64, offset: 11328)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1261, line: 46, flags: DIFlagFwdDecl)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1260, file: !1261, line: 1105, baseType: !1216, size: 192, offset: 11392)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1260, file: !1261, line: 1106, baseType: !7, size: 32, offset: 11584)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1260, file: !1261, line: 1109, baseType: !2102, size: 128, offset: 11648)
!2102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2103, size: 128, elements: !1609)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1261, line: 51, flags: DIFlagFwdDecl)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1260, file: !1261, line: 1110, baseType: !1216, size: 192, offset: 11776)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1260, file: !1261, line: 1111, baseType: !159, size: 128, offset: 11968)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1260, file: !1261, line: 1173, baseType: !2108, size: 64, offset: 12096)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2110, line: 62, size: 256, align: 256, elements: !2111)
!2110 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2111 = !{!2112, !2113, !2114, !2119}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2109, file: !2110, line: 75, baseType: !173, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2109, file: !2110, line: 90, baseType: !173, size: 32, offset: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2109, file: !2110, line: 124, baseType: !2115, size: 64, offset: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2109, file: !2110, line: 109, size: 64, elements: !2116)
!2116 = !{!2117, !2118}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2115, file: !2110, line: 110, baseType: !211, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2115, file: !2110, line: 112, baseType: !211, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2109, file: !2110, line: 144, baseType: !173, size: 32, offset: 128)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1260, file: !1261, line: 1174, baseType: !245, size: 32, offset: 12160)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1260, file: !1261, line: 1179, baseType: !181, size: 64, offset: 12224)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1260, file: !1261, line: 1182, baseType: !2123, size: 128, offset: 12288)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1196, line: 76, size: 128, elements: !2124)
!2124 = !{!2125, !2130, !2131}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2123, file: !1196, line: 85, baseType: !2126, size: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2127, line: 7, size: 64, elements: !2128)
!2127 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2128 = !{!2129}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2126, file: !2127, line: 12, baseType: !1408, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2123, file: !1196, line: 88, baseType: !535, size: 8, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2123, file: !1196, line: 95, baseType: !535, size: 8, offset: 72)
!2132 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !1261, line: 1184, baseType: !2133, size: 128, offset: 12416)
!2133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1260, file: !1261, line: 1184, size: 128, elements: !2134)
!2134 = !{!2135, !2136}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2133, file: !1261, line: 1185, baseType: !1273, size: 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2133, file: !1261, line: 1186, baseType: !418, size: 128, align: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1260, file: !1261, line: 1190, baseType: !2138, size: 64, offset: 12544)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1261, line: 53, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1260, file: !1261, line: 1192, baseType: !2141, size: 128, offset: 12608)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1196, line: 64, size: 128, elements: !2142)
!2142 = !{!2143, !2144, !2145}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2141, file: !1196, line: 65, baseType: !766, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2141, file: !1196, line: 67, baseType: !173, size: 32, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2141, file: !1196, line: 68, baseType: !173, size: 32, offset: 96)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1260, file: !1261, line: 1206, baseType: !186, size: 32, offset: 12736)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1260, file: !1261, line: 1207, baseType: !186, size: 32, offset: 12768)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1260, file: !1261, line: 1209, baseType: !181, size: 64, offset: 12800)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1260, file: !1261, line: 1219, baseType: !210, size: 64, offset: 12864)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1260, file: !1261, line: 1220, baseType: !210, size: 64, offset: 12928)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1260, file: !1261, line: 1317, baseType: !186, size: 32, offset: 12992)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1260, file: !1261, line: 1319, baseType: !1259, size: 64, offset: 13056)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1260, file: !1261, line: 1322, baseType: !2154, size: 64, offset: 13120)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2156, line: 56, size: 512, elements: !2157)
!2156 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2157 = !{!2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2155, file: !2156, line: 57, baseType: !2154, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2155, file: !2156, line: 58, baseType: !120, size: 64, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2155, file: !2156, line: 59, baseType: !181, size: 64, offset: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2155, file: !2156, line: 60, baseType: !181, size: 64, offset: 192)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2155, file: !2156, line: 61, baseType: !865, size: 64, offset: 256)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2155, file: !2156, line: 62, baseType: !7, size: 32, offset: 320)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2155, file: !2156, line: 63, baseType: !209, size: 64, offset: 384)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2155, file: !2156, line: 64, baseType: !2166, size: 64, offset: 448)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1260, file: !1261, line: 1326, baseType: !1273, size: 32, offset: 13184)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1260, file: !1261, line: 1342, baseType: !120, size: 64, offset: 13248)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1260, file: !1261, line: 1343, baseType: !211, size: 64, offset: 13312)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1260, file: !1261, line: 1344, baseType: !210, size: 64, offset: 13376)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1260, file: !1261, line: 1345, baseType: !211, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1260, file: !1261, line: 1346, baseType: !211, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1260, file: !1261, line: 1347, baseType: !211, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1260, file: !1261, line: 1348, baseType: !418, size: 128, align: 64, offset: 13504)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1260, file: !1261, line: 1358, baseType: !2177, size: 34816, offset: 13824)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2178, line: 485, size: 34816, elements: !2179)
!2178 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2179 = !{!2180, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2209, !2210, !2211, !2212, !2213, !2214, !2217, !2218, !2219}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2177, file: !2178, line: 487, baseType: !2181, size: 192)
!2181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2182, size: 192, elements: !330)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2183, line: 16, size: 64, elements: !2184)
!2183 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2184 = !{!2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2182, file: !2183, line: 17, baseType: !904, size: 16)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2182, file: !2183, line: 18, baseType: !904, size: 16, offset: 16)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2182, file: !2183, line: 19, baseType: !904, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2182, file: !2183, line: 19, baseType: !904, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2182, file: !2183, line: 19, baseType: !904, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2182, file: !2183, line: 19, baseType: !904, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2182, file: !2183, line: 19, baseType: !904, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2182, file: !2183, line: 20, baseType: !904, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2182, file: !2183, line: 20, baseType: !904, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2182, file: !2183, line: 20, baseType: !904, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2182, file: !2183, line: 20, baseType: !904, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2182, file: !2183, line: 20, baseType: !904, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2182, file: !2183, line: 20, baseType: !904, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2177, file: !2178, line: 491, baseType: !181, size: 64, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2177, file: !2178, line: 495, baseType: !267, size: 16, offset: 256)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2177, file: !2178, line: 496, baseType: !267, size: 16, offset: 272)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2177, file: !2178, line: 497, baseType: !267, size: 16, offset: 288)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2177, file: !2178, line: 498, baseType: !267, size: 16, offset: 304)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2177, file: !2178, line: 502, baseType: !181, size: 64, offset: 320)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2177, file: !2178, line: 503, baseType: !181, size: 64, offset: 384)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2177, file: !2178, line: 514, baseType: !2206, size: 256, offset: 448)
!2206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2207, size: 256, elements: !220)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2178, line: 483, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2177, file: !2178, line: 516, baseType: !181, size: 64, offset: 704)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2177, file: !2178, line: 518, baseType: !181, size: 64, offset: 768)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2177, file: !2178, line: 520, baseType: !181, size: 64, offset: 832)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2177, file: !2178, line: 521, baseType: !181, size: 64, offset: 896)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2177, file: !2178, line: 522, baseType: !181, size: 64, offset: 960)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2177, file: !2178, line: 528, baseType: !2215, size: 64, offset: 1024)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2178, line: 10, flags: DIFlagFwdDecl)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2177, file: !2178, line: 535, baseType: !181, size: 64, offset: 1088)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2177, file: !2178, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2177, file: !2178, line: 540, baseType: !2220, size: 33280, offset: 1536)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2221, line: 317, size: 33280, elements: !2222)
!2221 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2222 = !{!2223, !2224, !2225}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2220, file: !2221, line: 330, baseType: !7, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2220, file: !2221, line: 337, baseType: !181, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2220, file: !2221, line: 348, baseType: !2226, size: 32768, offset: 512)
!2226 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2221, line: 304, size: 32768, elements: !2227)
!2227 = !{!2228, !2243, !2282, !2332, !2345}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2226, file: !2221, line: 305, baseType: !2229, size: 896)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2221, line: 12, size: 896, elements: !2230)
!2230 = !{!2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2242}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2229, file: !2221, line: 13, baseType: !245, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2229, file: !2221, line: 14, baseType: !245, size: 32, offset: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2229, file: !2221, line: 15, baseType: !245, size: 32, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2229, file: !2221, line: 16, baseType: !245, size: 32, offset: 96)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2229, file: !2221, line: 17, baseType: !245, size: 32, offset: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2229, file: !2221, line: 18, baseType: !245, size: 32, offset: 160)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2229, file: !2221, line: 19, baseType: !245, size: 32, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2229, file: !2221, line: 22, baseType: !2239, size: 640, offset: 224)
!2239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 640, elements: !2240)
!2240 = !{!2241}
!2241 = !DISubrange(count: 20)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2229, file: !2221, line: 25, baseType: !245, size: 32, offset: 864)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2226, file: !2221, line: 306, baseType: !2244, size: 4096, align: 128)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2221, line: 34, size: 4096, align: 128, elements: !2245)
!2245 = !{!2246, !2247, !2248, !2249, !2250, !2265, !2266, !2267, !2271, !2273, !2277}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2244, file: !2221, line: 35, baseType: !904, size: 16)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2244, file: !2221, line: 36, baseType: !904, size: 16, offset: 16)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2244, file: !2221, line: 37, baseType: !904, size: 16, offset: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2244, file: !2221, line: 38, baseType: !904, size: 16, offset: 48)
!2250 = !DIDerivedType(tag: DW_TAG_member, scope: !2244, file: !2221, line: 39, baseType: !2251, size: 128, offset: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2244, file: !2221, line: 39, size: 128, elements: !2252)
!2252 = !{!2253, !2258}
!2253 = !DIDerivedType(tag: DW_TAG_member, scope: !2251, file: !2221, line: 40, baseType: !2254, size: 128)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2251, file: !2221, line: 40, size: 128, elements: !2255)
!2255 = !{!2256, !2257}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2254, file: !2221, line: 41, baseType: !210, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2254, file: !2221, line: 42, baseType: !210, size: 64, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, scope: !2251, file: !2221, line: 44, baseType: !2259, size: 128)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2251, file: !2221, line: 44, size: 128, elements: !2260)
!2260 = !{!2261, !2262, !2263, !2264}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2259, file: !2221, line: 45, baseType: !245, size: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2259, file: !2221, line: 46, baseType: !245, size: 32, offset: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2259, file: !2221, line: 47, baseType: !245, size: 32, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2259, file: !2221, line: 48, baseType: !245, size: 32, offset: 96)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2244, file: !2221, line: 51, baseType: !245, size: 32, offset: 192)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2244, file: !2221, line: 52, baseType: !245, size: 32, offset: 224)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2244, file: !2221, line: 55, baseType: !2268, size: 1024, offset: 256)
!2268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 1024, elements: !2269)
!2269 = !{!2270}
!2270 = !DISubrange(count: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2244, file: !2221, line: 58, baseType: !2272, size: 2048, offset: 1280)
!2272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 2048, elements: !334)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2244, file: !2221, line: 60, baseType: !2274, size: 384, offset: 3328)
!2274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 384, elements: !2275)
!2275 = !{!2276}
!2276 = !DISubrange(count: 12)
!2277 = !DIDerivedType(tag: DW_TAG_member, scope: !2244, file: !2221, line: 62, baseType: !2278, size: 384, offset: 3712)
!2278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2244, file: !2221, line: 62, size: 384, elements: !2279)
!2279 = !{!2280, !2281}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2278, file: !2221, line: 63, baseType: !2274, size: 384)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2278, file: !2221, line: 64, baseType: !2274, size: 384)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2226, file: !2221, line: 307, baseType: !2283, size: 1088)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2221, line: 79, size: 1088, elements: !2284)
!2284 = !{!2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2331}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2283, file: !2221, line: 80, baseType: !245, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2283, file: !2221, line: 81, baseType: !245, size: 32, offset: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2283, file: !2221, line: 82, baseType: !245, size: 32, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2283, file: !2221, line: 83, baseType: !245, size: 32, offset: 96)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2283, file: !2221, line: 84, baseType: !245, size: 32, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2283, file: !2221, line: 85, baseType: !245, size: 32, offset: 160)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2283, file: !2221, line: 86, baseType: !245, size: 32, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2283, file: !2221, line: 88, baseType: !2239, size: 640, offset: 224)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2283, file: !2221, line: 89, baseType: !121, size: 8, offset: 864)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2283, file: !2221, line: 90, baseType: !121, size: 8, offset: 872)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2283, file: !2221, line: 91, baseType: !121, size: 8, offset: 880)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2283, file: !2221, line: 92, baseType: !121, size: 8, offset: 888)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2283, file: !2221, line: 93, baseType: !121, size: 8, offset: 896)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2283, file: !2221, line: 94, baseType: !121, size: 8, offset: 904)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2283, file: !2221, line: 95, baseType: !2300, size: 64, offset: 960)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2302, line: 11, size: 128, elements: !2303)
!2302 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2303 = !{!2304, !2305}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2301, file: !2302, line: 12, baseType: !364, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2301, file: !2302, line: 13, baseType: !2306, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2308, line: 56, size: 1344, elements: !2309)
!2308 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2309 = !{!2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2307, file: !2308, line: 61, baseType: !181, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2307, file: !2308, line: 62, baseType: !181, size: 64, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2307, file: !2308, line: 63, baseType: !181, size: 64, offset: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2307, file: !2308, line: 64, baseType: !181, size: 64, offset: 192)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2307, file: !2308, line: 65, baseType: !181, size: 64, offset: 256)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2307, file: !2308, line: 66, baseType: !181, size: 64, offset: 320)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2307, file: !2308, line: 68, baseType: !181, size: 64, offset: 384)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2307, file: !2308, line: 69, baseType: !181, size: 64, offset: 448)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2307, file: !2308, line: 70, baseType: !181, size: 64, offset: 512)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2307, file: !2308, line: 71, baseType: !181, size: 64, offset: 576)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2307, file: !2308, line: 72, baseType: !181, size: 64, offset: 640)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2307, file: !2308, line: 73, baseType: !181, size: 64, offset: 704)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2307, file: !2308, line: 74, baseType: !181, size: 64, offset: 768)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2307, file: !2308, line: 75, baseType: !181, size: 64, offset: 832)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2307, file: !2308, line: 76, baseType: !181, size: 64, offset: 896)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2307, file: !2308, line: 81, baseType: !181, size: 64, offset: 960)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2307, file: !2308, line: 83, baseType: !181, size: 64, offset: 1024)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2307, file: !2308, line: 84, baseType: !181, size: 64, offset: 1088)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2307, file: !2308, line: 85, baseType: !181, size: 64, offset: 1152)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2307, file: !2308, line: 86, baseType: !181, size: 64, offset: 1216)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2307, file: !2308, line: 87, baseType: !181, size: 64, offset: 1280)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2283, file: !2221, line: 96, baseType: !245, size: 32, offset: 1024)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2226, file: !2221, line: 308, baseType: !2333, size: 4608, align: 512)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2221, line: 289, size: 4608, align: 512, elements: !2334)
!2334 = !{!2335, !2336, !2343}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2333, file: !2221, line: 290, baseType: !2244, size: 4096, align: 128)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2333, file: !2221, line: 291, baseType: !2337, size: 512, offset: 4096)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2221, line: 268, size: 512, elements: !2338)
!2338 = !{!2339, !2340, !2341}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2337, file: !2221, line: 269, baseType: !210, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2337, file: !2221, line: 270, baseType: !210, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2337, file: !2221, line: 271, baseType: !2342, size: 384, offset: 128)
!2342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 384, elements: !1665)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2333, file: !2221, line: 292, baseType: !2344, offset: 4608)
!2344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, elements: !1763)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2226, file: !2221, line: 309, baseType: !2346, size: 32768)
!2346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 32768, elements: !2347)
!2347 = !{!2348}
!2348 = !DISubrange(count: 4096)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1256, file: !768, line: 378, baseType: !2350, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1252, file: !768, line: 384, baseType: !1542, size: 192, offset: 192)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1023, file: !768, line: 500, baseType: !288, offset: 6656)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1023, file: !768, line: 501, baseType: !2354, size: 64, offset: 6656)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !768, line: 387, flags: DIFlagFwdDecl)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1023, file: !768, line: 516, baseType: !1753, size: 64, offset: 6720)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1023, file: !768, line: 519, baseType: !405, size: 64, offset: 6784)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1023, file: !768, line: 521, baseType: !2359, size: 64, offset: 6848)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !768, line: 521, flags: DIFlagFwdDecl)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1023, file: !768, line: 545, baseType: !792, size: 32, offset: 6912)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1023, file: !768, line: 548, baseType: !535, size: 8, offset: 6944)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1023, file: !768, line: 550, baseType: !2364, offset: 6952)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2365, line: 142, elements: !302)
!2365 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1023, file: !768, line: 554, baseType: !1997, size: 256, offset: 6976)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1023, file: !768, line: 557, baseType: !245, size: 32, offset: 7232)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1020, file: !768, line: 565, baseType: !2369, offset: 7296)
!2369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, elements: !2370)
!2370 = !{!2371}
!2371 = !DISubrange(count: -1)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1016, file: !768, line: 151, baseType: !792, size: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1009, file: !768, line: 156, baseType: !288, offset: 256)
!2374 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !768, line: 159, baseType: !2375, size: 128)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !772, file: !768, line: 159, size: 128, elements: !2376)
!2376 = !{!2377, !2441}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2375, file: !768, line: 161, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2380)
!2380 = !{!2381, !2391, !2412, !2413, !2414, !2415, !2416, !2428, !2429, !2430}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2379, file: !31, line: 111, baseType: !2382, size: 384)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2383)
!2383 = !{!2384, !2386, !2387, !2388, !2389, !2390}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2382, file: !31, line: 20, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2382, file: !31, line: 21, baseType: !2385, size: 64, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2382, file: !31, line: 22, baseType: !2385, size: 64, offset: 128)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2382, file: !31, line: 23, baseType: !181, size: 64, offset: 192)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2382, file: !31, line: 24, baseType: !181, size: 64, offset: 256)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2382, file: !31, line: 25, baseType: !181, size: 64, offset: 320)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2379, file: !31, line: 112, baseType: !2392, size: 64, offset: 384)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2394, line: 105, size: 128, elements: !2395)
!2394 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2395 = !{!2396, !2397}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2393, file: !2394, line: 110, baseType: !181, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2393, file: !2394, line: 118, baseType: !2398, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2394, line: 95, size: 448, elements: !2400)
!2400 = !{!2401, !2402, !2407, !2408, !2409, !2410, !2411}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2399, file: !2394, line: 96, baseType: !816, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2399, file: !2394, line: 97, baseType: !2403, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2394, line: 60, baseType: !2405)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{null, !2392}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2399, file: !2394, line: 98, baseType: !2403, size: 64, offset: 128)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2399, file: !2394, line: 99, baseType: !535, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2399, file: !2394, line: 100, baseType: !535, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2399, file: !2394, line: 101, baseType: !418, size: 128, align: 64, offset: 256)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2399, file: !2394, line: 102, baseType: !2392, size: 64, offset: 384)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2379, file: !31, line: 113, baseType: !2393, size: 128, offset: 448)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2379, file: !31, line: 114, baseType: !1542, size: 192, offset: 576)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2379, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2379, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2379, file: !31, line: 117, baseType: !2417, size: 64, offset: 832)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2419)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2420)
!2420 = !{!2421, !2422, !2426, !2427}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2419, file: !31, line: 73, baseType: !885, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2419, file: !31, line: 78, baseType: !2423, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{null, !2378}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2419, file: !31, line: 83, baseType: !2423, size: 64, offset: 128)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2419, file: !31, line: 89, baseType: !1072, size: 64, offset: 192)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2379, file: !31, line: 118, baseType: !120, size: 64, offset: 896)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2379, file: !31, line: 119, baseType: !186, size: 32, offset: 960)
!2430 = !DIDerivedType(tag: DW_TAG_member, scope: !2379, file: !31, line: 120, baseType: !2431, size: 128, offset: 1024)
!2431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2379, file: !31, line: 120, size: 128, elements: !2432)
!2432 = !{!2433, !2439}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2431, file: !31, line: 121, baseType: !2434, size: 128)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2435, line: 6, size: 128, elements: !2436)
!2435 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2436 = !{!2437, !2438}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2434, file: !2435, line: 7, baseType: !210, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2434, file: !2435, line: 8, baseType: !210, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2431, file: !31, line: 122, baseType: !2440)
!2440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2434, elements: !1763)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2375, file: !768, line: 162, baseType: !120, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !772, file: !768, line: 176, baseType: !418, size: 128, align: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !768, line: 179, baseType: !2444, size: 32, offset: 384)
!2444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !768, line: 179, size: 32, elements: !2445)
!2445 = !{!2446, !2447, !2448, !2449}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2444, file: !768, line: 184, baseType: !792, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2444, file: !768, line: 192, baseType: !7, size: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2444, file: !768, line: 194, baseType: !7, size: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2444, file: !768, line: 195, baseType: !186, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !767, file: !768, line: 199, baseType: !792, size: 32, offset: 416)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !702, file: !44, line: 1964, baseType: !2452, size: 64, offset: 1344)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!364, !644, !2455}
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2457, line: 12, size: 256, elements: !2458)
!2457 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2458 = !{!2459, !2460, !2461, !2462, !2463}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2456, file: !2457, line: 13, baseType: !118, size: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2456, file: !2457, line: 16, baseType: !186, size: 32, offset: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2456, file: !2457, line: 23, baseType: !181, size: 64, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2456, file: !2457, line: 30, baseType: !181, size: 64, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2456, file: !2457, line: 33, baseType: !2464, size: 64, offset: 192)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !768, line: 27, flags: DIFlagFwdDecl)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !702, file: !44, line: 1966, baseType: !2452, size: 64, offset: 1408)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !645, file: !44, line: 1424, baseType: !2468, size: 64, offset: 448)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2470)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2471)
!2471 = !{!2472, !2518, !2522, !2526, !2527, !2528, !2529, !2530, !2535, !2540, !2544}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2470, file: !38, line: 323, baseType: !2473, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!186, !2476}
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2478)
!2478 = !{!2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2503, !2504, !2505}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2477, file: !38, line: 295, baseType: !684, size: 128)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2477, file: !38, line: 296, baseType: !159, size: 128, offset: 128)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2477, file: !38, line: 297, baseType: !159, size: 128, offset: 256)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2477, file: !38, line: 298, baseType: !159, size: 128, offset: 384)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2477, file: !38, line: 299, baseType: !1216, size: 192, offset: 512)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2477, file: !38, line: 300, baseType: !288, offset: 704)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2477, file: !38, line: 301, baseType: !792, size: 32, offset: 704)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2477, file: !38, line: 302, baseType: !644, size: 64, offset: 768)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2477, file: !38, line: 303, baseType: !2488, size: 64, offset: 832)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2489)
!2489 = !{!2490, !2502}
!2490 = !DIDerivedType(tag: DW_TAG_member, scope: !2488, file: !38, line: 69, baseType: !2491, size: 32)
!2491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2488, file: !38, line: 69, size: 32, elements: !2492)
!2492 = !{!2493, !2494, !2495}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2491, file: !38, line: 70, baseType: !480, size: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2491, file: !38, line: 71, baseType: !488, size: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2491, file: !38, line: 72, baseType: !2496, size: 32)
!2496 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2497, line: 24, baseType: !2498)
!2497 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2497, line: 22, size: 32, elements: !2499)
!2499 = !{!2500}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2498, file: !2497, line: 23, baseType: !2501, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2497, line: 20, baseType: !486)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2488, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2477, file: !38, line: 304, baseType: !576, size: 64, offset: 896)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2477, file: !38, line: 305, baseType: !181, size: 64, offset: 960)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2477, file: !38, line: 306, baseType: !2506, size: 576, offset: 1024)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2507)
!2507 = !{!2508, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2506, file: !38, line: 206, baseType: !2509, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !578)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2506, file: !38, line: 207, baseType: !2509, size: 64, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2506, file: !38, line: 208, baseType: !2509, size: 64, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2506, file: !38, line: 209, baseType: !2509, size: 64, offset: 192)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2506, file: !38, line: 210, baseType: !2509, size: 64, offset: 256)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2506, file: !38, line: 211, baseType: !2509, size: 64, offset: 320)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2506, file: !38, line: 212, baseType: !2509, size: 64, offset: 384)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2506, file: !38, line: 213, baseType: !584, size: 64, offset: 448)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2506, file: !38, line: 214, baseType: !584, size: 64, offset: 512)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2470, file: !38, line: 324, baseType: !2519, size: 64, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!2476, !644, !186}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2470, file: !38, line: 325, baseType: !2523, size: 64, offset: 128)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{null, !2476}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2470, file: !38, line: 326, baseType: !2473, size: 64, offset: 192)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2470, file: !38, line: 327, baseType: !2473, size: 64, offset: 256)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2470, file: !38, line: 328, baseType: !2473, size: 64, offset: 320)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2470, file: !38, line: 329, baseType: !730, size: 64, offset: 384)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2470, file: !38, line: 332, baseType: !2531, size: 64, offset: 448)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!2534, !474}
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2470, file: !38, line: 333, baseType: !2536, size: 64, offset: 512)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!186, !474, !2539}
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2470, file: !38, line: 335, baseType: !2541, size: 64, offset: 576)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!186, !474, !2534}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2470, file: !38, line: 337, baseType: !2545, size: 64, offset: 640)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!186, !644, !2548}
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !645, file: !44, line: 1425, baseType: !2550, size: 64, offset: 512)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2552)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2553)
!2553 = !{!2554, !2558, !2559, !2563, !2564, !2565, !2580, !2603, !2607, !2608, !2631}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2552, file: !38, line: 429, baseType: !2555, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!186, !644, !186, !186, !594}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2552, file: !38, line: 430, baseType: !730, size: 64, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2552, file: !38, line: 431, baseType: !2560, size: 64, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!186, !644, !7}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2552, file: !38, line: 432, baseType: !2560, size: 64, offset: 192)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2552, file: !38, line: 433, baseType: !730, size: 64, offset: 256)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2552, file: !38, line: 434, baseType: !2566, size: 64, offset: 320)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!186, !644, !186, !2569}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2571)
!2571 = !{!2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2570, file: !38, line: 416, baseType: !186, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2570, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2570, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2570, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2570, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2570, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2570, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2570, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2552, file: !38, line: 435, baseType: !2581, size: 64, offset: 384)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!186, !644, !2488, !2584}
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2586)
!2586 = !{!2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2585, file: !38, line: 344, baseType: !186, size: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2585, file: !38, line: 345, baseType: !210, size: 64, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2585, file: !38, line: 346, baseType: !210, size: 64, offset: 128)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2585, file: !38, line: 347, baseType: !210, size: 64, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2585, file: !38, line: 348, baseType: !210, size: 64, offset: 256)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2585, file: !38, line: 349, baseType: !210, size: 64, offset: 320)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2585, file: !38, line: 350, baseType: !210, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2585, file: !38, line: 351, baseType: !822, size: 64, offset: 448)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2585, file: !38, line: 353, baseType: !822, size: 64, offset: 512)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2585, file: !38, line: 354, baseType: !186, size: 32, offset: 576)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2585, file: !38, line: 355, baseType: !186, size: 32, offset: 608)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2585, file: !38, line: 356, baseType: !210, size: 64, offset: 640)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2585, file: !38, line: 357, baseType: !210, size: 64, offset: 704)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2585, file: !38, line: 358, baseType: !210, size: 64, offset: 768)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2585, file: !38, line: 359, baseType: !822, size: 64, offset: 832)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2585, file: !38, line: 360, baseType: !186, size: 32, offset: 896)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2552, file: !38, line: 436, baseType: !2604, size: 64, offset: 448)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!186, !644, !2548, !2584}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2552, file: !38, line: 438, baseType: !2581, size: 64, offset: 512)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2552, file: !38, line: 439, baseType: !2609, size: 64, offset: 576)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!186, !644, !2612}
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2614)
!2614 = !{!2615, !2616}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2613, file: !38, line: 410, baseType: !7, size: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2613, file: !38, line: 411, baseType: !2617, size: 1344, offset: 64)
!2617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2618, size: 1344, elements: !330)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2619)
!2619 = !{!2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2630}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2618, file: !38, line: 396, baseType: !7, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2618, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2618, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2618, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2618, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2618, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2618, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2618, file: !38, line: 404, baseType: !212, size: 64, offset: 256)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2618, file: !38, line: 405, baseType: !2629, size: 64, offset: 320)
!2629 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !119, line: 126, baseType: !210)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2618, file: !38, line: 406, baseType: !2629, size: 64, offset: 384)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2552, file: !38, line: 440, baseType: !2560, size: 64, offset: 640)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !645, file: !44, line: 1426, baseType: !2633, size: 64, offset: 576)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2635)
!2635 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !645, file: !44, line: 1427, baseType: !181, size: 64, offset: 640)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !645, file: !44, line: 1428, baseType: !181, size: 64, offset: 704)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !645, file: !44, line: 1429, baseType: !181, size: 64, offset: 768)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !645, file: !44, line: 1430, baseType: !435, size: 64, offset: 832)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !645, file: !44, line: 1431, baseType: !812, size: 256, offset: 896)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !645, file: !44, line: 1432, baseType: !186, size: 32, offset: 1152)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !645, file: !44, line: 1433, baseType: !792, size: 32, offset: 1184)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !645, file: !44, line: 1437, baseType: !2644, size: 64, offset: 1216)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2647)
!2647 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !645, file: !44, line: 1449, baseType: !2649, size: 64, offset: 1280)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !451, line: 34, size: 64, elements: !2650)
!2650 = !{!2651}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2649, file: !451, line: 35, baseType: !454, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !645, file: !44, line: 1450, baseType: !159, size: 128, offset: 1344)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !645, file: !44, line: 1451, baseType: !2654, size: 64, offset: 1472)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !645, file: !44, line: 1452, baseType: !1963, size: 64, offset: 1536)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !645, file: !44, line: 1453, baseType: !2658, size: 64, offset: 1600)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !645, file: !44, line: 1454, baseType: !684, size: 128, offset: 1664)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !645, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !645, file: !44, line: 1456, baseType: !2663, size: 2432, offset: 1856)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2664)
!2664 = !{!2665, !2666, !2667, !2669, !2701}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2663, file: !38, line: 519, baseType: !7, size: 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2663, file: !38, line: 520, baseType: !812, size: 256, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2663, file: !38, line: 521, baseType: !2668, size: 192, offset: 320)
!2668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 192, elements: !330)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2663, file: !38, line: 522, baseType: !2670, size: 1728, offset: 512)
!2670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2671, size: 1728, elements: !330)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2672)
!2672 = !{!2673, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2671, file: !38, line: 223, baseType: !2674, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2676)
!2676 = !{!2677, !2678, !2691, !2692}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2675, file: !38, line: 444, baseType: !186, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2675, file: !38, line: 445, baseType: !2679, size: 64, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2681)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2682)
!2682 = !{!2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2681, file: !38, line: 311, baseType: !730, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2681, file: !38, line: 312, baseType: !730, size: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2681, file: !38, line: 313, baseType: !730, size: 64, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2681, file: !38, line: 314, baseType: !730, size: 64, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2681, file: !38, line: 315, baseType: !2473, size: 64, offset: 256)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2681, file: !38, line: 316, baseType: !2473, size: 64, offset: 320)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2681, file: !38, line: 317, baseType: !2473, size: 64, offset: 384)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2681, file: !38, line: 318, baseType: !2545, size: 64, offset: 448)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2675, file: !38, line: 446, baseType: !115, size: 64, offset: 128)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2675, file: !38, line: 447, baseType: !2674, size: 64, offset: 192)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2671, file: !38, line: 224, baseType: !186, size: 32, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2671, file: !38, line: 226, baseType: !159, size: 128, offset: 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2671, file: !38, line: 227, baseType: !181, size: 64, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2671, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2671, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2671, file: !38, line: 230, baseType: !2509, size: 64, offset: 384)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2671, file: !38, line: 231, baseType: !2509, size: 64, offset: 448)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2671, file: !38, line: 232, baseType: !120, size: 64, offset: 512)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2663, file: !38, line: 523, baseType: !2702, size: 192, offset: 2240)
!2702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2679, size: 192, elements: !330)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !645, file: !44, line: 1458, baseType: !2704, size: 2112, offset: 4288)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2705)
!2705 = !{!2706, !2707, !2708}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2704, file: !44, line: 1411, baseType: !186, size: 32)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2704, file: !44, line: 1412, baseType: !1521, size: 128, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2704, file: !44, line: 1413, baseType: !2709, size: 1920, offset: 192)
!2709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2710, size: 1920, elements: !330)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2711, line: 12, size: 640, elements: !2712)
!2711 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2712 = !{!2713, !2721, !2723, !2728, !2729}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2710, file: !2711, line: 13, baseType: !2714, size: 320)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2715, line: 17, size: 320, elements: !2716)
!2715 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2716 = !{!2717, !2718, !2719, !2720}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2714, file: !2715, line: 18, baseType: !186, size: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2714, file: !2715, line: 19, baseType: !186, size: 32, offset: 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2714, file: !2715, line: 20, baseType: !1521, size: 128, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2714, file: !2715, line: 22, baseType: !418, size: 128, align: 64, offset: 192)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2710, file: !2711, line: 14, baseType: !2722, size: 64, offset: 320)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2710, file: !2711, line: 15, baseType: !2724, size: 64, offset: 384)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2725, line: 16, size: 64, elements: !2726)
!2725 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2726 = !{!2727}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2724, file: !2725, line: 17, baseType: !1259, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2710, file: !2711, line: 16, baseType: !1521, size: 128, offset: 448)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2710, file: !2711, line: 17, baseType: !792, size: 32, offset: 576)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !645, file: !44, line: 1465, baseType: !120, size: 64, offset: 6400)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !645, file: !44, line: 1468, baseType: !245, size: 32, offset: 6464)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !645, file: !44, line: 1470, baseType: !584, size: 64, offset: 6528)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !645, file: !44, line: 1471, baseType: !584, size: 64, offset: 6592)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !645, file: !44, line: 1473, baseType: !173, size: 32, offset: 6656)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !645, file: !44, line: 1474, baseType: !2736, size: 64, offset: 6720)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !645, file: !44, line: 1477, baseType: !2739, size: 256, offset: 6784)
!2739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 256, elements: !2269)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !645, file: !44, line: 1478, baseType: !2741, size: 128, offset: 7040)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2742, line: 18, baseType: !2743)
!2742 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2742, line: 16, size: 128, elements: !2744)
!2744 = !{!2745}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2743, file: !2742, line: 17, baseType: !2746, size: 128)
!2746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 128, elements: !1775)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !645, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !645, file: !44, line: 1481, baseType: !2749, size: 32, offset: 7200)
!2749 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !119, line: 150, baseType: !7)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !645, file: !44, line: 1487, baseType: !1216, size: 192, offset: 7232)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !645, file: !44, line: 1493, baseType: !165, size: 64, offset: 7424)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !645, file: !44, line: 1495, baseType: !2753, size: 64, offset: 7488)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2755)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !433, line: 135, size: 1024, align: 512, elements: !2756)
!2756 = !{!2757, !2761, !2762, !2769, !2775, !2779, !2783, !2787, !2788, !2792, !2796, !2801, !2805}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2755, file: !433, line: 136, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!186, !435, !7}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2755, file: !433, line: 137, baseType: !2758, size: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2755, file: !433, line: 138, baseType: !2763, size: 64, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!186, !2766, !2768}
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2755, file: !433, line: 139, baseType: !2770, size: 64, offset: 192)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!186, !2766, !7, !165, !2773}
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2755, file: !433, line: 141, baseType: !2776, size: 64, offset: 256)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!186, !2766}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2755, file: !433, line: 142, baseType: !2780, size: 64, offset: 320)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!186, !435}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2755, file: !433, line: 143, baseType: !2784, size: 64, offset: 384)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{null, !435}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2755, file: !433, line: 144, baseType: !2784, size: 64, offset: 448)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2755, file: !433, line: 145, baseType: !2789, size: 64, offset: 512)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{null, !435, !474}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2755, file: !433, line: 146, baseType: !2793, size: 64, offset: 576)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!329, !435, !329, !186}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2755, file: !433, line: 147, baseType: !2797, size: 64, offset: 640)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!431, !2800}
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2755, file: !433, line: 148, baseType: !2802, size: 64, offset: 704)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!186, !594, !535}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2755, file: !433, line: 149, baseType: !2806, size: 64, offset: 768)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!435, !435, !2809}
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !645, file: !44, line: 1500, baseType: !186, size: 32, offset: 7552)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !645, file: !44, line: 1502, baseType: !2813, size: 448, offset: 7616)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2457, line: 60, size: 448, elements: !2814)
!2814 = !{!2815, !2820, !2821, !2822, !2823, !2824, !2825}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2813, file: !2457, line: 61, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!181, !2819, !2455}
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2813, file: !2457, line: 63, baseType: !2816, size: 64, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2813, file: !2457, line: 66, baseType: !364, size: 64, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2813, file: !2457, line: 67, baseType: !186, size: 32, offset: 192)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2813, file: !2457, line: 68, baseType: !7, size: 32, offset: 224)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2813, file: !2457, line: 71, baseType: !159, size: 128, offset: 256)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2813, file: !2457, line: 77, baseType: !2826, size: 64, offset: 384)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !645, file: !44, line: 1505, baseType: !816, size: 64, offset: 8064)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !645, file: !44, line: 1508, baseType: !816, size: 64, offset: 8128)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !645, file: !44, line: 1511, baseType: !186, size: 32, offset: 8192)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !645, file: !44, line: 1514, baseType: !954, size: 32, offset: 8224)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !645, file: !44, line: 1517, baseType: !2832, size: 64, offset: 8256)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1998, line: 18, flags: DIFlagFwdDecl)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !645, file: !44, line: 1518, baseType: !680, size: 64, offset: 8320)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !645, file: !44, line: 1525, baseType: !1753, size: 64, offset: 8384)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !645, file: !44, line: 1532, baseType: !2837, size: 64, offset: 8448)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2838, line: 52, size: 64, elements: !2839)
!2838 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2839 = !{!2840}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2837, file: !2838, line: 53, baseType: !2841, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2838, line: 40, size: 256, elements: !2843)
!2843 = !{!2844, !2845, !2850}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2842, file: !2838, line: 42, baseType: !288)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2842, file: !2838, line: 44, baseType: !2846, size: 192)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2838, line: 28, size: 192, elements: !2847)
!2847 = !{!2848, !2849}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2846, file: !2838, line: 29, baseType: !159, size: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2846, file: !2838, line: 31, baseType: !364, size: 64, offset: 128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2842, file: !2838, line: 49, baseType: !364, size: 64, offset: 192)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !645, file: !44, line: 1533, baseType: !2837, size: 64, offset: 8512)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !645, file: !44, line: 1534, baseType: !418, size: 128, align: 64, offset: 8576)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !645, file: !44, line: 1535, baseType: !1997, size: 256, offset: 8704)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !645, file: !44, line: 1537, baseType: !1216, size: 192, offset: 8960)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !645, file: !44, line: 1542, baseType: !186, size: 32, offset: 9152)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !645, file: !44, line: 1545, baseType: !288, offset: 9184)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !645, file: !44, line: 1546, baseType: !159, size: 128, offset: 9216)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !645, file: !44, line: 1548, baseType: !288, offset: 9344)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !645, file: !44, line: 1549, baseType: !159, size: 128, offset: 9344)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !475, file: !44, line: 624, baseType: !779, size: 64, offset: 256)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !475, file: !44, line: 631, baseType: !181, size: 64, offset: 320)
!2862 = !DIDerivedType(tag: DW_TAG_member, scope: !475, file: !44, line: 639, baseType: !2863, size: 32, offset: 384)
!2863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !475, file: !44, line: 639, size: 32, elements: !2864)
!2864 = !{!2865, !2867}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2863, file: !44, line: 640, baseType: !2866, size: 32)
!2866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2863, file: !44, line: 641, baseType: !7, size: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !475, file: !44, line: 643, baseType: !558, size: 32, offset: 416)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !475, file: !44, line: 644, baseType: !576, size: 64, offset: 448)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !475, file: !44, line: 645, baseType: !580, size: 128, offset: 512)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !475, file: !44, line: 646, baseType: !580, size: 128, offset: 640)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !475, file: !44, line: 647, baseType: !580, size: 128, offset: 768)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !475, file: !44, line: 648, baseType: !288, offset: 896)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !475, file: !44, line: 649, baseType: !267, size: 16, offset: 896)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !475, file: !44, line: 650, baseType: !121, size: 8, offset: 912)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !475, file: !44, line: 651, baseType: !121, size: 8, offset: 920)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !475, file: !44, line: 652, baseType: !2629, size: 64, offset: 960)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !475, file: !44, line: 659, baseType: !181, size: 64, offset: 1024)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !475, file: !44, line: 660, baseType: !812, size: 256, offset: 1088)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !475, file: !44, line: 662, baseType: !181, size: 64, offset: 1344)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !475, file: !44, line: 663, baseType: !181, size: 64, offset: 1408)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !475, file: !44, line: 665, baseType: !684, size: 128, offset: 1472)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !475, file: !44, line: 666, baseType: !159, size: 128, offset: 1600)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !475, file: !44, line: 675, baseType: !159, size: 128, offset: 1728)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !475, file: !44, line: 676, baseType: !159, size: 128, offset: 1856)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !475, file: !44, line: 677, baseType: !159, size: 128, offset: 1984)
!2887 = !DIDerivedType(tag: DW_TAG_member, scope: !475, file: !44, line: 678, baseType: !2888, size: 128, offset: 2112)
!2888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !475, file: !44, line: 678, size: 128, elements: !2889)
!2889 = !{!2890, !2891}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2888, file: !44, line: 679, baseType: !680, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2888, file: !44, line: 680, baseType: !418, size: 128, align: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !475, file: !44, line: 682, baseType: !818, size: 64, offset: 2240)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !475, file: !44, line: 683, baseType: !818, size: 64, offset: 2304)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !475, file: !44, line: 684, baseType: !792, size: 32, offset: 2368)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !475, file: !44, line: 685, baseType: !792, size: 32, offset: 2400)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !475, file: !44, line: 686, baseType: !792, size: 32, offset: 2432)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !475, file: !44, line: 688, baseType: !792, size: 32, offset: 2464)
!2898 = !DIDerivedType(tag: DW_TAG_member, scope: !475, file: !44, line: 690, baseType: !2899, size: 64, offset: 2496)
!2899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !475, file: !44, line: 690, size: 64, elements: !2900)
!2900 = !{!2901, !3124}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2899, file: !44, line: 691, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2904)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2905)
!2905 = !{!2906, !2907, !2911, !2916, !2920, !2921, !2922, !2926, !2939, !2940, !2948, !2952, !2953, !2957, !2958, !2962, !2967, !2968, !2972, !2976, !3084, !3088, !3089, !3093, !3094, !3098, !3102, !3107, !3111, !3115, !3119, !3123}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2904, file: !44, line: 1823, baseType: !115, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2904, file: !44, line: 1824, baseType: !2908, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!576, !405, !576, !186}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2904, file: !44, line: 1825, baseType: !2912, size: 64, offset: 128)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!360, !405, !329, !375, !2915}
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2904, file: !44, line: 1826, baseType: !2917, size: 64, offset: 192)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!360, !405, !165, !375, !2915}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2904, file: !44, line: 1827, baseType: !889, size: 64, offset: 256)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2904, file: !44, line: 1828, baseType: !889, size: 64, offset: 320)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2904, file: !44, line: 1829, baseType: !2923, size: 64, offset: 384)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!186, !892, !535}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2904, file: !44, line: 1830, baseType: !2927, size: 64, offset: 448)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!186, !405, !2930}
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2932)
!2932 = !{!2933, !2938}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2931, file: !44, line: 1777, baseType: !2934, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2935)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!186, !2930, !165, !186, !576, !210, !7}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2931, file: !44, line: 1778, baseType: !576, size: 64, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2904, file: !44, line: 1831, baseType: !2927, size: 64, offset: 512)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2904, file: !44, line: 1832, baseType: !2941, size: 64, offset: 576)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!2944, !405, !2946}
!2944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2945, line: 52, baseType: !7)
!2945 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !664, line: 27, flags: DIFlagFwdDecl)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2904, file: !44, line: 1833, baseType: !2949, size: 64, offset: 640)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!364, !405, !7, !181}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2904, file: !44, line: 1834, baseType: !2949, size: 64, offset: 704)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2904, file: !44, line: 1835, baseType: !2954, size: 64, offset: 768)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!186, !405, !1026}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2904, file: !44, line: 1836, baseType: !181, size: 64, offset: 832)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2904, file: !44, line: 1837, baseType: !2959, size: 64, offset: 896)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!186, !474, !405}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2904, file: !44, line: 1838, baseType: !2963, size: 64, offset: 960)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!186, !405, !2966}
!2966 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !120)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2904, file: !44, line: 1839, baseType: !2959, size: 64, offset: 1024)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2904, file: !44, line: 1840, baseType: !2969, size: 64, offset: 1088)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!186, !405, !576, !576, !186}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2904, file: !44, line: 1841, baseType: !2973, size: 64, offset: 1152)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!186, !186, !405, !186}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2904, file: !44, line: 1842, baseType: !2977, size: 64, offset: 1216)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!186, !405, !186, !2980}
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2982)
!2982 = !{!2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !3014, !3015, !3016, !3029, !3060}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2981, file: !44, line: 1063, baseType: !2980, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2981, file: !44, line: 1064, baseType: !159, size: 128, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2981, file: !44, line: 1065, baseType: !684, size: 128, offset: 192)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2981, file: !44, line: 1066, baseType: !159, size: 128, offset: 320)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2981, file: !44, line: 1069, baseType: !159, size: 128, offset: 448)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2981, file: !44, line: 1072, baseType: !2966, size: 64, offset: 576)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2981, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2981, file: !44, line: 1074, baseType: !125, size: 8, offset: 672)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2981, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2981, file: !44, line: 1076, baseType: !186, size: 32, offset: 736)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2981, file: !44, line: 1077, baseType: !1521, size: 128, offset: 768)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2981, file: !44, line: 1078, baseType: !405, size: 64, offset: 896)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2981, file: !44, line: 1079, baseType: !576, size: 64, offset: 960)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2981, file: !44, line: 1080, baseType: !576, size: 64, offset: 1024)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2981, file: !44, line: 1082, baseType: !2998, size: 64, offset: 1088)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !3000)
!3000 = !{!3001, !3009, !3010, !3011, !3012, !3013}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2999, file: !44, line: 1315, baseType: !3002)
!3002 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3003, line: 20, baseType: !3004)
!3003 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3003, line: 11, elements: !3005)
!3005 = !{!3006}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3004, file: !3003, line: 12, baseType: !3007)
!3007 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !300, line: 33, baseType: !3008)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !300, line: 31, elements: !302)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2999, file: !44, line: 1316, baseType: !186, size: 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2999, file: !44, line: 1317, baseType: !186, size: 32, offset: 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2999, file: !44, line: 1318, baseType: !2998, size: 64, offset: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2999, file: !44, line: 1319, baseType: !405, size: 64, offset: 128)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2999, file: !44, line: 1320, baseType: !418, size: 128, align: 64, offset: 192)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2981, file: !44, line: 1084, baseType: !181, size: 64, offset: 1152)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2981, file: !44, line: 1085, baseType: !181, size: 64, offset: 1216)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2981, file: !44, line: 1087, baseType: !3017, size: 64, offset: 1280)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3019)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3020)
!3020 = !{!3021, !3025}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3019, file: !44, line: 1012, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{null, !2980, !2980}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3019, file: !44, line: 1013, baseType: !3026, size: 64, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{null, !2980}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2981, file: !44, line: 1088, baseType: !3030, size: 64, offset: 1344)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3032)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3033)
!3033 = !{!3034, !3038, !3042, !3043, !3047, !3051, !3055, !3059}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3032, file: !44, line: 1017, baseType: !3035, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!2966, !2966}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3032, file: !44, line: 1018, baseType: !3039, size: 64, offset: 64)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{null, !2966}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3032, file: !44, line: 1019, baseType: !3026, size: 64, offset: 128)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3032, file: !44, line: 1020, baseType: !3044, size: 64, offset: 192)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!186, !2980, !186}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3032, file: !44, line: 1021, baseType: !3048, size: 64, offset: 256)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!535, !2980}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3032, file: !44, line: 1022, baseType: !3052, size: 64, offset: 320)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!186, !2980, !186, !162}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3032, file: !44, line: 1023, baseType: !3056, size: 64, offset: 384)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{null, !2980, !866}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3032, file: !44, line: 1024, baseType: !3048, size: 64, offset: 448)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2981, file: !44, line: 1097, baseType: !3061, size: 256, offset: 1408)
!3061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2981, file: !44, line: 1089, size: 256, elements: !3062)
!3062 = !{!3063, !3072, !3078}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3061, file: !44, line: 1090, baseType: !3064, size: 256)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3065, line: 10, size: 256, elements: !3066)
!3065 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3066 = !{!3067, !3068, !3071}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3064, file: !3065, line: 11, baseType: !245, size: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3064, file: !3065, line: 12, baseType: !3069, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3065, line: 5, flags: DIFlagFwdDecl)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3064, file: !3065, line: 13, baseType: !159, size: 128, offset: 128)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3061, file: !44, line: 1091, baseType: !3073, size: 64)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3065, line: 17, size: 64, elements: !3074)
!3074 = !{!3075}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3073, file: !3065, line: 18, baseType: !3076, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3065, line: 16, flags: DIFlagFwdDecl)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3061, file: !44, line: 1096, baseType: !3079, size: 192)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3061, file: !44, line: 1092, size: 192, elements: !3080)
!3080 = !{!3081, !3082, !3083}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3079, file: !44, line: 1093, baseType: !159, size: 128)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3079, file: !44, line: 1094, baseType: !186, size: 32, offset: 128)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3079, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2904, file: !44, line: 1843, baseType: !3085, size: 64, offset: 1280)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!360, !405, !766, !186, !375, !2915, !186}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2904, file: !44, line: 1844, baseType: !1146, size: 64, offset: 1344)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2904, file: !44, line: 1845, baseType: !3090, size: 64, offset: 1408)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!186, !186}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2904, file: !44, line: 1846, baseType: !2977, size: 64, offset: 1472)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2904, file: !44, line: 1847, baseType: !3095, size: 64, offset: 1536)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!360, !2138, !405, !2915, !375, !7}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2904, file: !44, line: 1848, baseType: !3099, size: 64, offset: 1600)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!360, !405, !2915, !2138, !375, !7}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2904, file: !44, line: 1849, baseType: !3103, size: 64, offset: 1664)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!186, !405, !364, !3106, !866}
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2904, file: !44, line: 1850, baseType: !3108, size: 64, offset: 1728)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!364, !405, !186, !576, !576}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2904, file: !44, line: 1852, baseType: !3112, size: 64, offset: 1792)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{null, !756, !405}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2904, file: !44, line: 1856, baseType: !3116, size: 64, offset: 1856)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!360, !405, !576, !405, !576, !375, !7}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2904, file: !44, line: 1858, baseType: !3120, size: 64, offset: 1920)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!576, !405, !576, !405, !576, !576, !7}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2904, file: !44, line: 1861, baseType: !2969, size: 64, offset: 1984)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2899, file: !44, line: 692, baseType: !709, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !475, file: !44, line: 694, baseType: !3126, size: 64, offset: 2560)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3128)
!3128 = !{!3129, !3130, !3131, !3132}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3127, file: !44, line: 1101, baseType: !288)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3127, file: !44, line: 1102, baseType: !159, size: 128)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3127, file: !44, line: 1103, baseType: !159, size: 128, offset: 128)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3127, file: !44, line: 1104, baseType: !159, size: 128, offset: 256)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !475, file: !44, line: 695, baseType: !780, size: 1216, align: 64, offset: 2624)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !475, file: !44, line: 696, baseType: !159, size: 128, offset: 3840)
!3135 = !DIDerivedType(tag: DW_TAG_member, scope: !475, file: !44, line: 697, baseType: !3136, size: 64, offset: 3968)
!3136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !475, file: !44, line: 697, size: 64, elements: !3137)
!3137 = !{!3138, !3139, !3140, !3143, !3144}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3136, file: !44, line: 698, baseType: !2138, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3136, file: !44, line: 699, baseType: !2654, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3136, file: !44, line: 700, baseType: !3141, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3136, file: !44, line: 701, baseType: !329, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3136, file: !44, line: 702, baseType: !7, size: 32)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !475, file: !44, line: 705, baseType: !173, size: 32, offset: 4032)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !475, file: !44, line: 708, baseType: !173, size: 32, offset: 4064)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !475, file: !44, line: 709, baseType: !2736, size: 64, offset: 4096)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !475, file: !44, line: 720, baseType: !120, size: 64, offset: 4160)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !436, file: !433, line: 98, baseType: !3150, size: 256, offset: 448)
!3150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 256, elements: !2269)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !436, file: !433, line: 101, baseType: !3152, size: 32, offset: 704)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3153, line: 25, size: 32, elements: !3154)
!3153 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3154 = !{!3155}
!3155 = !DIDerivedType(tag: DW_TAG_member, scope: !3152, file: !3153, line: 26, baseType: !3156, size: 32)
!3156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3152, file: !3153, line: 26, size: 32, elements: !3157)
!3157 = !{!3158}
!3158 = !DIDerivedType(tag: DW_TAG_member, scope: !3156, file: !3153, line: 30, baseType: !3159, size: 32)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3156, file: !3153, line: 30, size: 32, elements: !3160)
!3160 = !{!3161, !3162}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3159, file: !3153, line: 31, baseType: !288)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3159, file: !3153, line: 32, baseType: !186, size: 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !436, file: !433, line: 102, baseType: !2753, size: 64, offset: 768)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !436, file: !433, line: 103, baseType: !644, size: 64, offset: 832)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !436, file: !433, line: 104, baseType: !181, size: 64, offset: 896)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !436, file: !433, line: 105, baseType: !120, size: 64, offset: 960)
!3167 = !DIDerivedType(tag: DW_TAG_member, scope: !436, file: !433, line: 107, baseType: !3168, size: 128, offset: 1024)
!3168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !436, file: !433, line: 107, size: 128, elements: !3169)
!3169 = !{!3170, !3171}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3168, file: !433, line: 108, baseType: !159, size: 128)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3168, file: !433, line: 109, baseType: !3172, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !436, file: !433, line: 111, baseType: !159, size: 128, offset: 1152)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !436, file: !433, line: 112, baseType: !159, size: 128, offset: 1280)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !436, file: !433, line: 120, baseType: !3176, size: 128, offset: 1408)
!3176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !436, file: !433, line: 116, size: 128, elements: !3177)
!3177 = !{!3178, !3179, !3180}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3176, file: !433, line: 117, baseType: !684, size: 128)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3176, file: !433, line: 118, baseType: !450, size: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3176, file: !433, line: 119, baseType: !418, size: 128, align: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !406, file: !44, line: 922, baseType: !474, size: 64, offset: 256)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !406, file: !44, line: 923, baseType: !2902, size: 64, offset: 320)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !406, file: !44, line: 929, baseType: !288, offset: 384)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !406, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !406, file: !44, line: 931, baseType: !816, size: 64, offset: 448)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !406, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !406, file: !44, line: 933, baseType: !2749, size: 32, offset: 544)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !406, file: !44, line: 934, baseType: !1216, size: 192, offset: 576)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !406, file: !44, line: 935, baseType: !576, size: 64, offset: 768)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !406, file: !44, line: 936, baseType: !3191, size: 192, offset: 832)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3192)
!3192 = !{!3193, !3194, !3195, !3196, !3197, !3198}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3191, file: !44, line: 886, baseType: !3002)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3191, file: !44, line: 887, baseType: !1511, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3191, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3191, file: !44, line: 889, baseType: !480, size: 32, offset: 96)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3191, file: !44, line: 889, baseType: !480, size: 32, offset: 128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3191, file: !44, line: 890, baseType: !186, size: 32, offset: 160)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !406, file: !44, line: 937, baseType: !1587, size: 64, offset: 1024)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !406, file: !44, line: 938, baseType: !3201, size: 256, offset: 1088)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3202)
!3202 = !{!3203, !3204, !3205, !3206, !3207, !3208}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3201, file: !44, line: 897, baseType: !181, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3201, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3201, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3201, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3201, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3201, file: !44, line: 904, baseType: !576, size: 64, offset: 192)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !406, file: !44, line: 940, baseType: !210, size: 64, offset: 1344)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !406, file: !44, line: 945, baseType: !120, size: 64, offset: 1408)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !406, file: !44, line: 949, baseType: !159, size: 128, offset: 1472)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !406, file: !44, line: 950, baseType: !159, size: 128, offset: 1600)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !406, file: !44, line: 952, baseType: !779, size: 64, offset: 1728)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !406, file: !44, line: 953, baseType: !954, size: 32, offset: 1792)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !406, file: !44, line: 954, baseType: !954, size: 32, offset: 1824)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !396, file: !354, line: 174, baseType: !402, size: 64, offset: 320)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !396, file: !354, line: 176, baseType: !3218, size: 64, offset: 384)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!186, !405, !281, !395, !1026}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !384, file: !354, line: 90, baseType: !379, size: 64, offset: 192)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !384, file: !354, line: 91, baseType: !3223, size: 64, offset: 256)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !344, file: !276, line: 143, baseType: !3225, size: 64, offset: 256)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!3228, !281}
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3230)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3231)
!3231 = !{!3232, !3233, !3237, !3241, !3247, !3251}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3230, file: !61, line: 40, baseType: !60, size: 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3230, file: !61, line: 41, baseType: !3234, size: 64, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!535}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3230, file: !61, line: 42, baseType: !3238, size: 64, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!120}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3230, file: !61, line: 43, baseType: !3242, size: 64, offset: 192)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!2166, !3245}
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3230, file: !61, line: 44, baseType: !3248, size: 64, offset: 256)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!2166}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3230, file: !61, line: 45, baseType: !513, size: 64, offset: 320)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !344, file: !276, line: 144, baseType: !3253, size: 64, offset: 320)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!2166, !281}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !344, file: !276, line: 145, baseType: !3257, size: 64, offset: 384)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{null, !281, !3260, !3261}
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !275, file: !276, line: 70, baseType: !3263, size: 64, offset: 384)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !664, line: 123, size: 1024, elements: !3265)
!3265 = !{!3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3394, !3395, !3396, !3397, !3398}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3264, file: !664, line: 124, baseType: !792, size: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3264, file: !664, line: 125, baseType: !792, size: 32, offset: 32)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3264, file: !664, line: 135, baseType: !3263, size: 64, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3264, file: !664, line: 136, baseType: !165, size: 64, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3264, file: !664, line: 138, baseType: !805, size: 192, align: 64, offset: 192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3264, file: !664, line: 140, baseType: !2166, size: 64, offset: 384)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3264, file: !664, line: 141, baseType: !7, size: 32, offset: 448)
!3273 = !DIDerivedType(tag: DW_TAG_member, scope: !3264, file: !664, line: 142, baseType: !3274, size: 256, offset: 512)
!3274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3264, file: !664, line: 142, size: 256, elements: !3275)
!3275 = !{!3276, !3322, !3326}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3274, file: !664, line: 143, baseType: !3277, size: 192)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !664, line: 91, size: 192, elements: !3278)
!3278 = !{!3279, !3280, !3281}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3277, file: !664, line: 92, baseType: !181, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3277, file: !664, line: 94, baseType: !801, size: 64, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3277, file: !664, line: 100, baseType: !3282, size: 64, offset: 128)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !664, line: 180, size: 704, elements: !3284)
!3284 = !{!3285, !3286, !3287, !3294, !3295, !3296, !3320, !3321}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3283, file: !664, line: 182, baseType: !3263, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3283, file: !664, line: 183, baseType: !7, size: 32, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3283, file: !664, line: 186, baseType: !3288, size: 192, offset: 128)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3289, line: 19, size: 192, elements: !3290)
!3289 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3290 = !{!3291, !3292, !3293}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3288, file: !3289, line: 20, baseType: !784, size: 128)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3288, file: !3289, line: 21, baseType: !7, size: 32, offset: 128)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3288, file: !3289, line: 22, baseType: !7, size: 32, offset: 160)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3283, file: !664, line: 187, baseType: !245, size: 32, offset: 320)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3283, file: !664, line: 188, baseType: !245, size: 32, offset: 352)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3283, file: !664, line: 189, baseType: !3297, size: 64, offset: 384)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !664, line: 168, size: 320, elements: !3299)
!3299 = !{!3300, !3304, !3308, !3312, !3316}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3298, file: !664, line: 169, baseType: !3301, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!186, !756, !3282}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3298, file: !664, line: 171, baseType: !3305, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!186, !3263, !165, !370}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3298, file: !664, line: 173, baseType: !3309, size: 64, offset: 128)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!186, !3263}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3298, file: !664, line: 174, baseType: !3313, size: 64, offset: 192)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!186, !3263, !3263, !165}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3298, file: !664, line: 176, baseType: !3317, size: 64, offset: 256)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!186, !756, !3263, !3282}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3283, file: !664, line: 192, baseType: !159, size: 128, offset: 448)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3283, file: !664, line: 194, baseType: !1521, size: 128, offset: 576)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3274, file: !664, line: 144, baseType: !3323, size: 64)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !664, line: 103, size: 64, elements: !3324)
!3324 = !{!3325}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3323, file: !664, line: 104, baseType: !3263, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3274, file: !664, line: 145, baseType: !3327, size: 256)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !664, line: 107, size: 256, elements: !3328)
!3328 = !{!3329, !3389, !3392, !3393}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3327, file: !664, line: 108, baseType: !3330, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3332)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !664, line: 217, size: 768, elements: !3333)
!3333 = !{!3334, !3354, !3358, !3362, !3366, !3370, !3374, !3378, !3379, !3380, !3381, !3385}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3332, file: !664, line: 222, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!186, !3338}
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !664, line: 197, size: 1088, elements: !3340)
!3340 = !{!3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3339, file: !664, line: 199, baseType: !3263, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3339, file: !664, line: 200, baseType: !405, size: 64, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3339, file: !664, line: 201, baseType: !756, size: 64, offset: 128)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3339, file: !664, line: 202, baseType: !120, size: 64, offset: 192)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3339, file: !664, line: 205, baseType: !1216, size: 192, offset: 256)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3339, file: !664, line: 206, baseType: !1216, size: 192, offset: 448)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3339, file: !664, line: 207, baseType: !186, size: 32, offset: 640)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3339, file: !664, line: 208, baseType: !159, size: 128, offset: 704)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3339, file: !664, line: 209, baseType: !329, size: 64, offset: 832)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3339, file: !664, line: 211, baseType: !375, size: 64, offset: 896)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3339, file: !664, line: 212, baseType: !535, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3339, file: !664, line: 213, baseType: !535, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3339, file: !664, line: 214, baseType: !1054, size: 64, offset: 1024)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3332, file: !664, line: 223, baseType: !3355, size: 64, offset: 64)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{null, !3338}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3332, file: !664, line: 236, baseType: !3359, size: 64, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!186, !756, !120}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3332, file: !664, line: 238, baseType: !3363, size: 64, offset: 192)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!120, !756, !2915}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3332, file: !664, line: 239, baseType: !3367, size: 64, offset: 256)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!120, !756, !120, !2915}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3332, file: !664, line: 240, baseType: !3371, size: 64, offset: 320)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{null, !756, !120}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3332, file: !664, line: 242, baseType: !3375, size: 64, offset: 384)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!360, !3338, !329, !375, !576}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3332, file: !664, line: 252, baseType: !375, size: 64, offset: 448)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3332, file: !664, line: 259, baseType: !535, size: 8, offset: 512)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3332, file: !664, line: 260, baseType: !3375, size: 64, offset: 576)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3332, file: !664, line: 263, baseType: !3382, size: 64, offset: 640)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!2944, !3338, !2946}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3332, file: !664, line: 266, baseType: !3386, size: 64, offset: 704)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!186, !3338, !1026}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3327, file: !664, line: 109, baseType: !3390, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !664, line: 31, flags: DIFlagFwdDecl)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3327, file: !664, line: 110, baseType: !576, size: 64, offset: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3327, file: !664, line: 111, baseType: !3263, size: 64, offset: 192)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3264, file: !664, line: 148, baseType: !120, size: 64, offset: 768)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3264, file: !664, line: 154, baseType: !210, size: 64, offset: 832)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3264, file: !664, line: 156, baseType: !267, size: 16, offset: 896)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3264, file: !664, line: 157, baseType: !370, size: 16, offset: 912)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3264, file: !664, line: 158, baseType: !3399, size: 64, offset: 960)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !664, line: 32, flags: DIFlagFwdDecl)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !275, file: !276, line: 71, baseType: !3402, size: 32, offset: 448)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3403, line: 19, size: 32, elements: !3404)
!3403 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3404 = !{!3405}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3402, file: !3403, line: 20, baseType: !1273, size: 32)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !275, file: !276, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !275, file: !276, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !275, file: !276, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !275, file: !276, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !275, file: !276, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !272, file: !73, line: 463, baseType: !271, size: 64, offset: 512)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !272, file: !73, line: 465, baseType: !3413, size: 64, offset: 576)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !272, file: !73, line: 467, baseType: !165, size: 64, offset: 640)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !272, file: !73, line: 468, baseType: !3417, size: 64, offset: 704)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3419)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3420)
!3420 = !{!3421, !3422, !3423, !3427, !3432, !3436}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3419, file: !73, line: 88, baseType: !165, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3419, file: !73, line: 89, baseType: !381, size: 64, offset: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3419, file: !73, line: 90, baseType: !3424, size: 64, offset: 128)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!186, !271, !324}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3419, file: !73, line: 91, baseType: !3428, size: 64, offset: 192)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!329, !271, !3431, !3260, !3261}
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3419, file: !73, line: 93, baseType: !3433, size: 64, offset: 256)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{null, !271}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3419, file: !73, line: 95, baseType: !3437, size: 64, offset: 320)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3439)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3440)
!3440 = !{!3441, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3439, file: !80, line: 279, baseType: !3442, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!186, !271}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3439, file: !80, line: 280, baseType: !3433, size: 64, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3439, file: !80, line: 281, baseType: !3442, size: 64, offset: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3439, file: !80, line: 282, baseType: !3442, size: 64, offset: 192)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3439, file: !80, line: 283, baseType: !3442, size: 64, offset: 256)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3439, file: !80, line: 284, baseType: !3442, size: 64, offset: 320)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3439, file: !80, line: 285, baseType: !3442, size: 64, offset: 384)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3439, file: !80, line: 286, baseType: !3442, size: 64, offset: 448)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3439, file: !80, line: 287, baseType: !3442, size: 64, offset: 512)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3439, file: !80, line: 288, baseType: !3442, size: 64, offset: 576)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3439, file: !80, line: 289, baseType: !3442, size: 64, offset: 640)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3439, file: !80, line: 290, baseType: !3442, size: 64, offset: 704)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3439, file: !80, line: 291, baseType: !3442, size: 64, offset: 768)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3439, file: !80, line: 292, baseType: !3442, size: 64, offset: 832)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3439, file: !80, line: 293, baseType: !3442, size: 64, offset: 896)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3439, file: !80, line: 294, baseType: !3442, size: 64, offset: 960)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3439, file: !80, line: 295, baseType: !3442, size: 64, offset: 1024)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3439, file: !80, line: 296, baseType: !3442, size: 64, offset: 1088)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3439, file: !80, line: 297, baseType: !3442, size: 64, offset: 1152)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3439, file: !80, line: 298, baseType: !3442, size: 64, offset: 1216)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3439, file: !80, line: 299, baseType: !3442, size: 64, offset: 1280)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3439, file: !80, line: 300, baseType: !3442, size: 64, offset: 1344)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3439, file: !80, line: 301, baseType: !3442, size: 64, offset: 1408)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !272, file: !73, line: 470, baseType: !3468, size: 64, offset: 768)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3470, line: 82, size: 1408, elements: !3471)
!3470 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3471 = !{!3472, !3473, !3474, !3475, !3476, !3477, !3478, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3551, !3554, !3555}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3469, file: !3470, line: 83, baseType: !165, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3469, file: !3470, line: 84, baseType: !165, size: 64, offset: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3469, file: !3470, line: 85, baseType: !271, size: 64, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3469, file: !3470, line: 86, baseType: !381, size: 64, offset: 192)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3469, file: !3470, line: 87, baseType: !381, size: 64, offset: 256)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3469, file: !3470, line: 88, baseType: !381, size: 64, offset: 320)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3469, file: !3470, line: 90, baseType: !3479, size: 64, offset: 384)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!186, !271, !3482}
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3484)
!3484 = !{!3485, !3486, !3487, !3488, !3489, !3490, !3491, !3503, !3515, !3516, !3517, !3518, !3519, !3527, !3528, !3529, !3530, !3531, !3532}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3483, file: !67, line: 96, baseType: !165, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3483, file: !67, line: 97, baseType: !3468, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3483, file: !67, line: 99, baseType: !115, size: 64, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3483, file: !67, line: 100, baseType: !165, size: 64, offset: 192)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3483, file: !67, line: 102, baseType: !535, size: 8, offset: 256)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3483, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3483, file: !67, line: 105, baseType: !3492, size: 64, offset: 320)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3494)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !170, line: 262, size: 1600, elements: !3495)
!3495 = !{!3496, !3497, !3498, !3502}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3494, file: !170, line: 263, baseType: !2739, size: 256)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3494, file: !170, line: 264, baseType: !2739, size: 256, offset: 256)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3494, file: !170, line: 265, baseType: !3499, size: 1024, offset: 512)
!3499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 1024, elements: !3500)
!3500 = !{!3501}
!3501 = !DISubrange(count: 128)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3494, file: !170, line: 266, baseType: !2166, size: 64, offset: 1536)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3483, file: !67, line: 106, baseType: !3504, size: 64, offset: 384)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3506)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !170, line: 210, size: 256, elements: !3507)
!3507 = !{!3508, !3512, !3513, !3514}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3506, file: !170, line: 211, baseType: !3509, size: 72)
!3509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 72, elements: !3510)
!3510 = !{!3511}
!3511 = !DISubrange(count: 9)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3506, file: !170, line: 212, baseType: !180, size: 64, offset: 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3506, file: !170, line: 213, baseType: !173, size: 32, offset: 192)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3506, file: !170, line: 214, baseType: !173, size: 32, offset: 224)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3483, file: !67, line: 108, baseType: !3442, size: 64, offset: 448)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3483, file: !67, line: 109, baseType: !3433, size: 64, offset: 512)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3483, file: !67, line: 110, baseType: !3442, size: 64, offset: 576)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3483, file: !67, line: 111, baseType: !3433, size: 64, offset: 640)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3483, file: !67, line: 112, baseType: !3520, size: 64, offset: 704)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!186, !271, !3523}
!3523 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3524)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3525)
!3525 = !{!3526}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3524, file: !80, line: 51, baseType: !186, size: 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3483, file: !67, line: 113, baseType: !3442, size: 64, offset: 768)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3483, file: !67, line: 114, baseType: !381, size: 64, offset: 832)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3483, file: !67, line: 115, baseType: !381, size: 64, offset: 896)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3483, file: !67, line: 117, baseType: !3437, size: 64, offset: 960)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3483, file: !67, line: 118, baseType: !3433, size: 64, offset: 1024)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3483, file: !67, line: 120, baseType: !3533, size: 64, offset: 1088)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3469, file: !3470, line: 91, baseType: !3424, size: 64, offset: 448)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3469, file: !3470, line: 92, baseType: !3442, size: 64, offset: 512)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3469, file: !3470, line: 93, baseType: !3433, size: 64, offset: 576)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3469, file: !3470, line: 94, baseType: !3442, size: 64, offset: 640)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3469, file: !3470, line: 95, baseType: !3433, size: 64, offset: 704)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3469, file: !3470, line: 97, baseType: !3442, size: 64, offset: 768)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3469, file: !3470, line: 98, baseType: !3442, size: 64, offset: 832)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3469, file: !3470, line: 100, baseType: !3520, size: 64, offset: 896)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3469, file: !3470, line: 101, baseType: !3442, size: 64, offset: 960)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3469, file: !3470, line: 103, baseType: !3442, size: 64, offset: 1024)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3469, file: !3470, line: 105, baseType: !3442, size: 64, offset: 1088)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3469, file: !3470, line: 107, baseType: !3437, size: 64, offset: 1152)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3469, file: !3470, line: 109, baseType: !3548, size: 64, offset: 1216)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3550)
!3550 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3470, line: 109, flags: DIFlagFwdDecl)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3469, file: !3470, line: 111, baseType: !3552, size: 64, offset: 1280)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3470, line: 111, flags: DIFlagFwdDecl)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3469, file: !3470, line: 112, baseType: !690, offset: 1344)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3469, file: !3470, line: 114, baseType: !535, size: 8, offset: 1344)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !272, file: !73, line: 471, baseType: !3482, size: 64, offset: 832)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !272, file: !73, line: 473, baseType: !120, size: 64, offset: 896)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !272, file: !73, line: 475, baseType: !120, size: 64, offset: 960)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !272, file: !73, line: 480, baseType: !1216, size: 192, offset: 1024)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !272, file: !73, line: 484, baseType: !3561, size: 576, offset: 1216)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3562)
!3562 = !{!3563, !3564, !3565, !3566, !3567, !3568}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3561, file: !73, line: 362, baseType: !159, size: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3561, file: !73, line: 363, baseType: !159, size: 128, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3561, file: !73, line: 364, baseType: !159, size: 128, offset: 256)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3561, file: !73, line: 365, baseType: !159, size: 128, offset: 384)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3561, file: !73, line: 366, baseType: !535, size: 8, offset: 512)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3561, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !272, file: !73, line: 485, baseType: !3570, size: 2304, offset: 1792)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3571)
!3571 = !{!3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3667, !3671}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3570, file: !80, line: 566, baseType: !3523, size: 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3570, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3570, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3570, file: !80, line: 569, baseType: !535, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3570, file: !80, line: 570, baseType: !535, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3570, file: !80, line: 571, baseType: !535, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3570, file: !80, line: 572, baseType: !535, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3570, file: !80, line: 573, baseType: !535, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3570, file: !80, line: 574, baseType: !535, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3570, file: !80, line: 575, baseType: !535, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3570, file: !80, line: 576, baseType: !535, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3570, file: !80, line: 577, baseType: !245, size: 32, offset: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3570, file: !80, line: 578, baseType: !288, offset: 96)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3570, file: !80, line: 580, baseType: !159, size: 128, offset: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3570, file: !80, line: 581, baseType: !1542, size: 192, offset: 256)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3570, file: !80, line: 582, baseType: !3588, size: 64, offset: 448)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3590, line: 43, size: 1472, elements: !3591)
!3590 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3591 = !{!3592, !3593, !3594, !3595, !3596, !3599, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3589, file: !3590, line: 44, baseType: !165, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3589, file: !3590, line: 45, baseType: !186, size: 32, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3589, file: !3590, line: 46, baseType: !159, size: 128, offset: 128)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3589, file: !3590, line: 47, baseType: !288, offset: 256)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3589, file: !3590, line: 48, baseType: !3597, size: 64, offset: 256)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3589, file: !3590, line: 49, baseType: !3600, size: 320, offset: 320)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3601, line: 11, size: 320, elements: !3602)
!3601 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3602 = !{!3603, !3604, !3605, !3610}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3600, file: !3601, line: 16, baseType: !684, size: 128)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3600, file: !3601, line: 17, baseType: !181, size: 64, offset: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3600, file: !3601, line: 18, baseType: !3606, size: 64, offset: 192)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{null, !3609}
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3600, file: !3601, line: 19, baseType: !245, size: 32, offset: 256)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3589, file: !3590, line: 50, baseType: !181, size: 64, offset: 640)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3589, file: !3590, line: 51, baseType: !1343, size: 64, offset: 704)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3589, file: !3590, line: 52, baseType: !1343, size: 64, offset: 768)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3589, file: !3590, line: 53, baseType: !1343, size: 64, offset: 832)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3589, file: !3590, line: 54, baseType: !1343, size: 64, offset: 896)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3589, file: !3590, line: 55, baseType: !1343, size: 64, offset: 960)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3589, file: !3590, line: 56, baseType: !181, size: 64, offset: 1024)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3589, file: !3590, line: 57, baseType: !181, size: 64, offset: 1088)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3589, file: !3590, line: 58, baseType: !181, size: 64, offset: 1152)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3589, file: !3590, line: 59, baseType: !181, size: 64, offset: 1216)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3589, file: !3590, line: 60, baseType: !181, size: 64, offset: 1280)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3589, file: !3590, line: 61, baseType: !271, size: 64, offset: 1344)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3589, file: !3590, line: 62, baseType: !535, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3589, file: !3590, line: 63, baseType: !535, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3570, file: !80, line: 583, baseType: !535, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3570, file: !80, line: 584, baseType: !535, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3570, file: !80, line: 585, baseType: !535, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3570, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3570, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3570, file: !80, line: 592, baseType: !1335, size: 512, offset: 576)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3570, file: !80, line: 593, baseType: !210, size: 64, offset: 1088)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3570, file: !80, line: 594, baseType: !1997, size: 256, offset: 1152)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3570, file: !80, line: 595, baseType: !1521, size: 128, offset: 1408)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3570, file: !80, line: 596, baseType: !3597, size: 64, offset: 1536)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3570, file: !80, line: 597, baseType: !792, size: 32, offset: 1600)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3570, file: !80, line: 598, baseType: !792, size: 32, offset: 1632)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3570, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3570, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3570, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3570, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3570, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3570, file: !80, line: 604, baseType: !535, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3570, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3570, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3570, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3570, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3570, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3570, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3570, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3570, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3570, file: !80, line: 613, baseType: !186, size: 32, offset: 1792)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3570, file: !80, line: 614, baseType: !186, size: 32, offset: 1824)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3570, file: !80, line: 615, baseType: !210, size: 64, offset: 1856)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3570, file: !80, line: 616, baseType: !210, size: 64, offset: 1920)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3570, file: !80, line: 617, baseType: !210, size: 64, offset: 1984)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3570, file: !80, line: 618, baseType: !210, size: 64, offset: 2048)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3570, file: !80, line: 620, baseType: !3658, size: 64, offset: 2112)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3660)
!3660 = !{!3661, !3662, !3663, !3664}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3659, file: !80, line: 537, baseType: !288)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3659, file: !80, line: 538, baseType: !7, size: 32)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3659, file: !80, line: 540, baseType: !159, size: 128, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3659, file: !80, line: 543, baseType: !3665, size: 64, offset: 192)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3570, file: !80, line: 621, baseType: !3668, size: 64, offset: 2176)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{null, !271, !1484}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3570, file: !80, line: 622, baseType: !3672, size: 64, offset: 2240)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !272, file: !73, line: 486, baseType: !3675, size: 64, offset: 4096)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3677)
!3677 = !{!3678, !3679, !3680, !3684, !3685, !3686}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3676, file: !80, line: 643, baseType: !3439, size: 1472)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3676, file: !80, line: 644, baseType: !3442, size: 64, offset: 1472)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3676, file: !80, line: 645, baseType: !3681, size: 64, offset: 1536)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{null, !271, !535}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3676, file: !80, line: 646, baseType: !3442, size: 64, offset: 1600)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3676, file: !80, line: 647, baseType: !3433, size: 64, offset: 1664)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3676, file: !80, line: 648, baseType: !3433, size: 64, offset: 1728)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !272, file: !73, line: 493, baseType: !3688, size: 64, offset: 4160)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3690)
!3690 = !{!3691, !3692, !3693, !3866, !3867, !3868, !3869, !3870, !3871, !3874, !3875, !3876, !3877, !3878, !3879, !3880}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3689, file: !94, line: 163, baseType: !159, size: 128)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3689, file: !94, line: 164, baseType: !165, size: 64, offset: 128)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3689, file: !94, line: 165, baseType: !3694, size: 64, offset: 192)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3696)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3697)
!3697 = !{!3698, !3816, !3827, !3832, !3836, !3843, !3847, !3851, !3858, !3862}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3696, file: !94, line: 106, baseType: !3699, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!186, !3688, !3702, !93}
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3704, line: 51, size: 1344, elements: !3705)
!3704 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3705 = !{!3706, !3707, !3709, !3710, !3800, !3809, !3810, !3811, !3812, !3813, !3814, !3815}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3703, file: !3704, line: 52, baseType: !165, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3703, file: !3704, line: 53, baseType: !3708, size: 32, offset: 64)
!3708 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3704, line: 28, baseType: !245)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3703, file: !3704, line: 54, baseType: !165, size: 64, offset: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3703, file: !3704, line: 55, baseType: !3711, size: 192, offset: 192)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3712, line: 17, size: 192, elements: !3713)
!3712 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3713 = !{!3714, !3716, !3799}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3711, file: !3712, line: 18, baseType: !3715, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3711, file: !3712, line: 19, baseType: !3717, size: 64, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3719)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3712, line: 110, size: 1152, elements: !3720)
!3720 = !{!3721, !3725, !3729, !3735, !3741, !3745, !3749, !3754, !3758, !3759, !3763, !3767, !3771, !3782, !3783, !3784, !3785, !3795}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3719, file: !3712, line: 111, baseType: !3722, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!3715, !3715}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3719, file: !3712, line: 112, baseType: !3726, size: 64, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{null, !3715}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3719, file: !3712, line: 113, baseType: !3730, size: 64, offset: 128)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!535, !3733}
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3711)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3719, file: !3712, line: 114, baseType: !3736, size: 64, offset: 192)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!2166, !3733, !3739}
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3719, file: !3712, line: 116, baseType: !3742, size: 64, offset: 256)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!535, !3733, !165}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3719, file: !3712, line: 118, baseType: !3746, size: 64, offset: 320)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!186, !3733, !165, !7, !120, !375}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3719, file: !3712, line: 123, baseType: !3750, size: 64, offset: 384)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!186, !3733, !165, !3753, !375}
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3719, file: !3712, line: 126, baseType: !3755, size: 64, offset: 448)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!165, !3733}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3719, file: !3712, line: 127, baseType: !3755, size: 64, offset: 512)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3719, file: !3712, line: 128, baseType: !3760, size: 64, offset: 576)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!3715, !3733}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3719, file: !3712, line: 130, baseType: !3764, size: 64, offset: 640)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!3715, !3733, !3715}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3719, file: !3712, line: 133, baseType: !3768, size: 64, offset: 704)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!3715, !3733, !165}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3719, file: !3712, line: 135, baseType: !3772, size: 64, offset: 768)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!186, !3733, !165, !165, !7, !7, !3775}
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3712, line: 43, size: 640, elements: !3777)
!3777 = !{!3778, !3779, !3780}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3776, file: !3712, line: 44, baseType: !3715, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3776, file: !3712, line: 45, baseType: !7, size: 32, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3776, file: !3712, line: 46, baseType: !3781, size: 512, offset: 128)
!3781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 512, elements: !1373)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3719, file: !3712, line: 140, baseType: !3764, size: 64, offset: 832)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3719, file: !3712, line: 143, baseType: !3760, size: 64, offset: 896)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3719, file: !3712, line: 145, baseType: !3722, size: 64, offset: 960)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3719, file: !3712, line: 146, baseType: !3786, size: 64, offset: 1024)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!186, !3733, !3789}
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3712, line: 29, size: 128, elements: !3791)
!3791 = !{!3792, !3793, !3794}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3790, file: !3712, line: 30, baseType: !7, size: 32)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3790, file: !3712, line: 31, baseType: !7, size: 32, offset: 32)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3790, file: !3712, line: 32, baseType: !3733, size: 64, offset: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3719, file: !3712, line: 148, baseType: !3796, size: 64, offset: 1088)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!186, !3733, !271}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3711, file: !3712, line: 20, baseType: !271, size: 64, offset: 128)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3703, file: !3704, line: 57, baseType: !3801, size: 64, offset: 384)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3704, line: 31, size: 704, elements: !3803)
!3803 = !{!3804, !3805, !3806, !3807, !3808}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3802, file: !3704, line: 32, baseType: !329, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3802, file: !3704, line: 33, baseType: !186, size: 32, offset: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3802, file: !3704, line: 34, baseType: !120, size: 64, offset: 128)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3802, file: !3704, line: 35, baseType: !3801, size: 64, offset: 192)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3802, file: !3704, line: 43, baseType: !396, size: 448, offset: 256)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3703, file: !3704, line: 58, baseType: !3801, size: 64, offset: 448)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3703, file: !3704, line: 59, baseType: !3702, size: 64, offset: 512)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3703, file: !3704, line: 60, baseType: !3702, size: 64, offset: 576)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3703, file: !3704, line: 61, baseType: !3702, size: 64, offset: 640)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3703, file: !3704, line: 63, baseType: !275, size: 512, offset: 704)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3703, file: !3704, line: 65, baseType: !181, size: 64, offset: 1216)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3703, file: !3704, line: 66, baseType: !120, size: 64, offset: 1280)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3696, file: !94, line: 108, baseType: !3817, size: 64, offset: 64)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!186, !3688, !3820, !93}
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3822)
!3822 = !{!3823, !3824, !3825}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3821, file: !94, line: 64, baseType: !3715, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3821, file: !94, line: 65, baseType: !186, size: 32, offset: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3821, file: !94, line: 66, baseType: !3826, size: 512, offset: 96)
!3826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 512, elements: !1775)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3696, file: !94, line: 110, baseType: !3828, size: 64, offset: 128)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!186, !3688, !7, !3831}
!3831 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !119, line: 164, baseType: !181)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3696, file: !94, line: 111, baseType: !3833, size: 64, offset: 192)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{null, !3688, !7}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3696, file: !94, line: 112, baseType: !3837, size: 64, offset: 256)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!186, !3688, !3702, !3840, !7, !3842, !2722}
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3696, file: !94, line: 117, baseType: !3844, size: 64, offset: 320)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!186, !3688, !7, !7, !120}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3696, file: !94, line: 119, baseType: !3848, size: 64, offset: 384)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{null, !3688, !7, !7}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3696, file: !94, line: 121, baseType: !3852, size: 64, offset: 448)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!186, !3688, !3855, !535}
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3857, line: 11, flags: DIFlagFwdDecl)
!3857 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3696, file: !94, line: 122, baseType: !3859, size: 64, offset: 512)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{null, !3688, !3855}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3696, file: !94, line: 123, baseType: !3863, size: 64, offset: 576)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!186, !3688, !3820, !3842, !2722}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3689, file: !94, line: 166, baseType: !120, size: 64, offset: 256)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3689, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3689, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3689, file: !94, line: 171, baseType: !3715, size: 64, offset: 384)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3689, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3689, file: !94, line: 173, baseType: !3872, size: 64, offset: 512)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3689, file: !94, line: 175, baseType: !3688, size: 64, offset: 576)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3689, file: !94, line: 182, baseType: !3831, size: 64, offset: 640)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3689, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3689, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3689, file: !94, line: 185, baseType: !784, size: 128, offset: 768)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3689, file: !94, line: 186, baseType: !1216, size: 192, offset: 896)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3689, file: !94, line: 187, baseType: !3881, offset: 1088)
!3881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2370)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !272, file: !73, line: 499, baseType: !159, size: 128, offset: 4224)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !272, file: !73, line: 502, baseType: !3884, size: 64, offset: 4352)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3886)
!3886 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !272, file: !73, line: 504, baseType: !3888, size: 64, offset: 4416)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !272, file: !73, line: 505, baseType: !210, size: 64, offset: 4480)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !272, file: !73, line: 510, baseType: !210, size: 64, offset: 4544)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !272, file: !73, line: 511, baseType: !3892, size: 64, offset: 4608)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3894)
!3894 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !272, file: !73, line: 513, baseType: !3896, size: 64, offset: 4672)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3898)
!3898 = !{!3899, !3900}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3897, file: !73, line: 293, baseType: !7, size: 32)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3897, file: !73, line: 294, baseType: !181, size: 64, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !272, file: !73, line: 515, baseType: !159, size: 128, offset: 4736)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !272, file: !73, line: 526, baseType: !3903, offset: 4864)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3904, line: 5, elements: !302)
!3904 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !272, file: !73, line: 528, baseType: !3702, size: 64, offset: 4864)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !272, file: !73, line: 529, baseType: !3715, size: 64, offset: 4928)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !272, file: !73, line: 534, baseType: !558, size: 32, offset: 4992)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !272, file: !73, line: 535, baseType: !245, size: 32, offset: 5024)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !272, file: !73, line: 537, baseType: !288, offset: 5056)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !272, file: !73, line: 538, baseType: !159, size: 128, offset: 5056)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !272, file: !73, line: 540, baseType: !3912, size: 64, offset: 5184)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3914, line: 54, size: 960, elements: !3915)
!3914 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3915 = !{!3916, !3917, !3918, !3919, !3920, !3921, !3922, !3926, !3930, !3931, !3932, !3933, !3937, !3941, !3942}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3913, file: !3914, line: 55, baseType: !165, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3913, file: !3914, line: 56, baseType: !115, size: 64, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3913, file: !3914, line: 58, baseType: !381, size: 64, offset: 128)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3913, file: !3914, line: 59, baseType: !381, size: 64, offset: 192)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3913, file: !3914, line: 60, baseType: !281, size: 64, offset: 256)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3913, file: !3914, line: 62, baseType: !3424, size: 64, offset: 320)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3913, file: !3914, line: 63, baseType: !3923, size: 64, offset: 384)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!329, !271, !3431}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3913, file: !3914, line: 65, baseType: !3927, size: 64, offset: 448)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{null, !3912}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3913, file: !3914, line: 66, baseType: !3433, size: 64, offset: 512)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3913, file: !3914, line: 68, baseType: !3442, size: 64, offset: 576)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3913, file: !3914, line: 70, baseType: !3228, size: 64, offset: 640)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3913, file: !3914, line: 71, baseType: !3934, size: 64, offset: 704)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!2166, !271}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3913, file: !3914, line: 73, baseType: !3938, size: 64, offset: 768)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{null, !271, !3260, !3261}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3913, file: !3914, line: 75, baseType: !3437, size: 64, offset: 832)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3913, file: !3914, line: 77, baseType: !3552, size: 64, offset: 896)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !272, file: !73, line: 541, baseType: !381, size: 64, offset: 5248)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !272, file: !73, line: 543, baseType: !3433, size: 64, offset: 5312)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !272, file: !73, line: 544, baseType: !3946, size: 64, offset: 5376)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !272, file: !73, line: 545, baseType: !3949, size: 64, offset: 5440)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !272, file: !73, line: 547, baseType: !535, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !272, file: !73, line: 548, baseType: !535, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !272, file: !73, line: 549, baseType: !535, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !272, file: !73, line: 550, baseType: !535, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !193, file: !156, line: 635, baseType: !272, size: 5568, offset: 2304)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !193, file: !156, line: 636, baseType: !395, size: 64, offset: 7872)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !193, file: !156, line: 637, baseType: !395, size: 64, offset: 7936)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !193, file: !156, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !188, file: !156, line: 312, baseType: !192, size: 64, offset: 192)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !188, file: !156, line: 314, baseType: !120, size: 64, offset: 256)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !188, file: !156, line: 315, baseType: !255, size: 64, offset: 320)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !188, file: !156, line: 316, baseType: !3963, size: 64, offset: 384)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !156, line: 69, size: 832, elements: !3965)
!3965 = !{!3966, !3967, !3968, !3971, !3972}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3964, file: !156, line: 70, baseType: !192, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3964, file: !156, line: 71, baseType: !159, size: 128, offset: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !3964, file: !156, line: 72, baseType: !3969, size: 64, offset: 192)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !156, line: 72, flags: DIFlagFwdDecl)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3964, file: !156, line: 73, baseType: !125, size: 8, offset: 256)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3964, file: !156, line: 74, baseType: !275, size: 512, offset: 320)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !188, file: !156, line: 318, baseType: !7, size: 32, offset: 448)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !188, file: !156, line: 319, baseType: !267, size: 16, offset: 480)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !188, file: !156, line: 320, baseType: !267, size: 16, offset: 496)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !188, file: !156, line: 321, baseType: !267, size: 16, offset: 512)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !188, file: !156, line: 322, baseType: !267, size: 16, offset: 528)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !188, file: !156, line: 323, baseType: !7, size: 32, offset: 544)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !188, file: !156, line: 324, baseType: !121, size: 8, offset: 576)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !188, file: !156, line: 325, baseType: !121, size: 8, offset: 584)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !188, file: !156, line: 330, baseType: !121, size: 8, offset: 592)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !188, file: !156, line: 331, baseType: !121, size: 8, offset: 600)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !188, file: !156, line: 332, baseType: !121, size: 8, offset: 608)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !188, file: !156, line: 333, baseType: !121, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !188, file: !156, line: 334, baseType: !121, size: 8, offset: 624)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !188, file: !156, line: 335, baseType: !121, size: 8, offset: 632)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !188, file: !156, line: 336, baseType: !904, size: 16, offset: 640)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !188, file: !156, line: 337, baseType: !3842, size: 64, offset: 704)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !188, file: !156, line: 339, baseType: !3990, size: 64, offset: 768)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !188, file: !156, line: 340, baseType: !210, size: 64, offset: 832)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !188, file: !156, line: 346, baseType: !3897, size: 128, offset: 896)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !188, file: !156, line: 348, baseType: !3994, size: 32, offset: 1024)
!3994 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !156, line: 155, baseType: !186)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !188, file: !156, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !188, file: !156, line: 352, baseType: !121, size: 8, offset: 1064)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !188, file: !156, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !188, file: !156, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !188, file: !156, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !188, file: !156, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !188, file: !156, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !188, file: !156, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !188, file: !156, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !188, file: !156, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !188, file: !156, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !188, file: !156, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !188, file: !156, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !188, file: !156, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !188, file: !156, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !188, file: !156, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !188, file: !156, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !188, file: !156, line: 376, baseType: !7, size: 32, offset: 1120)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !188, file: !156, line: 377, baseType: !7, size: 32, offset: 1152)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !188, file: !156, line: 380, baseType: !4015, size: 64, offset: 1216)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !156, line: 303, flags: DIFlagFwdDecl)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !188, file: !156, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !188, file: !156, line: 383, baseType: !186, size: 32, offset: 1312)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !188, file: !156, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !188, file: !156, line: 387, baseType: !4021, size: 32, offset: 1376)
!4021 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !156, line: 180, baseType: !7)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !188, file: !156, line: 388, baseType: !272, size: 5568, offset: 1408)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !188, file: !156, line: 390, baseType: !186, size: 32, offset: 6976)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !188, file: !156, line: 396, baseType: !7, size: 32, offset: 7008)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !188, file: !156, line: 397, baseType: !4026, size: 8704, offset: 7040)
!4026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 8704, elements: !4027)
!4027 = !{!4028}
!4028 = !DISubrange(count: 17)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !188, file: !156, line: 399, baseType: !535, size: 8, offset: 15744)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !188, file: !156, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !188, file: !156, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !188, file: !156, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !188, file: !156, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !188, file: !156, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !188, file: !156, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !188, file: !156, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !188, file: !156, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !188, file: !156, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !188, file: !156, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !188, file: !156, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !188, file: !156, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !188, file: !156, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !188, file: !156, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !188, file: !156, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !188, file: !156, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !188, file: !156, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !188, file: !156, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !188, file: !156, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !188, file: !156, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !188, file: !156, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !188, file: !156, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !188, file: !156, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !188, file: !156, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !188, file: !156, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !188, file: !156, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !188, file: !156, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !188, file: !156, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !188, file: !156, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !188, file: !156, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !188, file: !156, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !188, file: !156, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !188, file: !156, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !188, file: !156, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !188, file: !156, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !188, file: !156, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !188, file: !156, line: 450, baseType: !4067, size: 16, offset: 15792)
!4067 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !156, line: 206, baseType: !267)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !188, file: !156, line: 451, baseType: !792, size: 32, offset: 15808)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !188, file: !156, line: 453, baseType: !3826, size: 512, offset: 15840)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !188, file: !156, line: 454, baseType: !680, size: 64, offset: 16384)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !188, file: !156, line: 455, baseType: !395, size: 64, offset: 16448)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !188, file: !156, line: 456, baseType: !186, size: 32, offset: 16512)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !188, file: !156, line: 457, baseType: !4074, size: 1088, offset: 16576)
!4074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 1088, elements: !4027)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !188, file: !156, line: 458, baseType: !4074, size: 1088, offset: 17664)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !188, file: !156, line: 469, baseType: !381, size: 64, offset: 18752)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !188, file: !156, line: 471, baseType: !4078, size: 64, offset: 18816)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !156, line: 304, flags: DIFlagFwdDecl)
!4080 = !DIDerivedType(tag: DW_TAG_member, scope: !188, file: !156, line: 478, baseType: !4081, size: 64, offset: 18880)
!4081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !188, file: !156, line: 478, size: 64, elements: !4082)
!4082 = !{!4083, !4086}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4081, file: !156, line: 479, baseType: !4084, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !156, line: 305, flags: DIFlagFwdDecl)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4081, file: !156, line: 480, baseType: !187, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !188, file: !156, line: 482, baseType: !904, size: 16, offset: 18944)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !188, file: !156, line: 483, baseType: !121, size: 8, offset: 18960)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !188, file: !156, line: 497, baseType: !904, size: 16, offset: 18976)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !188, file: !156, line: 498, baseType: !209, size: 64, offset: 19008)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !188, file: !156, line: 499, baseType: !375, size: 64, offset: 19072)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !188, file: !156, line: 500, baseType: !329, size: 64, offset: 19136)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !188, file: !156, line: 502, baseType: !181, size: 64, offset: 19200)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !155, file: !156, line: 863, baseType: !4095, size: 64, offset: 320)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{null, !187}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !155, file: !156, line: 864, baseType: !4099, size: 64, offset: 384)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!186, !187, !3523}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !155, file: !156, line: 865, baseType: !4103, size: 64, offset: 448)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!186, !187}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !155, file: !156, line: 866, baseType: !4095, size: 64, offset: 512)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !155, file: !156, line: 867, baseType: !4108, size: 64, offset: 576)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!186, !187, !186}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !155, file: !156, line: 868, baseType: !4112, size: 64, offset: 640)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4114)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !156, line: 795, size: 384, elements: !4115)
!4115 = !{!4116, !4121, !4125, !4126, !4127, !4128}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4114, file: !156, line: 797, baseType: !4117, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!4120, !187, !4021}
!4120 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !156, line: 772, baseType: !7)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4114, file: !156, line: 801, baseType: !4122, size: 64, offset: 64)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!4120, !187}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4114, file: !156, line: 804, baseType: !4122, size: 64, offset: 128)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4114, file: !156, line: 807, baseType: !4095, size: 64, offset: 192)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4114, file: !156, line: 808, baseType: !4095, size: 64, offset: 256)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4114, file: !156, line: 811, baseType: !4095, size: 64, offset: 320)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !155, file: !156, line: 869, baseType: !381, size: 64, offset: 704)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !155, file: !156, line: 870, baseType: !3483, size: 1152, offset: 768)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !155, file: !156, line: 871, baseType: !4132, size: 128, offset: 1920)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !156, line: 759, size: 128, elements: !4133)
!4133 = !{!4134, !4135}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4132, file: !156, line: 760, baseType: !288)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4132, file: !156, line: 761, baseType: !159, size: 128)
!4136 = !DIGlobalVariableExpression(var: !4137, expr: !DIExpression())
!4137 = distinct !DIGlobalVariable(name: "amd8111_ids", scope: !2, file: !3, line: 415, type: !4138, isLocal: true, isDefinition: true)
!4138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 512, elements: !1609)
!4139 = !DIGlobalVariableExpression(var: !4140, expr: !DIExpression())
!4140 = distinct !DIGlobalVariable(name: "smbus_algorithm", scope: !2, file: !3, line: 409, type: !4141, isLocal: true, isDefinition: true)
!4141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4142)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !4143, line: 519, size: 320, elements: !4144)
!4143 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4144 = !{!4145, !4241, !4242, !4255, !4256}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4142, file: !4143, line: 529, baseType: !4146, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!186, !4149, !4232, !186}
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !4143, line: 695, size: 7552, elements: !4151)
!4151 = !{!4152, !4153, !4154, !4156, !4157, !4171, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4220, !4231}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4150, file: !4143, line: 696, baseType: !115, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4150, file: !4143, line: 697, baseType: !7, size: 32, offset: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4150, file: !4143, line: 698, baseType: !4155, size: 64, offset: 128)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4150, file: !4143, line: 699, baseType: !120, size: 64, offset: 192)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4150, file: !4143, line: 702, baseType: !4158, size: 64, offset: 256)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4160)
!4160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !4143, line: 557, size: 192, elements: !4161)
!4161 = !{!4162, !4166, !4170}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4160, file: !4143, line: 558, baseType: !4163, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{null, !4149, !7}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4160, file: !4143, line: 559, baseType: !4167, size: 64, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!186, !4149, !7}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4160, file: !4143, line: 560, baseType: !4163, size: 64, offset: 128)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4150, file: !4143, line: 703, baseType: !4172, size: 192, offset: 320)
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4173, line: 30, size: 192, elements: !4174)
!4173 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4174 = !{!4175, !4176, !4177}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4172, file: !4173, line: 31, baseType: !825)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4172, file: !4173, line: 32, baseType: !797, size: 128)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4172, file: !4173, line: 33, baseType: !1259, size: 64, offset: 128)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4150, file: !4143, line: 704, baseType: !4172, size: 192, offset: 512)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4150, file: !4143, line: 706, baseType: !186, size: 32, offset: 704)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4150, file: !4143, line: 707, baseType: !186, size: 32, offset: 736)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4150, file: !4143, line: 708, baseType: !272, size: 5568, offset: 768)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4150, file: !4143, line: 709, baseType: !181, size: 64, offset: 6336)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4150, file: !4143, line: 713, baseType: !186, size: 32, offset: 6400)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4150, file: !4143, line: 714, baseType: !263, size: 384, offset: 6432)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4150, file: !4143, line: 715, baseType: !1542, size: 192, offset: 6848)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4150, file: !4143, line: 717, baseType: !1216, size: 192, offset: 7040)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4150, file: !4143, line: 718, baseType: !159, size: 128, offset: 7232)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4150, file: !4143, line: 720, baseType: !4189, size: 64, offset: 7360)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !4143, line: 618, size: 832, elements: !4191)
!4191 = !{!4192, !4196, !4197, !4201, !4202, !4203, !4204, !4208, !4209, !4212, !4213, !4216, !4219}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4190, file: !4143, line: 619, baseType: !4193, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!186, !4149}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4190, file: !4143, line: 621, baseType: !4193, size: 64, offset: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4190, file: !4143, line: 622, baseType: !4198, size: 64, offset: 128)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{null, !4149, !186}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4190, file: !4143, line: 623, baseType: !4193, size: 64, offset: 192)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4190, file: !4143, line: 624, baseType: !4198, size: 64, offset: 256)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4190, file: !4143, line: 625, baseType: !4193, size: 64, offset: 320)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4190, file: !4143, line: 627, baseType: !4205, size: 64, offset: 384)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{null, !4149}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4190, file: !4143, line: 628, baseType: !4205, size: 64, offset: 448)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4190, file: !4143, line: 631, baseType: !4210, size: 64, offset: 512)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4143, line: 631, flags: DIFlagFwdDecl)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4190, file: !4143, line: 632, baseType: !4210, size: 64, offset: 576)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4190, file: !4143, line: 633, baseType: !4214, size: 64, offset: 640)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !4143, line: 633, flags: DIFlagFwdDecl)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4190, file: !4143, line: 634, baseType: !4217, size: 64, offset: 704)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !4143, line: 634, flags: DIFlagFwdDecl)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4190, file: !4143, line: 635, baseType: !4217, size: 64, offset: 768)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4150, file: !4143, line: 721, baseType: !4221, size: 64, offset: 7424)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4223)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !4143, line: 664, size: 192, elements: !4224)
!4224 = !{!4225, !4226, !4227, !4228, !4229, !4230}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4223, file: !4143, line: 665, baseType: !210, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4223, file: !4143, line: 666, baseType: !186, size: 32, offset: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4223, file: !4143, line: 667, baseType: !904, size: 16, offset: 96)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4223, file: !4143, line: 668, baseType: !904, size: 16, offset: 112)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4223, file: !4143, line: 669, baseType: !904, size: 16, offset: 128)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4223, file: !4143, line: 670, baseType: !904, size: 16, offset: 144)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4150, file: !4143, line: 723, baseType: !3688, size: 64, offset: 7488)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4234, line: 69, size: 128, elements: !4235)
!4234 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4235 = !{!4236, !4237, !4238, !4239}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4233, file: !4234, line: 70, baseType: !905, size: 16)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4233, file: !4234, line: 71, baseType: !905, size: 16, offset: 16)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4233, file: !4234, line: 84, baseType: !905, size: 16, offset: 32)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4233, file: !4234, line: 85, baseType: !4240, size: 64, offset: 64)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4142, file: !4143, line: 531, baseType: !4146, size: 64, offset: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4142, file: !4143, line: 533, baseType: !4243, size: 64, offset: 128)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!186, !4149, !904, !267, !131, !121, !186, !4246}
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4234, line: 135, size: 272, elements: !4248)
!4248 = !{!4249, !4250, !4251}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4247, file: !4234, line: 136, baseType: !123, size: 8)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4247, file: !4234, line: 137, baseType: !905, size: 16)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4247, file: !4234, line: 138, baseType: !4252, size: 272)
!4252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 272, elements: !4253)
!4253 = !{!4254}
!4254 = !DISubrange(count: 34)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4142, file: !4143, line: 536, baseType: !4243, size: 64, offset: 192)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4142, file: !4143, line: 541, baseType: !4257, size: 64, offset: 256)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!245, !4149}
!4260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 384, elements: !264)
!4261 = !{i32 7, !"Dwarf Version", i32 4}
!4262 = !{i32 2, !"Debug Info Version", i32 3}
!4263 = !{i32 1, !"wchar_size", i32 2}
!4264 = !{i32 1, !"Code Model", i32 2}
!4265 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4266 = distinct !DISubprogram(name: "amd8111_driver_init", scope: !3, file: !3, line: 490, type: !4267, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!186}
!4269 = !DILocation(line: 490, column: 1, scope: !4266)
!4270 = distinct !DISubprogram(name: "amd8111_driver_exit", scope: !3, file: !3, line: 490, type: !151, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!4271 = !DILocation(line: 490, column: 1, scope: !4270)
!4272 = distinct !DISubprogram(name: "amd8111_probe", scope: !3, file: !3, line: 422, type: !184, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!4273 = !DILocalVariable(name: "dev", arg: 1, scope: !4272, file: !3, line: 422, type: !187)
!4274 = !DILocation(line: 422, column: 42, scope: !4272)
!4275 = !DILocalVariable(name: "id", arg: 2, scope: !4272, file: !3, line: 422, type: !167)
!4276 = !DILocation(line: 422, column: 75, scope: !4272)
!4277 = !DILocalVariable(name: "smbus", scope: !4272, file: !3, line: 424, type: !4278)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_smbus", file: !3, line: 23, size: 7680, elements: !4280)
!4280 = !{!4281, !4282, !4283, !4284}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4279, file: !3, line: 24, baseType: !187, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4279, file: !3, line: 25, baseType: !4150, size: 7552, offset: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4279, file: !3, line: 26, baseType: !186, size: 32, offset: 7616)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4279, file: !3, line: 27, baseType: !186, size: 32, offset: 7648)
!4285 = !DILocation(line: 424, column: 20, scope: !4272)
!4286 = !DILocalVariable(name: "error", scope: !4272, file: !3, line: 425, type: !186)
!4287 = !DILocation(line: 425, column: 6, scope: !4272)
!4288 = !DILocation(line: 427, column: 8, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 427, column: 6)
!4290 = !DILocation(line: 427, column: 35, scope: !4289)
!4291 = !DILocation(line: 427, column: 6, scope: !4272)
!4292 = !DILocation(line: 428, column: 3, scope: !4289)
!4293 = !DILocation(line: 430, column: 10, scope: !4272)
!4294 = !DILocation(line: 430, column: 8, scope: !4272)
!4295 = !DILocation(line: 431, column: 7, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 431, column: 6)
!4297 = !DILocation(line: 431, column: 6, scope: !4272)
!4298 = !DILocation(line: 432, column: 3, scope: !4296)
!4299 = !DILocation(line: 434, column: 15, scope: !4272)
!4300 = !DILocation(line: 434, column: 2, scope: !4272)
!4301 = !DILocation(line: 434, column: 9, scope: !4272)
!4302 = !DILocation(line: 434, column: 13, scope: !4272)
!4303 = !DILocation(line: 435, column: 16, scope: !4272)
!4304 = !DILocation(line: 435, column: 2, scope: !4272)
!4305 = !DILocation(line: 435, column: 9, scope: !4272)
!4306 = !DILocation(line: 435, column: 14, scope: !4272)
!4307 = !DILocation(line: 436, column: 16, scope: !4272)
!4308 = !DILocation(line: 436, column: 2, scope: !4272)
!4309 = !DILocation(line: 436, column: 9, scope: !4272)
!4310 = !DILocation(line: 436, column: 14, scope: !4272)
!4311 = !DILocation(line: 438, column: 40, scope: !4272)
!4312 = !DILocation(line: 438, column: 45, scope: !4272)
!4313 = !DILocation(line: 438, column: 10, scope: !4272)
!4314 = !DILocation(line: 438, column: 8, scope: !4272)
!4315 = !DILocation(line: 439, column: 6, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 439, column: 6)
!4317 = !DILocation(line: 439, column: 6, scope: !4272)
!4318 = !DILocation(line: 440, column: 9, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4316, file: !3, line: 439, column: 13)
!4320 = !DILocation(line: 441, column: 3, scope: !4319)
!4321 = !DILocation(line: 444, column: 7, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 444, column: 6)
!4323 = !DILocation(line: 444, column: 6, scope: !4272)
!4324 = !DILocation(line: 445, column: 9, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4322, file: !3, line: 444, column: 70)
!4326 = !DILocation(line: 446, column: 3, scope: !4325)
!4327 = !DILocation(line: 449, column: 2, scope: !4272)
!4328 = !DILocation(line: 449, column: 9, scope: !4272)
!4329 = !DILocation(line: 449, column: 17, scope: !4272)
!4330 = !DILocation(line: 449, column: 23, scope: !4272)
!4331 = !DILocation(line: 450, column: 11, scope: !4272)
!4332 = !DILocation(line: 450, column: 18, scope: !4272)
!4333 = !DILocation(line: 450, column: 26, scope: !4272)
!4334 = !DILocation(line: 451, column: 37, scope: !4272)
!4335 = !DILocation(line: 451, column: 44, scope: !4272)
!4336 = !DILocation(line: 450, column: 2, scope: !4272)
!4337 = !DILocation(line: 452, column: 2, scope: !4272)
!4338 = !DILocation(line: 452, column: 9, scope: !4272)
!4339 = !DILocation(line: 452, column: 17, scope: !4272)
!4340 = !DILocation(line: 452, column: 23, scope: !4272)
!4341 = !DILocation(line: 453, column: 2, scope: !4272)
!4342 = !DILocation(line: 453, column: 9, scope: !4272)
!4343 = !DILocation(line: 453, column: 17, scope: !4272)
!4344 = !DILocation(line: 453, column: 22, scope: !4272)
!4345 = !DILocation(line: 454, column: 29, scope: !4272)
!4346 = !DILocation(line: 454, column: 2, scope: !4272)
!4347 = !DILocation(line: 454, column: 9, scope: !4272)
!4348 = !DILocation(line: 454, column: 17, scope: !4272)
!4349 = !DILocation(line: 454, column: 27, scope: !4272)
!4350 = !DILocation(line: 457, column: 31, scope: !4272)
!4351 = !DILocation(line: 457, column: 36, scope: !4272)
!4352 = !DILocation(line: 457, column: 2, scope: !4272)
!4353 = !DILocation(line: 457, column: 9, scope: !4272)
!4354 = !DILocation(line: 457, column: 17, scope: !4272)
!4355 = !DILocation(line: 457, column: 21, scope: !4272)
!4356 = !DILocation(line: 457, column: 28, scope: !4272)
!4357 = !DILocation(line: 459, column: 25, scope: !4272)
!4358 = !DILocation(line: 459, column: 32, scope: !4272)
!4359 = !DILocation(line: 459, column: 2, scope: !4272)
!4360 = !DILocation(line: 460, column: 27, scope: !4272)
!4361 = !DILocation(line: 460, column: 34, scope: !4272)
!4362 = !DILocation(line: 460, column: 10, scope: !4272)
!4363 = !DILocation(line: 460, column: 8, scope: !4272)
!4364 = !DILocation(line: 461, column: 6, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 461, column: 6)
!4366 = !DILocation(line: 461, column: 6, scope: !4272)
!4367 = !DILocation(line: 462, column: 3, scope: !4365)
!4368 = !DILocation(line: 464, column: 18, scope: !4272)
!4369 = !DILocation(line: 464, column: 23, scope: !4272)
!4370 = !DILocation(line: 464, column: 2, scope: !4272)
!4371 = !DILocation(line: 465, column: 2, scope: !4272)
!4372 = !DILabel(scope: !4272, name: "out_release_region", file: !3, line: 467)
!4373 = !DILocation(line: 467, column: 2, scope: !4272)
!4374 = !DILocation(line: 468, column: 2, scope: !4272)
!4375 = !DILabel(scope: !4272, name: "out_kfree", file: !3, line: 469)
!4376 = !DILocation(line: 469, column: 2, scope: !4272)
!4377 = !DILocation(line: 470, column: 8, scope: !4272)
!4378 = !DILocation(line: 470, column: 2, scope: !4272)
!4379 = !DILocation(line: 471, column: 9, scope: !4272)
!4380 = !DILocation(line: 471, column: 2, scope: !4272)
!4381 = !DILocation(line: 472, column: 1, scope: !4272)
!4382 = distinct !DISubprogram(name: "amd8111_remove", scope: !3, file: !3, line: 474, type: !4096, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!4383 = !DILocalVariable(name: "dev", arg: 1, scope: !4382, file: !3, line: 474, type: !187)
!4384 = !DILocation(line: 474, column: 44, scope: !4382)
!4385 = !DILocalVariable(name: "smbus", scope: !4382, file: !3, line: 476, type: !4278)
!4386 = !DILocation(line: 476, column: 20, scope: !4382)
!4387 = !DILocation(line: 476, column: 44, scope: !4382)
!4388 = !DILocation(line: 476, column: 28, scope: !4382)
!4389 = !DILocation(line: 478, column: 19, scope: !4382)
!4390 = !DILocation(line: 478, column: 26, scope: !4382)
!4391 = !DILocation(line: 478, column: 2, scope: !4382)
!4392 = !DILocation(line: 479, column: 2, scope: !4382)
!4393 = !DILocation(line: 480, column: 8, scope: !4382)
!4394 = !DILocation(line: 480, column: 2, scope: !4382)
!4395 = !DILocation(line: 481, column: 1, scope: !4382)
!4396 = distinct !DISubprogram(name: "kzalloc", scope: !108, file: !108, line: 662, type: !4397, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{!120, !375, !118}
!4399 = !DILocalVariable(name: "s", arg: 1, scope: !4400, file: !108, line: 445, type: !980)
!4400 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !108, file: !108, line: 445, type: !4401, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!120, !980, !118, !375}
!4403 = !DILocation(line: 445, column: 72, scope: !4400, inlinedAt: !4404)
!4404 = distinct !DILocation(line: 552, column: 10, scope: !4405, inlinedAt: !4408)
!4405 = distinct !DILexicalBlock(scope: !4406, file: !108, line: 540, column: 34)
!4406 = distinct !DILexicalBlock(scope: !4407, file: !108, line: 540, column: 6)
!4407 = distinct !DISubprogram(name: "kmalloc", scope: !108, file: !108, line: 538, type: !4397, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!4408 = distinct !DILocation(line: 664, column: 9, scope: !4396)
!4409 = !DILocalVariable(name: "flags", arg: 2, scope: !4400, file: !108, line: 446, type: !118)
!4410 = !DILocation(line: 446, column: 9, scope: !4400, inlinedAt: !4404)
!4411 = !DILocalVariable(name: "size", arg: 3, scope: !4400, file: !108, line: 446, type: !375)
!4412 = !DILocation(line: 446, column: 23, scope: !4400, inlinedAt: !4404)
!4413 = !DILocalVariable(name: "ret", scope: !4400, file: !108, line: 448, type: !120)
!4414 = !DILocation(line: 448, column: 8, scope: !4400, inlinedAt: !4404)
!4415 = !DILocalVariable(name: "flags", arg: 1, scope: !4416, file: !108, line: 318, type: !118)
!4416 = distinct !DISubprogram(name: "kmalloc_type", scope: !108, file: !108, line: 318, type: !4417, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!107, !118}
!4419 = !DILocation(line: 318, column: 67, scope: !4416, inlinedAt: !4420)
!4420 = distinct !DILocation(line: 553, column: 20, scope: !4405, inlinedAt: !4408)
!4421 = !DILocalVariable(name: "size", arg: 1, scope: !4422, file: !108, line: 346, type: !375)
!4422 = distinct !DISubprogram(name: "kmalloc_index", scope: !108, file: !108, line: 346, type: !4423, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!7, !375}
!4425 = !DILocation(line: 346, column: 58, scope: !4422, inlinedAt: !4426)
!4426 = distinct !DILocation(line: 547, column: 11, scope: !4405, inlinedAt: !4408)
!4427 = !DILocalVariable(name: "size", arg: 1, scope: !4428, file: !108, line: 472, type: !375)
!4428 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !108, file: !108, line: 472, type: !4429, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!120, !375, !118, !7}
!4431 = !DILocation(line: 472, column: 28, scope: !4428, inlinedAt: !4432)
!4432 = distinct !DILocation(line: 481, column: 9, scope: !4433, inlinedAt: !4434)
!4433 = distinct !DISubprogram(name: "kmalloc_large", scope: !108, file: !108, line: 478, type: !4397, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!4434 = distinct !DILocation(line: 545, column: 11, scope: !4435, inlinedAt: !4408)
!4435 = distinct !DILexicalBlock(scope: !4405, file: !108, line: 544, column: 7)
!4436 = !DILocalVariable(name: "flags", arg: 2, scope: !4428, file: !108, line: 472, type: !118)
!4437 = !DILocation(line: 472, column: 40, scope: !4428, inlinedAt: !4432)
!4438 = !DILocalVariable(name: "order", arg: 3, scope: !4428, file: !108, line: 472, type: !7)
!4439 = !DILocation(line: 472, column: 60, scope: !4428, inlinedAt: !4432)
!4440 = !DILocalVariable(name: "size", arg: 1, scope: !4433, file: !108, line: 478, type: !375)
!4441 = !DILocation(line: 478, column: 51, scope: !4433, inlinedAt: !4434)
!4442 = !DILocalVariable(name: "flags", arg: 2, scope: !4433, file: !108, line: 478, type: !118)
!4443 = !DILocation(line: 478, column: 63, scope: !4433, inlinedAt: !4434)
!4444 = !DILocalVariable(name: "order", scope: !4433, file: !108, line: 480, type: !7)
!4445 = !DILocation(line: 480, column: 15, scope: !4433, inlinedAt: !4434)
!4446 = !DILocalVariable(name: "size", arg: 1, scope: !4407, file: !108, line: 538, type: !375)
!4447 = !DILocation(line: 538, column: 45, scope: !4407, inlinedAt: !4408)
!4448 = !DILocalVariable(name: "flags", arg: 2, scope: !4407, file: !108, line: 538, type: !118)
!4449 = !DILocation(line: 538, column: 57, scope: !4407, inlinedAt: !4408)
!4450 = !DILocalVariable(name: "index", scope: !4405, file: !108, line: 542, type: !7)
!4451 = !DILocation(line: 542, column: 16, scope: !4405, inlinedAt: !4408)
!4452 = !DILocalVariable(name: "size", arg: 1, scope: !4396, file: !108, line: 662, type: !375)
!4453 = !DILocation(line: 662, column: 36, scope: !4396)
!4454 = !DILocalVariable(name: "flags", arg: 2, scope: !4396, file: !108, line: 662, type: !118)
!4455 = !DILocation(line: 662, column: 48, scope: !4396)
!4456 = !DILocation(line: 664, column: 17, scope: !4396)
!4457 = !DILocation(line: 664, column: 23, scope: !4396)
!4458 = !DILocation(line: 664, column: 29, scope: !4396)
!4459 = !DILocation(line: 540, column: 27, scope: !4406, inlinedAt: !4408)
!4460 = !DILocation(line: 540, column: 6, scope: !4406, inlinedAt: !4408)
!4461 = !DILocation(line: 540, column: 6, scope: !4407, inlinedAt: !4408)
!4462 = !DILocation(line: 544, column: 7, scope: !4435, inlinedAt: !4408)
!4463 = !DILocation(line: 544, column: 12, scope: !4435, inlinedAt: !4408)
!4464 = !DILocation(line: 544, column: 7, scope: !4405, inlinedAt: !4408)
!4465 = !DILocation(line: 545, column: 25, scope: !4435, inlinedAt: !4408)
!4466 = !DILocation(line: 545, column: 31, scope: !4435, inlinedAt: !4408)
!4467 = !DILocation(line: 480, column: 33, scope: !4433, inlinedAt: !4434)
!4468 = !DILocation(line: 480, column: 23, scope: !4433, inlinedAt: !4434)
!4469 = !DILocation(line: 481, column: 29, scope: !4433, inlinedAt: !4434)
!4470 = !DILocation(line: 481, column: 35, scope: !4433, inlinedAt: !4434)
!4471 = !DILocation(line: 481, column: 42, scope: !4433, inlinedAt: !4434)
!4472 = !DILocation(line: 474, column: 23, scope: !4428, inlinedAt: !4432)
!4473 = !DILocation(line: 474, column: 29, scope: !4428, inlinedAt: !4432)
!4474 = !DILocation(line: 474, column: 36, scope: !4428, inlinedAt: !4432)
!4475 = !DILocation(line: 474, column: 9, scope: !4428, inlinedAt: !4432)
!4476 = !DILocation(line: 545, column: 4, scope: !4435, inlinedAt: !4408)
!4477 = !DILocation(line: 547, column: 25, scope: !4405, inlinedAt: !4408)
!4478 = !DILocation(line: 348, column: 7, scope: !4479, inlinedAt: !4426)
!4479 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 348, column: 6)
!4480 = !DILocation(line: 348, column: 6, scope: !4422, inlinedAt: !4426)
!4481 = !DILocation(line: 349, column: 3, scope: !4479, inlinedAt: !4426)
!4482 = !DILocation(line: 351, column: 6, scope: !4483, inlinedAt: !4426)
!4483 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 351, column: 6)
!4484 = !DILocation(line: 351, column: 11, scope: !4483, inlinedAt: !4426)
!4485 = !DILocation(line: 351, column: 6, scope: !4422, inlinedAt: !4426)
!4486 = !DILocation(line: 352, column: 3, scope: !4483, inlinedAt: !4426)
!4487 = !DILocation(line: 354, column: 32, scope: !4488, inlinedAt: !4426)
!4488 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 354, column: 6)
!4489 = !DILocation(line: 354, column: 37, scope: !4488, inlinedAt: !4426)
!4490 = !DILocation(line: 354, column: 42, scope: !4488, inlinedAt: !4426)
!4491 = !DILocation(line: 354, column: 45, scope: !4488, inlinedAt: !4426)
!4492 = !DILocation(line: 354, column: 50, scope: !4488, inlinedAt: !4426)
!4493 = !DILocation(line: 354, column: 6, scope: !4422, inlinedAt: !4426)
!4494 = !DILocation(line: 355, column: 3, scope: !4488, inlinedAt: !4426)
!4495 = !DILocation(line: 356, column: 32, scope: !4496, inlinedAt: !4426)
!4496 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 356, column: 6)
!4497 = !DILocation(line: 356, column: 37, scope: !4496, inlinedAt: !4426)
!4498 = !DILocation(line: 356, column: 43, scope: !4496, inlinedAt: !4426)
!4499 = !DILocation(line: 356, column: 46, scope: !4496, inlinedAt: !4426)
!4500 = !DILocation(line: 356, column: 51, scope: !4496, inlinedAt: !4426)
!4501 = !DILocation(line: 356, column: 6, scope: !4422, inlinedAt: !4426)
!4502 = !DILocation(line: 357, column: 3, scope: !4496, inlinedAt: !4426)
!4503 = !DILocation(line: 358, column: 6, scope: !4504, inlinedAt: !4426)
!4504 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 358, column: 6)
!4505 = !DILocation(line: 358, column: 11, scope: !4504, inlinedAt: !4426)
!4506 = !DILocation(line: 358, column: 6, scope: !4422, inlinedAt: !4426)
!4507 = !DILocation(line: 358, column: 26, scope: !4504, inlinedAt: !4426)
!4508 = !DILocation(line: 359, column: 6, scope: !4509, inlinedAt: !4426)
!4509 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 359, column: 6)
!4510 = !DILocation(line: 359, column: 11, scope: !4509, inlinedAt: !4426)
!4511 = !DILocation(line: 359, column: 6, scope: !4422, inlinedAt: !4426)
!4512 = !DILocation(line: 359, column: 26, scope: !4509, inlinedAt: !4426)
!4513 = !DILocation(line: 360, column: 6, scope: !4514, inlinedAt: !4426)
!4514 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 360, column: 6)
!4515 = !DILocation(line: 360, column: 11, scope: !4514, inlinedAt: !4426)
!4516 = !DILocation(line: 360, column: 6, scope: !4422, inlinedAt: !4426)
!4517 = !DILocation(line: 360, column: 26, scope: !4514, inlinedAt: !4426)
!4518 = !DILocation(line: 361, column: 6, scope: !4519, inlinedAt: !4426)
!4519 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 361, column: 6)
!4520 = !DILocation(line: 361, column: 11, scope: !4519, inlinedAt: !4426)
!4521 = !DILocation(line: 361, column: 6, scope: !4422, inlinedAt: !4426)
!4522 = !DILocation(line: 361, column: 26, scope: !4519, inlinedAt: !4426)
!4523 = !DILocation(line: 362, column: 6, scope: !4524, inlinedAt: !4426)
!4524 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 362, column: 6)
!4525 = !DILocation(line: 362, column: 11, scope: !4524, inlinedAt: !4426)
!4526 = !DILocation(line: 362, column: 6, scope: !4422, inlinedAt: !4426)
!4527 = !DILocation(line: 362, column: 26, scope: !4524, inlinedAt: !4426)
!4528 = !DILocation(line: 363, column: 6, scope: !4529, inlinedAt: !4426)
!4529 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 363, column: 6)
!4530 = !DILocation(line: 363, column: 11, scope: !4529, inlinedAt: !4426)
!4531 = !DILocation(line: 363, column: 6, scope: !4422, inlinedAt: !4426)
!4532 = !DILocation(line: 363, column: 26, scope: !4529, inlinedAt: !4426)
!4533 = !DILocation(line: 364, column: 6, scope: !4534, inlinedAt: !4426)
!4534 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 364, column: 6)
!4535 = !DILocation(line: 364, column: 11, scope: !4534, inlinedAt: !4426)
!4536 = !DILocation(line: 364, column: 6, scope: !4422, inlinedAt: !4426)
!4537 = !DILocation(line: 364, column: 26, scope: !4534, inlinedAt: !4426)
!4538 = !DILocation(line: 365, column: 6, scope: !4539, inlinedAt: !4426)
!4539 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 365, column: 6)
!4540 = !DILocation(line: 365, column: 11, scope: !4539, inlinedAt: !4426)
!4541 = !DILocation(line: 365, column: 6, scope: !4422, inlinedAt: !4426)
!4542 = !DILocation(line: 365, column: 26, scope: !4539, inlinedAt: !4426)
!4543 = !DILocation(line: 366, column: 6, scope: !4544, inlinedAt: !4426)
!4544 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 366, column: 6)
!4545 = !DILocation(line: 366, column: 11, scope: !4544, inlinedAt: !4426)
!4546 = !DILocation(line: 366, column: 6, scope: !4422, inlinedAt: !4426)
!4547 = !DILocation(line: 366, column: 26, scope: !4544, inlinedAt: !4426)
!4548 = !DILocation(line: 367, column: 6, scope: !4549, inlinedAt: !4426)
!4549 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 367, column: 6)
!4550 = !DILocation(line: 367, column: 11, scope: !4549, inlinedAt: !4426)
!4551 = !DILocation(line: 367, column: 6, scope: !4422, inlinedAt: !4426)
!4552 = !DILocation(line: 367, column: 26, scope: !4549, inlinedAt: !4426)
!4553 = !DILocation(line: 368, column: 6, scope: !4554, inlinedAt: !4426)
!4554 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 368, column: 6)
!4555 = !DILocation(line: 368, column: 11, scope: !4554, inlinedAt: !4426)
!4556 = !DILocation(line: 368, column: 6, scope: !4422, inlinedAt: !4426)
!4557 = !DILocation(line: 368, column: 26, scope: !4554, inlinedAt: !4426)
!4558 = !DILocation(line: 369, column: 6, scope: !4559, inlinedAt: !4426)
!4559 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 369, column: 6)
!4560 = !DILocation(line: 369, column: 11, scope: !4559, inlinedAt: !4426)
!4561 = !DILocation(line: 369, column: 6, scope: !4422, inlinedAt: !4426)
!4562 = !DILocation(line: 369, column: 26, scope: !4559, inlinedAt: !4426)
!4563 = !DILocation(line: 370, column: 6, scope: !4564, inlinedAt: !4426)
!4564 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 370, column: 6)
!4565 = !DILocation(line: 370, column: 11, scope: !4564, inlinedAt: !4426)
!4566 = !DILocation(line: 370, column: 6, scope: !4422, inlinedAt: !4426)
!4567 = !DILocation(line: 370, column: 26, scope: !4564, inlinedAt: !4426)
!4568 = !DILocation(line: 371, column: 6, scope: !4569, inlinedAt: !4426)
!4569 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 371, column: 6)
!4570 = !DILocation(line: 371, column: 11, scope: !4569, inlinedAt: !4426)
!4571 = !DILocation(line: 371, column: 6, scope: !4422, inlinedAt: !4426)
!4572 = !DILocation(line: 371, column: 26, scope: !4569, inlinedAt: !4426)
!4573 = !DILocation(line: 372, column: 6, scope: !4574, inlinedAt: !4426)
!4574 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 372, column: 6)
!4575 = !DILocation(line: 372, column: 11, scope: !4574, inlinedAt: !4426)
!4576 = !DILocation(line: 372, column: 6, scope: !4422, inlinedAt: !4426)
!4577 = !DILocation(line: 372, column: 26, scope: !4574, inlinedAt: !4426)
!4578 = !DILocation(line: 373, column: 6, scope: !4579, inlinedAt: !4426)
!4579 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 373, column: 6)
!4580 = !DILocation(line: 373, column: 11, scope: !4579, inlinedAt: !4426)
!4581 = !DILocation(line: 373, column: 6, scope: !4422, inlinedAt: !4426)
!4582 = !DILocation(line: 373, column: 26, scope: !4579, inlinedAt: !4426)
!4583 = !DILocation(line: 374, column: 6, scope: !4584, inlinedAt: !4426)
!4584 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 374, column: 6)
!4585 = !DILocation(line: 374, column: 11, scope: !4584, inlinedAt: !4426)
!4586 = !DILocation(line: 374, column: 6, scope: !4422, inlinedAt: !4426)
!4587 = !DILocation(line: 374, column: 26, scope: !4584, inlinedAt: !4426)
!4588 = !DILocation(line: 375, column: 6, scope: !4589, inlinedAt: !4426)
!4589 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 375, column: 6)
!4590 = !DILocation(line: 375, column: 11, scope: !4589, inlinedAt: !4426)
!4591 = !DILocation(line: 375, column: 6, scope: !4422, inlinedAt: !4426)
!4592 = !DILocation(line: 375, column: 27, scope: !4589, inlinedAt: !4426)
!4593 = !DILocation(line: 376, column: 6, scope: !4594, inlinedAt: !4426)
!4594 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 376, column: 6)
!4595 = !DILocation(line: 376, column: 11, scope: !4594, inlinedAt: !4426)
!4596 = !DILocation(line: 376, column: 6, scope: !4422, inlinedAt: !4426)
!4597 = !DILocation(line: 376, column: 32, scope: !4594, inlinedAt: !4426)
!4598 = !DILocation(line: 377, column: 6, scope: !4599, inlinedAt: !4426)
!4599 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 377, column: 6)
!4600 = !DILocation(line: 377, column: 11, scope: !4599, inlinedAt: !4426)
!4601 = !DILocation(line: 377, column: 6, scope: !4422, inlinedAt: !4426)
!4602 = !DILocation(line: 377, column: 32, scope: !4599, inlinedAt: !4426)
!4603 = !DILocation(line: 378, column: 6, scope: !4604, inlinedAt: !4426)
!4604 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 378, column: 6)
!4605 = !DILocation(line: 378, column: 11, scope: !4604, inlinedAt: !4426)
!4606 = !DILocation(line: 378, column: 6, scope: !4422, inlinedAt: !4426)
!4607 = !DILocation(line: 378, column: 32, scope: !4604, inlinedAt: !4426)
!4608 = !DILocation(line: 379, column: 6, scope: !4609, inlinedAt: !4426)
!4609 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 379, column: 6)
!4610 = !DILocation(line: 379, column: 11, scope: !4609, inlinedAt: !4426)
!4611 = !DILocation(line: 379, column: 6, scope: !4422, inlinedAt: !4426)
!4612 = !DILocation(line: 379, column: 33, scope: !4609, inlinedAt: !4426)
!4613 = !DILocation(line: 380, column: 6, scope: !4614, inlinedAt: !4426)
!4614 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 380, column: 6)
!4615 = !DILocation(line: 380, column: 11, scope: !4614, inlinedAt: !4426)
!4616 = !DILocation(line: 380, column: 6, scope: !4422, inlinedAt: !4426)
!4617 = !DILocation(line: 380, column: 33, scope: !4614, inlinedAt: !4426)
!4618 = !DILocation(line: 381, column: 6, scope: !4619, inlinedAt: !4426)
!4619 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 381, column: 6)
!4620 = !DILocation(line: 381, column: 11, scope: !4619, inlinedAt: !4426)
!4621 = !DILocation(line: 381, column: 6, scope: !4422, inlinedAt: !4426)
!4622 = !DILocation(line: 381, column: 33, scope: !4619, inlinedAt: !4426)
!4623 = !DILocation(line: 382, column: 2, scope: !4624, inlinedAt: !4426)
!4624 = distinct !DILexicalBlock(scope: !4625, file: !108, line: 382, column: 2)
!4625 = distinct !DILexicalBlock(scope: !4422, file: !108, line: 382, column: 2)
!4626 = !{i32 -2143268533, i32 -2143268504, i32 -2143268458, i32 -2143268400, i32 -2143268346, i32 -2143268292, i32 -2143268237, i32 -2143268206}
!4627 = !DILocation(line: 382, column: 2, scope: !4628, inlinedAt: !4426)
!4628 = distinct !DILexicalBlock(scope: !4629, file: !108, line: 382, column: 2)
!4629 = distinct !DILexicalBlock(scope: !4625, file: !108, line: 382, column: 2)
!4630 = !{i32 -2143267763, i32 -2143267756, i32 -2143267702, i32 -2143267671, i32 -2143267641}
!4631 = !DILocation(line: 382, column: 2, scope: !4629, inlinedAt: !4426)
!4632 = !DILocation(line: 386, column: 1, scope: !4422, inlinedAt: !4426)
!4633 = !DILocation(line: 547, column: 9, scope: !4405, inlinedAt: !4408)
!4634 = !DILocation(line: 549, column: 8, scope: !4635, inlinedAt: !4408)
!4635 = distinct !DILexicalBlock(scope: !4405, file: !108, line: 549, column: 7)
!4636 = !DILocation(line: 549, column: 7, scope: !4405, inlinedAt: !4408)
!4637 = !DILocation(line: 550, column: 4, scope: !4635, inlinedAt: !4408)
!4638 = !DILocation(line: 553, column: 33, scope: !4405, inlinedAt: !4408)
!4639 = !DILocation(line: 325, column: 6, scope: !4640, inlinedAt: !4420)
!4640 = distinct !DILexicalBlock(scope: !4416, file: !108, line: 325, column: 6)
!4641 = !DILocation(line: 325, column: 6, scope: !4416, inlinedAt: !4420)
!4642 = !DILocation(line: 326, column: 3, scope: !4640, inlinedAt: !4420)
!4643 = !DILocation(line: 332, column: 9, scope: !4416, inlinedAt: !4420)
!4644 = !DILocation(line: 332, column: 15, scope: !4416, inlinedAt: !4420)
!4645 = !DILocation(line: 332, column: 2, scope: !4416, inlinedAt: !4420)
!4646 = !DILocation(line: 336, column: 1, scope: !4416, inlinedAt: !4420)
!4647 = !DILocation(line: 553, column: 5, scope: !4405, inlinedAt: !4408)
!4648 = !DILocation(line: 553, column: 41, scope: !4405, inlinedAt: !4408)
!4649 = !DILocation(line: 554, column: 5, scope: !4405, inlinedAt: !4408)
!4650 = !DILocation(line: 554, column: 12, scope: !4405, inlinedAt: !4408)
!4651 = !DILocation(line: 448, column: 31, scope: !4400, inlinedAt: !4404)
!4652 = !DILocation(line: 448, column: 34, scope: !4400, inlinedAt: !4404)
!4653 = !DILocation(line: 448, column: 14, scope: !4400, inlinedAt: !4404)
!4654 = !DILocation(line: 450, column: 22, scope: !4400, inlinedAt: !4404)
!4655 = !DILocation(line: 450, column: 25, scope: !4400, inlinedAt: !4404)
!4656 = !DILocation(line: 450, column: 30, scope: !4400, inlinedAt: !4404)
!4657 = !DILocation(line: 450, column: 36, scope: !4400, inlinedAt: !4404)
!4658 = !DILocation(line: 450, column: 8, scope: !4400, inlinedAt: !4404)
!4659 = !DILocation(line: 450, column: 6, scope: !4400, inlinedAt: !4404)
!4660 = !DILocation(line: 451, column: 9, scope: !4400, inlinedAt: !4404)
!4661 = !DILocation(line: 552, column: 3, scope: !4405, inlinedAt: !4408)
!4662 = !DILocation(line: 557, column: 19, scope: !4407, inlinedAt: !4408)
!4663 = !DILocation(line: 557, column: 25, scope: !4407, inlinedAt: !4408)
!4664 = !DILocation(line: 557, column: 9, scope: !4407, inlinedAt: !4408)
!4665 = !DILocation(line: 557, column: 2, scope: !4407, inlinedAt: !4408)
!4666 = !DILocation(line: 558, column: 1, scope: !4407, inlinedAt: !4408)
!4667 = !DILocation(line: 664, column: 2, scope: !4396)
!4668 = distinct !DISubprogram(name: "pci_set_drvdata", scope: !156, file: !156, line: 1870, type: !4669, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!4669 = !DISubroutineType(types: !4670)
!4670 = !{null, !187, !120}
!4671 = !DILocalVariable(name: "pdev", arg: 1, scope: !4668, file: !156, line: 1870, type: !187)
!4672 = !DILocation(line: 1870, column: 52, scope: !4668)
!4673 = !DILocalVariable(name: "data", arg: 2, scope: !4668, file: !156, line: 1870, type: !120)
!4674 = !DILocation(line: 1870, column: 64, scope: !4668)
!4675 = !DILocation(line: 1872, column: 19, scope: !4668)
!4676 = !DILocation(line: 1872, column: 25, scope: !4668)
!4677 = !DILocation(line: 1872, column: 30, scope: !4668)
!4678 = !DILocation(line: 1872, column: 2, scope: !4668)
!4679 = !DILocation(line: 1873, column: 1, scope: !4668)
!4680 = distinct !DISubprogram(name: "get_order", scope: !4681, file: !4681, line: 29, type: !4682, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!4681 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4682 = !DISubroutineType(types: !4683)
!4683 = !{!186, !181}
!4684 = !DILocalVariable(name: "x", arg: 1, scope: !4685, file: !4686, line: 366, type: !211)
!4685 = distinct !DISubprogram(name: "fls64", scope: !4686, file: !4686, line: 366, type: !4687, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!4686 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4687 = !DISubroutineType(types: !4688)
!4688 = !{!186, !211}
!4689 = !DILocation(line: 366, column: 40, scope: !4685, inlinedAt: !4690)
!4690 = distinct !DILocation(line: 46, column: 9, scope: !4680)
!4691 = !DILocalVariable(name: "bitpos", scope: !4685, file: !4686, line: 368, type: !186)
!4692 = !DILocation(line: 368, column: 6, scope: !4685, inlinedAt: !4690)
!4693 = !DILocalVariable(name: "size", arg: 1, scope: !4680, file: !4681, line: 29, type: !181)
!4694 = !DILocation(line: 29, column: 63, scope: !4680)
!4695 = !DILocation(line: 31, column: 27, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4680, file: !4681, line: 31, column: 6)
!4697 = !DILocation(line: 31, column: 6, scope: !4696)
!4698 = !DILocation(line: 31, column: 6, scope: !4680)
!4699 = !DILocation(line: 32, column: 8, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4701, file: !4681, line: 32, column: 7)
!4701 = distinct !DILexicalBlock(scope: !4696, file: !4681, line: 31, column: 34)
!4702 = !DILocation(line: 32, column: 7, scope: !4701)
!4703 = !DILocation(line: 33, column: 4, scope: !4700)
!4704 = !DILocation(line: 35, column: 7, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4701, file: !4681, line: 35, column: 7)
!4706 = !DILocation(line: 35, column: 12, scope: !4705)
!4707 = !DILocation(line: 35, column: 7, scope: !4701)
!4708 = !DILocation(line: 36, column: 4, scope: !4705)
!4709 = !DILocation(line: 38, column: 10, scope: !4701)
!4710 = !DILocation(line: 38, column: 28, scope: !4701)
!4711 = !DILocation(line: 38, column: 41, scope: !4701)
!4712 = !DILocation(line: 38, column: 3, scope: !4701)
!4713 = !DILocation(line: 41, column: 6, scope: !4680)
!4714 = !DILocation(line: 42, column: 7, scope: !4680)
!4715 = !DILocation(line: 46, column: 15, scope: !4680)
!4716 = !DILocation(line: 374, column: 2, scope: !4685, inlinedAt: !4690)
!4717 = !DILocation(line: 376, column: 14, scope: !4685, inlinedAt: !4690)
!4718 = !{i32 308693}
!4719 = !DILocation(line: 377, column: 9, scope: !4685, inlinedAt: !4690)
!4720 = !DILocation(line: 377, column: 16, scope: !4685, inlinedAt: !4690)
!4721 = !DILocation(line: 46, column: 2, scope: !4680)
!4722 = !DILocation(line: 48, column: 1, scope: !4680)
!4723 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4724, file: !4724, line: 30, type: !4725, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!4724 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4725 = !DISubroutineType(types: !4726)
!4726 = !{!186, !210}
!4727 = !DILocation(line: 366, column: 40, scope: !4685, inlinedAt: !4728)
!4728 = distinct !DILocation(line: 32, column: 9, scope: !4723)
!4729 = !DILocation(line: 368, column: 6, scope: !4685, inlinedAt: !4728)
!4730 = !DILocalVariable(name: "n", arg: 1, scope: !4723, file: !4724, line: 30, type: !210)
!4731 = !DILocation(line: 30, column: 21, scope: !4723)
!4732 = !DILocation(line: 32, column: 15, scope: !4723)
!4733 = !DILocation(line: 374, column: 2, scope: !4685, inlinedAt: !4728)
!4734 = !DILocation(line: 376, column: 14, scope: !4685, inlinedAt: !4728)
!4735 = !DILocation(line: 377, column: 9, scope: !4685, inlinedAt: !4728)
!4736 = !DILocation(line: 377, column: 16, scope: !4685, inlinedAt: !4728)
!4737 = !DILocation(line: 32, column: 18, scope: !4723)
!4738 = !DILocation(line: 32, column: 2, scope: !4723)
!4739 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4740, file: !4740, line: 137, type: !4741, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!4740 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!120, !980, !2166, !375, !118}
!4743 = !DILocalVariable(name: "s", arg: 1, scope: !4739, file: !4740, line: 137, type: !980)
!4744 = !DILocation(line: 137, column: 54, scope: !4739)
!4745 = !DILocalVariable(name: "object", arg: 2, scope: !4739, file: !4740, line: 137, type: !2166)
!4746 = !DILocation(line: 137, column: 69, scope: !4739)
!4747 = !DILocalVariable(name: "size", arg: 3, scope: !4739, file: !4740, line: 138, type: !375)
!4748 = !DILocation(line: 138, column: 12, scope: !4739)
!4749 = !DILocalVariable(name: "flags", arg: 4, scope: !4739, file: !4740, line: 138, type: !118)
!4750 = !DILocation(line: 138, column: 24, scope: !4739)
!4751 = !DILocation(line: 140, column: 17, scope: !4739)
!4752 = !DILocation(line: 140, column: 2, scope: !4739)
!4753 = distinct !DISubprogram(name: "amd8111_access", scope: !3, file: !3, line: 189, type: !4754, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!1484, !4149, !904, !267, !131, !121, !186, !4246}
!4756 = !DILocalVariable(name: "adap", arg: 1, scope: !4753, file: !3, line: 189, type: !4149)
!4757 = !DILocation(line: 189, column: 48, scope: !4753)
!4758 = !DILocalVariable(name: "addr", arg: 2, scope: !4753, file: !3, line: 189, type: !904)
!4759 = !DILocation(line: 189, column: 58, scope: !4753)
!4760 = !DILocalVariable(name: "flags", arg: 3, scope: !4753, file: !3, line: 190, type: !267)
!4761 = !DILocation(line: 190, column: 18, scope: !4753)
!4762 = !DILocalVariable(name: "read_write", arg: 4, scope: !4753, file: !3, line: 190, type: !131)
!4763 = !DILocation(line: 190, column: 30, scope: !4753)
!4764 = !DILocalVariable(name: "command", arg: 5, scope: !4753, file: !3, line: 190, type: !121)
!4765 = !DILocation(line: 190, column: 45, scope: !4753)
!4766 = !DILocalVariable(name: "size", arg: 6, scope: !4753, file: !3, line: 190, type: !186)
!4767 = !DILocation(line: 190, column: 58, scope: !4753)
!4768 = !DILocalVariable(name: "data", arg: 7, scope: !4753, file: !3, line: 191, type: !4246)
!4769 = !DILocation(line: 191, column: 26, scope: !4753)
!4770 = !DILocalVariable(name: "smbus", scope: !4753, file: !3, line: 193, type: !4278)
!4771 = !DILocation(line: 193, column: 20, scope: !4753)
!4772 = !DILocation(line: 193, column: 28, scope: !4753)
!4773 = !DILocation(line: 193, column: 34, scope: !4753)
!4774 = !DILocalVariable(name: "protocol", scope: !4753, file: !3, line: 194, type: !125)
!4775 = !DILocation(line: 194, column: 16, scope: !4753)
!4776 = !DILocalVariable(name: "len", scope: !4753, file: !3, line: 194, type: !125)
!4777 = !DILocation(line: 194, column: 26, scope: !4753)
!4778 = !DILocalVariable(name: "pec", scope: !4753, file: !3, line: 194, type: !125)
!4779 = !DILocation(line: 194, column: 31, scope: !4753)
!4780 = !DILocalVariable(name: "temp", scope: !4753, file: !3, line: 194, type: !4781)
!4781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 16, elements: !1609)
!4782 = !DILocation(line: 194, column: 36, scope: !4753)
!4783 = !DILocalVariable(name: "i", scope: !4753, file: !3, line: 195, type: !186)
!4784 = !DILocation(line: 195, column: 6, scope: !4753)
!4785 = !DILocalVariable(name: "status", scope: !4753, file: !3, line: 195, type: !186)
!4786 = !DILocation(line: 195, column: 9, scope: !4753)
!4787 = !DILocation(line: 197, column: 14, scope: !4753)
!4788 = !DILocation(line: 197, column: 25, scope: !4753)
!4789 = !DILocation(line: 197, column: 13, scope: !4753)
!4790 = !DILocation(line: 197, column: 11, scope: !4753)
!4791 = !DILocation(line: 199, column: 9, scope: !4753)
!4792 = !DILocation(line: 199, column: 15, scope: !4753)
!4793 = !DILocation(line: 199, column: 8, scope: !4753)
!4794 = !DILocation(line: 199, column: 6, scope: !4753)
!4795 = !DILocation(line: 201, column: 10, scope: !4753)
!4796 = !DILocation(line: 201, column: 2, scope: !4753)
!4797 = !DILocation(line: 203, column: 13, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 201, column: 16)
!4799 = !DILocation(line: 204, column: 15, scope: !4798)
!4800 = !DILocation(line: 205, column: 4, scope: !4798)
!4801 = !DILocation(line: 208, column: 8, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 208, column: 8)
!4803 = !DILocation(line: 208, column: 19, scope: !4802)
!4804 = !DILocation(line: 208, column: 8, scope: !4798)
!4805 = !DILocation(line: 209, column: 27, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 208, column: 39)
!4807 = !DILocation(line: 210, column: 13, scope: !4806)
!4808 = !DILocation(line: 209, column: 14, scope: !4806)
!4809 = !DILocation(line: 209, column: 12, scope: !4806)
!4810 = !DILocation(line: 211, column: 9, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 211, column: 9)
!4812 = !DILocation(line: 211, column: 9, scope: !4806)
!4813 = !DILocation(line: 212, column: 13, scope: !4811)
!4814 = !DILocation(line: 212, column: 6, scope: !4811)
!4815 = !DILocation(line: 213, column: 4, scope: !4806)
!4816 = !DILocation(line: 214, column: 13, scope: !4798)
!4817 = !DILocation(line: 215, column: 4, scope: !4798)
!4818 = !DILocation(line: 218, column: 26, scope: !4798)
!4819 = !DILocation(line: 218, column: 46, scope: !4798)
!4820 = !DILocation(line: 218, column: 13, scope: !4798)
!4821 = !DILocation(line: 218, column: 11, scope: !4798)
!4822 = !DILocation(line: 219, column: 8, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 219, column: 8)
!4824 = !DILocation(line: 219, column: 8, scope: !4798)
!4825 = !DILocation(line: 220, column: 12, scope: !4823)
!4826 = !DILocation(line: 220, column: 5, scope: !4823)
!4827 = !DILocation(line: 221, column: 8, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 221, column: 8)
!4829 = !DILocation(line: 221, column: 19, scope: !4828)
!4830 = !DILocation(line: 221, column: 8, scope: !4798)
!4831 = !DILocation(line: 222, column: 27, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 221, column: 39)
!4833 = !DILocation(line: 223, column: 13, scope: !4832)
!4834 = !DILocation(line: 223, column: 19, scope: !4832)
!4835 = !DILocation(line: 222, column: 14, scope: !4832)
!4836 = !DILocation(line: 222, column: 12, scope: !4832)
!4837 = !DILocation(line: 224, column: 9, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4832, file: !3, line: 224, column: 9)
!4839 = !DILocation(line: 224, column: 9, scope: !4832)
!4840 = !DILocation(line: 225, column: 13, scope: !4838)
!4841 = !DILocation(line: 225, column: 6, scope: !4838)
!4842 = !DILocation(line: 226, column: 4, scope: !4832)
!4843 = !DILocation(line: 227, column: 13, scope: !4798)
!4844 = !DILocation(line: 228, column: 4, scope: !4798)
!4845 = !DILocation(line: 231, column: 26, scope: !4798)
!4846 = !DILocation(line: 231, column: 46, scope: !4798)
!4847 = !DILocation(line: 231, column: 13, scope: !4798)
!4848 = !DILocation(line: 231, column: 11, scope: !4798)
!4849 = !DILocation(line: 232, column: 8, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 232, column: 8)
!4851 = !DILocation(line: 232, column: 8, scope: !4798)
!4852 = !DILocation(line: 233, column: 12, scope: !4850)
!4853 = !DILocation(line: 233, column: 5, scope: !4850)
!4854 = !DILocation(line: 234, column: 8, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 234, column: 8)
!4856 = !DILocation(line: 234, column: 19, scope: !4855)
!4857 = !DILocation(line: 234, column: 8, scope: !4798)
!4858 = !DILocation(line: 235, column: 27, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 234, column: 39)
!4860 = !DILocation(line: 236, column: 13, scope: !4859)
!4861 = !DILocation(line: 236, column: 19, scope: !4859)
!4862 = !DILocation(line: 236, column: 24, scope: !4859)
!4863 = !DILocation(line: 235, column: 14, scope: !4859)
!4864 = !DILocation(line: 235, column: 12, scope: !4859)
!4865 = !DILocation(line: 237, column: 9, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 237, column: 9)
!4867 = !DILocation(line: 237, column: 9, scope: !4859)
!4868 = !DILocation(line: 238, column: 13, scope: !4866)
!4869 = !DILocation(line: 238, column: 6, scope: !4866)
!4870 = !DILocation(line: 239, column: 27, scope: !4859)
!4871 = !DILocation(line: 240, column: 13, scope: !4859)
!4872 = !DILocation(line: 240, column: 19, scope: !4859)
!4873 = !DILocation(line: 240, column: 24, scope: !4859)
!4874 = !DILocation(line: 239, column: 14, scope: !4859)
!4875 = !DILocation(line: 239, column: 12, scope: !4859)
!4876 = !DILocation(line: 241, column: 9, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 241, column: 9)
!4878 = !DILocation(line: 241, column: 9, scope: !4859)
!4879 = !DILocation(line: 242, column: 13, scope: !4877)
!4880 = !DILocation(line: 242, column: 6, scope: !4877)
!4881 = !DILocation(line: 243, column: 4, scope: !4859)
!4882 = !DILocation(line: 244, column: 42, scope: !4798)
!4883 = !DILocation(line: 244, column: 40, scope: !4798)
!4884 = !DILocation(line: 244, column: 13, scope: !4798)
!4885 = !DILocation(line: 245, column: 4, scope: !4798)
!4886 = !DILocation(line: 248, column: 26, scope: !4798)
!4887 = !DILocation(line: 248, column: 46, scope: !4798)
!4888 = !DILocation(line: 248, column: 13, scope: !4798)
!4889 = !DILocation(line: 248, column: 11, scope: !4798)
!4890 = !DILocation(line: 249, column: 8, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 249, column: 8)
!4892 = !DILocation(line: 249, column: 8, scope: !4798)
!4893 = !DILocation(line: 250, column: 12, scope: !4891)
!4894 = !DILocation(line: 250, column: 5, scope: !4891)
!4895 = !DILocation(line: 251, column: 8, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 251, column: 8)
!4897 = !DILocation(line: 251, column: 19, scope: !4896)
!4898 = !DILocation(line: 251, column: 8, scope: !4798)
!4899 = !DILocalVariable(name: "__UNIQUE_ID___x244", scope: !4900, file: !3, line: 252, type: !121)
!4900 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 252, column: 11)
!4901 = distinct !DILexicalBlock(scope: !4896, file: !3, line: 251, column: 39)
!4902 = !DILocation(line: 252, column: 11, scope: !4900)
!4903 = !DILocalVariable(name: "__UNIQUE_ID___y245", scope: !4900, file: !3, line: 252, type: !121)
!4904 = !DILocation(line: 252, column: 11, scope: !4901)
!4905 = !DILocation(line: 252, column: 9, scope: !4901)
!4906 = !DILocation(line: 254, column: 27, scope: !4901)
!4907 = !DILocation(line: 254, column: 48, scope: !4901)
!4908 = !DILocation(line: 254, column: 14, scope: !4901)
!4909 = !DILocation(line: 254, column: 12, scope: !4901)
!4910 = !DILocation(line: 255, column: 9, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 255, column: 9)
!4912 = !DILocation(line: 255, column: 9, scope: !4901)
!4913 = !DILocation(line: 256, column: 13, scope: !4911)
!4914 = !DILocation(line: 256, column: 6, scope: !4911)
!4915 = !DILocation(line: 257, column: 12, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 257, column: 5)
!4917 = !DILocation(line: 257, column: 10, scope: !4916)
!4918 = !DILocation(line: 257, column: 17, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 257, column: 5)
!4920 = !DILocation(line: 257, column: 21, scope: !4919)
!4921 = !DILocation(line: 257, column: 19, scope: !4919)
!4922 = !DILocation(line: 257, column: 5, scope: !4916)
!4923 = !DILocation(line: 259, column: 21, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4919, file: !3, line: 257, column: 31)
!4925 = !DILocation(line: 259, column: 43, scope: !4924)
!4926 = !DILocation(line: 259, column: 41, scope: !4924)
!4927 = !DILocation(line: 259, column: 28, scope: !4924)
!4928 = !DILocation(line: 260, column: 14, scope: !4924)
!4929 = !DILocation(line: 260, column: 20, scope: !4924)
!4930 = !DILocation(line: 260, column: 26, scope: !4924)
!4931 = !DILocation(line: 260, column: 28, scope: !4924)
!4932 = !DILocation(line: 259, column: 8, scope: !4924)
!4933 = !DILocation(line: 258, column: 13, scope: !4924)
!4934 = !DILocation(line: 261, column: 10, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4924, file: !3, line: 261, column: 10)
!4936 = !DILocation(line: 261, column: 10, scope: !4924)
!4937 = !DILocation(line: 262, column: 14, scope: !4935)
!4938 = !DILocation(line: 262, column: 7, scope: !4935)
!4939 = !DILocation(line: 263, column: 5, scope: !4924)
!4940 = !DILocation(line: 257, column: 27, scope: !4919)
!4941 = !DILocation(line: 257, column: 5, scope: !4919)
!4942 = distinct !{!4942, !4922, !4943}
!4943 = !DILocation(line: 263, column: 5, scope: !4916)
!4944 = !DILocation(line: 264, column: 4, scope: !4901)
!4945 = !DILocation(line: 265, column: 43, scope: !4798)
!4946 = !DILocation(line: 265, column: 41, scope: !4798)
!4947 = !DILocation(line: 265, column: 13, scope: !4798)
!4948 = !DILocation(line: 266, column: 4, scope: !4798)
!4949 = !DILocalVariable(name: "__UNIQUE_ID___x246", scope: !4950, file: !3, line: 269, type: !121)
!4950 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 269, column: 10)
!4951 = !DILocation(line: 269, column: 10, scope: !4950)
!4952 = !DILocalVariable(name: "__UNIQUE_ID___y247", scope: !4950, file: !3, line: 269, type: !121)
!4953 = !DILocation(line: 269, column: 10, scope: !4798)
!4954 = !DILocation(line: 269, column: 8, scope: !4798)
!4955 = !DILocation(line: 271, column: 26, scope: !4798)
!4956 = !DILocation(line: 271, column: 46, scope: !4798)
!4957 = !DILocation(line: 271, column: 13, scope: !4798)
!4958 = !DILocation(line: 271, column: 11, scope: !4798)
!4959 = !DILocation(line: 272, column: 8, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 272, column: 8)
!4961 = !DILocation(line: 272, column: 8, scope: !4798)
!4962 = !DILocation(line: 273, column: 12, scope: !4960)
!4963 = !DILocation(line: 273, column: 5, scope: !4960)
!4964 = !DILocation(line: 274, column: 26, scope: !4798)
!4965 = !DILocation(line: 274, column: 47, scope: !4798)
!4966 = !DILocation(line: 274, column: 13, scope: !4798)
!4967 = !DILocation(line: 274, column: 11, scope: !4798)
!4968 = !DILocation(line: 275, column: 8, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 275, column: 8)
!4970 = !DILocation(line: 275, column: 8, scope: !4798)
!4971 = !DILocation(line: 276, column: 12, scope: !4969)
!4972 = !DILocation(line: 276, column: 5, scope: !4969)
!4973 = !DILocation(line: 277, column: 8, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 277, column: 8)
!4975 = !DILocation(line: 277, column: 19, scope: !4974)
!4976 = !DILocation(line: 277, column: 8, scope: !4798)
!4977 = !DILocation(line: 278, column: 12, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 278, column: 5)
!4979 = !DILocation(line: 278, column: 10, scope: !4978)
!4980 = !DILocation(line: 278, column: 17, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4978, file: !3, line: 278, column: 5)
!4982 = !DILocation(line: 278, column: 21, scope: !4981)
!4983 = !DILocation(line: 278, column: 19, scope: !4981)
!4984 = !DILocation(line: 278, column: 5, scope: !4978)
!4985 = !DILocation(line: 280, column: 21, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 278, column: 31)
!4987 = !DILocation(line: 280, column: 43, scope: !4986)
!4988 = !DILocation(line: 280, column: 41, scope: !4986)
!4989 = !DILocation(line: 280, column: 28, scope: !4986)
!4990 = !DILocation(line: 281, column: 14, scope: !4986)
!4991 = !DILocation(line: 281, column: 20, scope: !4986)
!4992 = !DILocation(line: 281, column: 26, scope: !4986)
!4993 = !DILocation(line: 281, column: 28, scope: !4986)
!4994 = !DILocation(line: 280, column: 8, scope: !4986)
!4995 = !DILocation(line: 279, column: 13, scope: !4986)
!4996 = !DILocation(line: 282, column: 10, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 282, column: 10)
!4998 = !DILocation(line: 282, column: 10, scope: !4986)
!4999 = !DILocation(line: 283, column: 14, scope: !4997)
!5000 = !DILocation(line: 283, column: 7, scope: !4997)
!5001 = !DILocation(line: 284, column: 5, scope: !4986)
!5002 = !DILocation(line: 278, column: 27, scope: !4981)
!5003 = !DILocation(line: 278, column: 5, scope: !4981)
!5004 = distinct !{!5004, !4984, !5005}
!5005 = !DILocation(line: 284, column: 5, scope: !4978)
!5006 = !DILocation(line: 285, column: 13, scope: !4798)
!5007 = !DILocation(line: 286, column: 4, scope: !4798)
!5008 = !DILocation(line: 289, column: 26, scope: !4798)
!5009 = !DILocation(line: 289, column: 46, scope: !4798)
!5010 = !DILocation(line: 289, column: 13, scope: !4798)
!5011 = !DILocation(line: 289, column: 11, scope: !4798)
!5012 = !DILocation(line: 290, column: 8, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 290, column: 8)
!5014 = !DILocation(line: 290, column: 8, scope: !4798)
!5015 = !DILocation(line: 291, column: 12, scope: !5013)
!5016 = !DILocation(line: 291, column: 5, scope: !5013)
!5017 = !DILocation(line: 292, column: 26, scope: !4798)
!5018 = !DILocation(line: 293, column: 12, scope: !4798)
!5019 = !DILocation(line: 293, column: 18, scope: !4798)
!5020 = !DILocation(line: 293, column: 23, scope: !4798)
!5021 = !DILocation(line: 292, column: 13, scope: !4798)
!5022 = !DILocation(line: 292, column: 11, scope: !4798)
!5023 = !DILocation(line: 294, column: 8, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 294, column: 8)
!5025 = !DILocation(line: 294, column: 8, scope: !4798)
!5026 = !DILocation(line: 295, column: 12, scope: !5024)
!5027 = !DILocation(line: 295, column: 5, scope: !5024)
!5028 = !DILocation(line: 296, column: 26, scope: !4798)
!5029 = !DILocation(line: 297, column: 12, scope: !4798)
!5030 = !DILocation(line: 297, column: 18, scope: !4798)
!5031 = !DILocation(line: 297, column: 23, scope: !4798)
!5032 = !DILocation(line: 296, column: 13, scope: !4798)
!5033 = !DILocation(line: 296, column: 11, scope: !4798)
!5034 = !DILocation(line: 298, column: 8, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 298, column: 8)
!5036 = !DILocation(line: 298, column: 8, scope: !4798)
!5037 = !DILocation(line: 299, column: 12, scope: !5035)
!5038 = !DILocation(line: 299, column: 5, scope: !5035)
!5039 = !DILocation(line: 300, column: 41, scope: !4798)
!5040 = !DILocation(line: 300, column: 39, scope: !4798)
!5041 = !DILocation(line: 300, column: 15, scope: !4798)
!5042 = !DILocation(line: 300, column: 13, scope: !4798)
!5043 = !DILocation(line: 301, column: 15, scope: !4798)
!5044 = !DILocation(line: 302, column: 4, scope: !4798)
!5045 = !DILocalVariable(name: "__UNIQUE_ID___x248", scope: !5046, file: !3, line: 305, type: !121)
!5046 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 305, column: 10)
!5047 = !DILocation(line: 305, column: 10, scope: !5046)
!5048 = !DILocalVariable(name: "__UNIQUE_ID___y249", scope: !5046, file: !3, line: 305, type: !121)
!5049 = !DILocation(line: 305, column: 10, scope: !4798)
!5050 = !DILocation(line: 305, column: 8, scope: !4798)
!5051 = !DILocation(line: 307, column: 26, scope: !4798)
!5052 = !DILocation(line: 307, column: 46, scope: !4798)
!5053 = !DILocation(line: 307, column: 13, scope: !4798)
!5054 = !DILocation(line: 307, column: 11, scope: !4798)
!5055 = !DILocation(line: 308, column: 8, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 308, column: 8)
!5057 = !DILocation(line: 308, column: 8, scope: !4798)
!5058 = !DILocation(line: 309, column: 12, scope: !5056)
!5059 = !DILocation(line: 309, column: 5, scope: !5056)
!5060 = !DILocation(line: 310, column: 26, scope: !4798)
!5061 = !DILocation(line: 310, column: 47, scope: !4798)
!5062 = !DILocation(line: 310, column: 13, scope: !4798)
!5063 = !DILocation(line: 310, column: 11, scope: !4798)
!5064 = !DILocation(line: 311, column: 8, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 311, column: 8)
!5066 = !DILocation(line: 311, column: 8, scope: !4798)
!5067 = !DILocation(line: 312, column: 12, scope: !5065)
!5068 = !DILocation(line: 312, column: 5, scope: !5065)
!5069 = !DILocation(line: 313, column: 11, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 313, column: 4)
!5071 = !DILocation(line: 313, column: 9, scope: !5070)
!5072 = !DILocation(line: 313, column: 16, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 313, column: 4)
!5074 = !DILocation(line: 313, column: 20, scope: !5073)
!5075 = !DILocation(line: 313, column: 18, scope: !5073)
!5076 = !DILocation(line: 313, column: 4, scope: !5070)
!5077 = !DILocation(line: 314, column: 27, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5073, file: !3, line: 313, column: 30)
!5079 = !DILocation(line: 314, column: 49, scope: !5078)
!5080 = !DILocation(line: 314, column: 47, scope: !5078)
!5081 = !DILocation(line: 314, column: 34, scope: !5078)
!5082 = !DILocation(line: 315, column: 13, scope: !5078)
!5083 = !DILocation(line: 315, column: 19, scope: !5078)
!5084 = !DILocation(line: 315, column: 25, scope: !5078)
!5085 = !DILocation(line: 315, column: 27, scope: !5078)
!5086 = !DILocation(line: 314, column: 14, scope: !5078)
!5087 = !DILocation(line: 314, column: 12, scope: !5078)
!5088 = !DILocation(line: 316, column: 9, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 316, column: 9)
!5090 = !DILocation(line: 316, column: 9, scope: !5078)
!5091 = !DILocation(line: 317, column: 13, scope: !5089)
!5092 = !DILocation(line: 317, column: 6, scope: !5089)
!5093 = !DILocation(line: 318, column: 4, scope: !5078)
!5094 = !DILocation(line: 313, column: 26, scope: !5073)
!5095 = !DILocation(line: 313, column: 4, scope: !5073)
!5096 = distinct !{!5096, !5076, !5097}
!5097 = !DILocation(line: 318, column: 4, scope: !5070)
!5098 = !DILocation(line: 319, column: 47, scope: !4798)
!5099 = !DILocation(line: 319, column: 45, scope: !4798)
!5100 = !DILocation(line: 319, column: 15, scope: !4798)
!5101 = !DILocation(line: 319, column: 13, scope: !4798)
!5102 = !DILocation(line: 320, column: 15, scope: !4798)
!5103 = !DILocation(line: 321, column: 4, scope: !4798)
!5104 = !DILocation(line: 324, column: 4, scope: !4798)
!5105 = !DILocation(line: 325, column: 4, scope: !4798)
!5106 = !DILocation(line: 328, column: 24, scope: !4753)
!5107 = !DILocation(line: 328, column: 45, scope: !4753)
!5108 = !DILocation(line: 328, column: 50, scope: !4753)
!5109 = !DILocation(line: 328, column: 11, scope: !4753)
!5110 = !DILocation(line: 328, column: 9, scope: !4753)
!5111 = !DILocation(line: 329, column: 6, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 329, column: 6)
!5113 = !DILocation(line: 329, column: 6, scope: !4753)
!5114 = !DILocation(line: 330, column: 10, scope: !5112)
!5115 = !DILocation(line: 330, column: 3, scope: !5112)
!5116 = !DILocation(line: 331, column: 24, scope: !4753)
!5117 = !DILocation(line: 331, column: 46, scope: !4753)
!5118 = !DILocation(line: 331, column: 11, scope: !4753)
!5119 = !DILocation(line: 331, column: 9, scope: !4753)
!5120 = !DILocation(line: 332, column: 6, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 332, column: 6)
!5122 = !DILocation(line: 332, column: 6, scope: !4753)
!5123 = !DILocation(line: 333, column: 10, scope: !5121)
!5124 = !DILocation(line: 333, column: 3, scope: !5121)
!5125 = !DILocation(line: 335, column: 23, scope: !4753)
!5126 = !DILocation(line: 335, column: 43, scope: !4753)
!5127 = !DILocation(line: 335, column: 48, scope: !4753)
!5128 = !DILocation(line: 335, column: 11, scope: !4753)
!5129 = !DILocation(line: 335, column: 9, scope: !4753)
!5130 = !DILocation(line: 336, column: 6, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 336, column: 6)
!5132 = !DILocation(line: 336, column: 6, scope: !4753)
!5133 = !DILocation(line: 337, column: 10, scope: !5131)
!5134 = !DILocation(line: 337, column: 3, scope: !5131)
!5135 = !DILocation(line: 339, column: 7, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 339, column: 6)
!5137 = !DILocation(line: 339, column: 6, scope: !5136)
!5138 = !DILocation(line: 339, column: 15, scope: !5136)
!5139 = !DILocation(line: 339, column: 6, scope: !4753)
!5140 = !DILocation(line: 340, column: 3, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5142, file: !3, line: 340, column: 3)
!5142 = distinct !DILexicalBlock(scope: !5143, file: !3, line: 340, column: 3)
!5143 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 340, column: 3)
!5144 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 340, column: 3)
!5145 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 339, column: 35)
!5146 = !DILocation(line: 341, column: 24, scope: !5145)
!5147 = !DILocation(line: 341, column: 44, scope: !5145)
!5148 = !DILocation(line: 341, column: 49, scope: !5145)
!5149 = !DILocation(line: 341, column: 12, scope: !5145)
!5150 = !DILocation(line: 341, column: 10, scope: !5145)
!5151 = !DILocation(line: 342, column: 7, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 342, column: 7)
!5153 = !DILocation(line: 342, column: 7, scope: !5145)
!5154 = !DILocation(line: 343, column: 11, scope: !5152)
!5155 = !DILocation(line: 343, column: 4, scope: !5152)
!5156 = !DILocation(line: 344, column: 2, scope: !5145)
!5157 = !DILocation(line: 346, column: 7, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 346, column: 6)
!5159 = !DILocation(line: 346, column: 6, scope: !5158)
!5160 = !DILocation(line: 346, column: 15, scope: !5158)
!5161 = !DILocation(line: 346, column: 6, scope: !4753)
!5162 = !DILocation(line: 347, column: 3, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5158, file: !3, line: 346, column: 35)
!5164 = !DILocation(line: 348, column: 24, scope: !5163)
!5165 = !DILocation(line: 348, column: 44, scope: !5163)
!5166 = !DILocation(line: 348, column: 49, scope: !5163)
!5167 = !DILocation(line: 348, column: 12, scope: !5163)
!5168 = !DILocation(line: 348, column: 10, scope: !5163)
!5169 = !DILocation(line: 349, column: 7, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5163, file: !3, line: 349, column: 7)
!5171 = !DILocation(line: 349, column: 7, scope: !5163)
!5172 = !DILocation(line: 350, column: 11, scope: !5170)
!5173 = !DILocation(line: 350, column: 4, scope: !5170)
!5174 = !DILocation(line: 351, column: 2, scope: !5163)
!5175 = !DILocation(line: 353, column: 8, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 353, column: 6)
!5177 = !DILocation(line: 353, column: 7, scope: !5176)
!5178 = !DILocation(line: 353, column: 16, scope: !5176)
!5179 = !DILocation(line: 353, column: 36, scope: !5176)
!5180 = !DILocation(line: 353, column: 40, scope: !5176)
!5181 = !DILocation(line: 353, column: 48, scope: !5176)
!5182 = !DILocation(line: 353, column: 6, scope: !4753)
!5183 = !DILocation(line: 354, column: 3, scope: !5176)
!5184 = !DILocation(line: 356, column: 6, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 356, column: 6)
!5186 = !DILocation(line: 356, column: 17, scope: !5185)
!5187 = !DILocation(line: 356, column: 6, scope: !4753)
!5188 = !DILocation(line: 357, column: 3, scope: !5185)
!5189 = !DILocation(line: 359, column: 10, scope: !4753)
!5190 = !DILocation(line: 359, column: 2, scope: !4753)
!5191 = !DILocation(line: 362, column: 25, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 359, column: 16)
!5193 = !DILocation(line: 362, column: 47, scope: !5192)
!5194 = !DILocation(line: 362, column: 53, scope: !5192)
!5195 = !DILocation(line: 362, column: 13, scope: !5192)
!5196 = !DILocation(line: 362, column: 11, scope: !5192)
!5197 = !DILocation(line: 363, column: 8, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 363, column: 8)
!5199 = !DILocation(line: 363, column: 8, scope: !5192)
!5200 = !DILocation(line: 364, column: 12, scope: !5198)
!5201 = !DILocation(line: 364, column: 5, scope: !5198)
!5202 = !DILocation(line: 365, column: 4, scope: !5192)
!5203 = !DILocation(line: 369, column: 25, scope: !5192)
!5204 = !DILocation(line: 369, column: 46, scope: !5192)
!5205 = !DILocation(line: 369, column: 51, scope: !5192)
!5206 = !DILocation(line: 369, column: 13, scope: !5192)
!5207 = !DILocation(line: 369, column: 11, scope: !5192)
!5208 = !DILocation(line: 370, column: 8, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 370, column: 8)
!5210 = !DILocation(line: 370, column: 8, scope: !5192)
!5211 = !DILocation(line: 371, column: 12, scope: !5209)
!5212 = !DILocation(line: 371, column: 5, scope: !5209)
!5213 = !DILocation(line: 372, column: 25, scope: !5192)
!5214 = !DILocation(line: 372, column: 50, scope: !5192)
!5215 = !DILocation(line: 372, column: 55, scope: !5192)
!5216 = !DILocation(line: 372, column: 13, scope: !5192)
!5217 = !DILocation(line: 372, column: 11, scope: !5192)
!5218 = !DILocation(line: 373, column: 8, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 373, column: 8)
!5220 = !DILocation(line: 373, column: 8, scope: !5192)
!5221 = !DILocation(line: 374, column: 12, scope: !5219)
!5222 = !DILocation(line: 374, column: 5, scope: !5219)
!5223 = !DILocation(line: 375, column: 18, scope: !5192)
!5224 = !DILocation(line: 375, column: 26, scope: !5192)
!5225 = !DILocation(line: 375, column: 34, scope: !5192)
!5226 = !DILocation(line: 375, column: 32, scope: !5192)
!5227 = !DILocation(line: 375, column: 17, scope: !5192)
!5228 = !DILocation(line: 375, column: 4, scope: !5192)
!5229 = !DILocation(line: 375, column: 10, scope: !5192)
!5230 = !DILocation(line: 375, column: 15, scope: !5192)
!5231 = !DILocation(line: 376, column: 4, scope: !5192)
!5232 = !DILocation(line: 380, column: 25, scope: !5192)
!5233 = !DILocation(line: 380, column: 13, scope: !5192)
!5234 = !DILocation(line: 380, column: 11, scope: !5192)
!5235 = !DILocation(line: 381, column: 8, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 381, column: 8)
!5237 = !DILocation(line: 381, column: 8, scope: !5192)
!5238 = !DILocation(line: 382, column: 12, scope: !5236)
!5239 = !DILocation(line: 382, column: 5, scope: !5236)
!5240 = !DILocalVariable(name: "__UNIQUE_ID___x250", scope: !5241, file: !3, line: 383, type: !121)
!5241 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 383, column: 10)
!5242 = !DILocation(line: 383, column: 10, scope: !5241)
!5243 = !DILocalVariable(name: "__UNIQUE_ID___y251", scope: !5241, file: !3, line: 383, type: !121)
!5244 = !DILocation(line: 383, column: 10, scope: !5192)
!5245 = !DILocation(line: 383, column: 8, scope: !5192)
!5246 = !DILocation(line: 383, column: 4, scope: !5192)
!5247 = !DILocation(line: 386, column: 11, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 386, column: 4)
!5249 = !DILocation(line: 386, column: 9, scope: !5248)
!5250 = !DILocation(line: 386, column: 16, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5248, file: !3, line: 386, column: 4)
!5252 = !DILocation(line: 386, column: 20, scope: !5251)
!5253 = !DILocation(line: 386, column: 18, scope: !5251)
!5254 = !DILocation(line: 386, column: 4, scope: !5248)
!5255 = !DILocation(line: 387, column: 26, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 386, column: 30)
!5257 = !DILocation(line: 387, column: 48, scope: !5256)
!5258 = !DILocation(line: 387, column: 46, scope: !5256)
!5259 = !DILocation(line: 387, column: 33, scope: !5256)
!5260 = !DILocation(line: 388, column: 12, scope: !5256)
!5261 = !DILocation(line: 388, column: 18, scope: !5256)
!5262 = !DILocation(line: 388, column: 26, scope: !5256)
!5263 = !DILocation(line: 388, column: 24, scope: !5256)
!5264 = !DILocation(line: 388, column: 28, scope: !5256)
!5265 = !DILocation(line: 387, column: 14, scope: !5256)
!5266 = !DILocation(line: 387, column: 12, scope: !5256)
!5267 = !DILocation(line: 389, column: 9, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 389, column: 9)
!5269 = !DILocation(line: 389, column: 9, scope: !5256)
!5270 = !DILocation(line: 390, column: 13, scope: !5268)
!5271 = !DILocation(line: 390, column: 6, scope: !5268)
!5272 = !DILocation(line: 391, column: 4, scope: !5256)
!5273 = !DILocation(line: 386, column: 26, scope: !5251)
!5274 = !DILocation(line: 386, column: 4, scope: !5251)
!5275 = distinct !{!5275, !5254, !5276}
!5276 = !DILocation(line: 391, column: 4, scope: !5248)
!5277 = !DILocation(line: 392, column: 21, scope: !5192)
!5278 = !DILocation(line: 392, column: 4, scope: !5192)
!5279 = !DILocation(line: 392, column: 10, scope: !5192)
!5280 = !DILocation(line: 392, column: 19, scope: !5192)
!5281 = !DILocation(line: 393, column: 4, scope: !5192)
!5282 = !DILocation(line: 396, column: 2, scope: !4753)
!5283 = !DILocation(line: 397, column: 1, scope: !4753)
!5284 = distinct !DISubprogram(name: "amd8111_func", scope: !3, file: !3, line: 400, type: !4258, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!5285 = !DILocalVariable(name: "adapter", arg: 1, scope: !5284, file: !3, line: 400, type: !4149)
!5286 = !DILocation(line: 400, column: 45, scope: !5284)
!5287 = !DILocation(line: 402, column: 2, scope: !5284)
!5288 = distinct !DISubprogram(name: "amd_ec_write", scope: !3, file: !3, line: 123, type: !5289, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!5289 = !DISubroutineType(types: !5290)
!5290 = !{!186, !4278, !125, !125}
!5291 = !DILocalVariable(name: "smbus", arg: 1, scope: !5288, file: !3, line: 123, type: !4278)
!5292 = !DILocation(line: 123, column: 43, scope: !5288)
!5293 = !DILocalVariable(name: "address", arg: 2, scope: !5288, file: !3, line: 123, type: !125)
!5294 = !DILocation(line: 123, column: 64, scope: !5288)
!5295 = !DILocalVariable(name: "data", arg: 3, scope: !5288, file: !3, line: 124, type: !125)
!5296 = !DILocation(line: 124, column: 17, scope: !5288)
!5297 = !DILocalVariable(name: "status", scope: !5288, file: !3, line: 126, type: !186)
!5298 = !DILocation(line: 126, column: 6, scope: !5288)
!5299 = !DILocation(line: 128, column: 29, scope: !5288)
!5300 = !DILocation(line: 128, column: 11, scope: !5288)
!5301 = !DILocation(line: 128, column: 9, scope: !5288)
!5302 = !DILocation(line: 129, column: 6, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 129, column: 6)
!5304 = !DILocation(line: 129, column: 6, scope: !5288)
!5305 = !DILocation(line: 130, column: 10, scope: !5303)
!5306 = !DILocation(line: 130, column: 3, scope: !5303)
!5307 = !DILocation(line: 131, column: 22, scope: !5288)
!5308 = !DILocation(line: 131, column: 29, scope: !5288)
!5309 = !DILocation(line: 131, column: 34, scope: !5288)
!5310 = !DILocation(line: 131, column: 2, scope: !5288)
!5311 = !DILocation(line: 133, column: 29, scope: !5288)
!5312 = !DILocation(line: 133, column: 11, scope: !5288)
!5313 = !DILocation(line: 133, column: 9, scope: !5288)
!5314 = !DILocation(line: 134, column: 6, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 134, column: 6)
!5316 = !DILocation(line: 134, column: 6, scope: !5288)
!5317 = !DILocation(line: 135, column: 10, scope: !5315)
!5318 = !DILocation(line: 135, column: 3, scope: !5315)
!5319 = !DILocation(line: 136, column: 7, scope: !5288)
!5320 = !DILocation(line: 136, column: 16, scope: !5288)
!5321 = !DILocation(line: 136, column: 23, scope: !5288)
!5322 = !DILocation(line: 136, column: 28, scope: !5288)
!5323 = !DILocation(line: 136, column: 2, scope: !5288)
!5324 = !DILocation(line: 138, column: 29, scope: !5288)
!5325 = !DILocation(line: 138, column: 11, scope: !5288)
!5326 = !DILocation(line: 138, column: 9, scope: !5288)
!5327 = !DILocation(line: 139, column: 6, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 139, column: 6)
!5329 = !DILocation(line: 139, column: 6, scope: !5288)
!5330 = !DILocation(line: 140, column: 10, scope: !5328)
!5331 = !DILocation(line: 140, column: 3, scope: !5328)
!5332 = !DILocation(line: 141, column: 7, scope: !5288)
!5333 = !DILocation(line: 141, column: 13, scope: !5288)
!5334 = !DILocation(line: 141, column: 20, scope: !5288)
!5335 = !DILocation(line: 141, column: 25, scope: !5288)
!5336 = !DILocation(line: 141, column: 2, scope: !5288)
!5337 = !DILocation(line: 143, column: 2, scope: !5288)
!5338 = !DILocation(line: 144, column: 1, scope: !5288)
!5339 = distinct !DISubprogram(name: "amd_ec_read", scope: !3, file: !3, line: 100, type: !5340, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!5340 = !DISubroutineType(types: !5341)
!5341 = !{!186, !4278, !125, !5342}
!5342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!5343 = !DILocalVariable(name: "smbus", arg: 1, scope: !5339, file: !3, line: 100, type: !4278)
!5344 = !DILocation(line: 100, column: 42, scope: !5339)
!5345 = !DILocalVariable(name: "address", arg: 2, scope: !5339, file: !3, line: 100, type: !125)
!5346 = !DILocation(line: 100, column: 63, scope: !5339)
!5347 = !DILocalVariable(name: "data", arg: 3, scope: !5339, file: !3, line: 101, type: !5342)
!5348 = !DILocation(line: 101, column: 18, scope: !5339)
!5349 = !DILocalVariable(name: "status", scope: !5339, file: !3, line: 103, type: !186)
!5350 = !DILocation(line: 103, column: 6, scope: !5339)
!5351 = !DILocation(line: 105, column: 29, scope: !5339)
!5352 = !DILocation(line: 105, column: 11, scope: !5339)
!5353 = !DILocation(line: 105, column: 9, scope: !5339)
!5354 = !DILocation(line: 106, column: 6, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 106, column: 6)
!5356 = !DILocation(line: 106, column: 6, scope: !5339)
!5357 = !DILocation(line: 107, column: 10, scope: !5355)
!5358 = !DILocation(line: 107, column: 3, scope: !5355)
!5359 = !DILocation(line: 108, column: 22, scope: !5339)
!5360 = !DILocation(line: 108, column: 29, scope: !5339)
!5361 = !DILocation(line: 108, column: 34, scope: !5339)
!5362 = !DILocation(line: 108, column: 2, scope: !5339)
!5363 = !DILocation(line: 110, column: 29, scope: !5339)
!5364 = !DILocation(line: 110, column: 11, scope: !5339)
!5365 = !DILocation(line: 110, column: 9, scope: !5339)
!5366 = !DILocation(line: 111, column: 6, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 111, column: 6)
!5368 = !DILocation(line: 111, column: 6, scope: !5339)
!5369 = !DILocation(line: 112, column: 10, scope: !5367)
!5370 = !DILocation(line: 112, column: 3, scope: !5367)
!5371 = !DILocation(line: 113, column: 7, scope: !5339)
!5372 = !DILocation(line: 113, column: 16, scope: !5339)
!5373 = !DILocation(line: 113, column: 23, scope: !5339)
!5374 = !DILocation(line: 113, column: 28, scope: !5339)
!5375 = !DILocation(line: 113, column: 2, scope: !5339)
!5376 = !DILocation(line: 115, column: 28, scope: !5339)
!5377 = !DILocation(line: 115, column: 11, scope: !5339)
!5378 = !DILocation(line: 115, column: 9, scope: !5339)
!5379 = !DILocation(line: 116, column: 6, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 116, column: 6)
!5381 = !DILocation(line: 116, column: 6, scope: !5339)
!5382 = !DILocation(line: 117, column: 10, scope: !5380)
!5383 = !DILocation(line: 117, column: 3, scope: !5380)
!5384 = !DILocation(line: 118, column: 14, scope: !5339)
!5385 = !DILocation(line: 118, column: 21, scope: !5339)
!5386 = !DILocation(line: 118, column: 26, scope: !5339)
!5387 = !DILocation(line: 118, column: 10, scope: !5339)
!5388 = !DILocation(line: 118, column: 3, scope: !5339)
!5389 = !DILocation(line: 118, column: 8, scope: !5339)
!5390 = !DILocation(line: 120, column: 2, scope: !5339)
!5391 = !DILocation(line: 121, column: 1, scope: !5339)
!5392 = distinct !DISubprogram(name: "amd_ec_wait_write", scope: !3, file: !3, line: 68, type: !5393, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!5393 = !DISubroutineType(types: !5394)
!5394 = !{!186, !4278}
!5395 = !DILocalVariable(name: "smbus", arg: 1, scope: !5392, file: !3, line: 68, type: !4278)
!5396 = !DILocation(line: 68, column: 48, scope: !5392)
!5397 = !DILocalVariable(name: "timeout", scope: !5392, file: !3, line: 70, type: !186)
!5398 = !DILocation(line: 70, column: 6, scope: !5392)
!5399 = !DILocation(line: 72, column: 2, scope: !5392)
!5400 = !DILocation(line: 72, column: 14, scope: !5392)
!5401 = !DILocation(line: 72, column: 21, scope: !5392)
!5402 = !DILocation(line: 72, column: 26, scope: !5392)
!5403 = !DILocation(line: 72, column: 10, scope: !5392)
!5404 = !DILocation(line: 72, column: 39, scope: !5392)
!5405 = !DILocation(line: 72, column: 56, scope: !5392)
!5406 = !DILocation(line: 72, column: 59, scope: !5392)
!5407 = !DILocation(line: 0, scope: !5392)
!5408 = !DILocation(line: 73, column: 3, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 73, column: 3)
!5410 = distinct !DILexicalBlock(scope: !5411, file: !3, line: 73, column: 3)
!5411 = distinct !DILexicalBlock(scope: !5412, file: !3, line: 73, column: 3)
!5412 = distinct !DILexicalBlock(scope: !5392, file: !3, line: 73, column: 3)
!5413 = distinct !{!5413, !5399, !5414}
!5414 = !DILocation(line: 73, column: 3, scope: !5392)
!5415 = !DILocation(line: 75, column: 7, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5392, file: !3, line: 75, column: 6)
!5417 = !DILocation(line: 75, column: 6, scope: !5392)
!5418 = !DILocation(line: 76, column: 3, scope: !5419)
!5419 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 75, column: 16)
!5420 = !DILocation(line: 78, column: 3, scope: !5419)
!5421 = !DILocation(line: 81, column: 2, scope: !5392)
!5422 = !DILocation(line: 82, column: 1, scope: !5392)
!5423 = distinct !DISubprogram(name: "outb", scope: !5424, file: !5424, line: 334, type: !5425, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!5424 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!5425 = !DISubroutineType(types: !5426)
!5426 = !{null, !125, !186}
!5427 = !DILocalVariable(name: "value", arg: 1, scope: !5423, file: !5424, line: 334, type: !125)
!5428 = !DILocation(line: 334, column: 1, scope: !5423)
!5429 = !DILocalVariable(name: "port", arg: 2, scope: !5423, file: !5424, line: 334, type: !186)
!5430 = !{i32 -2143412253}
!5431 = distinct !DISubprogram(name: "inb", scope: !5424, file: !5424, line: 334, type: !5432, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!5432 = !DISubroutineType(types: !5433)
!5433 = !{!125, !186}
!5434 = !DILocalVariable(name: "port", arg: 1, scope: !5431, file: !5424, line: 334, type: !186)
!5435 = !DILocation(line: 334, column: 1, scope: !5431)
!5436 = !DILocalVariable(name: "value", scope: !5431, file: !5424, line: 334, type: !125)
!5437 = !{i32 -2143412051}
!5438 = distinct !DISubprogram(name: "amd_ec_wait_read", scope: !3, file: !3, line: 84, type: !5393, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!5439 = !DILocalVariable(name: "smbus", arg: 1, scope: !5438, file: !3, line: 84, type: !4278)
!5440 = !DILocation(line: 84, column: 47, scope: !5438)
!5441 = !DILocalVariable(name: "timeout", scope: !5438, file: !3, line: 86, type: !186)
!5442 = !DILocation(line: 86, column: 6, scope: !5438)
!5443 = !DILocation(line: 88, column: 2, scope: !5438)
!5444 = !DILocation(line: 88, column: 15, scope: !5438)
!5445 = !DILocation(line: 88, column: 22, scope: !5438)
!5446 = !DILocation(line: 88, column: 27, scope: !5438)
!5447 = !DILocation(line: 88, column: 11, scope: !5438)
!5448 = !DILocation(line: 88, column: 10, scope: !5438)
!5449 = !DILocation(line: 88, column: 40, scope: !5438)
!5450 = !DILocation(line: 88, column: 57, scope: !5438)
!5451 = !DILocation(line: 88, column: 60, scope: !5438)
!5452 = !DILocation(line: 0, scope: !5438)
!5453 = !DILocation(line: 89, column: 3, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5455, file: !3, line: 89, column: 3)
!5455 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 89, column: 3)
!5456 = distinct !DILexicalBlock(scope: !5457, file: !3, line: 89, column: 3)
!5457 = distinct !DILexicalBlock(scope: !5438, file: !3, line: 89, column: 3)
!5458 = distinct !{!5458, !5443, !5459}
!5459 = !DILocation(line: 89, column: 3, scope: !5438)
!5460 = !DILocation(line: 91, column: 7, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5438, file: !3, line: 91, column: 6)
!5462 = !DILocation(line: 91, column: 6, scope: !5438)
!5463 = !DILocation(line: 92, column: 3, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5461, file: !3, line: 91, column: 16)
!5465 = !DILocation(line: 94, column: 3, scope: !5464)
!5466 = !DILocation(line: 97, column: 2, scope: !5438)
!5467 = !DILocation(line: 98, column: 1, scope: !5438)
!5468 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !5469, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!5469 = !DISubroutineType(types: !5470)
!5470 = !{null, !271, !120}
!5471 = !DILocalVariable(name: "dev", arg: 1, scope: !5468, file: !73, line: 660, type: !271)
!5472 = !DILocation(line: 660, column: 51, scope: !5468)
!5473 = !DILocalVariable(name: "data", arg: 2, scope: !5468, file: !73, line: 660, type: !120)
!5474 = !DILocation(line: 660, column: 62, scope: !5468)
!5475 = !DILocation(line: 662, column: 21, scope: !5468)
!5476 = !DILocation(line: 662, column: 2, scope: !5468)
!5477 = !DILocation(line: 662, column: 7, scope: !5468)
!5478 = !DILocation(line: 662, column: 19, scope: !5468)
!5479 = !DILocation(line: 663, column: 1, scope: !5468)
!5480 = distinct !DISubprogram(name: "pci_get_drvdata", scope: !156, file: !156, line: 1865, type: !5481, scopeLine: 1866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!5481 = !DISubroutineType(types: !5482)
!5482 = !{!120, !187}
!5483 = !DILocalVariable(name: "pdev", arg: 1, scope: !5480, file: !156, line: 1865, type: !187)
!5484 = !DILocation(line: 1865, column: 53, scope: !5480)
!5485 = !DILocation(line: 1867, column: 26, scope: !5480)
!5486 = !DILocation(line: 1867, column: 32, scope: !5480)
!5487 = !DILocation(line: 1867, column: 9, scope: !5480)
!5488 = !DILocation(line: 1867, column: 2, scope: !5480)
!5489 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !5490, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !302)
!5490 = !DISubroutineType(types: !5491)
!5491 = !{!120, !3739}
!5492 = !DILocalVariable(name: "dev", arg: 1, scope: !5489, file: !73, line: 655, type: !3739)
!5493 = !DILocation(line: 655, column: 58, scope: !5489)
!5494 = !DILocation(line: 657, column: 9, scope: !5489)
!5495 = !DILocation(line: 657, column: 14, scope: !5489)
!5496 = !DILocation(line: 657, column: 2, scope: !5489)
