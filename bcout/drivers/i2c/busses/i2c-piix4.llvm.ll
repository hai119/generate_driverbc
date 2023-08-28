; ModuleID = '../bcout/drivers/i2c/busses/i2c-piix4.llvm.bc'
source_filename = "drivers/i2c/busses/i2c-piix4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_piix4_driver_init6:\09\09\09"
module asm ".long\09piix4_driver_init - .\09\09\09"
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
%struct.i2c_adapter = type { %struct.module*, i32, %struct.i2c_algorithm*, i8*, %struct.i2c_lock_operations*, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i64, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, %struct.i2c_bus_recovery_info*, %struct.i2c_adapter_quirks*, %struct.irq_domain* }
%struct.i2c_algorithm = type { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*)* }
%struct.i2c_msg = type { i16, i16, i16, i8* }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_lock_operations = type { void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)* }
%struct.rt_mutex = type { %struct.raw_spinlock, %struct.rb_root_cached, %struct.task_struct* }
%struct.i2c_bus_recovery_info = type { i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.pinctrl*, %struct.pinctrl_state*, %struct.pinctrl_state* }
%struct.gpio_desc = type opaque
%struct.pinctrl = type opaque
%struct.pinctrl_state = type opaque
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
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
%struct.dmi_system_id = type { {}*, i8*, [4 x %struct.dmi_strmatch], i8* }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.kmem_cache = type opaque
%struct.i2c_piix4_adapdata = type { i16, i8, i8, i8 }
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%union.acpi_object = type { %struct.anon.72 }
%struct.anon.72 = type { i32, i32, i64, i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state] }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.74, i32, i32, %struct.list_head }
%struct.anon.74 = type { i8 }
%struct.acpi_device_wakeup = type { i8*, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, %struct.wakeup_source*, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { void (%struct.acpi_device_wakeup_context*)*, %struct.device* }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.75, i8, i8, i32 }
%struct.anon.75 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.acpi_gpio_mapping = type opaque

@__param_str_force = internal constant [16 x i8] c"i2c_piix4.force\00", align 16, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@force = internal global i32 0, align 4, !dbg !4227
@__param_force = internal constant %struct.kernel_param { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__param_str_force, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @force to i8*) } }, section "__param", align 8, !dbg !4123
@__UNIQUE_ID_forcetype240 = internal constant [29 x i8] c"i2c_piix4.parmtype=force:int\00", section ".modinfo", align 1, !dbg !4175
@__UNIQUE_ID_force241 = internal constant [59 x i8] c"i2c_piix4.parm=force:Forcibly enable the PIIX4. DANGEROUS!\00", section ".modinfo", align 1, !dbg !4180
@__param_str_force_addr = internal constant [21 x i8] c"i2c_piix4.force_addr\00", align 16, !dbg !4231
@force_addr = internal global i32 0, align 4, !dbg !4229
@__param_force_addr = internal constant %struct.kernel_param { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__param_str_force_addr, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 0, i8 -1, i8 2, %union.anon { i8* bitcast (i32* @force_addr to i8*) } }, section "__param", align 8, !dbg !4185
@__UNIQUE_ID_force_addrtype242 = internal constant [34 x i8] c"i2c_piix4.parmtype=force_addr:int\00", section ".modinfo", align 1, !dbg !4187
@__UNIQUE_ID_force_addr243 = internal constant [95 x i8] c"i2c_piix4.parm=force_addr:Forcibly enable the PIIX4 at the given address. EXTREMELY DANGEROUS!\00", section ".modinfo", align 1, !dbg !4192
@__UNIQUE_ID___addressable_piix4_driver_init245 = internal global i8* bitcast (i32 ()* @piix4_driver_init to i8*), section ".discard.addressable", align 8, !dbg !4197
@piix4_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([16 x %struct.pci_device_id], [16 x %struct.pci_device_id]* @piix4_ids, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @piix4_probe, void (%struct.pci_dev*)* @piix4_remove, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !4236
@__exitcall_piix4_driver_exit = internal global void ()* @piix4_driver_exit, section ".exitcall.exit", align 8, !dbg !4199
@__UNIQUE_ID_author246 = internal constant [49 x i8] c"i2c_piix4.author=Frodo Looijaard <frodol@dds.nl>\00", section ".modinfo", align 1, !dbg !4204
@__UNIQUE_ID_author247 = internal constant [55 x i8] c"i2c_piix4.author=Philip Edelbrock <phil@netroedge.com>\00", section ".modinfo", align 1, !dbg !4209
@__UNIQUE_ID_description248 = internal constant [41 x i8] c"i2c_piix4.description=PIIX4 SMBus driver\00", section ".modinfo", align 1, !dbg !4214
@__UNIQUE_ID_file249 = internal constant [44 x i8] c"i2c_piix4.file=drivers/i2c/busses/i2c-piix4\00", section ".modinfo", align 1, !dbg !4219
@__UNIQUE_ID_license250 = internal constant [22 x i8] c"i2c_piix4.license=GPL\00", section ".modinfo", align 1, !dbg !4222
@.str = private unnamed_addr constant [10 x i8] c"i2c_piix4\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"piix4_smbus\00", align 1
@piix4_ids = internal constant [16 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 28947, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 32902, i32 29083, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4181, i32 37987, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4098, i32 17235, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4098, i32 17251, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4098, i32 17266, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4098, i32 17285, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4130, i32 30731, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4130, i32 30987, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 7572, i32 30987, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4454, i32 512, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4454, i32 513, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4454, i32 515, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4454, i32 517, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4454, i32 1032, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4512
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@piix4_main_adapters = internal global [4 x %struct.i2c_adapter*] zeroinitializer, align 16, !dbg !4675
@piix4_aux_port_name_sb800 = internal global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), align 8, !dbg !4678
@piix4_aux_adapter = internal global %struct.i2c_adapter* null, align 8, !dbg !4680
@.str.3 = private unnamed_addr constant [41 x i8] c"SMBus does not support forcing address!\0A\00", align 1
@ioport_resource = external dso_local global %struct.resource, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"sb800_piix4_smb\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"SMB base address index region 0x%x already in use.\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"SMBus Host Controller not enabled!\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"SMBus region 0x%x already in use!\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Auxiliary SMBus Host Controller at 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"i2ccfg\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"SMBus I2C bus config region 0x%x already in use!\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"SMBus Host Controller at 0x%x, revision %d\0A\00", align 1
@piix4_port_sel_sb800 = internal global i8 0, align 1, !dbg !4515
@piix4_port_mask_sb800 = internal global i8 0, align 1, !dbg !4517
@piix4_port_shift_sb800 = internal global i8 0, align 1, !dbg !4519
@.str.12 = private unnamed_addr constant [48 x i8] c"Using register 0x%02x for SMBus port selection\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@piix4_adapter_count = internal global i32 0, align 4, !dbg !4521
@piix4_main_port_names_sb800 = internal global [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)], align 16, !dbg !4523
@.str.13 = private unnamed_addr constant [49 x i8] c"Error setting up SB800 adapters. Unregistering!\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c" port 0\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c" port 2\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c" port 3\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c" port 4\00", align 1
@srvrworks_csb5_delay = internal global i32 0, align 4, !dbg !4526
@.str.18 = private unnamed_addr constant [47 x i8] c"Accessing the SMBus on this system is unsafe!\0A\00", align 1
@.str.19 = private unnamed_addr constant [91 x i8] c"IBM system detected; this module may corrupt your serial eeprom! Refusing to load module!\0A\00", align 1
@.str.20 = private unnamed_addr constant [74 x i8] c"SMBus base address uninitialized - upgrade BIOS or use force_addr=0xaddr\0A\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"WARNING: SMBus interface set to new address %04x!\0A\00", align 1
@.str.22 = private unnamed_addr constant [55 x i8] c"WARNING: SMBus interface has been FORCEFULLY ENABLED!\0A\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"Illegal Interrupt configuration (or code out of date)!\0A\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Sapphire AM2RD790\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"DFI Lanparty UT 790FX\00", align 1
@piix4_dmi_blacklist = internal constant [3 x { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }] [{ i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"SAPPHIRE Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"PC-AM2RD790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"DFI Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"LP UT 790FX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } zeroinitializer], align 16, !dbg !4528
@.str.27 = private unnamed_addr constant [4 x i8] c"IBM\00", align 1
@piix4_dmi_ibm = internal constant [2 x { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }] [{ i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"IBM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } zeroinitializer], align 16, !dbg !4551
@piix4_smbus_algorithm_sb800 = internal constant %struct.i2c_algorithm { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* null, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* @piix4_access_sb800, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*)* @piix4_func }, align 8, !dbg !4554
@smbus_algorithm = internal constant %struct.i2c_algorithm { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* null, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* @piix4_access, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*)* @piix4_func }, align 8, !dbg !4673
@.str.29 = private unnamed_addr constant [30 x i8] c"SMBus PIIX4 adapter%s at %04x\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.30 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.31 = private unnamed_addr constant [52 x i8] c"IMC base address index region 0x%x already in use.\0A\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"Failed to communicate with the IMC.\0A\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"Continuing without IMC notification.\0A\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"smbus_kerncz_imc\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"Failed! (%02x)\0A\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"SMBus Timeout!\0A\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"Error: Failed bus transaction\0A\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"Failed reset at end of transaction (%02x)\0A\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"Auxiliary SMBus region 0x%x already in use!\0A\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c" port 1\00", align 1
@llvm.used = appending global [14 x i8*] [i8* bitcast (%struct.kernel_param* @__param_force to i8*), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__UNIQUE_ID_forcetype240, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__UNIQUE_ID_force241, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_force_addr to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__UNIQUE_ID_force_addrtype242, i32 0, i32 0), i8* getelementptr inbounds ([95 x i8], [95 x i8]* @__UNIQUE_ID_force_addr243, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_piix4_driver_init245 to i8*), i8* bitcast (void ()* @piix4_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_piix4_driver_exit to i8*), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_author246, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__UNIQUE_ID_author247, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__UNIQUE_ID_description248, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__UNIQUE_ID_file249, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__UNIQUE_ID_license250, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @piix4_driver_init() #0 section ".init.text" !dbg !4688 {
entry:
  %call = call i32 @__pci_register_driver(%struct.pci_driver* @piix4_driver, %struct.module* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !4691
  ret i32 %call, !dbg !4691
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @piix4_driver_exit() #0 section ".exit.text" !dbg !4692 {
entry:
  call void @pci_unregister_driver(%struct.pci_driver* @piix4_driver) #8, !dbg !4693
  ret void, !dbg !4693
}

; Function Attrs: noredzone
declare dso_local void @pci_unregister_driver(%struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__pci_register_driver(%struct.pci_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @piix4_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !4694 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  %retval1 = alloca i32, align 4
  %is_sb800 = alloca i8, align 1
  %notify_imc = alloca i8, align 1
  %imc = alloca i8, align 1
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4695, metadata !DIExpression()), !dbg !4696
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !4697, metadata !DIExpression()), !dbg !4698
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4699, metadata !DIExpression()), !dbg !4700
  call void @llvm.dbg.declare(metadata i8* %is_sb800, metadata !4701, metadata !DIExpression()), !dbg !4702
  store i8 0, i8* %is_sb800, align 1, !dbg !4702
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4703
  %vendor = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 7, !dbg !4705
  %1 = load i16, i16* %vendor, align 4, !dbg !4705
  %conv = zext i16 %1 to i32, !dbg !4703
  %cmp = icmp eq i32 %conv, 4098, !dbg !4706
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !4707

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4708
  %device = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 8, !dbg !4709
  %3 = load i16, i16* %device, align 2, !dbg !4709
  %conv3 = zext i16 %3 to i32, !dbg !4708
  %cmp4 = icmp eq i32 %conv3, 17285, !dbg !4710
  br i1 %cmp4, label %land.lhs.true6, label %lor.lhs.false, !dbg !4711

land.lhs.true6:                                   ; preds = %land.lhs.true
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4712
  %revision = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 12, !dbg !4713
  %5 = load i8, i8* %revision, align 8, !dbg !4713
  %conv7 = zext i8 %5 to i32, !dbg !4712
  %cmp8 = icmp sge i32 %conv7, 64, !dbg !4714
  br i1 %cmp8, label %if.then, label %lor.lhs.false, !dbg !4715

lor.lhs.false:                                    ; preds = %land.lhs.true6, %land.lhs.true, %entry
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4716
  %vendor10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 7, !dbg !4717
  %7 = load i16, i16* %vendor10, align 4, !dbg !4717
  %conv11 = zext i16 %7 to i32, !dbg !4716
  %cmp12 = icmp eq i32 %conv11, 4130, !dbg !4718
  br i1 %cmp12, label %if.then, label %lor.lhs.false14, !dbg !4719

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4720
  %vendor15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 7, !dbg !4721
  %9 = load i16, i16* %vendor15, align 4, !dbg !4721
  %conv16 = zext i16 %9 to i32, !dbg !4720
  %cmp17 = icmp eq i32 %conv16, 7572, !dbg !4722
  br i1 %cmp17, label %if.then, label %if.else, !dbg !4723

if.then:                                          ; preds = %lor.lhs.false14, %lor.lhs.false, %land.lhs.true6
  call void @llvm.dbg.declare(metadata i8* %notify_imc, metadata !4724, metadata !DIExpression()), !dbg !4726
  store i8 0, i8* %notify_imc, align 1, !dbg !4726
  store i8 1, i8* %is_sb800, align 1, !dbg !4727
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4728
  %vendor19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 7, !dbg !4730
  %11 = load i16, i16* %vendor19, align 4, !dbg !4730
  %conv20 = zext i16 %11 to i32, !dbg !4728
  %cmp21 = icmp eq i32 %conv20, 4130, !dbg !4731
  br i1 %cmp21, label %land.lhs.true28, label %lor.lhs.false23, !dbg !4732

lor.lhs.false23:                                  ; preds = %if.then
  %12 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4733
  %vendor24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 7, !dbg !4734
  %13 = load i16, i16* %vendor24, align 4, !dbg !4734
  %conv25 = zext i16 %13 to i32, !dbg !4733
  %cmp26 = icmp eq i32 %conv25, 7572, !dbg !4735
  br i1 %cmp26, label %land.lhs.true28, label %if.end36, !dbg !4736

land.lhs.true28:                                  ; preds = %lor.lhs.false23, %if.then
  %14 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4737
  %device29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 8, !dbg !4738
  %15 = load i16, i16* %device29, align 2, !dbg !4738
  %conv30 = zext i16 %15 to i32, !dbg !4737
  %cmp31 = icmp eq i32 %conv30, 30987, !dbg !4739
  br i1 %cmp31, label %if.then33, label %if.end36, !dbg !4740

if.then33:                                        ; preds = %land.lhs.true28
  call void @llvm.dbg.declare(metadata i8* %imc, metadata !4741, metadata !DIExpression()), !dbg !4743
  %16 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4744
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1, !dbg !4745
  %17 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4745
  %call = call i32 @pci_bus_read_config_byte(%struct.pci_bus* %17, i32 163, i32 64, i8* %imc) #8, !dbg !4746
  %18 = load i8, i8* %imc, align 1, !dbg !4747
  %conv34 = zext i8 %18 to i32, !dbg !4747
  %and = and i32 %conv34, 128, !dbg !4749
  %tobool = icmp ne i32 %and, 0, !dbg !4749
  br i1 %tobool, label %if.then35, label %if.end, !dbg !4750

if.then35:                                        ; preds = %if.then33
  store i8 1, i8* %notify_imc, align 1, !dbg !4751
  br label %if.end, !dbg !4752

if.end:                                           ; preds = %if.then35, %if.then33
  br label %if.end36, !dbg !4753

if.end36:                                         ; preds = %if.end, %land.lhs.true28, %lor.lhs.false23
  %19 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4754
  %20 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !4755
  %call37 = call i32 @piix4_setup_sb800(%struct.pci_dev* %19, %struct.pci_device_id* %20, i8 zeroext 0) #8, !dbg !4756
  store i32 %call37, i32* %retval1, align 4, !dbg !4757
  %21 = load i32, i32* %retval1, align 4, !dbg !4758
  %cmp38 = icmp slt i32 %21, 0, !dbg !4760
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !4761

if.then40:                                        ; preds = %if.end36
  %22 = load i32, i32* %retval1, align 4, !dbg !4762
  store i32 %22, i32* %retval, align 4, !dbg !4763
  br label %return, !dbg !4763

if.end41:                                         ; preds = %if.end36
  %23 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4764
  %24 = load i32, i32* %retval1, align 4, !dbg !4765
  %conv42 = trunc i32 %24 to i16, !dbg !4765
  %25 = load i8, i8* %notify_imc, align 1, !dbg !4766
  %tobool43 = trunc i8 %25 to i1, !dbg !4766
  %call44 = call i32 @piix4_add_adapters_sb800(%struct.pci_dev* %23, i16 zeroext %conv42, i1 zeroext %tobool43) #8, !dbg !4767
  store i32 %call44, i32* %retval1, align 4, !dbg !4768
  %26 = load i32, i32* %retval1, align 4, !dbg !4769
  %cmp45 = icmp slt i32 %26, 0, !dbg !4771
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !4772

if.then47:                                        ; preds = %if.end41
  %27 = load i32, i32* %retval1, align 4, !dbg !4773
  store i32 %27, i32* %retval, align 4, !dbg !4774
  br label %return, !dbg !4774

if.end48:                                         ; preds = %if.end41
  br label %if.end60, !dbg !4775

if.else:                                          ; preds = %lor.lhs.false14
  %28 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4776
  %29 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !4778
  %call49 = call i32 @piix4_setup(%struct.pci_dev* %28, %struct.pci_device_id* %29) #8, !dbg !4779
  store i32 %call49, i32* %retval1, align 4, !dbg !4780
  %30 = load i32, i32* %retval1, align 4, !dbg !4781
  %cmp50 = icmp slt i32 %30, 0, !dbg !4783
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !4784

if.then52:                                        ; preds = %if.else
  %31 = load i32, i32* %retval1, align 4, !dbg !4785
  store i32 %31, i32* %retval, align 4, !dbg !4786
  br label %return, !dbg !4786

if.end53:                                         ; preds = %if.else
  %32 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4787
  %33 = load i32, i32* %retval1, align 4, !dbg !4788
  %conv54 = trunc i32 %33 to i16, !dbg !4788
  %call55 = call i32 @piix4_add_adapter(%struct.pci_dev* %32, i16 zeroext %conv54, i1 zeroext false, i8 zeroext 0, i1 zeroext false, i8 zeroext 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.i2c_adapter** getelementptr inbounds ([4 x %struct.i2c_adapter*], [4 x %struct.i2c_adapter*]* @piix4_main_adapters, i64 0, i64 0)) #8, !dbg !4789
  store i32 %call55, i32* %retval1, align 4, !dbg !4790
  %34 = load i32, i32* %retval1, align 4, !dbg !4791
  %cmp56 = icmp slt i32 %34, 0, !dbg !4793
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !4794

if.then58:                                        ; preds = %if.end53
  %35 = load i32, i32* %retval1, align 4, !dbg !4795
  store i32 %35, i32* %retval, align 4, !dbg !4796
  br label %return, !dbg !4796

if.end59:                                         ; preds = %if.end53
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end48
  store i32 -19, i32* %retval1, align 4, !dbg !4797
  %36 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4798
  %vendor61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 7, !dbg !4800
  %37 = load i16, i16* %vendor61, align 4, !dbg !4800
  %conv62 = zext i16 %37 to i32, !dbg !4798
  %cmp63 = icmp eq i32 %conv62, 4098, !dbg !4801
  br i1 %cmp63, label %land.lhs.true65, label %if.end80, !dbg !4802

land.lhs.true65:                                  ; preds = %if.end60
  %38 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4803
  %device66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 8, !dbg !4804
  %39 = load i16, i16* %device66, align 2, !dbg !4804
  %conv67 = zext i16 %39 to i32, !dbg !4803
  %cmp68 = icmp eq i32 %conv67, 17285, !dbg !4805
  br i1 %cmp68, label %if.then70, label %if.end80, !dbg !4806

if.then70:                                        ; preds = %land.lhs.true65
  %40 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4807
  %revision71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 12, !dbg !4810
  %41 = load i8, i8* %revision71, align 8, !dbg !4810
  %conv72 = zext i8 %41 to i32, !dbg !4807
  %cmp73 = icmp slt i32 %conv72, 64, !dbg !4811
  br i1 %cmp73, label %if.then75, label %if.else77, !dbg !4812

if.then75:                                        ; preds = %if.then70
  %42 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4813
  %43 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !4815
  %call76 = call i32 @piix4_setup_aux(%struct.pci_dev* %42, %struct.pci_device_id* %43, i16 zeroext 88) #8, !dbg !4816
  store i32 %call76, i32* %retval1, align 4, !dbg !4817
  br label %if.end79, !dbg !4818

if.else77:                                        ; preds = %if.then70
  %44 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4819
  %45 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !4821
  %call78 = call i32 @piix4_setup_sb800(%struct.pci_dev* %44, %struct.pci_device_id* %45, i8 zeroext 1) #8, !dbg !4822
  store i32 %call78, i32* %retval1, align 4, !dbg !4823
  br label %if.end79

if.end79:                                         ; preds = %if.else77, %if.then75
  br label %if.end80, !dbg !4824

if.end80:                                         ; preds = %if.end79, %land.lhs.true65, %if.end60
  %46 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4825
  %vendor81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 7, !dbg !4827
  %47 = load i16, i16* %vendor81, align 4, !dbg !4827
  %conv82 = zext i16 %47 to i32, !dbg !4825
  %cmp83 = icmp eq i32 %conv82, 4130, !dbg !4828
  br i1 %cmp83, label %land.lhs.true85, label %if.end97, !dbg !4829

land.lhs.true85:                                  ; preds = %if.end80
  %48 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4830
  %device86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 8, !dbg !4831
  %49 = load i16, i16* %device86, align 2, !dbg !4831
  %conv87 = zext i16 %49 to i32, !dbg !4830
  %cmp88 = icmp eq i32 %conv87, 30731, !dbg !4832
  br i1 %cmp88, label %if.then95, label %lor.lhs.false90, !dbg !4833

lor.lhs.false90:                                  ; preds = %land.lhs.true85
  %50 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4834
  %device91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 8, !dbg !4835
  %51 = load i16, i16* %device91, align 2, !dbg !4835
  %conv92 = zext i16 %51 to i32, !dbg !4834
  %cmp93 = icmp eq i32 %conv92, 30987, !dbg !4836
  br i1 %cmp93, label %if.then95, label %if.end97, !dbg !4837

if.then95:                                        ; preds = %lor.lhs.false90, %land.lhs.true85
  %52 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4838
  %53 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !4840
  %call96 = call i32 @piix4_setup_sb800(%struct.pci_dev* %52, %struct.pci_device_id* %53, i8 zeroext 1) #8, !dbg !4841
  store i32 %call96, i32* %retval1, align 4, !dbg !4842
  br label %if.end97, !dbg !4843

if.end97:                                         ; preds = %if.then95, %lor.lhs.false90, %if.end80
  %54 = load i32, i32* %retval1, align 4, !dbg !4844
  %cmp98 = icmp sgt i32 %54, 0, !dbg !4846
  br i1 %cmp98, label %if.then100, label %if.end105, !dbg !4847

if.then100:                                       ; preds = %if.end97
  %55 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4848
  %56 = load i32, i32* %retval1, align 4, !dbg !4850
  %conv101 = trunc i32 %56 to i16, !dbg !4850
  %57 = load i8, i8* %is_sb800, align 1, !dbg !4851
  %tobool102 = trunc i8 %57 to i1, !dbg !4851
  br i1 %tobool102, label %cond.true, label %cond.false, !dbg !4851

cond.true:                                        ; preds = %if.then100
  %58 = load i8*, i8** @piix4_aux_port_name_sb800, align 8, !dbg !4852
  br label %cond.end, !dbg !4851

cond.false:                                       ; preds = %if.then100
  br label %cond.end, !dbg !4851

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %58, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %cond.false ], !dbg !4851
  %call104 = call i32 @piix4_add_adapter(%struct.pci_dev* %55, i16 zeroext %conv101, i1 zeroext false, i8 zeroext 0, i1 zeroext false, i8 zeroext 1, i8* %cond, %struct.i2c_adapter** @piix4_aux_adapter) #8, !dbg !4853
  br label %if.end105, !dbg !4854

if.end105:                                        ; preds = %cond.end, %if.end97
  store i32 0, i32* %retval, align 4, !dbg !4855
  br label %return, !dbg !4855

return:                                           ; preds = %if.end105, %if.then58, %if.then52, %if.then47, %if.then40
  %59 = load i32, i32* %retval, align 4, !dbg !4856
  ret i32 %59, !dbg !4856
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @piix4_remove(%struct.pci_dev* %dev) #2 !dbg !4857 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %port = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4858, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.declare(metadata i32* %port, metadata !4860, metadata !DIExpression()), !dbg !4861
  %0 = load i32, i32* @piix4_adapter_count, align 4, !dbg !4862
  store i32 %0, i32* %port, align 4, !dbg !4861
  br label %while.cond, !dbg !4863

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %port, align 4, !dbg !4864
  %dec = add i32 %1, -1, !dbg !4864
  store i32 %dec, i32* %port, align 4, !dbg !4864
  %cmp = icmp sge i32 %dec, 0, !dbg !4865
  br i1 %cmp, label %while.body, label %while.end, !dbg !4863

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %port, align 4, !dbg !4866
  %idxprom = sext i32 %2 to i64, !dbg !4869
  %arrayidx = getelementptr [4 x %struct.i2c_adapter*], [4 x %struct.i2c_adapter*]* @piix4_main_adapters, i64 0, i64 %idxprom, !dbg !4869
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %arrayidx, align 8, !dbg !4869
  %tobool = icmp ne %struct.i2c_adapter* %3, null, !dbg !4869
  br i1 %tobool, label %if.then, label %if.end, !dbg !4870

if.then:                                          ; preds = %while.body
  %4 = load i32, i32* %port, align 4, !dbg !4871
  %idxprom1 = sext i32 %4 to i64, !dbg !4873
  %arrayidx2 = getelementptr [4 x %struct.i2c_adapter*], [4 x %struct.i2c_adapter*]* @piix4_main_adapters, i64 0, i64 %idxprom1, !dbg !4873
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %arrayidx2, align 8, !dbg !4873
  call void @piix4_adap_remove(%struct.i2c_adapter* %5) #8, !dbg !4874
  %6 = load i32, i32* %port, align 4, !dbg !4875
  %idxprom3 = sext i32 %6 to i64, !dbg !4876
  %arrayidx4 = getelementptr [4 x %struct.i2c_adapter*], [4 x %struct.i2c_adapter*]* @piix4_main_adapters, i64 0, i64 %idxprom3, !dbg !4876
  store %struct.i2c_adapter* null, %struct.i2c_adapter** %arrayidx4, align 8, !dbg !4877
  br label %if.end, !dbg !4878

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !dbg !4863, !llvm.loop !4879

while.end:                                        ; preds = %while.cond
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** @piix4_aux_adapter, align 8, !dbg !4881
  %tobool5 = icmp ne %struct.i2c_adapter* %7, null, !dbg !4881
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4883

if.then6:                                         ; preds = %while.end
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** @piix4_aux_adapter, align 8, !dbg !4884
  call void @piix4_adap_remove(%struct.i2c_adapter* %8) #8, !dbg !4886
  store %struct.i2c_adapter* null, %struct.i2c_adapter** @piix4_aux_adapter, align 8, !dbg !4887
  br label %if.end7, !dbg !4888

if.end7:                                          ; preds = %if.then6, %while.end
  ret void, !dbg !4889
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local i32 @pci_bus_read_config_byte(%struct.pci_bus*, i32, i32, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @piix4_setup_sb800(%struct.pci_dev* %PIIX4_dev, %struct.pci_device_id* %id, i8 zeroext %aux) #2 !dbg !4890 {
entry:
  %retval = alloca i32, align 4
  %PIIX4_dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  %aux.addr = alloca i8, align 1
  %piix4_smba = alloca i16, align 2
  %smba_en_lo = alloca i8, align 1
  %smba_en_hi = alloca i8, align 1
  %smb_en = alloca i8, align 1
  %smb_en_status = alloca i8, align 1
  %port_sel = alloca i8, align 1
  %i2ccfg = alloca i8, align 1
  %i2ccfg_offset = alloca i8, align 1
  store %struct.pci_dev* %PIIX4_dev, %struct.pci_dev** %PIIX4_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %PIIX4_dev.addr, metadata !4893, metadata !DIExpression()), !dbg !4894
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !4895, metadata !DIExpression()), !dbg !4896
  store i8 %aux, i8* %aux.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %aux.addr, metadata !4897, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.declare(metadata i16* %piix4_smba, metadata !4899, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.declare(metadata i8* %smba_en_lo, metadata !4901, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.declare(metadata i8* %smba_en_hi, metadata !4903, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.declare(metadata i8* %smb_en, metadata !4905, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.declare(metadata i8* %smb_en_status, metadata !4907, metadata !DIExpression()), !dbg !4908
  call void @llvm.dbg.declare(metadata i8* %port_sel, metadata !4909, metadata !DIExpression()), !dbg !4910
  call void @llvm.dbg.declare(metadata i8* %i2ccfg, metadata !4911, metadata !DIExpression()), !dbg !4912
  call void @llvm.dbg.declare(metadata i8* %i2ccfg_offset, metadata !4913, metadata !DIExpression()), !dbg !4914
  store i8 16, i8* %i2ccfg_offset, align 1, !dbg !4914
  %0 = load i32, i32* @force, align 4, !dbg !4915
  %tobool = icmp ne i32 %0, 0, !dbg !4915
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !4917

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @force_addr, align 4, !dbg !4918
  %tobool1 = icmp ne i32 %1, 0, !dbg !4918
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4919

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !4920
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 41, !dbg !4920
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !4920
  store i32 -22, i32* %retval, align 4, !dbg !4922
  br label %return, !dbg !4922

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !4923
  %vendor = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 7, !dbg !4925
  %4 = load i16, i16* %vendor, align 4, !dbg !4925
  %conv = zext i16 %4 to i32, !dbg !4923
  %cmp = icmp eq i32 %conv, 4130, !dbg !4926
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false10, !dbg !4927

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !4928
  %device = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 8, !dbg !4929
  %6 = load i16, i16* %device, align 2, !dbg !4929
  %conv3 = zext i16 %6 to i32, !dbg !4928
  %cmp4 = icmp eq i32 %conv3, 30731, !dbg !4930
  br i1 %cmp4, label %land.lhs.true6, label %lor.lhs.false10, !dbg !4931

land.lhs.true6:                                   ; preds = %land.lhs.true
  %7 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !4932
  %revision = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 12, !dbg !4933
  %8 = load i8, i8* %revision, align 8, !dbg !4933
  %conv7 = zext i8 %8 to i32, !dbg !4932
  %cmp8 = icmp sge i32 %conv7, 65, !dbg !4934
  br i1 %cmp8, label %if.then35, label %lor.lhs.false10, !dbg !4935

lor.lhs.false10:                                  ; preds = %land.lhs.true6, %land.lhs.true, %if.end
  %9 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !4936
  %vendor11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 7, !dbg !4937
  %10 = load i16, i16* %vendor11, align 4, !dbg !4937
  %conv12 = zext i16 %10 to i32, !dbg !4936
  %cmp13 = icmp eq i32 %conv12, 4130, !dbg !4938
  br i1 %cmp13, label %land.lhs.true15, label %lor.lhs.false25, !dbg !4939

land.lhs.true15:                                  ; preds = %lor.lhs.false10
  %11 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !4940
  %device16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 8, !dbg !4941
  %12 = load i16, i16* %device16, align 2, !dbg !4941
  %conv17 = zext i16 %12 to i32, !dbg !4940
  %cmp18 = icmp eq i32 %conv17, 30987, !dbg !4942
  br i1 %cmp18, label %land.lhs.true20, label %lor.lhs.false25, !dbg !4943

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %13 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !4944
  %revision21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 12, !dbg !4945
  %14 = load i8, i8* %revision21, align 8, !dbg !4945
  %conv22 = zext i8 %14 to i32, !dbg !4944
  %cmp23 = icmp sge i32 %conv22, 73, !dbg !4946
  br i1 %cmp23, label %if.then35, label %lor.lhs.false25, !dbg !4947

lor.lhs.false25:                                  ; preds = %land.lhs.true20, %land.lhs.true15, %lor.lhs.false10
  %15 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !4948
  %vendor26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 7, !dbg !4949
  %16 = load i16, i16* %vendor26, align 4, !dbg !4949
  %conv27 = zext i16 %16 to i32, !dbg !4948
  %cmp28 = icmp eq i32 %conv27, 7572, !dbg !4950
  br i1 %cmp28, label %land.lhs.true30, label %if.else, !dbg !4951

land.lhs.true30:                                  ; preds = %lor.lhs.false25
  %17 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !4952
  %device31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 8, !dbg !4953
  %18 = load i16, i16* %device31, align 2, !dbg !4953
  %conv32 = zext i16 %18 to i32, !dbg !4952
  %cmp33 = icmp eq i32 %conv32, 30987, !dbg !4954
  br i1 %cmp33, label %if.then35, label %if.else, !dbg !4955

if.then35:                                        ; preds = %land.lhs.true30, %land.lhs.true20, %land.lhs.true6
  store i8 0, i8* %smb_en, align 1, !dbg !4956
  br label %if.end39, !dbg !4957

if.else:                                          ; preds = %land.lhs.true30, %lor.lhs.false25
  %19 = load i8, i8* %aux.addr, align 1, !dbg !4958
  %conv36 = zext i8 %19 to i32, !dbg !4959
  %tobool37 = icmp ne i32 %conv36, 0, !dbg !4959
  %20 = zext i1 %tobool37 to i64, !dbg !4959
  %cond = select i1 %tobool37, i32 40, i32 44, !dbg !4959
  %conv38 = trunc i32 %cond to i8, !dbg !4959
  store i8 %conv38, i8* %smb_en, align 1, !dbg !4960
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then35
  %call = call %struct.resource* @__request_region(%struct.resource* @ioport_resource, i64 3286, i64 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 4194304) #8, !dbg !4961
  %tobool40 = icmp ne %struct.resource* %call, null, !dbg !4961
  br i1 %tobool40, label %if.end43, label %if.then41, !dbg !4963

if.then41:                                        ; preds = %if.end39
  %21 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !4964
  %dev42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 41, !dbg !4964
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev42, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 3286) #9, !dbg !4964
  store i32 -16, i32* %retval, align 4, !dbg !4966
  br label %return, !dbg !4966

if.end43:                                         ; preds = %if.end39
  %22 = load i8, i8* %smb_en, align 1, !dbg !4967
  call void @outb_p(i8 zeroext %22, i32 3286) #8, !dbg !4968
  %call44 = call zeroext i8 @inb_p(i32 3287) #8, !dbg !4969
  store i8 %call44, i8* %smba_en_lo, align 1, !dbg !4970
  %23 = load i8, i8* %smb_en, align 1, !dbg !4971
  %conv45 = zext i8 %23 to i32, !dbg !4971
  %add = add i32 %conv45, 1, !dbg !4972
  %conv46 = trunc i32 %add to i8, !dbg !4971
  call void @outb_p(i8 zeroext %conv46, i32 3286) #8, !dbg !4973
  %call47 = call zeroext i8 @inb_p(i32 3287) #8, !dbg !4974
  store i8 %call47, i8* %smba_en_hi, align 1, !dbg !4975
  call void @__release_region(%struct.resource* @ioport_resource, i64 3286, i64 2) #8, !dbg !4976
  %24 = load i8, i8* %smb_en, align 1, !dbg !4977
  %tobool48 = icmp ne i8 %24, 0, !dbg !4977
  br i1 %tobool48, label %if.else59, label %if.then49, !dbg !4979

if.then49:                                        ; preds = %if.end43
  %25 = load i8, i8* %smba_en_lo, align 1, !dbg !4980
  %conv50 = zext i8 %25 to i32, !dbg !4980
  %and = and i32 %conv50, 16, !dbg !4982
  %conv51 = trunc i32 %and to i8, !dbg !4980
  store i8 %conv51, i8* %smb_en_status, align 1, !dbg !4983
  %26 = load i8, i8* %smba_en_hi, align 1, !dbg !4984
  %conv52 = zext i8 %26 to i32, !dbg !4984
  %shl = shl i32 %conv52, 8, !dbg !4985
  %conv53 = trunc i32 %shl to i16, !dbg !4984
  store i16 %conv53, i16* %piix4_smba, align 2, !dbg !4986
  %27 = load i8, i8* %aux.addr, align 1, !dbg !4987
  %tobool54 = icmp ne i8 %27, 0, !dbg !4987
  br i1 %tobool54, label %if.then55, label %if.end58, !dbg !4989

if.then55:                                        ; preds = %if.then49
  %28 = load i16, i16* %piix4_smba, align 2, !dbg !4990
  %conv56 = zext i16 %28 to i32, !dbg !4990
  %or = or i32 %conv56, 32, !dbg !4990
  %conv57 = trunc i32 %or to i16, !dbg !4990
  store i16 %conv57, i16* %piix4_smba, align 2, !dbg !4990
  br label %if.end58, !dbg !4991

if.end58:                                         ; preds = %if.then55, %if.then49
  br label %if.end69, !dbg !4992

if.else59:                                        ; preds = %if.end43
  %29 = load i8, i8* %smba_en_lo, align 1, !dbg !4993
  %conv60 = zext i8 %29 to i32, !dbg !4993
  %and61 = and i32 %conv60, 1, !dbg !4995
  %conv62 = trunc i32 %and61 to i8, !dbg !4993
  store i8 %conv62, i8* %smb_en_status, align 1, !dbg !4996
  %30 = load i8, i8* %smba_en_hi, align 1, !dbg !4997
  %conv63 = zext i8 %30 to i32, !dbg !4997
  %shl64 = shl i32 %conv63, 8, !dbg !4998
  %31 = load i8, i8* %smba_en_lo, align 1, !dbg !4999
  %conv65 = zext i8 %31 to i32, !dbg !4999
  %or66 = or i32 %shl64, %conv65, !dbg !5000
  %and67 = and i32 %or66, 65504, !dbg !5001
  %conv68 = trunc i32 %and67 to i16, !dbg !5002
  store i16 %conv68, i16* %piix4_smba, align 2, !dbg !5003
  br label %if.end69

if.end69:                                         ; preds = %if.else59, %if.end58
  %32 = load i8, i8* %smb_en_status, align 1, !dbg !5004
  %tobool70 = icmp ne i8 %32, 0, !dbg !5004
  br i1 %tobool70, label %if.end73, label %if.then71, !dbg !5006

if.then71:                                        ; preds = %if.end69
  %33 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5007
  %dev72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 41, !dbg !5007
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !5007
  store i32 -19, i32* %retval, align 4, !dbg !5009
  br label %return, !dbg !5009

if.end73:                                         ; preds = %if.end69
  %34 = load i16, i16* %piix4_smba, align 2, !dbg !5010
  %conv74 = zext i16 %34 to i64, !dbg !5010
  %35 = load i8*, i8** getelementptr inbounds (%struct.pci_driver, %struct.pci_driver* @piix4_driver, i32 0, i32 1), align 8, !dbg !5012
  %call75 = call i32 @acpi_check_region(i64 %conv74, i64 9, i8* %35) #8, !dbg !5013
  %tobool76 = icmp ne i32 %call75, 0, !dbg !5013
  br i1 %tobool76, label %if.then77, label %if.end78, !dbg !5014

if.then77:                                        ; preds = %if.end73
  store i32 -19, i32* %retval, align 4, !dbg !5015
  br label %return, !dbg !5015

if.end78:                                         ; preds = %if.end73
  %36 = load i16, i16* %piix4_smba, align 2, !dbg !5016
  %conv79 = zext i16 %36 to i64, !dbg !5016
  %37 = load i8*, i8** getelementptr inbounds (%struct.pci_driver, %struct.pci_driver* @piix4_driver, i32 0, i32 1), align 8, !dbg !5016
  %call80 = call %struct.resource* @__request_region(%struct.resource* @ioport_resource, i64 %conv79, i64 9, i8* %37, i32 0) #8, !dbg !5016
  %tobool81 = icmp ne %struct.resource* %call80, null, !dbg !5016
  br i1 %tobool81, label %if.end85, label %if.then82, !dbg !5018

if.then82:                                        ; preds = %if.end78
  %38 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5019
  %dev83 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 41, !dbg !5019
  %39 = load i16, i16* %piix4_smba, align 2, !dbg !5019
  %conv84 = zext i16 %39 to i32, !dbg !5019
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %conv84) #9, !dbg !5019
  store i32 -16, i32* %retval, align 4, !dbg !5021
  br label %return, !dbg !5021

if.end85:                                         ; preds = %if.end78
  %40 = load i8, i8* %aux.addr, align 1, !dbg !5022
  %tobool86 = icmp ne i8 %40, 0, !dbg !5022
  br i1 %tobool86, label %if.then87, label %if.end91, !dbg !5024

if.then87:                                        ; preds = %if.end85
  %41 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5025
  %dev88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 41, !dbg !5025
  %42 = load i16, i16* %piix4_smba, align 2, !dbg !5025
  %conv89 = zext i16 %42 to i32, !dbg !5025
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev88, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %conv89) #9, !dbg !5025
  %43 = load i16, i16* %piix4_smba, align 2, !dbg !5027
  %conv90 = zext i16 %43 to i32, !dbg !5027
  store i32 %conv90, i32* %retval, align 4, !dbg !5028
  br label %return, !dbg !5028

if.end91:                                         ; preds = %if.end85
  %44 = load i16, i16* %piix4_smba, align 2, !dbg !5029
  %conv92 = zext i16 %44 to i32, !dbg !5029
  %45 = load i8, i8* %i2ccfg_offset, align 1, !dbg !5029
  %conv93 = zext i8 %45 to i32, !dbg !5029
  %add94 = add i32 %conv92, %conv93, !dbg !5029
  %conv95 = sext i32 %add94 to i64, !dbg !5029
  %call96 = call %struct.resource* @__request_region(%struct.resource* @ioport_resource, i64 %conv95, i64 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 0) #8, !dbg !5029
  %tobool97 = icmp ne %struct.resource* %call96, null, !dbg !5029
  br i1 %tobool97, label %if.end104, label %if.then98, !dbg !5031

if.then98:                                        ; preds = %if.end91
  %46 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5032
  %dev99 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 41, !dbg !5032
  %47 = load i16, i16* %piix4_smba, align 2, !dbg !5032
  %conv100 = zext i16 %47 to i32, !dbg !5032
  %48 = load i8, i8* %i2ccfg_offset, align 1, !dbg !5032
  %conv101 = zext i8 %48 to i32, !dbg !5032
  %add102 = add i32 %conv100, %conv101, !dbg !5032
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev99, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i32 %add102) #9, !dbg !5032
  %49 = load i16, i16* %piix4_smba, align 2, !dbg !5034
  %conv103 = zext i16 %49 to i64, !dbg !5034
  call void @__release_region(%struct.resource* @ioport_resource, i64 %conv103, i64 9) #8, !dbg !5034
  store i32 -16, i32* %retval, align 4, !dbg !5035
  br label %return, !dbg !5035

if.end104:                                        ; preds = %if.end91
  %50 = load i16, i16* %piix4_smba, align 2, !dbg !5036
  %conv105 = zext i16 %50 to i32, !dbg !5036
  %51 = load i8, i8* %i2ccfg_offset, align 1, !dbg !5037
  %conv106 = zext i8 %51 to i32, !dbg !5037
  %add107 = add i32 %conv105, %conv106, !dbg !5038
  %call108 = call zeroext i8 @inb_p(i32 %add107) #8, !dbg !5039
  store i8 %call108, i8* %i2ccfg, align 1, !dbg !5040
  %52 = load i16, i16* %piix4_smba, align 2, !dbg !5041
  %conv109 = zext i16 %52 to i32, !dbg !5041
  %53 = load i8, i8* %i2ccfg_offset, align 1, !dbg !5041
  %conv110 = zext i8 %53 to i32, !dbg !5041
  %add111 = add i32 %conv109, %conv110, !dbg !5041
  %conv112 = sext i32 %add111 to i64, !dbg !5041
  call void @__release_region(%struct.resource* @ioport_resource, i64 %conv112, i64 1) #8, !dbg !5041
  %54 = load i8, i8* %i2ccfg, align 1, !dbg !5042
  %conv113 = zext i8 %54 to i32, !dbg !5042
  %and114 = and i32 %conv113, 1, !dbg !5044
  %tobool115 = icmp ne i32 %and114, 0, !dbg !5044
  br i1 %tobool115, label %if.then116, label %if.else117, !dbg !5045

if.then116:                                       ; preds = %if.end104
  br label %if.end118, !dbg !5046

if.else117:                                       ; preds = %if.end104
  br label %if.end118

if.end118:                                        ; preds = %if.else117, %if.then116
  %55 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5047
  %dev119 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 41, !dbg !5047
  %56 = load i16, i16* %piix4_smba, align 2, !dbg !5047
  %conv120 = zext i16 %56 to i32, !dbg !5047
  %57 = load i8, i8* %i2ccfg, align 1, !dbg !5047
  %conv121 = zext i8 %57 to i32, !dbg !5047
  %shr = ashr i32 %conv121, 4, !dbg !5047
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev119, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %conv120, i32 %shr) #9, !dbg !5047
  %58 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5048
  %vendor122 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 7, !dbg !5050
  %59 = load i16, i16* %vendor122, align 4, !dbg !5050
  %conv123 = zext i16 %59 to i32, !dbg !5048
  %cmp124 = icmp eq i32 %conv123, 4130, !dbg !5051
  br i1 %cmp124, label %if.then131, label %lor.lhs.false126, !dbg !5052

lor.lhs.false126:                                 ; preds = %if.end118
  %60 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5053
  %vendor127 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 7, !dbg !5054
  %61 = load i16, i16* %vendor127, align 4, !dbg !5054
  %conv128 = zext i16 %61 to i32, !dbg !5053
  %cmp129 = icmp eq i32 %conv128, 7572, !dbg !5055
  br i1 %cmp129, label %if.then131, label %if.else149, !dbg !5056

if.then131:                                       ; preds = %lor.lhs.false126, %if.end118
  %62 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5057
  %device132 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 8, !dbg !5060
  %63 = load i16, i16* %device132, align 2, !dbg !5060
  %conv133 = zext i16 %63 to i32, !dbg !5057
  %cmp134 = icmp eq i32 %conv133, 30987, !dbg !5061
  br i1 %cmp134, label %if.then146, label %lor.lhs.false136, !dbg !5062

lor.lhs.false136:                                 ; preds = %if.then131
  %64 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5063
  %device137 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 8, !dbg !5064
  %65 = load i16, i16* %device137, align 2, !dbg !5064
  %conv138 = zext i16 %65 to i32, !dbg !5063
  %cmp139 = icmp eq i32 %conv138, 30731, !dbg !5065
  br i1 %cmp139, label %land.lhs.true141, label %if.else147, !dbg !5066

land.lhs.true141:                                 ; preds = %lor.lhs.false136
  %66 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5067
  %revision142 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 12, !dbg !5068
  %67 = load i8, i8* %revision142, align 8, !dbg !5068
  %conv143 = zext i8 %67 to i32, !dbg !5067
  %cmp144 = icmp sge i32 %conv143, 31, !dbg !5069
  br i1 %cmp144, label %if.then146, label %if.else147, !dbg !5070

if.then146:                                       ; preds = %land.lhs.true141, %if.then131
  store i8 2, i8* @piix4_port_sel_sb800, align 1, !dbg !5071
  store i8 24, i8* @piix4_port_mask_sb800, align 1, !dbg !5073
  store i8 3, i8* @piix4_port_shift_sb800, align 1, !dbg !5074
  br label %if.end148, !dbg !5075

if.else147:                                       ; preds = %land.lhs.true141, %lor.lhs.false136
  store i8 46, i8* @piix4_port_sel_sb800, align 1, !dbg !5076
  store i8 6, i8* @piix4_port_mask_sb800, align 1, !dbg !5078
  store i8 1, i8* @piix4_port_shift_sb800, align 1, !dbg !5079
  br label %if.end148

if.end148:                                        ; preds = %if.else147, %if.then146
  br label %if.end161, !dbg !5080

if.else149:                                       ; preds = %lor.lhs.false126
  %call150 = call %struct.resource* @__request_region(%struct.resource* @ioport_resource, i64 3286, i64 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 4194304) #8, !dbg !5081
  %tobool151 = icmp ne %struct.resource* %call150, null, !dbg !5081
  br i1 %tobool151, label %if.end154, label %if.then152, !dbg !5084

if.then152:                                       ; preds = %if.else149
  %68 = load i16, i16* %piix4_smba, align 2, !dbg !5085
  %conv153 = zext i16 %68 to i64, !dbg !5085
  call void @__release_region(%struct.resource* @ioport_resource, i64 %conv153, i64 9) #8, !dbg !5085
  store i32 -16, i32* %retval, align 4, !dbg !5087
  br label %return, !dbg !5087

if.end154:                                        ; preds = %if.else149
  call void @outb_p(i8 zeroext 47, i32 3286) #8, !dbg !5088
  %call155 = call zeroext i8 @inb_p(i32 3287) #8, !dbg !5089
  store i8 %call155, i8* %port_sel, align 1, !dbg !5090
  %69 = load i8, i8* %port_sel, align 1, !dbg !5091
  %conv156 = zext i8 %69 to i32, !dbg !5091
  %and157 = and i32 %conv156, 1, !dbg !5092
  %tobool158 = icmp ne i32 %and157, 0, !dbg !5093
  %70 = zext i1 %tobool158 to i64, !dbg !5093
  %cond159 = select i1 %tobool158, i32 46, i32 44, !dbg !5093
  %conv160 = trunc i32 %cond159 to i8, !dbg !5093
  store i8 %conv160, i8* @piix4_port_sel_sb800, align 1, !dbg !5094
  store i8 6, i8* @piix4_port_mask_sb800, align 1, !dbg !5095
  store i8 1, i8* @piix4_port_shift_sb800, align 1, !dbg !5096
  call void @__release_region(%struct.resource* @ioport_resource, i64 3286, i64 2) #8, !dbg !5097
  br label %if.end161

if.end161:                                        ; preds = %if.end154, %if.end148
  %71 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5098
  %dev162 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 41, !dbg !5098
  %72 = load i8, i8* @piix4_port_sel_sb800, align 1, !dbg !5098
  %conv163 = zext i8 %72 to i32, !dbg !5098
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev162, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0), i32 %conv163) #9, !dbg !5098
  %73 = load i16, i16* %piix4_smba, align 2, !dbg !5099
  %conv164 = zext i16 %73 to i32, !dbg !5099
  store i32 %conv164, i32* %retval, align 4, !dbg !5100
  br label %return, !dbg !5100

return:                                           ; preds = %if.end161, %if.then152, %if.then98, %if.then87, %if.then82, %if.then77, %if.then71, %if.then41, %if.then
  %74 = load i32, i32* %retval, align 4, !dbg !5101
  ret i32 %74, !dbg !5101
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @piix4_add_adapters_sb800(%struct.pci_dev* %dev, i16 zeroext %smba, i1 zeroext %notify_imc) #2 !dbg !5102 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %smba.addr = alloca i16, align 2
  %notify_imc.addr = alloca i8, align 1
  %adapdata = alloca %struct.i2c_piix4_adapdata*, align 8
  %port = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %hw_port_nr = alloca i8, align 1
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5105, metadata !DIExpression()), !dbg !5106
  store i16 %smba, i16* %smba.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %smba.addr, metadata !5107, metadata !DIExpression()), !dbg !5108
  %frombool = zext i1 %notify_imc to i8
  store i8 %frombool, i8* %notify_imc.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %notify_imc.addr, metadata !5109, metadata !DIExpression()), !dbg !5110
  call void @llvm.dbg.declare(metadata %struct.i2c_piix4_adapdata** %adapdata, metadata !5111, metadata !DIExpression()), !dbg !5119
  call void @llvm.dbg.declare(metadata i32* %port, metadata !5120, metadata !DIExpression()), !dbg !5121
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5122, metadata !DIExpression()), !dbg !5123
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5124
  %device = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 8, !dbg !5126
  %1 = load i16, i16* %device, align 2, !dbg !5126
  %conv = zext i16 %1 to i32, !dbg !5124
  %cmp = icmp eq i32 %conv, 30987, !dbg !5127
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5128

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5129
  %device3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 8, !dbg !5130
  %3 = load i16, i16* %device3, align 2, !dbg !5130
  %conv4 = zext i16 %3 to i32, !dbg !5129
  %cmp5 = icmp eq i32 %conv4, 30731, !dbg !5131
  br i1 %cmp5, label %land.lhs.true, label %if.else, !dbg !5132

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5133
  %revision = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 12, !dbg !5134
  %5 = load i8, i8* %revision, align 8, !dbg !5134
  %conv7 = zext i8 %5 to i32, !dbg !5133
  %cmp8 = icmp sge i32 %conv7, 31, !dbg !5135
  br i1 %cmp8, label %if.then, label %if.else, !dbg !5136

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 2, i32* @piix4_adapter_count, align 4, !dbg !5137
  br label %if.end, !dbg !5139

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  store i32 4, i32* @piix4_adapter_count, align 4, !dbg !5140
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %port, align 4, !dbg !5142
  br label %for.cond, !dbg !5144

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %port, align 4, !dbg !5145
  %7 = load i32, i32* @piix4_adapter_count, align 4, !dbg !5147
  %cmp10 = icmp slt i32 %6, %7, !dbg !5148
  br i1 %cmp10, label %for.body, label %for.end, !dbg !5149

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8* %hw_port_nr, metadata !5150, metadata !DIExpression()), !dbg !5152
  %8 = load i32, i32* %port, align 4, !dbg !5153
  %cmp12 = icmp eq i32 %8, 0, !dbg !5154
  br i1 %cmp12, label %cond.true, label %cond.false, !dbg !5153

cond.true:                                        ; preds = %for.body
  br label %cond.end, !dbg !5153

cond.false:                                       ; preds = %for.body
  %9 = load i32, i32* %port, align 4, !dbg !5155
  %add = add i32 %9, 1, !dbg !5156
  br label %cond.end, !dbg !5153

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add, %cond.false ], !dbg !5153
  %conv14 = trunc i32 %cond to i8, !dbg !5153
  store i8 %conv14, i8* %hw_port_nr, align 1, !dbg !5152
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5157
  %11 = load i16, i16* %smba.addr, align 2, !dbg !5158
  %12 = load i32, i32* %port, align 4, !dbg !5159
  %conv15 = trunc i32 %12 to i8, !dbg !5159
  %13 = load i8, i8* %notify_imc.addr, align 1, !dbg !5160
  %tobool = trunc i8 %13 to i1, !dbg !5160
  %14 = load i8, i8* %hw_port_nr, align 1, !dbg !5161
  %15 = load i32, i32* %port, align 4, !dbg !5162
  %idxprom = sext i32 %15 to i64, !dbg !5163
  %arrayidx = getelementptr [4 x i8*], [4 x i8*]* @piix4_main_port_names_sb800, i64 0, i64 %idxprom, !dbg !5163
  %16 = load i8*, i8** %arrayidx, align 8, !dbg !5163
  %17 = load i32, i32* %port, align 4, !dbg !5164
  %idxprom16 = sext i32 %17 to i64, !dbg !5165
  %arrayidx17 = getelementptr [4 x %struct.i2c_adapter*], [4 x %struct.i2c_adapter*]* @piix4_main_adapters, i64 0, i64 %idxprom16, !dbg !5165
  %call = call i32 @piix4_add_adapter(%struct.pci_dev* %10, i16 zeroext %11, i1 zeroext true, i8 zeroext %conv15, i1 zeroext %tobool, i8 zeroext %14, i8* %16, %struct.i2c_adapter** %arrayidx17) #8, !dbg !5166
  store i32 %call, i32* %retval1, align 4, !dbg !5167
  %18 = load i32, i32* %retval1, align 4, !dbg !5168
  %cmp18 = icmp slt i32 %18, 0, !dbg !5170
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !5171

if.then20:                                        ; preds = %cond.end
  br label %error, !dbg !5172

if.end21:                                         ; preds = %cond.end
  br label %for.inc, !dbg !5173

for.inc:                                          ; preds = %if.end21
  %19 = load i32, i32* %port, align 4, !dbg !5174
  %inc = add i32 %19, 1, !dbg !5174
  store i32 %inc, i32* %port, align 4, !dbg !5174
  br label %for.cond, !dbg !5175, !llvm.loop !5176

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %retval1, align 4, !dbg !5178
  store i32 %20, i32* %retval, align 4, !dbg !5179
  br label %return, !dbg !5179

error:                                            ; preds = %if.then20
  call void @llvm.dbg.label(metadata !5180), !dbg !5181
  %21 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5182
  %dev22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 41, !dbg !5182
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !5182
  br label %while.cond, !dbg !5183

while.cond:                                       ; preds = %if.end37, %error
  %22 = load i32, i32* %port, align 4, !dbg !5184
  %dec = add i32 %22, -1, !dbg !5184
  store i32 %dec, i32* %port, align 4, !dbg !5184
  %cmp23 = icmp sge i32 %dec, 0, !dbg !5185
  br i1 %cmp23, label %while.body, label %while.end, !dbg !5183

while.body:                                       ; preds = %while.cond
  %23 = load i32, i32* %port, align 4, !dbg !5186
  %idxprom25 = sext i32 %23 to i64, !dbg !5188
  %arrayidx26 = getelementptr [4 x %struct.i2c_adapter*], [4 x %struct.i2c_adapter*]* @piix4_main_adapters, i64 0, i64 %idxprom25, !dbg !5188
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %arrayidx26, align 8, !dbg !5188
  %call27 = call i8* @i2c_get_adapdata(%struct.i2c_adapter* %24) #8, !dbg !5189
  %25 = bitcast i8* %call27 to %struct.i2c_piix4_adapdata*, !dbg !5189
  store %struct.i2c_piix4_adapdata* %25, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !5190
  %26 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !5191
  %smba28 = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %26, i32 0, i32 0, !dbg !5193
  %27 = load i16, i16* %smba28, align 2, !dbg !5193
  %tobool29 = icmp ne i16 %27, 0, !dbg !5191
  br i1 %tobool29, label %if.then30, label %if.end37, !dbg !5194

if.then30:                                        ; preds = %while.body
  %28 = load i32, i32* %port, align 4, !dbg !5195
  %idxprom31 = sext i32 %28 to i64, !dbg !5197
  %arrayidx32 = getelementptr [4 x %struct.i2c_adapter*], [4 x %struct.i2c_adapter*]* @piix4_main_adapters, i64 0, i64 %idxprom31, !dbg !5197
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %arrayidx32, align 8, !dbg !5197
  call void @i2c_del_adapter(%struct.i2c_adapter* %29) #8, !dbg !5198
  %30 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !5199
  %31 = bitcast %struct.i2c_piix4_adapdata* %30 to i8*, !dbg !5199
  call void @kfree(i8* %31) #8, !dbg !5200
  %32 = load i32, i32* %port, align 4, !dbg !5201
  %idxprom33 = sext i32 %32 to i64, !dbg !5202
  %arrayidx34 = getelementptr [4 x %struct.i2c_adapter*], [4 x %struct.i2c_adapter*]* @piix4_main_adapters, i64 0, i64 %idxprom33, !dbg !5202
  %33 = load %struct.i2c_adapter*, %struct.i2c_adapter** %arrayidx34, align 8, !dbg !5202
  %34 = bitcast %struct.i2c_adapter* %33 to i8*, !dbg !5202
  call void @kfree(i8* %34) #8, !dbg !5203
  %35 = load i32, i32* %port, align 4, !dbg !5204
  %idxprom35 = sext i32 %35 to i64, !dbg !5205
  %arrayidx36 = getelementptr [4 x %struct.i2c_adapter*], [4 x %struct.i2c_adapter*]* @piix4_main_adapters, i64 0, i64 %idxprom35, !dbg !5205
  store %struct.i2c_adapter* null, %struct.i2c_adapter** %arrayidx36, align 8, !dbg !5206
  br label %if.end37, !dbg !5207

if.end37:                                         ; preds = %if.then30, %while.body
  br label %while.cond, !dbg !5183, !llvm.loop !5208

while.end:                                        ; preds = %while.cond
  %36 = load i32, i32* %retval1, align 4, !dbg !5210
  store i32 %36, i32* %retval, align 4, !dbg !5211
  br label %return, !dbg !5211

return:                                           ; preds = %while.end, %for.end
  %37 = load i32, i32* %retval, align 4, !dbg !5212
  ret i32 %37, !dbg !5212
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @piix4_setup(%struct.pci_dev* %PIIX4_dev, %struct.pci_device_id* %id) #2 !dbg !5213 {
entry:
  %retval = alloca i32, align 4
  %PIIX4_dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  %temp = alloca i8, align 1
  %piix4_smba = alloca i16, align 2
  store %struct.pci_dev* %PIIX4_dev, %struct.pci_dev** %PIIX4_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %PIIX4_dev.addr, metadata !5214, metadata !DIExpression()), !dbg !5215
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !5216, metadata !DIExpression()), !dbg !5217
  call void @llvm.dbg.declare(metadata i8* %temp, metadata !5218, metadata !DIExpression()), !dbg !5219
  call void @llvm.dbg.declare(metadata i16* %piix4_smba, metadata !5220, metadata !DIExpression()), !dbg !5221
  %0 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5222
  %vendor = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 7, !dbg !5224
  %1 = load i16, i16* %vendor, align 4, !dbg !5224
  %conv = zext i16 %1 to i32, !dbg !5222
  %cmp = icmp eq i32 %conv, 4454, !dbg !5225
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5226

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5227
  %device = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 8, !dbg !5228
  %3 = load i16, i16* %device, align 2, !dbg !5228
  %conv2 = zext i16 %3 to i32, !dbg !5227
  %cmp3 = icmp eq i32 %conv2, 513, !dbg !5229
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5230

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* @srvrworks_csb5_delay, align 4, !dbg !5231
  br label %if.end, !dbg !5232

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %call = call i32 @dmi_check_system(%struct.dmi_system_id* getelementptr inbounds ([3 x %struct.dmi_system_id], [3 x %struct.dmi_system_id]* bitcast ([3 x { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }]* @piix4_dmi_blacklist to [3 x %struct.dmi_system_id]*), i64 0, i64 0)) #8, !dbg !5233
  %tobool = icmp ne i32 %call, 0, !dbg !5233
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !5235

if.then5:                                         ; preds = %if.end
  %4 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5236
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 41, !dbg !5236
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !5236
  store i32 -1, i32* %retval, align 4, !dbg !5238
  br label %return, !dbg !5238

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @dmi_check_system(%struct.dmi_system_id* getelementptr inbounds ([2 x %struct.dmi_system_id], [2 x %struct.dmi_system_id]* bitcast ([2 x { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }]* @piix4_dmi_ibm to [2 x %struct.dmi_system_id]*), i64 0, i64 0)) #8, !dbg !5239
  %tobool8 = icmp ne i32 %call7, 0, !dbg !5239
  br i1 %tobool8, label %land.lhs.true9, label %if.end16, !dbg !5241

land.lhs.true9:                                   ; preds = %if.end6
  %5 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5242
  %vendor10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 7, !dbg !5243
  %6 = load i16, i16* %vendor10, align 4, !dbg !5243
  %conv11 = zext i16 %6 to i32, !dbg !5242
  %cmp12 = icmp eq i32 %conv11, 32902, !dbg !5244
  br i1 %cmp12, label %if.then14, label %if.end16, !dbg !5245

if.then14:                                        ; preds = %land.lhs.true9
  %7 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5246
  %dev15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 41, !dbg !5246
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev15, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.19, i64 0, i64 0)) #9, !dbg !5246
  store i32 -1, i32* %retval, align 4, !dbg !5248
  br label %return, !dbg !5248

if.end16:                                         ; preds = %land.lhs.true9, %if.end6
  %8 = load i32, i32* @force_addr, align 4, !dbg !5249
  %tobool17 = icmp ne i32 %8, 0, !dbg !5249
  br i1 %tobool17, label %if.then18, label %if.else, !dbg !5251

if.then18:                                        ; preds = %if.end16
  %9 = load i32, i32* @force_addr, align 4, !dbg !5252
  %and = and i32 %9, 65520, !dbg !5254
  %conv19 = trunc i32 %and to i16, !dbg !5252
  store i16 %conv19, i16* %piix4_smba, align 2, !dbg !5255
  store i32 0, i32* @force, align 4, !dbg !5256
  br label %if.end30, !dbg !5257

if.else:                                          ; preds = %if.end16
  %10 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5258
  %call20 = call i32 @pci_read_config_word(%struct.pci_dev* %10, i32 144, i16* %piix4_smba) #8, !dbg !5260
  %11 = load i16, i16* %piix4_smba, align 2, !dbg !5261
  %conv21 = zext i16 %11 to i32, !dbg !5261
  %and22 = and i32 %conv21, 65520, !dbg !5261
  %conv23 = trunc i32 %and22 to i16, !dbg !5261
  store i16 %conv23, i16* %piix4_smba, align 2, !dbg !5261
  %12 = load i16, i16* %piix4_smba, align 2, !dbg !5262
  %conv24 = zext i16 %12 to i32, !dbg !5262
  %cmp25 = icmp eq i32 %conv24, 0, !dbg !5264
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !5265

if.then27:                                        ; preds = %if.else
  %13 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5266
  %dev28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 41, !dbg !5266
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev28, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.20, i64 0, i64 0)) #9, !dbg !5266
  store i32 -19, i32* %retval, align 4, !dbg !5268
  br label %return, !dbg !5268

if.end29:                                         ; preds = %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then18
  %14 = load i16, i16* %piix4_smba, align 2, !dbg !5269
  %conv31 = zext i16 %14 to i64, !dbg !5269
  %15 = load i8*, i8** getelementptr inbounds (%struct.pci_driver, %struct.pci_driver* @piix4_driver, i32 0, i32 1), align 8, !dbg !5271
  %call32 = call i32 @acpi_check_region(i64 %conv31, i64 9, i8* %15) #8, !dbg !5272
  %tobool33 = icmp ne i32 %call32, 0, !dbg !5272
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !5273

if.then34:                                        ; preds = %if.end30
  store i32 -19, i32* %retval, align 4, !dbg !5274
  br label %return, !dbg !5274

if.end35:                                         ; preds = %if.end30
  %16 = load i16, i16* %piix4_smba, align 2, !dbg !5275
  %conv36 = zext i16 %16 to i64, !dbg !5275
  %17 = load i8*, i8** getelementptr inbounds (%struct.pci_driver, %struct.pci_driver* @piix4_driver, i32 0, i32 1), align 8, !dbg !5275
  %call37 = call %struct.resource* @__request_region(%struct.resource* @ioport_resource, i64 %conv36, i64 9, i8* %17, i32 0) #8, !dbg !5275
  %tobool38 = icmp ne %struct.resource* %call37, null, !dbg !5275
  br i1 %tobool38, label %if.end42, label %if.then39, !dbg !5277

if.then39:                                        ; preds = %if.end35
  %18 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5278
  %dev40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 41, !dbg !5278
  %19 = load i16, i16* %piix4_smba, align 2, !dbg !5278
  %conv41 = zext i16 %19 to i32, !dbg !5278
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %conv41) #9, !dbg !5278
  store i32 -16, i32* %retval, align 4, !dbg !5280
  br label %return, !dbg !5280

if.end42:                                         ; preds = %if.end35
  %20 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5281
  %call43 = call i32 @pci_read_config_byte(%struct.pci_dev* %20, i32 210, i8* %temp) #8, !dbg !5282
  %21 = load i32, i32* @force_addr, align 4, !dbg !5283
  %tobool44 = icmp ne i32 %21, 0, !dbg !5283
  br i1 %tobool44, label %if.then45, label %if.else56, !dbg !5285

if.then45:                                        ; preds = %if.end42
  %22 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5286
  %23 = load i8, i8* %temp, align 1, !dbg !5288
  %conv46 = zext i8 %23 to i32, !dbg !5288
  %and47 = and i32 %conv46, 254, !dbg !5289
  %conv48 = trunc i32 %and47 to i8, !dbg !5288
  %call49 = call i32 @pci_write_config_byte(%struct.pci_dev* %22, i32 210, i8 zeroext %conv48) #8, !dbg !5290
  %24 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5291
  %25 = load i16, i16* %piix4_smba, align 2, !dbg !5292
  %call50 = call i32 @pci_write_config_word(%struct.pci_dev* %24, i32 144, i16 zeroext %25) #8, !dbg !5293
  %26 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5294
  %27 = load i8, i8* %temp, align 1, !dbg !5295
  %conv51 = zext i8 %27 to i32, !dbg !5295
  %or = or i32 %conv51, 1, !dbg !5296
  %conv52 = trunc i32 %or to i8, !dbg !5295
  %call53 = call i32 @pci_write_config_byte(%struct.pci_dev* %26, i32 210, i8 zeroext %conv52) #8, !dbg !5297
  %28 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5298
  %dev54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 41, !dbg !5298
  %29 = load i16, i16* %piix4_smba, align 2, !dbg !5298
  %conv55 = zext i16 %29 to i32, !dbg !5298
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev54, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.21, i64 0, i64 0), i32 %conv55) #9, !dbg !5298
  br label %if.end74, !dbg !5299

if.else56:                                        ; preds = %if.end42
  %30 = load i8, i8* %temp, align 1, !dbg !5300
  %conv57 = zext i8 %30 to i32, !dbg !5300
  %and58 = and i32 %conv57, 1, !dbg !5302
  %cmp59 = icmp eq i32 %and58, 0, !dbg !5303
  br i1 %cmp59, label %if.then61, label %if.end73, !dbg !5304

if.then61:                                        ; preds = %if.else56
  %31 = load i32, i32* @force, align 4, !dbg !5305
  %tobool62 = icmp ne i32 %31, 0, !dbg !5305
  br i1 %tobool62, label %if.then63, label %if.else69, !dbg !5308

if.then63:                                        ; preds = %if.then61
  %32 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5309
  %33 = load i8, i8* %temp, align 1, !dbg !5311
  %conv64 = zext i8 %33 to i32, !dbg !5311
  %or65 = or i32 %conv64, 1, !dbg !5312
  %conv66 = trunc i32 %or65 to i8, !dbg !5311
  %call67 = call i32 @pci_write_config_byte(%struct.pci_dev* %32, i32 210, i8 zeroext %conv66) #8, !dbg !5313
  %34 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5314
  %dev68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 41, !dbg !5314
  call void (%struct.device*, i8*, ...) @_dev_notice(%struct.device* %dev68, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0)) #9, !dbg !5314
  br label %if.end72, !dbg !5315

if.else69:                                        ; preds = %if.then61
  %35 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5316
  %dev70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 41, !dbg !5316
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev70, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !5316
  %36 = load i16, i16* %piix4_smba, align 2, !dbg !5318
  %conv71 = zext i16 %36 to i64, !dbg !5318
  call void @__release_region(%struct.resource* @ioport_resource, i64 %conv71, i64 9) #8, !dbg !5318
  store i32 -19, i32* %retval, align 4, !dbg !5319
  br label %return, !dbg !5319

if.end72:                                         ; preds = %if.then63
  br label %if.end73, !dbg !5320

if.end73:                                         ; preds = %if.end72, %if.else56
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then45
  %37 = load i8, i8* %temp, align 1, !dbg !5321
  %conv75 = zext i8 %37 to i32, !dbg !5321
  %and76 = and i32 %conv75, 14, !dbg !5323
  %cmp77 = icmp eq i32 %and76, 8, !dbg !5324
  br i1 %cmp77, label %if.then83, label %lor.lhs.false, !dbg !5325

lor.lhs.false:                                    ; preds = %if.end74
  %38 = load i8, i8* %temp, align 1, !dbg !5326
  %conv79 = zext i8 %38 to i32, !dbg !5326
  %and80 = and i32 %conv79, 14, !dbg !5327
  %cmp81 = icmp eq i32 %and80, 2, !dbg !5328
  br i1 %cmp81, label %if.then83, label %if.else84, !dbg !5329

if.then83:                                        ; preds = %lor.lhs.false, %if.end74
  br label %if.end93, !dbg !5330

if.else84:                                        ; preds = %lor.lhs.false
  %39 = load i8, i8* %temp, align 1, !dbg !5331
  %conv85 = zext i8 %39 to i32, !dbg !5331
  %and86 = and i32 %conv85, 14, !dbg !5333
  %cmp87 = icmp eq i32 %and86, 0, !dbg !5334
  br i1 %cmp87, label %if.then89, label %if.else90, !dbg !5335

if.then89:                                        ; preds = %if.else84
  br label %if.end92, !dbg !5336

if.else90:                                        ; preds = %if.else84
  %40 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5337
  %dev91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 41, !dbg !5337
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev91, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i64 0, i64 0)) #9, !dbg !5337
  br label %if.end92

if.end92:                                         ; preds = %if.else90, %if.then89
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.then83
  %41 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5338
  %call94 = call i32 @pci_read_config_byte(%struct.pci_dev* %41, i32 214, i8* %temp) #8, !dbg !5339
  %42 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5340
  %dev95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 41, !dbg !5340
  %43 = load i16, i16* %piix4_smba, align 2, !dbg !5340
  %conv96 = zext i16 %43 to i32, !dbg !5340
  %44 = load i8, i8* %temp, align 1, !dbg !5340
  %conv97 = zext i8 %44 to i32, !dbg !5340
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev95, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %conv96, i32 %conv97) #9, !dbg !5340
  %45 = load i16, i16* %piix4_smba, align 2, !dbg !5341
  %conv98 = zext i16 %45 to i32, !dbg !5341
  store i32 %conv98, i32* %retval, align 4, !dbg !5342
  br label %return, !dbg !5342

return:                                           ; preds = %if.end93, %if.else69, %if.then39, %if.then34, %if.then27, %if.then14, %if.then5
  %46 = load i32, i32* %retval, align 4, !dbg !5343
  ret i32 %46, !dbg !5343
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @piix4_add_adapter(%struct.pci_dev* %dev, i16 zeroext %smba, i1 zeroext %sb800_main, i8 zeroext %port, i1 zeroext %notify_imc, i8 zeroext %hw_port_nr, i8* %name, %struct.i2c_adapter** %padap) #2 !dbg !5344 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %smba.addr = alloca i16, align 2
  %sb800_main.addr = alloca i8, align 1
  %port.addr = alloca i8, align 1
  %notify_imc.addr = alloca i8, align 1
  %hw_port_nr.addr = alloca i8, align 1
  %name.addr = alloca i8*, align 8
  %padap.addr = alloca %struct.i2c_adapter**, align 8
  %adap = alloca %struct.i2c_adapter*, align 8
  %adapdata = alloca %struct.i2c_piix4_adapdata*, align 8
  %retval2 = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp30 = alloca %struct.acpi_device*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5348, metadata !DIExpression()), !dbg !5349
  store i16 %smba, i16* %smba.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %smba.addr, metadata !5350, metadata !DIExpression()), !dbg !5351
  %frombool = zext i1 %sb800_main to i8
  store i8 %frombool, i8* %sb800_main.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sb800_main.addr, metadata !5352, metadata !DIExpression()), !dbg !5353
  store i8 %port, i8* %port.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %port.addr, metadata !5354, metadata !DIExpression()), !dbg !5355
  %frombool1 = zext i1 %notify_imc to i8
  store i8 %frombool1, i8* %notify_imc.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %notify_imc.addr, metadata !5356, metadata !DIExpression()), !dbg !5357
  store i8 %hw_port_nr, i8* %hw_port_nr.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %hw_port_nr.addr, metadata !5358, metadata !DIExpression()), !dbg !5359
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5360, metadata !DIExpression()), !dbg !5361
  store %struct.i2c_adapter** %padap, %struct.i2c_adapter*** %padap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter*** %padap.addr, metadata !5362, metadata !DIExpression()), !dbg !5363
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap, metadata !5364, metadata !DIExpression()), !dbg !5365
  call void @llvm.dbg.declare(metadata %struct.i2c_piix4_adapdata** %adapdata, metadata !5366, metadata !DIExpression()), !dbg !5367
  call void @llvm.dbg.declare(metadata i32* %retval2, metadata !5368, metadata !DIExpression()), !dbg !5369
  %call = call i8* @kzalloc(i64 944, i32 3264) #8, !dbg !5370
  %0 = bitcast i8* %call to %struct.i2c_adapter*, !dbg !5370
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %adap, align 8, !dbg !5371
  %1 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5372
  %cmp = icmp eq %struct.i2c_adapter* %1, null, !dbg !5374
  br i1 %cmp, label %if.then, label %if.end, !dbg !5375

if.then:                                          ; preds = %entry
  %2 = load i16, i16* %smba.addr, align 2, !dbg !5376
  %conv = zext i16 %2 to i64, !dbg !5376
  call void @__release_region(%struct.resource* @ioport_resource, i64 %conv, i64 9) #8, !dbg !5376
  store i32 -12, i32* %retval, align 4, !dbg !5378
  br label %return, !dbg !5378

if.end:                                           ; preds = %entry
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5379
  %owner = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %3, i32 0, i32 0, !dbg !5380
  store %struct.module* null, %struct.module** %owner, align 8, !dbg !5381
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5382
  %class = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %4, i32 0, i32 1, !dbg !5383
  store i32 129, i32* %class, align 8, !dbg !5384
  %5 = load i8, i8* %sb800_main.addr, align 1, !dbg !5385
  %tobool = trunc i8 %5 to i1, !dbg !5385
  %6 = zext i1 %tobool to i64, !dbg !5385
  %cond = select i1 %tobool, %struct.i2c_algorithm* @piix4_smbus_algorithm_sb800, %struct.i2c_algorithm* @smbus_algorithm, !dbg !5385
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5386
  %algo = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %7, i32 0, i32 2, !dbg !5387
  store %struct.i2c_algorithm* %cond, %struct.i2c_algorithm** %algo, align 8, !dbg !5388
  %call4 = call i8* @kzalloc(i64 6, i32 3264) #8, !dbg !5389
  %8 = bitcast i8* %call4 to %struct.i2c_piix4_adapdata*, !dbg !5389
  store %struct.i2c_piix4_adapdata* %8, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !5390
  %9 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !5391
  %cmp5 = icmp eq %struct.i2c_piix4_adapdata* %9, null, !dbg !5393
  br i1 %cmp5, label %if.then7, label %if.end9, !dbg !5394

if.then7:                                         ; preds = %if.end
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5395
  %11 = bitcast %struct.i2c_adapter* %10 to i8*, !dbg !5395
  call void @kfree(i8* %11) #8, !dbg !5397
  %12 = load i16, i16* %smba.addr, align 2, !dbg !5398
  %conv8 = zext i16 %12 to i64, !dbg !5398
  call void @__release_region(%struct.resource* @ioport_resource, i64 %conv8, i64 9) #8, !dbg !5398
  store i32 -12, i32* %retval, align 4, !dbg !5399
  br label %return, !dbg !5399

if.end9:                                          ; preds = %if.end
  %13 = load i16, i16* %smba.addr, align 2, !dbg !5400
  %14 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !5401
  %smba10 = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %14, i32 0, i32 0, !dbg !5402
  store i16 %13, i16* %smba10, align 2, !dbg !5403
  %15 = load i8, i8* %sb800_main.addr, align 1, !dbg !5404
  %tobool11 = trunc i8 %15 to i1, !dbg !5404
  %16 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !5405
  %sb800_main12 = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %16, i32 0, i32 1, !dbg !5406
  %frombool13 = zext i1 %tobool11 to i8, !dbg !5407
  store i8 %frombool13, i8* %sb800_main12, align 2, !dbg !5407
  %17 = load i8, i8* %port.addr, align 1, !dbg !5408
  %conv14 = zext i8 %17 to i32, !dbg !5408
  %18 = load i8, i8* @piix4_port_shift_sb800, align 1, !dbg !5409
  %conv15 = zext i8 %18 to i32, !dbg !5409
  %shl = shl i32 %conv14, %conv15, !dbg !5410
  %conv16 = trunc i32 %shl to i8, !dbg !5408
  %19 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !5411
  %port17 = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %19, i32 0, i32 3, !dbg !5412
  store i8 %conv16, i8* %port17, align 2, !dbg !5413
  %20 = load i8, i8* %notify_imc.addr, align 1, !dbg !5414
  %tobool18 = trunc i8 %20 to i1, !dbg !5414
  %21 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !5415
  %notify_imc19 = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %21, i32 0, i32 2, !dbg !5416
  %frombool20 = zext i1 %tobool18 to i8, !dbg !5417
  store i8 %frombool20, i8* %notify_imc19, align 1, !dbg !5417
  %22 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5418
  %dev21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 41, !dbg !5419
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5420
  %dev22 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %23, i32 0, i32 9, !dbg !5421
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev22, i32 0, i32 1, !dbg !5422
  store %struct.device* %dev21, %struct.device** %parent, align 8, !dbg !5423
  %24 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5424
  %dev23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 41, !dbg !5426
  %call24 = call zeroext i1 @has_acpi_companion(%struct.device* %dev23) #8, !dbg !5427
  br i1 %call24, label %if.then25, label %if.end33, !dbg !5428

if.then25:                                        ; preds = %if.end9
  %25 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5429
  %dev26 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %25, i32 0, i32 9, !dbg !5431
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !5432, metadata !DIExpression()), !dbg !5434
  %26 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5434
  %dev27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 41, !dbg !5434
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev27, i32 0, i32 24, !dbg !5434
  %27 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !5434
  store %struct.fwnode_handle* %27, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !5434
  %28 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !5434
  %call28 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %28) #8, !dbg !5434
  br i1 %call28, label %cond.true, label %cond.false, !dbg !5434

cond.true:                                        ; preds = %if.then25
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5435, metadata !DIExpression()), !dbg !5437
  %29 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !5437
  %30 = bitcast %struct.fwnode_handle* %29 to i8*, !dbg !5437
  store i8* %30, i8** %__mptr, align 8, !dbg !5437
  br label %do.body, !dbg !5437

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !5438

do.end:                                           ; preds = %do.body
  %31 = load i8*, i8** %__mptr, align 8, !dbg !5437
  %add.ptr = getelementptr i8, i8* %31, i64 -16, !dbg !5437
  %32 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !5437
  store %struct.acpi_device* %32, %struct.acpi_device** %tmp30, align 8, !dbg !5438
  %33 = load %struct.acpi_device*, %struct.acpi_device** %tmp30, align 8, !dbg !5437
  br label %cond.end, !dbg !5434

cond.false:                                       ; preds = %if.then25
  br label %cond.end, !dbg !5434

cond.end:                                         ; preds = %cond.false, %do.end
  %cond31 = phi %struct.acpi_device* [ %33, %do.end ], [ null, %cond.false ], !dbg !5434
  store %struct.acpi_device* %cond31, %struct.acpi_device** %tmp, align 8, !dbg !5434
  %34 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !5434
  %35 = load i8, i8* %hw_port_nr.addr, align 1, !dbg !5440
  %conv32 = zext i8 %35 to i64, !dbg !5440
  call void @acpi_preset_companion(%struct.device* %dev26, %struct.acpi_device* %34, i64 %conv32) #8, !dbg !5441
  br label %if.end33, !dbg !5442

if.end33:                                         ; preds = %cond.end, %if.end9
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5443
  %name34 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %36, i32 0, i32 12, !dbg !5444
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %name34, i64 0, i64 0, !dbg !5443
  %37 = load i8*, i8** %name.addr, align 8, !dbg !5445
  %38 = load i16, i16* %smba.addr, align 2, !dbg !5446
  %conv35 = zext i16 %38 to i32, !dbg !5446
  %call36 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0), i8* %37, i32 %conv35) #8, !dbg !5447
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5448
  %40 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !5449
  %41 = bitcast %struct.i2c_piix4_adapdata* %40 to i8*, !dbg !5449
  call void @i2c_set_adapdata(%struct.i2c_adapter* %39, i8* %41) #8, !dbg !5450
  %42 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5451
  %call37 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %42) #8, !dbg !5452
  store i32 %call37, i32* %retval2, align 4, !dbg !5453
  %43 = load i32, i32* %retval2, align 4, !dbg !5454
  %tobool38 = icmp ne i32 %43, 0, !dbg !5454
  br i1 %tobool38, label %if.then39, label %if.end41, !dbg !5456

if.then39:                                        ; preds = %if.end33
  %44 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !5457
  %45 = bitcast %struct.i2c_piix4_adapdata* %44 to i8*, !dbg !5457
  call void @kfree(i8* %45) #8, !dbg !5459
  %46 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5460
  %47 = bitcast %struct.i2c_adapter* %46 to i8*, !dbg !5460
  call void @kfree(i8* %47) #8, !dbg !5461
  %48 = load i16, i16* %smba.addr, align 2, !dbg !5462
  %conv40 = zext i16 %48 to i64, !dbg !5462
  call void @__release_region(%struct.resource* @ioport_resource, i64 %conv40, i64 9) #8, !dbg !5462
  %49 = load i32, i32* %retval2, align 4, !dbg !5463
  store i32 %49, i32* %retval, align 4, !dbg !5464
  br label %return, !dbg !5464

if.end41:                                         ; preds = %if.end33
  %50 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5465
  %51 = load %struct.i2c_adapter**, %struct.i2c_adapter*** %padap.addr, align 8, !dbg !5466
  store %struct.i2c_adapter* %50, %struct.i2c_adapter** %51, align 8, !dbg !5467
  store i32 0, i32* %retval, align 4, !dbg !5468
  br label %return, !dbg !5468

return:                                           ; preds = %if.end41, %if.then39, %if.then7, %if.then
  %52 = load i32, i32* %retval, align 4, !dbg !5469
  ret i32 %52, !dbg !5469
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @piix4_setup_aux(%struct.pci_dev* %PIIX4_dev, %struct.pci_device_id* %id, i16 zeroext %base_reg_addr) #2 !dbg !5470 {
entry:
  %retval = alloca i32, align 4
  %PIIX4_dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  %base_reg_addr.addr = alloca i16, align 2
  %piix4_smba = alloca i16, align 2
  store %struct.pci_dev* %PIIX4_dev, %struct.pci_dev** %PIIX4_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %PIIX4_dev.addr, metadata !5473, metadata !DIExpression()), !dbg !5474
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !5475, metadata !DIExpression()), !dbg !5476
  store i16 %base_reg_addr, i16* %base_reg_addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %base_reg_addr.addr, metadata !5477, metadata !DIExpression()), !dbg !5478
  call void @llvm.dbg.declare(metadata i16* %piix4_smba, metadata !5479, metadata !DIExpression()), !dbg !5480
  %0 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5481
  %1 = load i16, i16* %base_reg_addr.addr, align 2, !dbg !5482
  %conv = zext i16 %1 to i32, !dbg !5482
  %call = call i32 @pci_read_config_word(%struct.pci_dev* %0, i32 %conv, i16* %piix4_smba) #8, !dbg !5483
  %2 = load i16, i16* %piix4_smba, align 2, !dbg !5484
  %conv1 = zext i16 %2 to i32, !dbg !5484
  %and = and i32 %conv1, 1, !dbg !5486
  %cmp = icmp eq i32 %and, 0, !dbg !5487
  br i1 %cmp, label %if.then, label %if.end, !dbg !5488

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5489
  br label %return, !dbg !5489

if.end:                                           ; preds = %entry
  %3 = load i16, i16* %piix4_smba, align 2, !dbg !5491
  %conv3 = zext i16 %3 to i32, !dbg !5491
  %and4 = and i32 %conv3, 65520, !dbg !5491
  %conv5 = trunc i32 %and4 to i16, !dbg !5491
  store i16 %conv5, i16* %piix4_smba, align 2, !dbg !5491
  %4 = load i16, i16* %piix4_smba, align 2, !dbg !5492
  %conv6 = zext i16 %4 to i32, !dbg !5492
  %cmp7 = icmp eq i32 %conv6, 0, !dbg !5494
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !5495

if.then9:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !5496
  br label %return, !dbg !5496

if.end10:                                         ; preds = %if.end
  %5 = load i16, i16* %piix4_smba, align 2, !dbg !5498
  %conv11 = zext i16 %5 to i64, !dbg !5498
  %6 = load i8*, i8** getelementptr inbounds (%struct.pci_driver, %struct.pci_driver* @piix4_driver, i32 0, i32 1), align 8, !dbg !5500
  %call12 = call i32 @acpi_check_region(i64 %conv11, i64 9, i8* %6) #8, !dbg !5501
  %tobool = icmp ne i32 %call12, 0, !dbg !5501
  br i1 %tobool, label %if.then13, label %if.end14, !dbg !5502

if.then13:                                        ; preds = %if.end10
  store i32 -19, i32* %retval, align 4, !dbg !5503
  br label %return, !dbg !5503

if.end14:                                         ; preds = %if.end10
  %7 = load i16, i16* %piix4_smba, align 2, !dbg !5504
  %conv15 = zext i16 %7 to i64, !dbg !5504
  %8 = load i8*, i8** getelementptr inbounds (%struct.pci_driver, %struct.pci_driver* @piix4_driver, i32 0, i32 1), align 8, !dbg !5504
  %call16 = call %struct.resource* @__request_region(%struct.resource* @ioport_resource, i64 %conv15, i64 9, i8* %8, i32 0) #8, !dbg !5504
  %tobool17 = icmp ne %struct.resource* %call16, null, !dbg !5504
  br i1 %tobool17, label %if.end20, label %if.then18, !dbg !5506

if.then18:                                        ; preds = %if.end14
  %9 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5507
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 41, !dbg !5507
  %10 = load i16, i16* %piix4_smba, align 2, !dbg !5507
  %conv19 = zext i16 %10 to i32, !dbg !5507
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0), i32 %conv19) #9, !dbg !5507
  store i32 -16, i32* %retval, align 4, !dbg !5509
  br label %return, !dbg !5509

if.end20:                                         ; preds = %if.end14
  %11 = load %struct.pci_dev*, %struct.pci_dev** %PIIX4_dev.addr, align 8, !dbg !5510
  %dev21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 41, !dbg !5510
  %12 = load i16, i16* %piix4_smba, align 2, !dbg !5510
  %conv22 = zext i16 %12 to i32, !dbg !5510
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %conv22) #9, !dbg !5510
  %13 = load i16, i16* %piix4_smba, align 2, !dbg !5511
  %conv23 = zext i16 %13 to i32, !dbg !5511
  store i32 %conv23, i32* %retval, align 4, !dbg !5512
  br label %return, !dbg !5512

return:                                           ; preds = %if.end20, %if.then18, %if.then13, %if.then9, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !5513
  ret i32 %14, !dbg !5513
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local %struct.resource* @__request_region(%struct.resource*, i64, i64, i8*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb_p(i8 zeroext %value, i32 %port) #2 !dbg !5514 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !5518, metadata !DIExpression()), !dbg !5519
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5520, metadata !DIExpression()), !dbg !5519
  %0 = load i8, i8* %value.addr, align 1, !dbg !5519
  %1 = load i32, i32* %port.addr, align 4, !dbg !5519
  call void @outb(i8 zeroext %0, i32 %1) #8, !dbg !5519
  call void @slow_down_io() #8, !dbg !5519
  ret void, !dbg !5519
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb_p(i32 %port) #2 !dbg !5521 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5524, metadata !DIExpression()), !dbg !5525
  call void @llvm.dbg.declare(metadata i8* %value, metadata !5526, metadata !DIExpression()), !dbg !5525
  %0 = load i32, i32* %port.addr, align 4, !dbg !5525
  %call = call zeroext i8 @inb(i32 %0) #8, !dbg !5525
  store i8 %call, i8* %value, align 1, !dbg !5525
  call void @slow_down_io() #8, !dbg !5525
  %1 = load i8, i8* %value, align 1, !dbg !5525
  ret i8 %1, !dbg !5525
}

; Function Attrs: noredzone
declare dso_local void @__release_region(%struct.resource*, i64, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_check_region(i64, i64, i8*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb(i8 zeroext %value, i32 %port) #2 !dbg !5527 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !5528, metadata !DIExpression()), !dbg !5529
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5530, metadata !DIExpression()), !dbg !5529
  %0 = load i8, i8* %value.addr, align 1, !dbg !5529
  %1 = load i32, i32* %port.addr, align 4, !dbg !5529
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i32 %1) #10, !dbg !5529, !srcloc !5531
  ret void, !dbg !5529
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @slow_down_io() #2 !dbg !5532 {
entry:
  %0 = load void ()*, void ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 0), align 8, !dbg !5534
  call void %0() #8, !dbg !5535
  ret void, !dbg !5536
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb(i32 %port) #2 !dbg !5537 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5538, metadata !DIExpression()), !dbg !5539
  call void @llvm.dbg.declare(metadata i8* %value, metadata !5540, metadata !DIExpression()), !dbg !5539
  %0 = load i32, i32* %port.addr, align 4, !dbg !5539
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #10, !dbg !5539, !srcloc !5541
  store i8 %1, i8* %value, align 1, !dbg !5539
  %2 = load i8, i8* %value, align 1, !dbg !5539
  ret i8 %2, !dbg !5539
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @i2c_get_adapdata(%struct.i2c_adapter* %adap) #2 !dbg !5542 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !5547, metadata !DIExpression()), !dbg !5548
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !5549
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 9, !dbg !5550
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #8, !dbg !5551
  ret i8* %call, !dbg !5552
}

; Function Attrs: noredzone
declare dso_local void @i2c_del_adapter(%struct.i2c_adapter*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5553 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5556, metadata !DIExpression()), !dbg !5557
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5558
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5559
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5559
  ret i8* %1, !dbg !5560
}

; Function Attrs: noredzone
declare dso_local i32 @dmi_check_system(%struct.dmi_system_id*) #1

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i16*) #1

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #1

; Function Attrs: noredzone
declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i16 zeroext) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_notice(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !5561 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5564, metadata !DIExpression()), !dbg !5568
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5574, metadata !DIExpression()), !dbg !5575
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5576, metadata !DIExpression()), !dbg !5577
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5578, metadata !DIExpression()), !dbg !5579
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5580, metadata !DIExpression()), !dbg !5584
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5586, metadata !DIExpression()), !dbg !5590
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5592, metadata !DIExpression()), !dbg !5596
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5601, metadata !DIExpression()), !dbg !5602
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5603, metadata !DIExpression()), !dbg !5604
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5605, metadata !DIExpression()), !dbg !5606
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5607, metadata !DIExpression()), !dbg !5608
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5609, metadata !DIExpression()), !dbg !5610
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5611, metadata !DIExpression()), !dbg !5612
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5613, metadata !DIExpression()), !dbg !5614
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5615, metadata !DIExpression()), !dbg !5616
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5617, metadata !DIExpression()), !dbg !5618
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5619, metadata !DIExpression()), !dbg !5620
  %0 = load i64, i64* %size.addr, align 8, !dbg !5621
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5622
  %or = or i32 %1, 256, !dbg !5623
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5624
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !5625
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5626

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5627
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5628
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5629

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5630
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5631
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5632
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !5633
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5610
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5634
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5635
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5636
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5637
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5638
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5639
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !5640
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5640
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5640
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5640
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !5640
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5641
  br label %kmalloc.exit, !dbg !5641

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5642
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5643
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5643
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5645

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5646
  br label %kmalloc_index.exit.i, !dbg !5646

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5647
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5649
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5650

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5651
  br label %kmalloc_index.exit.i, !dbg !5651

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5652
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5654
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5655

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5656
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5657
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5658

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5659
  br label %kmalloc_index.exit.i, !dbg !5659

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5660
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5662
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5663

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5664
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5665
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5666

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5667
  br label %kmalloc_index.exit.i, !dbg !5667

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5668
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5670
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5671

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5672
  br label %kmalloc_index.exit.i, !dbg !5672

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5673
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5675
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5676

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5677
  br label %kmalloc_index.exit.i, !dbg !5677

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5678
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5680
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5681

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5682
  br label %kmalloc_index.exit.i, !dbg !5682

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5683
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5685
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5686

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5687
  br label %kmalloc_index.exit.i, !dbg !5687

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5688
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5690
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5691

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5692
  br label %kmalloc_index.exit.i, !dbg !5692

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5693
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5695
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5696

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5697
  br label %kmalloc_index.exit.i, !dbg !5697

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5698
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5700
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5701

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5702
  br label %kmalloc_index.exit.i, !dbg !5702

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5703
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5705
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5706

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5707
  br label %kmalloc_index.exit.i, !dbg !5707

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5708
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5710
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5711

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5712
  br label %kmalloc_index.exit.i, !dbg !5712

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5713
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5715
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5716

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5717
  br label %kmalloc_index.exit.i, !dbg !5717

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5718
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5720
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5721

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5722
  br label %kmalloc_index.exit.i, !dbg !5722

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5723
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5725
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5726

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5727
  br label %kmalloc_index.exit.i, !dbg !5727

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5728
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5730
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5731

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5732
  br label %kmalloc_index.exit.i, !dbg !5732

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5733
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5735
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5736

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5737
  br label %kmalloc_index.exit.i, !dbg !5737

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5738
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5740
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5741

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5742
  br label %kmalloc_index.exit.i, !dbg !5742

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5743
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5745
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5746

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5747
  br label %kmalloc_index.exit.i, !dbg !5747

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5748
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5750
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5751

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5752
  br label %kmalloc_index.exit.i, !dbg !5752

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5753
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5755
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5756

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5757
  br label %kmalloc_index.exit.i, !dbg !5757

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5758
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5760
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5761

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5762
  br label %kmalloc_index.exit.i, !dbg !5762

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5763
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5765
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5766

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5767
  br label %kmalloc_index.exit.i, !dbg !5767

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5768
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5770
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5771

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5772
  br label %kmalloc_index.exit.i, !dbg !5772

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5773
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5775
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5776

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5777
  br label %kmalloc_index.exit.i, !dbg !5777

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5778
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5780
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5781

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5782
  br label %kmalloc_index.exit.i, !dbg !5782

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5783
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5785
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5786

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5787
  br label %kmalloc_index.exit.i, !dbg !5787

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5788, !srcloc !5791
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #10, !dbg !5792, !srcloc !5795
  unreachable, !dbg !5796

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5797
  store i32 %45, i32* %index.i, align 4, !dbg !5798
  %46 = load i32, i32* %index.i, align 4, !dbg !5799
  %tobool.i = icmp ne i32 %46, 0, !dbg !5799
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5801

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5802
  br label %kmalloc.exit, !dbg !5802

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5803
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5804
  %and.i.i = and i32 %48, 17, !dbg !5804
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5804
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5804
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5804
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5804
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5806

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5807
  br label %kmalloc_type.exit.i, !dbg !5807

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5808
  %and2.i.i = and i32 %49, 1, !dbg !5809
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5808
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5808
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5808
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5810
  br label %kmalloc_type.exit.i, !dbg !5810

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5811
  %idxprom.i = zext i32 %51 to i64, !dbg !5812
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5812
  %52 = load i32, i32* %index.i, align 4, !dbg !5813
  %idxprom6.i = zext i32 %52 to i64, !dbg !5812
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5812
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5812
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5814
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5815
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5816
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5817
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !5818
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5818
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5818
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5818
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5818
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5579
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5819
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5820
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5821
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5822
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !5823
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5824
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5825
  store i8* %62, i8** %retval.i, align 8, !dbg !5826
  br label %kmalloc.exit, !dbg !5826

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5827
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5828
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !5829
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5829
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5829
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5829
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5829
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5830
  br label %kmalloc.exit, !dbg !5830

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5831
  ret i8* %65, !dbg !5832
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @has_acpi_companion(%struct.device* %dev) #2 !dbg !5833 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5837, metadata !DIExpression()), !dbg !5838
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5839
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 24, !dbg !5840
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !5840
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %1) #8, !dbg !5841
  ret i1 %call, !dbg !5842
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_preset_companion(%struct.device* %dev, %struct.acpi_device* %parent, i64 %addr) #2 !dbg !5843 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %parent.addr = alloca %struct.acpi_device*, align 8
  %addr.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5846, metadata !DIExpression()), !dbg !5847
  store %struct.acpi_device* %parent, %struct.acpi_device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %parent.addr, metadata !5848, metadata !DIExpression()), !dbg !5849
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !5850, metadata !DIExpression()), !dbg !5851
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5852
  %1 = load %struct.acpi_device*, %struct.acpi_device** %parent.addr, align 8, !dbg !5852
  %2 = load i64, i64* %addr.addr, align 8, !dbg !5852
  %call = call %struct.acpi_device* @acpi_find_child_device(%struct.acpi_device* %1, i64 %2, i1 zeroext false) #8, !dbg !5852
  %tobool = icmp ne %struct.acpi_device* %call, null, !dbg !5852
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5852

cond.true:                                        ; preds = %entry
  %3 = load %struct.acpi_device*, %struct.acpi_device** %parent.addr, align 8, !dbg !5852
  %4 = load i64, i64* %addr.addr, align 8, !dbg !5852
  %call1 = call %struct.acpi_device* @acpi_find_child_device(%struct.acpi_device* %3, i64 %4, i1 zeroext false) #8, !dbg !5852
  %call2 = call %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %call1) #8, !dbg !5852
  br label %cond.end, !dbg !5852

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5852

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.fwnode_handle* [ %call2, %cond.true ], [ null, %cond.false ], !dbg !5852
  call void @set_primary_fwnode(%struct.device* %0, %struct.fwnode_handle* %cond) #8, !dbg !5852
  ret void, !dbg !5853
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_acpi_device_node(%struct.fwnode_handle*) #1

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_set_adapdata(%struct.i2c_adapter* %adap, i8* %data) #2 !dbg !5854 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !5857, metadata !DIExpression()), !dbg !5858
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5859, metadata !DIExpression()), !dbg !5860
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !5861
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 9, !dbg !5862
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5863
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #8, !dbg !5864
  ret void, !dbg !5865
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5866 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5870, metadata !DIExpression()), !dbg !5875
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5877, metadata !DIExpression()), !dbg !5878
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5879, metadata !DIExpression()), !dbg !5880
  %0 = load i64, i64* %size.addr, align 8, !dbg !5881
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5883
  br i1 %1, label %if.then, label %if.end447, !dbg !5884

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5885
  %tobool = icmp ne i64 %2, 0, !dbg !5885
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5888

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5889
  br label %return, !dbg !5889

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5890
  %cmp = icmp ult i64 %3, 4096, !dbg !5892
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5893

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5894
  br label %return, !dbg !5894

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub = sub i64 %4, 1, !dbg !5895
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5895
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5895

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub4 = sub i64 %6, 1, !dbg !5895
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5895
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5895

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub6 = sub i64 %8, 1, !dbg !5895
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5895
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5895

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5895

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub9 = sub i64 %9, 1, !dbg !5895
  %and = and i64 %sub9, -9223372036854775808, !dbg !5895
  %tobool10 = icmp ne i64 %and, 0, !dbg !5895
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5895

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5895

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub13 = sub i64 %10, 1, !dbg !5895
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5895
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5895
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5895

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5895

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub18 = sub i64 %11, 1, !dbg !5895
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5895
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5895
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5895

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5895

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub23 = sub i64 %12, 1, !dbg !5895
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5895
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5895
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5895

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5895

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub28 = sub i64 %13, 1, !dbg !5895
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5895
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5895
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5895

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5895

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub33 = sub i64 %14, 1, !dbg !5895
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5895
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5895
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5895

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5895

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub38 = sub i64 %15, 1, !dbg !5895
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5895
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5895
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5895

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5895

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub43 = sub i64 %16, 1, !dbg !5895
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5895
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5895
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5895

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5895

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub48 = sub i64 %17, 1, !dbg !5895
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5895
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5895
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5895

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5895

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub53 = sub i64 %18, 1, !dbg !5895
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5895
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5895
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5895

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5895

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub58 = sub i64 %19, 1, !dbg !5895
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5895
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5895
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5895

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5895

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub63 = sub i64 %20, 1, !dbg !5895
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5895
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5895
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5895

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5895

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub68 = sub i64 %21, 1, !dbg !5895
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5895
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5895
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5895

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5895

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub73 = sub i64 %22, 1, !dbg !5895
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5895
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5895
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5895

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5895

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub78 = sub i64 %23, 1, !dbg !5895
  %and79 = and i64 %sub78, 562949953421312, !dbg !5895
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5895
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5895

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5895

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub83 = sub i64 %24, 1, !dbg !5895
  %and84 = and i64 %sub83, 281474976710656, !dbg !5895
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5895
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5895

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5895

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub88 = sub i64 %25, 1, !dbg !5895
  %and89 = and i64 %sub88, 140737488355328, !dbg !5895
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5895
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5895

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5895

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub93 = sub i64 %26, 1, !dbg !5895
  %and94 = and i64 %sub93, 70368744177664, !dbg !5895
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5895
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5895

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5895

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub98 = sub i64 %27, 1, !dbg !5895
  %and99 = and i64 %sub98, 35184372088832, !dbg !5895
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5895
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5895

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5895

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub103 = sub i64 %28, 1, !dbg !5895
  %and104 = and i64 %sub103, 17592186044416, !dbg !5895
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5895
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5895

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5895

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub108 = sub i64 %29, 1, !dbg !5895
  %and109 = and i64 %sub108, 8796093022208, !dbg !5895
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5895
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5895

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5895

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub113 = sub i64 %30, 1, !dbg !5895
  %and114 = and i64 %sub113, 4398046511104, !dbg !5895
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5895
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5895

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5895

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub118 = sub i64 %31, 1, !dbg !5895
  %and119 = and i64 %sub118, 2199023255552, !dbg !5895
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5895
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5895

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5895

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub123 = sub i64 %32, 1, !dbg !5895
  %and124 = and i64 %sub123, 1099511627776, !dbg !5895
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5895
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5895

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5895

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub128 = sub i64 %33, 1, !dbg !5895
  %and129 = and i64 %sub128, 549755813888, !dbg !5895
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5895
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5895

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5895

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub133 = sub i64 %34, 1, !dbg !5895
  %and134 = and i64 %sub133, 274877906944, !dbg !5895
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5895
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5895

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5895

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub138 = sub i64 %35, 1, !dbg !5895
  %and139 = and i64 %sub138, 137438953472, !dbg !5895
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5895
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5895

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5895

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub143 = sub i64 %36, 1, !dbg !5895
  %and144 = and i64 %sub143, 68719476736, !dbg !5895
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5895
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5895

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5895

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub148 = sub i64 %37, 1, !dbg !5895
  %and149 = and i64 %sub148, 34359738368, !dbg !5895
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5895
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5895

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5895

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub153 = sub i64 %38, 1, !dbg !5895
  %and154 = and i64 %sub153, 17179869184, !dbg !5895
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5895
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5895

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5895

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub158 = sub i64 %39, 1, !dbg !5895
  %and159 = and i64 %sub158, 8589934592, !dbg !5895
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5895
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5895

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5895

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub163 = sub i64 %40, 1, !dbg !5895
  %and164 = and i64 %sub163, 4294967296, !dbg !5895
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5895
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5895

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5895

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub168 = sub i64 %41, 1, !dbg !5895
  %and169 = and i64 %sub168, 2147483648, !dbg !5895
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5895
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5895

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5895

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub173 = sub i64 %42, 1, !dbg !5895
  %and174 = and i64 %sub173, 1073741824, !dbg !5895
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5895
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5895

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5895

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub178 = sub i64 %43, 1, !dbg !5895
  %and179 = and i64 %sub178, 536870912, !dbg !5895
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5895
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5895

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5895

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub183 = sub i64 %44, 1, !dbg !5895
  %and184 = and i64 %sub183, 268435456, !dbg !5895
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5895
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5895

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5895

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub188 = sub i64 %45, 1, !dbg !5895
  %and189 = and i64 %sub188, 134217728, !dbg !5895
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5895
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5895

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5895

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub193 = sub i64 %46, 1, !dbg !5895
  %and194 = and i64 %sub193, 67108864, !dbg !5895
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5895
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5895

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5895

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub198 = sub i64 %47, 1, !dbg !5895
  %and199 = and i64 %sub198, 33554432, !dbg !5895
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5895
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5895

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5895

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub203 = sub i64 %48, 1, !dbg !5895
  %and204 = and i64 %sub203, 16777216, !dbg !5895
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5895
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5895

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5895

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub208 = sub i64 %49, 1, !dbg !5895
  %and209 = and i64 %sub208, 8388608, !dbg !5895
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5895
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5895

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5895

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub213 = sub i64 %50, 1, !dbg !5895
  %and214 = and i64 %sub213, 4194304, !dbg !5895
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5895
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5895

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5895

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub218 = sub i64 %51, 1, !dbg !5895
  %and219 = and i64 %sub218, 2097152, !dbg !5895
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5895
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5895

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5895

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub223 = sub i64 %52, 1, !dbg !5895
  %and224 = and i64 %sub223, 1048576, !dbg !5895
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5895
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5895

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5895

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub228 = sub i64 %53, 1, !dbg !5895
  %and229 = and i64 %sub228, 524288, !dbg !5895
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5895
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5895

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5895

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub233 = sub i64 %54, 1, !dbg !5895
  %and234 = and i64 %sub233, 262144, !dbg !5895
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5895
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5895

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5895

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub238 = sub i64 %55, 1, !dbg !5895
  %and239 = and i64 %sub238, 131072, !dbg !5895
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5895
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5895

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5895

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub243 = sub i64 %56, 1, !dbg !5895
  %and244 = and i64 %sub243, 65536, !dbg !5895
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5895
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5895

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5895

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub248 = sub i64 %57, 1, !dbg !5895
  %and249 = and i64 %sub248, 32768, !dbg !5895
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5895
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5895

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5895

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub253 = sub i64 %58, 1, !dbg !5895
  %and254 = and i64 %sub253, 16384, !dbg !5895
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5895
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5895

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5895

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub258 = sub i64 %59, 1, !dbg !5895
  %and259 = and i64 %sub258, 8192, !dbg !5895
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5895
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5895

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5895

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub263 = sub i64 %60, 1, !dbg !5895
  %and264 = and i64 %sub263, 4096, !dbg !5895
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5895
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5895

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5895

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub268 = sub i64 %61, 1, !dbg !5895
  %and269 = and i64 %sub268, 2048, !dbg !5895
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5895
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5895

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5895

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub273 = sub i64 %62, 1, !dbg !5895
  %and274 = and i64 %sub273, 1024, !dbg !5895
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5895
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5895

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5895

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub278 = sub i64 %63, 1, !dbg !5895
  %and279 = and i64 %sub278, 512, !dbg !5895
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5895
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5895

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5895

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub283 = sub i64 %64, 1, !dbg !5895
  %and284 = and i64 %sub283, 256, !dbg !5895
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5895
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5895

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5895

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub288 = sub i64 %65, 1, !dbg !5895
  %and289 = and i64 %sub288, 128, !dbg !5895
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5895
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5895

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5895

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub293 = sub i64 %66, 1, !dbg !5895
  %and294 = and i64 %sub293, 64, !dbg !5895
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5895
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5895

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5895

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub298 = sub i64 %67, 1, !dbg !5895
  %and299 = and i64 %sub298, 32, !dbg !5895
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5895
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5895

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5895

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub303 = sub i64 %68, 1, !dbg !5895
  %and304 = and i64 %sub303, 16, !dbg !5895
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5895
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5895

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5895

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub308 = sub i64 %69, 1, !dbg !5895
  %and309 = and i64 %sub308, 8, !dbg !5895
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5895
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5895

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5895

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub313 = sub i64 %70, 1, !dbg !5895
  %and314 = and i64 %sub313, 4, !dbg !5895
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5895
  %71 = zext i1 %tobool315 to i64, !dbg !5895
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5895
  br label %cond.end, !dbg !5895

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5895
  br label %cond.end317, !dbg !5895

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5895
  br label %cond.end319, !dbg !5895

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5895
  br label %cond.end321, !dbg !5895

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5895
  br label %cond.end323, !dbg !5895

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5895
  br label %cond.end325, !dbg !5895

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5895
  br label %cond.end327, !dbg !5895

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5895
  br label %cond.end329, !dbg !5895

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5895
  br label %cond.end331, !dbg !5895

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5895
  br label %cond.end333, !dbg !5895

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5895
  br label %cond.end335, !dbg !5895

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5895
  br label %cond.end337, !dbg !5895

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5895
  br label %cond.end339, !dbg !5895

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5895
  br label %cond.end341, !dbg !5895

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5895
  br label %cond.end343, !dbg !5895

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5895
  br label %cond.end345, !dbg !5895

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5895
  br label %cond.end347, !dbg !5895

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5895
  br label %cond.end349, !dbg !5895

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5895
  br label %cond.end351, !dbg !5895

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5895
  br label %cond.end353, !dbg !5895

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5895
  br label %cond.end355, !dbg !5895

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5895
  br label %cond.end357, !dbg !5895

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5895
  br label %cond.end359, !dbg !5895

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5895
  br label %cond.end361, !dbg !5895

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5895
  br label %cond.end363, !dbg !5895

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5895
  br label %cond.end365, !dbg !5895

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5895
  br label %cond.end367, !dbg !5895

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5895
  br label %cond.end369, !dbg !5895

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5895
  br label %cond.end371, !dbg !5895

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5895
  br label %cond.end373, !dbg !5895

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5895
  br label %cond.end375, !dbg !5895

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5895
  br label %cond.end377, !dbg !5895

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5895
  br label %cond.end379, !dbg !5895

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5895
  br label %cond.end381, !dbg !5895

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5895
  br label %cond.end383, !dbg !5895

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5895
  br label %cond.end385, !dbg !5895

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5895
  br label %cond.end387, !dbg !5895

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5895
  br label %cond.end389, !dbg !5895

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5895
  br label %cond.end391, !dbg !5895

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5895
  br label %cond.end393, !dbg !5895

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5895
  br label %cond.end395, !dbg !5895

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5895
  br label %cond.end397, !dbg !5895

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5895
  br label %cond.end399, !dbg !5895

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5895
  br label %cond.end401, !dbg !5895

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5895
  br label %cond.end403, !dbg !5895

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5895
  br label %cond.end405, !dbg !5895

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5895
  br label %cond.end407, !dbg !5895

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5895
  br label %cond.end409, !dbg !5895

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5895
  br label %cond.end411, !dbg !5895

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5895
  br label %cond.end413, !dbg !5895

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5895
  br label %cond.end415, !dbg !5895

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5895
  br label %cond.end417, !dbg !5895

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5895
  br label %cond.end419, !dbg !5895

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5895
  br label %cond.end421, !dbg !5895

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5895
  br label %cond.end423, !dbg !5895

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5895
  br label %cond.end425, !dbg !5895

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5895
  br label %cond.end427, !dbg !5895

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5895
  br label %cond.end429, !dbg !5895

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5895
  br label %cond.end431, !dbg !5895

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5895
  br label %cond.end433, !dbg !5895

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5895
  br label %cond.end435, !dbg !5895

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5895
  br label %cond.end437, !dbg !5895

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5895
  br label %cond.end440, !dbg !5895

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5895

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5895
  br label %cond.end444, !dbg !5895

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5895
  %sub443 = sub i64 %72, 1, !dbg !5895
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5895
  br label %cond.end444, !dbg !5895

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5895
  %sub446 = sub i32 %cond445, 12, !dbg !5896
  %add = add i32 %sub446, 1, !dbg !5897
  store i32 %add, i32* %retval, align 4, !dbg !5898
  br label %return, !dbg !5898

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5899
  %dec = add i64 %73, -1, !dbg !5899
  store i64 %dec, i64* %size.addr, align 8, !dbg !5899
  %74 = load i64, i64* %size.addr, align 8, !dbg !5900
  %shr = lshr i64 %74, 12, !dbg !5900
  store i64 %shr, i64* %size.addr, align 8, !dbg !5900
  %75 = load i64, i64* %size.addr, align 8, !dbg !5901
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5878
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5902
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5903
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5902, !srcloc !5904
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5902
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5905
  %add.i = add i32 %79, 1, !dbg !5906
  store i32 %add.i, i32* %retval, align 4, !dbg !5907
  br label %return, !dbg !5907

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5908
  ret i32 %80, !dbg !5908
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5909 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5870, metadata !DIExpression()), !dbg !5913
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5877, metadata !DIExpression()), !dbg !5915
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5916, metadata !DIExpression()), !dbg !5917
  %0 = load i64, i64* %n.addr, align 8, !dbg !5918
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5915
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5919
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5920
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5919, !srcloc !5904
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5919
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5921
  %add.i = add i32 %4, 1, !dbg !5922
  %sub = sub i32 %add.i, 1, !dbg !5923
  ret i32 %sub, !dbg !5924
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5925 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5929, metadata !DIExpression()), !dbg !5930
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5931, metadata !DIExpression()), !dbg !5932
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5933, metadata !DIExpression()), !dbg !5934
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5935, metadata !DIExpression()), !dbg !5936
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5937
  ret i8* %0, !dbg !5938
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @piix4_access_sb800(%struct.i2c_adapter* %adap, i16 zeroext %addr, i16 zeroext %flags, i8 signext %read_write, i8 zeroext %command, i32 %size, %union.i2c_smbus_data* %data) #2 !dbg !5939 {
entry:
  %retval = alloca i32, align 4
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %addr.addr = alloca i16, align 2
  %flags.addr = alloca i16, align 2
  %read_write.addr = alloca i8, align 1
  %command.addr = alloca i8, align 1
  %size.addr = alloca i32, align 4
  %data.addr = alloca %union.i2c_smbus_data*, align 8
  %adapdata = alloca %struct.i2c_piix4_adapdata*, align 8
  %piix4_smba = alloca i16, align 2
  %retries = alloca i32, align 4
  %smbslvcnt = alloca i32, align 4
  %smba_en_lo = alloca i8, align 1
  %port = alloca i8, align 1
  %retval1 = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !5942, metadata !DIExpression()), !dbg !5943
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !5944, metadata !DIExpression()), !dbg !5945
  store i16 %flags, i16* %flags.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %flags.addr, metadata !5946, metadata !DIExpression()), !dbg !5947
  store i8 %read_write, i8* %read_write.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %read_write.addr, metadata !5948, metadata !DIExpression()), !dbg !5949
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !5950, metadata !DIExpression()), !dbg !5951
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5952, metadata !DIExpression()), !dbg !5953
  store %union.i2c_smbus_data* %data, %union.i2c_smbus_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %union.i2c_smbus_data** %data.addr, metadata !5954, metadata !DIExpression()), !dbg !5955
  call void @llvm.dbg.declare(metadata %struct.i2c_piix4_adapdata** %adapdata, metadata !5956, metadata !DIExpression()), !dbg !5957
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !5958
  %call = call i8* @i2c_get_adapdata(%struct.i2c_adapter* %0) #8, !dbg !5959
  %1 = bitcast i8* %call to %struct.i2c_piix4_adapdata*, !dbg !5959
  store %struct.i2c_piix4_adapdata* %1, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !5957
  call void @llvm.dbg.declare(metadata i16* %piix4_smba, metadata !5960, metadata !DIExpression()), !dbg !5961
  %2 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !5962
  %smba = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %2, i32 0, i32 0, !dbg !5963
  %3 = load i16, i16* %smba, align 2, !dbg !5963
  store i16 %3, i16* %piix4_smba, align 2, !dbg !5961
  call void @llvm.dbg.declare(metadata i32* %retries, metadata !5964, metadata !DIExpression()), !dbg !5965
  store i32 500, i32* %retries, align 4, !dbg !5965
  call void @llvm.dbg.declare(metadata i32* %smbslvcnt, metadata !5966, metadata !DIExpression()), !dbg !5967
  call void @llvm.dbg.declare(metadata i8* %smba_en_lo, metadata !5968, metadata !DIExpression()), !dbg !5969
  call void @llvm.dbg.declare(metadata i8* %port, metadata !5970, metadata !DIExpression()), !dbg !5971
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5972, metadata !DIExpression()), !dbg !5973
  %call2 = call %struct.resource* @__request_region(%struct.resource* @ioport_resource, i64 3286, i64 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 4194304) #8, !dbg !5974
  %tobool = icmp ne %struct.resource* %call2, null, !dbg !5974
  br i1 %tobool, label %if.end, label %if.then, !dbg !5976

if.then:                                          ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !5977
  br label %return, !dbg !5977

if.end:                                           ; preds = %entry
  %4 = load i16, i16* %piix4_smba, align 2, !dbg !5978
  %conv = zext i16 %4 to i32, !dbg !5978
  %add = add i32 8, %conv, !dbg !5978
  %call3 = call zeroext i8 @inb_p(i32 %add) #8, !dbg !5979
  %conv4 = zext i8 %call3 to i32, !dbg !5979
  store i32 %conv4, i32* %smbslvcnt, align 4, !dbg !5980
  br label %do.body, !dbg !5981

do.body:                                          ; preds = %do.cond, %if.end
  %5 = load i32, i32* %smbslvcnt, align 4, !dbg !5982
  %or = or i32 %5, 16, !dbg !5984
  %conv5 = trunc i32 %or to i8, !dbg !5982
  %6 = load i16, i16* %piix4_smba, align 2, !dbg !5985
  %conv6 = zext i16 %6 to i32, !dbg !5985
  %add7 = add i32 8, %conv6, !dbg !5985
  call void @outb_p(i8 zeroext %conv5, i32 %add7) #8, !dbg !5986
  %7 = load i16, i16* %piix4_smba, align 2, !dbg !5987
  %conv8 = zext i16 %7 to i32, !dbg !5987
  %add9 = add i32 8, %conv8, !dbg !5987
  %call10 = call zeroext i8 @inb_p(i32 %add9) #8, !dbg !5988
  %conv11 = zext i8 %call10 to i32, !dbg !5988
  store i32 %conv11, i32* %smbslvcnt, align 4, !dbg !5989
  %8 = load i32, i32* %smbslvcnt, align 4, !dbg !5990
  %and = and i32 %8, 16, !dbg !5992
  %tobool12 = icmp ne i32 %and, 0, !dbg !5992
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !5993

if.then13:                                        ; preds = %do.body
  br label %do.end, !dbg !5994

if.end14:                                         ; preds = %do.body
  call void @usleep_range(i64 1000, i64 2000) #8, !dbg !5995
  br label %do.cond, !dbg !5996

do.cond:                                          ; preds = %if.end14
  %9 = load i32, i32* %retries, align 4, !dbg !5997
  %dec = add i32 %9, -1, !dbg !5997
  store i32 %dec, i32* %retries, align 4, !dbg !5997
  %tobool15 = icmp ne i32 %dec, 0, !dbg !5996
  br i1 %tobool15, label %do.body, label %do.end, !dbg !5996, !llvm.loop !5998

do.end:                                           ; preds = %do.cond, %if.then13
  %10 = load i32, i32* %retries, align 4, !dbg !6000
  %tobool16 = icmp ne i32 %10, 0, !dbg !6000
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !6002

if.then17:                                        ; preds = %do.end
  store i32 -16, i32* %retval1, align 4, !dbg !6003
  br label %release, !dbg !6005

if.end18:                                         ; preds = %do.end
  %11 = load i32, i32* %size.addr, align 4, !dbg !6006
  %cmp = icmp eq i32 %11, 5, !dbg !6008
  br i1 %cmp, label %land.lhs.true, label %if.end31, !dbg !6009

land.lhs.true:                                    ; preds = %if.end18
  %12 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !6010
  %notify_imc = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %12, i32 0, i32 2, !dbg !6011
  %13 = load i8, i8* %notify_imc, align 1, !dbg !6011
  %tobool20 = trunc i8 %13 to i1, !dbg !6011
  br i1 %tobool20, label %if.then22, label %if.end31, !dbg !6012

if.then22:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6013, metadata !DIExpression()), !dbg !6015
  %call23 = call i32 @piix4_imc_sleep() #8, !dbg !6016
  store i32 %call23, i32* %ret, align 4, !dbg !6017
  %14 = load i32, i32* %ret, align 4, !dbg !6018
  switch i32 %14, label %sw.default [
    i32 -16, label %sw.bb
    i32 -110, label %sw.bb24
  ], !dbg !6019

sw.bb:                                            ; preds = %if.then22
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !6020
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %15, i32 0, i32 9, !dbg !6020
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.31, i64 0, i64 0), i32 62) #9, !dbg !6020
  br label %sw.epilog, !dbg !6022

sw.bb24:                                          ; preds = %if.then22
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !6023
  %dev25 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %16, i32 0, i32 9, !dbg !6023
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.32, i64 0, i64 0)) #9, !dbg !6023
  br label %sw.epilog, !dbg !6024

sw.default:                                       ; preds = %if.then22
  br label %sw.epilog, !dbg !6025

sw.epilog:                                        ; preds = %sw.default, %sw.bb24, %sw.bb
  %17 = load i32, i32* %ret, align 4, !dbg !6026
  %tobool26 = icmp ne i32 %17, 0, !dbg !6026
  br i1 %tobool26, label %if.then27, label %if.end30, !dbg !6028

if.then27:                                        ; preds = %sw.epilog
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !6029
  %dev28 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %18, i32 0, i32 9, !dbg !6029
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i64 0, i64 0)) #9, !dbg !6029
  %19 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !6031
  %notify_imc29 = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %19, i32 0, i32 2, !dbg !6032
  store i8 0, i8* %notify_imc29, align 1, !dbg !6033
  br label %if.end30, !dbg !6034

if.end30:                                         ; preds = %if.then27, %sw.epilog
  br label %if.end31, !dbg !6035

if.end31:                                         ; preds = %if.end30, %land.lhs.true, %if.end18
  %20 = load i8, i8* @piix4_port_sel_sb800, align 1, !dbg !6036
  call void @outb_p(i8 zeroext %20, i32 3286) #8, !dbg !6037
  %call32 = call zeroext i8 @inb_p(i32 3287) #8, !dbg !6038
  store i8 %call32, i8* %smba_en_lo, align 1, !dbg !6039
  %21 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !6040
  %port33 = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %21, i32 0, i32 3, !dbg !6041
  %22 = load i8, i8* %port33, align 2, !dbg !6041
  store i8 %22, i8* %port, align 1, !dbg !6042
  %23 = load i8, i8* %smba_en_lo, align 1, !dbg !6043
  %conv34 = zext i8 %23 to i32, !dbg !6043
  %24 = load i8, i8* @piix4_port_mask_sb800, align 1, !dbg !6045
  %conv35 = zext i8 %24 to i32, !dbg !6045
  %and36 = and i32 %conv34, %conv35, !dbg !6046
  %25 = load i8, i8* %port, align 1, !dbg !6047
  %conv37 = zext i8 %25 to i32, !dbg !6047
  %cmp38 = icmp ne i32 %and36, %conv37, !dbg !6048
  br i1 %cmp38, label %if.then40, label %if.end47, !dbg !6049

if.then40:                                        ; preds = %if.end31
  %26 = load i8, i8* %smba_en_lo, align 1, !dbg !6050
  %conv41 = zext i8 %26 to i32, !dbg !6050
  %27 = load i8, i8* @piix4_port_mask_sb800, align 1, !dbg !6051
  %conv42 = zext i8 %27 to i32, !dbg !6051
  %neg = xor i32 %conv42, -1, !dbg !6052
  %and43 = and i32 %conv41, %neg, !dbg !6053
  %28 = load i8, i8* %port, align 1, !dbg !6054
  %conv44 = zext i8 %28 to i32, !dbg !6054
  %or45 = or i32 %and43, %conv44, !dbg !6055
  %conv46 = trunc i32 %or45 to i8, !dbg !6056
  call void @outb_p(i8 zeroext %conv46, i32 3287) #8, !dbg !6057
  br label %if.end47, !dbg !6057

if.end47:                                         ; preds = %if.then40, %if.end31
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !6058
  %30 = load i16, i16* %addr.addr, align 2, !dbg !6059
  %31 = load i16, i16* %flags.addr, align 2, !dbg !6060
  %32 = load i8, i8* %read_write.addr, align 1, !dbg !6061
  %33 = load i8, i8* %command.addr, align 1, !dbg !6062
  %34 = load i32, i32* %size.addr, align 4, !dbg !6063
  %35 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !6064
  %call48 = call i32 @piix4_access(%struct.i2c_adapter* %29, i16 zeroext %30, i16 zeroext %31, i8 signext %32, i8 zeroext %33, i32 %34, %union.i2c_smbus_data* %35) #8, !dbg !6065
  store i32 %call48, i32* %retval1, align 4, !dbg !6066
  %36 = load i8, i8* %smba_en_lo, align 1, !dbg !6067
  call void @outb_p(i8 zeroext %36, i32 3287) #8, !dbg !6068
  %37 = load i32, i32* %smbslvcnt, align 4, !dbg !6069
  %or49 = or i32 %37, 32, !dbg !6070
  %conv50 = trunc i32 %or49 to i8, !dbg !6069
  %38 = load i16, i16* %piix4_smba, align 2, !dbg !6071
  %conv51 = zext i16 %38 to i32, !dbg !6071
  %add52 = add i32 8, %conv51, !dbg !6071
  call void @outb_p(i8 zeroext %conv50, i32 %add52) #8, !dbg !6072
  %39 = load i32, i32* %size.addr, align 4, !dbg !6073
  %cmp53 = icmp eq i32 %39, 5, !dbg !6075
  br i1 %cmp53, label %land.lhs.true55, label %if.end60, !dbg !6076

land.lhs.true55:                                  ; preds = %if.end47
  %40 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !6077
  %notify_imc56 = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %40, i32 0, i32 2, !dbg !6078
  %41 = load i8, i8* %notify_imc56, align 1, !dbg !6078
  %tobool57 = trunc i8 %41 to i1, !dbg !6078
  br i1 %tobool57, label %if.then59, label %if.end60, !dbg !6079

if.then59:                                        ; preds = %land.lhs.true55
  call void @piix4_imc_wakeup() #8, !dbg !6080
  br label %if.end60, !dbg !6080

if.end60:                                         ; preds = %if.then59, %land.lhs.true55, %if.end47
  br label %release, !dbg !6078

release:                                          ; preds = %if.end60, %if.then17
  call void @llvm.dbg.label(metadata !6081), !dbg !6082
  call void @__release_region(%struct.resource* @ioport_resource, i64 3286, i64 2) #8, !dbg !6083
  %42 = load i32, i32* %retval1, align 4, !dbg !6084
  store i32 %42, i32* %retval, align 4, !dbg !6085
  br label %return, !dbg !6085

return:                                           ; preds = %release, %if.then
  %43 = load i32, i32* %retval, align 4, !dbg !6086
  ret i32 %43, !dbg !6086
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @piix4_func(%struct.i2c_adapter* %adapter) #2 !dbg !6087 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !6088, metadata !DIExpression()), !dbg !6089
  ret i32 58654720, !dbg !6090
}

; Function Attrs: noredzone
declare dso_local void @usleep_range(i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @piix4_imc_sleep() #2 !dbg !6091 {
entry:
  %retval = alloca i32, align 4
  %timeout = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %timeout, metadata !6092, metadata !DIExpression()), !dbg !6093
  store i32 500, i32* %timeout, align 4, !dbg !6093
  %call = call %struct.resource* @__request_region(%struct.resource* @ioport_resource, i64 62, i64 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i32 4194304) #8, !dbg !6094
  %tobool = icmp ne %struct.resource* %call, null, !dbg !6094
  br i1 %tobool, label %if.end, label %if.then, !dbg !6096

if.then:                                          ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !6097
  br label %return, !dbg !6097

if.end:                                           ; preds = %entry
  call void @piix4_imc_write(i8 zeroext -126, i8 zeroext 0) #8, !dbg !6098
  call void @piix4_imc_write(i8 zeroext -125, i8 zeroext -76) #8, !dbg !6099
  call void @piix4_imc_write(i8 zeroext -128, i8 zeroext -106) #8, !dbg !6100
  br label %while.cond, !dbg !6101

while.cond:                                       ; preds = %if.end5, %if.end
  %0 = load i32, i32* %timeout, align 4, !dbg !6102
  %dec = add i32 %0, -1, !dbg !6102
  store i32 %dec, i32* %timeout, align 4, !dbg !6102
  %tobool1 = icmp ne i32 %0, 0, !dbg !6101
  br i1 %tobool1, label %while.body, label %while.end, !dbg !6101

while.body:                                       ; preds = %while.cond
  %call2 = call zeroext i8 @piix4_imc_read(i8 zeroext -126) #8, !dbg !6103
  %conv = zext i8 %call2 to i32, !dbg !6103
  %cmp = icmp eq i32 %conv, 250, !dbg !6106
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !6107

if.then4:                                         ; preds = %while.body
  call void @__release_region(%struct.resource* @ioport_resource, i64 62, i64 2) #8, !dbg !6108
  store i32 0, i32* %retval, align 4, !dbg !6110
  br label %return, !dbg !6110

if.end5:                                          ; preds = %while.body
  call void @usleep_range(i64 1000, i64 2000) #8, !dbg !6111
  br label %while.cond, !dbg !6101, !llvm.loop !6112

while.end:                                        ; preds = %while.cond
  call void @__release_region(%struct.resource* @ioport_resource, i64 62, i64 2) #8, !dbg !6114
  store i32 -110, i32* %retval, align 4, !dbg !6115
  br label %return, !dbg !6115

return:                                           ; preds = %while.end, %if.then4, %if.then
  %1 = load i32, i32* %retval, align 4, !dbg !6116
  ret i32 %1, !dbg !6116
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @piix4_access(%struct.i2c_adapter* %adap, i16 zeroext %addr, i16 zeroext %flags, i8 signext %read_write, i8 zeroext %command, i32 %size, %union.i2c_smbus_data* %data) #2 !dbg !6117 {
entry:
  %retval = alloca i32, align 4
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %addr.addr = alloca i16, align 2
  %flags.addr = alloca i16, align 2
  %read_write.addr = alloca i8, align 1
  %command.addr = alloca i8, align 1
  %size.addr = alloca i32, align 4
  %data.addr = alloca %union.i2c_smbus_data*, align 8
  %adapdata = alloca %struct.i2c_piix4_adapdata*, align 8
  %piix4_smba = alloca i16, align 2
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !6118, metadata !DIExpression()), !dbg !6119
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !6120, metadata !DIExpression()), !dbg !6121
  store i16 %flags, i16* %flags.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %flags.addr, metadata !6122, metadata !DIExpression()), !dbg !6123
  store i8 %read_write, i8* %read_write.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %read_write.addr, metadata !6124, metadata !DIExpression()), !dbg !6125
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !6126, metadata !DIExpression()), !dbg !6127
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6128, metadata !DIExpression()), !dbg !6129
  store %union.i2c_smbus_data* %data, %union.i2c_smbus_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %union.i2c_smbus_data** %data.addr, metadata !6130, metadata !DIExpression()), !dbg !6131
  call void @llvm.dbg.declare(metadata %struct.i2c_piix4_adapdata** %adapdata, metadata !6132, metadata !DIExpression()), !dbg !6133
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !6134
  %call = call i8* @i2c_get_adapdata(%struct.i2c_adapter* %0) #8, !dbg !6135
  %1 = bitcast i8* %call to %struct.i2c_piix4_adapdata*, !dbg !6135
  store %struct.i2c_piix4_adapdata* %1, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !6133
  call void @llvm.dbg.declare(metadata i16* %piix4_smba, metadata !6136, metadata !DIExpression()), !dbg !6137
  %2 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !6138
  %smba = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %2, i32 0, i32 0, !dbg !6139
  %3 = load i16, i16* %smba, align 2, !dbg !6139
  store i16 %3, i16* %piix4_smba, align 2, !dbg !6137
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6140, metadata !DIExpression()), !dbg !6141
  call void @llvm.dbg.declare(metadata i32* %len, metadata !6142, metadata !DIExpression()), !dbg !6143
  call void @llvm.dbg.declare(metadata i32* %status, metadata !6144, metadata !DIExpression()), !dbg !6145
  %4 = load i32, i32* %size.addr, align 4, !dbg !6146
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb16
    i32 3, label %sw.bb33
    i32 5, label %sw.bb58
  ], !dbg !6147

sw.bb:                                            ; preds = %entry
  %5 = load i16, i16* %addr.addr, align 2, !dbg !6148
  %conv = zext i16 %5 to i32, !dbg !6148
  %shl = shl i32 %conv, 1, !dbg !6150
  %6 = load i8, i8* %read_write.addr, align 1, !dbg !6151
  %conv1 = sext i8 %6 to i32, !dbg !6151
  %or = or i32 %shl, %conv1, !dbg !6152
  %conv2 = trunc i32 %or to i8, !dbg !6153
  %7 = load i16, i16* %piix4_smba, align 2, !dbg !6154
  %conv3 = zext i16 %7 to i32, !dbg !6154
  %add = add i32 4, %conv3, !dbg !6154
  call void @outb_p(i8 zeroext %conv2, i32 %add) #8, !dbg !6155
  store i32 0, i32* %size.addr, align 4, !dbg !6156
  br label %sw.epilog, !dbg !6157

sw.bb4:                                           ; preds = %entry
  %8 = load i16, i16* %addr.addr, align 2, !dbg !6158
  %conv5 = zext i16 %8 to i32, !dbg !6158
  %shl6 = shl i32 %conv5, 1, !dbg !6159
  %9 = load i8, i8* %read_write.addr, align 1, !dbg !6160
  %conv7 = sext i8 %9 to i32, !dbg !6160
  %or8 = or i32 %shl6, %conv7, !dbg !6161
  %conv9 = trunc i32 %or8 to i8, !dbg !6162
  %10 = load i16, i16* %piix4_smba, align 2, !dbg !6163
  %conv10 = zext i16 %10 to i32, !dbg !6163
  %add11 = add i32 4, %conv10, !dbg !6163
  call void @outb_p(i8 zeroext %conv9, i32 %add11) #8, !dbg !6164
  %11 = load i8, i8* %read_write.addr, align 1, !dbg !6165
  %conv12 = sext i8 %11 to i32, !dbg !6165
  %cmp = icmp eq i32 %conv12, 0, !dbg !6167
  br i1 %cmp, label %if.then, label %if.end, !dbg !6168

if.then:                                          ; preds = %sw.bb4
  %12 = load i8, i8* %command.addr, align 1, !dbg !6169
  %13 = load i16, i16* %piix4_smba, align 2, !dbg !6170
  %conv14 = zext i16 %13 to i32, !dbg !6170
  %add15 = add i32 3, %conv14, !dbg !6170
  call void @outb_p(i8 zeroext %12, i32 %add15) #8, !dbg !6171
  br label %if.end, !dbg !6171

if.end:                                           ; preds = %if.then, %sw.bb4
  store i32 4, i32* %size.addr, align 4, !dbg !6172
  br label %sw.epilog, !dbg !6173

sw.bb16:                                          ; preds = %entry
  %14 = load i16, i16* %addr.addr, align 2, !dbg !6174
  %conv17 = zext i16 %14 to i32, !dbg !6174
  %shl18 = shl i32 %conv17, 1, !dbg !6175
  %15 = load i8, i8* %read_write.addr, align 1, !dbg !6176
  %conv19 = sext i8 %15 to i32, !dbg !6176
  %or20 = or i32 %shl18, %conv19, !dbg !6177
  %conv21 = trunc i32 %or20 to i8, !dbg !6178
  %16 = load i16, i16* %piix4_smba, align 2, !dbg !6179
  %conv22 = zext i16 %16 to i32, !dbg !6179
  %add23 = add i32 4, %conv22, !dbg !6179
  call void @outb_p(i8 zeroext %conv21, i32 %add23) #8, !dbg !6180
  %17 = load i8, i8* %command.addr, align 1, !dbg !6181
  %18 = load i16, i16* %piix4_smba, align 2, !dbg !6182
  %conv24 = zext i16 %18 to i32, !dbg !6182
  %add25 = add i32 3, %conv24, !dbg !6182
  call void @outb_p(i8 zeroext %17, i32 %add25) #8, !dbg !6183
  %19 = load i8, i8* %read_write.addr, align 1, !dbg !6184
  %conv26 = sext i8 %19 to i32, !dbg !6184
  %cmp27 = icmp eq i32 %conv26, 0, !dbg !6186
  br i1 %cmp27, label %if.then29, label %if.end32, !dbg !6187

if.then29:                                        ; preds = %sw.bb16
  %20 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !6188
  %byte = bitcast %union.i2c_smbus_data* %20 to i8*, !dbg !6189
  %21 = load i8, i8* %byte, align 2, !dbg !6189
  %22 = load i16, i16* %piix4_smba, align 2, !dbg !6190
  %conv30 = zext i16 %22 to i32, !dbg !6190
  %add31 = add i32 5, %conv30, !dbg !6190
  call void @outb_p(i8 zeroext %21, i32 %add31) #8, !dbg !6191
  br label %if.end32, !dbg !6191

if.end32:                                         ; preds = %if.then29, %sw.bb16
  store i32 8, i32* %size.addr, align 4, !dbg !6192
  br label %sw.epilog, !dbg !6193

sw.bb33:                                          ; preds = %entry
  %23 = load i16, i16* %addr.addr, align 2, !dbg !6194
  %conv34 = zext i16 %23 to i32, !dbg !6194
  %shl35 = shl i32 %conv34, 1, !dbg !6195
  %24 = load i8, i8* %read_write.addr, align 1, !dbg !6196
  %conv36 = sext i8 %24 to i32, !dbg !6196
  %or37 = or i32 %shl35, %conv36, !dbg !6197
  %conv38 = trunc i32 %or37 to i8, !dbg !6198
  %25 = load i16, i16* %piix4_smba, align 2, !dbg !6199
  %conv39 = zext i16 %25 to i32, !dbg !6199
  %add40 = add i32 4, %conv39, !dbg !6199
  call void @outb_p(i8 zeroext %conv38, i32 %add40) #8, !dbg !6200
  %26 = load i8, i8* %command.addr, align 1, !dbg !6201
  %27 = load i16, i16* %piix4_smba, align 2, !dbg !6202
  %conv41 = zext i16 %27 to i32, !dbg !6202
  %add42 = add i32 3, %conv41, !dbg !6202
  call void @outb_p(i8 zeroext %26, i32 %add42) #8, !dbg !6203
  %28 = load i8, i8* %read_write.addr, align 1, !dbg !6204
  %conv43 = sext i8 %28 to i32, !dbg !6204
  %cmp44 = icmp eq i32 %conv43, 0, !dbg !6206
  br i1 %cmp44, label %if.then46, label %if.end57, !dbg !6207

if.then46:                                        ; preds = %sw.bb33
  %29 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !6208
  %word = bitcast %union.i2c_smbus_data* %29 to i16*, !dbg !6210
  %30 = load i16, i16* %word, align 2, !dbg !6210
  %conv47 = zext i16 %30 to i32, !dbg !6208
  %and = and i32 %conv47, 255, !dbg !6211
  %conv48 = trunc i32 %and to i8, !dbg !6208
  %31 = load i16, i16* %piix4_smba, align 2, !dbg !6212
  %conv49 = zext i16 %31 to i32, !dbg !6212
  %add50 = add i32 5, %conv49, !dbg !6212
  call void @outb_p(i8 zeroext %conv48, i32 %add50) #8, !dbg !6213
  %32 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !6214
  %word51 = bitcast %union.i2c_smbus_data* %32 to i16*, !dbg !6215
  %33 = load i16, i16* %word51, align 2, !dbg !6215
  %conv52 = zext i16 %33 to i32, !dbg !6214
  %and53 = and i32 %conv52, 65280, !dbg !6216
  %shr = ashr i32 %and53, 8, !dbg !6217
  %conv54 = trunc i32 %shr to i8, !dbg !6218
  %34 = load i16, i16* %piix4_smba, align 2, !dbg !6219
  %conv55 = zext i16 %34 to i32, !dbg !6219
  %add56 = add i32 6, %conv55, !dbg !6219
  call void @outb_p(i8 zeroext %conv54, i32 %add56) #8, !dbg !6220
  br label %if.end57, !dbg !6221

if.end57:                                         ; preds = %if.then46, %sw.bb33
  store i32 12, i32* %size.addr, align 4, !dbg !6222
  br label %sw.epilog, !dbg !6223

sw.bb58:                                          ; preds = %entry
  %35 = load i16, i16* %addr.addr, align 2, !dbg !6224
  %conv59 = zext i16 %35 to i32, !dbg !6224
  %shl60 = shl i32 %conv59, 1, !dbg !6225
  %36 = load i8, i8* %read_write.addr, align 1, !dbg !6226
  %conv61 = sext i8 %36 to i32, !dbg !6226
  %or62 = or i32 %shl60, %conv61, !dbg !6227
  %conv63 = trunc i32 %or62 to i8, !dbg !6228
  %37 = load i16, i16* %piix4_smba, align 2, !dbg !6229
  %conv64 = zext i16 %37 to i32, !dbg !6229
  %add65 = add i32 4, %conv64, !dbg !6229
  call void @outb_p(i8 zeroext %conv63, i32 %add65) #8, !dbg !6230
  %38 = load i8, i8* %command.addr, align 1, !dbg !6231
  %39 = load i16, i16* %piix4_smba, align 2, !dbg !6232
  %conv66 = zext i16 %39 to i32, !dbg !6232
  %add67 = add i32 3, %conv66, !dbg !6232
  call void @outb_p(i8 zeroext %38, i32 %add67) #8, !dbg !6233
  %40 = load i8, i8* %read_write.addr, align 1, !dbg !6234
  %conv68 = sext i8 %40 to i32, !dbg !6234
  %cmp69 = icmp eq i32 %conv68, 0, !dbg !6236
  br i1 %cmp69, label %if.then71, label %if.end91, !dbg !6237

if.then71:                                        ; preds = %sw.bb58
  %41 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !6238
  %block = bitcast %union.i2c_smbus_data* %41 to [34 x i8]*, !dbg !6240
  %arrayidx = getelementptr [34 x i8], [34 x i8]* %block, i64 0, i64 0, !dbg !6238
  %42 = load i8, i8* %arrayidx, align 2, !dbg !6238
  %conv72 = zext i8 %42 to i32, !dbg !6238
  store i32 %conv72, i32* %len, align 4, !dbg !6241
  %43 = load i32, i32* %len, align 4, !dbg !6242
  %cmp73 = icmp eq i32 %43, 0, !dbg !6244
  br i1 %cmp73, label %if.then77, label %lor.lhs.false, !dbg !6245

lor.lhs.false:                                    ; preds = %if.then71
  %44 = load i32, i32* %len, align 4, !dbg !6246
  %cmp75 = icmp sgt i32 %44, 32, !dbg !6247
  br i1 %cmp75, label %if.then77, label %if.end78, !dbg !6248

if.then77:                                        ; preds = %lor.lhs.false, %if.then71
  store i32 -22, i32* %retval, align 4, !dbg !6249
  br label %return, !dbg !6249

if.end78:                                         ; preds = %lor.lhs.false
  %45 = load i32, i32* %len, align 4, !dbg !6250
  %conv79 = trunc i32 %45 to i8, !dbg !6250
  %46 = load i16, i16* %piix4_smba, align 2, !dbg !6251
  %conv80 = zext i16 %46 to i32, !dbg !6251
  %add81 = add i32 5, %conv80, !dbg !6251
  call void @outb_p(i8 zeroext %conv79, i32 %add81) #8, !dbg !6252
  %47 = load i16, i16* %piix4_smba, align 2, !dbg !6253
  %conv82 = zext i16 %47 to i32, !dbg !6253
  %add83 = add i32 2, %conv82, !dbg !6253
  %call84 = call zeroext i8 @inb_p(i32 %add83) #8, !dbg !6254
  store i32 1, i32* %i, align 4, !dbg !6255
  br label %for.cond, !dbg !6257

for.cond:                                         ; preds = %for.inc, %if.end78
  %48 = load i32, i32* %i, align 4, !dbg !6258
  %49 = load i32, i32* %len, align 4, !dbg !6260
  %cmp85 = icmp sle i32 %48, %49, !dbg !6261
  br i1 %cmp85, label %for.body, label %for.end, !dbg !6262

for.body:                                         ; preds = %for.cond
  %50 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !6263
  %block87 = bitcast %union.i2c_smbus_data* %50 to [34 x i8]*, !dbg !6264
  %51 = load i32, i32* %i, align 4, !dbg !6265
  %idxprom = sext i32 %51 to i64, !dbg !6263
  %arrayidx88 = getelementptr [34 x i8], [34 x i8]* %block87, i64 0, i64 %idxprom, !dbg !6263
  %52 = load i8, i8* %arrayidx88, align 1, !dbg !6263
  %53 = load i16, i16* %piix4_smba, align 2, !dbg !6266
  %conv89 = zext i16 %53 to i32, !dbg !6266
  %add90 = add i32 7, %conv89, !dbg !6266
  call void @outb_p(i8 zeroext %52, i32 %add90) #8, !dbg !6267
  br label %for.inc, !dbg !6267

for.inc:                                          ; preds = %for.body
  %54 = load i32, i32* %i, align 4, !dbg !6268
  %inc = add i32 %54, 1, !dbg !6268
  store i32 %inc, i32* %i, align 4, !dbg !6268
  br label %for.cond, !dbg !6269, !llvm.loop !6270

for.end:                                          ; preds = %for.cond
  br label %if.end91, !dbg !6272

if.end91:                                         ; preds = %for.end, %sw.bb58
  store i32 20, i32* %size.addr, align 4, !dbg !6273
  br label %sw.epilog, !dbg !6274

sw.default:                                       ; preds = %entry
  %55 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !6275
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %55, i32 0, i32 9, !dbg !6275
  %56 = load i32, i32* %size.addr, align 4, !dbg !6275
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i64 0, i64 0), i32 %56) #9, !dbg !6275
  store i32 -95, i32* %retval, align 4, !dbg !6276
  br label %return, !dbg !6276

sw.epilog:                                        ; preds = %if.end91, %if.end57, %if.end32, %if.end, %sw.bb
  %57 = load i32, i32* %size.addr, align 4, !dbg !6277
  %and92 = and i32 %57, 28, !dbg !6278
  %add93 = add i32 %and92, 0, !dbg !6279
  %conv94 = trunc i32 %add93 to i8, !dbg !6280
  %58 = load i16, i16* %piix4_smba, align 2, !dbg !6281
  %conv95 = zext i16 %58 to i32, !dbg !6281
  %add96 = add i32 2, %conv95, !dbg !6281
  call void @outb_p(i8 zeroext %conv94, i32 %add96) #8, !dbg !6282
  %59 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !6283
  %call97 = call i32 @piix4_transaction(%struct.i2c_adapter* %59) #8, !dbg !6284
  store i32 %call97, i32* %status, align 4, !dbg !6285
  %60 = load i32, i32* %status, align 4, !dbg !6286
  %tobool = icmp ne i32 %60, 0, !dbg !6286
  br i1 %tobool, label %if.then98, label %if.end99, !dbg !6288

if.then98:                                        ; preds = %sw.epilog
  %61 = load i32, i32* %status, align 4, !dbg !6289
  store i32 %61, i32* %retval, align 4, !dbg !6290
  br label %return, !dbg !6290

if.end99:                                         ; preds = %sw.epilog
  %62 = load i8, i8* %read_write.addr, align 1, !dbg !6291
  %conv100 = sext i8 %62 to i32, !dbg !6291
  %cmp101 = icmp eq i32 %conv100, 0, !dbg !6293
  br i1 %cmp101, label %if.then106, label %lor.lhs.false103, !dbg !6294

lor.lhs.false103:                                 ; preds = %if.end99
  %63 = load i32, i32* %size.addr, align 4, !dbg !6295
  %cmp104 = icmp eq i32 %63, 0, !dbg !6296
  br i1 %cmp104, label %if.then106, label %if.end107, !dbg !6297

if.then106:                                       ; preds = %lor.lhs.false103, %if.end99
  store i32 0, i32* %retval, align 4, !dbg !6298
  br label %return, !dbg !6298

if.end107:                                        ; preds = %lor.lhs.false103
  %64 = load i32, i32* %size.addr, align 4, !dbg !6299
  switch i32 %64, label %sw.epilog164 [
    i32 4, label %sw.bb108
    i32 8, label %sw.bb108
    i32 12, label %sw.bb113
    i32 20, label %sw.bb126
  ], !dbg !6300

sw.bb108:                                         ; preds = %if.end107, %if.end107
  %65 = load i16, i16* %piix4_smba, align 2, !dbg !6301
  %conv109 = zext i16 %65 to i32, !dbg !6301
  %add110 = add i32 5, %conv109, !dbg !6301
  %call111 = call zeroext i8 @inb_p(i32 %add110) #8, !dbg !6303
  %66 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !6304
  %byte112 = bitcast %union.i2c_smbus_data* %66 to i8*, !dbg !6305
  store i8 %call111, i8* %byte112, align 2, !dbg !6306
  br label %sw.epilog164, !dbg !6307

sw.bb113:                                         ; preds = %if.end107
  %67 = load i16, i16* %piix4_smba, align 2, !dbg !6308
  %conv114 = zext i16 %67 to i32, !dbg !6308
  %add115 = add i32 5, %conv114, !dbg !6308
  %call116 = call zeroext i8 @inb_p(i32 %add115) #8, !dbg !6309
  %conv117 = zext i8 %call116 to i32, !dbg !6309
  %68 = load i16, i16* %piix4_smba, align 2, !dbg !6310
  %conv118 = zext i16 %68 to i32, !dbg !6310
  %add119 = add i32 6, %conv118, !dbg !6310
  %call120 = call zeroext i8 @inb_p(i32 %add119) #8, !dbg !6311
  %conv121 = zext i8 %call120 to i32, !dbg !6311
  %shl122 = shl i32 %conv121, 8, !dbg !6312
  %add123 = add i32 %conv117, %shl122, !dbg !6313
  %conv124 = trunc i32 %add123 to i16, !dbg !6309
  %69 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !6314
  %word125 = bitcast %union.i2c_smbus_data* %69 to i16*, !dbg !6315
  store i16 %conv124, i16* %word125, align 2, !dbg !6316
  br label %sw.epilog164, !dbg !6317

sw.bb126:                                         ; preds = %if.end107
  %70 = load i16, i16* %piix4_smba, align 2, !dbg !6318
  %conv127 = zext i16 %70 to i32, !dbg !6318
  %add128 = add i32 5, %conv127, !dbg !6318
  %call129 = call zeroext i8 @inb_p(i32 %add128) #8, !dbg !6319
  %71 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !6320
  %block130 = bitcast %union.i2c_smbus_data* %71 to [34 x i8]*, !dbg !6321
  %arrayidx131 = getelementptr [34 x i8], [34 x i8]* %block130, i64 0, i64 0, !dbg !6320
  store i8 %call129, i8* %arrayidx131, align 2, !dbg !6322
  %72 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !6323
  %block132 = bitcast %union.i2c_smbus_data* %72 to [34 x i8]*, !dbg !6325
  %arrayidx133 = getelementptr [34 x i8], [34 x i8]* %block132, i64 0, i64 0, !dbg !6323
  %73 = load i8, i8* %arrayidx133, align 2, !dbg !6323
  %conv134 = zext i8 %73 to i32, !dbg !6323
  %cmp135 = icmp eq i32 %conv134, 0, !dbg !6326
  br i1 %cmp135, label %if.then143, label %lor.lhs.false137, !dbg !6327

lor.lhs.false137:                                 ; preds = %sw.bb126
  %74 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !6328
  %block138 = bitcast %union.i2c_smbus_data* %74 to [34 x i8]*, !dbg !6329
  %arrayidx139 = getelementptr [34 x i8], [34 x i8]* %block138, i64 0, i64 0, !dbg !6328
  %75 = load i8, i8* %arrayidx139, align 2, !dbg !6328
  %conv140 = zext i8 %75 to i32, !dbg !6328
  %cmp141 = icmp sgt i32 %conv140, 32, !dbg !6330
  br i1 %cmp141, label %if.then143, label %if.end144, !dbg !6331

if.then143:                                       ; preds = %lor.lhs.false137, %sw.bb126
  store i32 -71, i32* %retval, align 4, !dbg !6332
  br label %return, !dbg !6332

if.end144:                                        ; preds = %lor.lhs.false137
  %76 = load i16, i16* %piix4_smba, align 2, !dbg !6333
  %conv145 = zext i16 %76 to i32, !dbg !6333
  %add146 = add i32 2, %conv145, !dbg !6333
  %call147 = call zeroext i8 @inb_p(i32 %add146) #8, !dbg !6334
  store i32 1, i32* %i, align 4, !dbg !6335
  br label %for.cond148, !dbg !6337

for.cond148:                                      ; preds = %for.inc161, %if.end144
  %77 = load i32, i32* %i, align 4, !dbg !6338
  %78 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !6340
  %block149 = bitcast %union.i2c_smbus_data* %78 to [34 x i8]*, !dbg !6341
  %arrayidx150 = getelementptr [34 x i8], [34 x i8]* %block149, i64 0, i64 0, !dbg !6340
  %79 = load i8, i8* %arrayidx150, align 2, !dbg !6340
  %conv151 = zext i8 %79 to i32, !dbg !6340
  %cmp152 = icmp sle i32 %77, %conv151, !dbg !6342
  br i1 %cmp152, label %for.body154, label %for.end163, !dbg !6343

for.body154:                                      ; preds = %for.cond148
  %80 = load i16, i16* %piix4_smba, align 2, !dbg !6344
  %conv155 = zext i16 %80 to i32, !dbg !6344
  %add156 = add i32 7, %conv155, !dbg !6344
  %call157 = call zeroext i8 @inb_p(i32 %add156) #8, !dbg !6345
  %81 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !6346
  %block158 = bitcast %union.i2c_smbus_data* %81 to [34 x i8]*, !dbg !6347
  %82 = load i32, i32* %i, align 4, !dbg !6348
  %idxprom159 = sext i32 %82 to i64, !dbg !6346
  %arrayidx160 = getelementptr [34 x i8], [34 x i8]* %block158, i64 0, i64 %idxprom159, !dbg !6346
  store i8 %call157, i8* %arrayidx160, align 1, !dbg !6349
  br label %for.inc161, !dbg !6346

for.inc161:                                       ; preds = %for.body154
  %83 = load i32, i32* %i, align 4, !dbg !6350
  %inc162 = add i32 %83, 1, !dbg !6350
  store i32 %inc162, i32* %i, align 4, !dbg !6350
  br label %for.cond148, !dbg !6351, !llvm.loop !6352

for.end163:                                       ; preds = %for.cond148
  br label %sw.epilog164, !dbg !6354

sw.epilog164:                                     ; preds = %if.end107, %for.end163, %sw.bb113, %sw.bb108
  store i32 0, i32* %retval, align 4, !dbg !6355
  br label %return, !dbg !6355

return:                                           ; preds = %sw.epilog164, %if.then143, %if.then106, %if.then98, %sw.default, %if.then77
  %84 = load i32, i32* %retval, align 4, !dbg !6356
  ret i32 %84, !dbg !6356
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @piix4_imc_wakeup() #2 !dbg !6357 {
entry:
  %timeout = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %timeout, metadata !6358, metadata !DIExpression()), !dbg !6359
  store i32 500, i32* %timeout, align 4, !dbg !6359
  %call = call %struct.resource* @__request_region(%struct.resource* @ioport_resource, i64 62, i64 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i32 4194304) #8, !dbg !6360
  %tobool = icmp ne %struct.resource* %call, null, !dbg !6360
  br i1 %tobool, label %if.end, label %if.then, !dbg !6362

if.then:                                          ; preds = %entry
  br label %return, !dbg !6363

if.end:                                           ; preds = %entry
  call void @piix4_imc_write(i8 zeroext -126, i8 zeroext 0) #8, !dbg !6364
  call void @piix4_imc_write(i8 zeroext -125, i8 zeroext -75) #8, !dbg !6365
  call void @piix4_imc_write(i8 zeroext -128, i8 zeroext -106) #8, !dbg !6366
  br label %while.cond, !dbg !6367

while.cond:                                       ; preds = %if.end5, %if.end
  %0 = load i32, i32* %timeout, align 4, !dbg !6368
  %dec = add i32 %0, -1, !dbg !6368
  store i32 %dec, i32* %timeout, align 4, !dbg !6368
  %tobool1 = icmp ne i32 %0, 0, !dbg !6367
  br i1 %tobool1, label %while.body, label %while.end, !dbg !6367

while.body:                                       ; preds = %while.cond
  %call2 = call zeroext i8 @piix4_imc_read(i8 zeroext -126) #8, !dbg !6369
  %conv = zext i8 %call2 to i32, !dbg !6369
  %cmp = icmp eq i32 %conv, 250, !dbg !6372
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !6373

if.then4:                                         ; preds = %while.body
  br label %while.end, !dbg !6374

if.end5:                                          ; preds = %while.body
  call void @usleep_range(i64 1000, i64 2000) #8, !dbg !6375
  br label %while.cond, !dbg !6367, !llvm.loop !6376

while.end:                                        ; preds = %if.then4, %while.cond
  call void @__release_region(%struct.resource* @ioport_resource, i64 62, i64 2) #8, !dbg !6378
  br label %return, !dbg !6379

return:                                           ; preds = %while.end, %if.then
  ret void, !dbg !6379
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @piix4_imc_write(i8 zeroext %idx, i8 zeroext %value) #2 !dbg !6380 {
entry:
  %idx.addr = alloca i8, align 1
  %value.addr = alloca i8, align 1
  store i8 %idx, i8* %idx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %idx.addr, metadata !6384, metadata !DIExpression()), !dbg !6385
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !6386, metadata !DIExpression()), !dbg !6387
  %0 = load i8, i8* %idx.addr, align 1, !dbg !6388
  call void @outb_p(i8 zeroext %0, i32 62) #8, !dbg !6389
  %1 = load i8, i8* %value.addr, align 1, !dbg !6390
  call void @outb_p(i8 zeroext %1, i32 63) #8, !dbg !6391
  ret void, !dbg !6392
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @piix4_imc_read(i8 zeroext %idx) #2 !dbg !6393 {
entry:
  %idx.addr = alloca i8, align 1
  store i8 %idx, i8* %idx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %idx.addr, metadata !6396, metadata !DIExpression()), !dbg !6397
  %0 = load i8, i8* %idx.addr, align 1, !dbg !6398
  call void @outb_p(i8 zeroext %0, i32 62) #8, !dbg !6399
  %call = call zeroext i8 @inb_p(i32 63) #8, !dbg !6400
  ret i8 %call, !dbg !6401
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @piix4_transaction(%struct.i2c_adapter* %piix4_adapter) #2 !dbg !6402 {
entry:
  %retval = alloca i32, align 4
  %piix4_adapter.addr = alloca %struct.i2c_adapter*, align 8
  %adapdata = alloca %struct.i2c_piix4_adapdata*, align 8
  %piix4_smba = alloca i16, align 2
  %temp = alloca i32, align 4
  %result = alloca i32, align 4
  %timeout = alloca i32, align 4
  store %struct.i2c_adapter* %piix4_adapter, %struct.i2c_adapter** %piix4_adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %piix4_adapter.addr, metadata !6403, metadata !DIExpression()), !dbg !6404
  call void @llvm.dbg.declare(metadata %struct.i2c_piix4_adapdata** %adapdata, metadata !6405, metadata !DIExpression()), !dbg !6406
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %piix4_adapter.addr, align 8, !dbg !6407
  %call = call i8* @i2c_get_adapdata(%struct.i2c_adapter* %0) #8, !dbg !6408
  %1 = bitcast i8* %call to %struct.i2c_piix4_adapdata*, !dbg !6408
  store %struct.i2c_piix4_adapdata* %1, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !6406
  call void @llvm.dbg.declare(metadata i16* %piix4_smba, metadata !6409, metadata !DIExpression()), !dbg !6410
  %2 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !6411
  %smba = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %2, i32 0, i32 0, !dbg !6412
  %3 = load i16, i16* %smba, align 2, !dbg !6412
  store i16 %3, i16* %piix4_smba, align 2, !dbg !6410
  call void @llvm.dbg.declare(metadata i32* %temp, metadata !6413, metadata !DIExpression()), !dbg !6414
  call void @llvm.dbg.declare(metadata i32* %result, metadata !6415, metadata !DIExpression()), !dbg !6416
  store i32 0, i32* %result, align 4, !dbg !6416
  call void @llvm.dbg.declare(metadata i32* %timeout, metadata !6417, metadata !DIExpression()), !dbg !6418
  store i32 0, i32* %timeout, align 4, !dbg !6418
  %4 = load i16, i16* %piix4_smba, align 2, !dbg !6419
  %conv = zext i16 %4 to i32, !dbg !6419
  %add = add i32 0, %conv, !dbg !6419
  %call1 = call zeroext i8 @inb_p(i32 %add) #8, !dbg !6421
  %conv2 = zext i8 %call1 to i32, !dbg !6421
  store i32 %conv2, i32* %temp, align 4, !dbg !6422
  %cmp = icmp ne i32 %conv2, 0, !dbg !6423
  br i1 %cmp, label %if.then, label %if.end14, !dbg !6424

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %temp, align 4, !dbg !6425
  %conv4 = trunc i32 %5 to i8, !dbg !6425
  %6 = load i16, i16* %piix4_smba, align 2, !dbg !6427
  %conv5 = zext i16 %6 to i32, !dbg !6427
  %add6 = add i32 0, %conv5, !dbg !6427
  call void @outb_p(i8 zeroext %conv4, i32 %add6) #8, !dbg !6428
  %7 = load i16, i16* %piix4_smba, align 2, !dbg !6429
  %conv7 = zext i16 %7 to i32, !dbg !6429
  %add8 = add i32 0, %conv7, !dbg !6429
  %call9 = call zeroext i8 @inb_p(i32 %add8) #8, !dbg !6431
  %conv10 = zext i8 %call9 to i32, !dbg !6431
  store i32 %conv10, i32* %temp, align 4, !dbg !6432
  %cmp11 = icmp ne i32 %conv10, 0, !dbg !6433
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !6434

if.then13:                                        ; preds = %if.then
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %piix4_adapter.addr, align 8, !dbg !6435
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %8, i32 0, i32 9, !dbg !6435
  %9 = load i32, i32* %temp, align 4, !dbg !6435
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i32 %9) #9, !dbg !6435
  store i32 -16, i32* %retval, align 4, !dbg !6437
  br label %return, !dbg !6437

if.else:                                          ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end14, !dbg !6438

if.end14:                                         ; preds = %if.end, %entry
  %10 = load i16, i16* %piix4_smba, align 2, !dbg !6439
  %conv15 = zext i16 %10 to i32, !dbg !6439
  %add16 = add i32 2, %conv15, !dbg !6439
  %call17 = call zeroext i8 @inb(i32 %add16) #8, !dbg !6440
  %conv18 = zext i8 %call17 to i32, !dbg !6440
  %or = or i32 %conv18, 64, !dbg !6441
  %conv19 = trunc i32 %or to i8, !dbg !6440
  %11 = load i16, i16* %piix4_smba, align 2, !dbg !6442
  %conv20 = zext i16 %11 to i32, !dbg !6442
  %add21 = add i32 2, %conv20, !dbg !6442
  call void @outb_p(i8 zeroext %conv19, i32 %add21) #8, !dbg !6443
  %12 = load i32, i32* @srvrworks_csb5_delay, align 4, !dbg !6444
  %tobool = icmp ne i32 %12, 0, !dbg !6444
  br i1 %tobool, label %if.then22, label %if.else23, !dbg !6446

if.then22:                                        ; preds = %if.end14
  call void @usleep_range(i64 2000, i64 2100) #8, !dbg !6447
  br label %if.end24, !dbg !6447

if.else23:                                        ; preds = %if.end14
  call void @usleep_range(i64 250, i64 500) #8, !dbg !6448
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %if.then22
  br label %while.cond, !dbg !6449

while.cond:                                       ; preds = %while.body, %if.end24
  %13 = load i32, i32* %timeout, align 4, !dbg !6450
  %inc = add i32 %13, 1, !dbg !6450
  store i32 %inc, i32* %timeout, align 4, !dbg !6450
  %cmp25 = icmp slt i32 %inc, 500, !dbg !6451
  br i1 %cmp25, label %land.rhs, label %land.end, !dbg !6452

land.rhs:                                         ; preds = %while.cond
  %14 = load i16, i16* %piix4_smba, align 2, !dbg !6453
  %conv27 = zext i16 %14 to i32, !dbg !6453
  %add28 = add i32 0, %conv27, !dbg !6453
  %call29 = call zeroext i8 @inb_p(i32 %add28) #8, !dbg !6454
  %conv30 = zext i8 %call29 to i32, !dbg !6454
  store i32 %conv30, i32* %temp, align 4, !dbg !6455
  %and = and i32 %conv30, 1, !dbg !6456
  %tobool31 = icmp ne i32 %and, 0, !dbg !6452
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %tobool31, %land.rhs ], !dbg !6457
  br i1 %15, label %while.body, label %while.end, !dbg !6449

while.body:                                       ; preds = %land.end
  call void @usleep_range(i64 250, i64 500) #8, !dbg !6458
  br label %while.cond, !dbg !6449, !llvm.loop !6459

while.end:                                        ; preds = %land.end
  %16 = load i32, i32* %timeout, align 4, !dbg !6461
  %cmp32 = icmp eq i32 %16, 500, !dbg !6463
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !6464

if.then34:                                        ; preds = %while.end
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %piix4_adapter.addr, align 8, !dbg !6465
  %dev35 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %17, i32 0, i32 9, !dbg !6465
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0)) #9, !dbg !6465
  store i32 -110, i32* %result, align 4, !dbg !6467
  br label %if.end36, !dbg !6468

if.end36:                                         ; preds = %if.then34, %while.end
  %18 = load i32, i32* %temp, align 4, !dbg !6469
  %and37 = and i32 %18, 16, !dbg !6471
  %tobool38 = icmp ne i32 %and37, 0, !dbg !6471
  br i1 %tobool38, label %if.then39, label %if.end41, !dbg !6472

if.then39:                                        ; preds = %if.end36
  store i32 -5, i32* %result, align 4, !dbg !6473
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %piix4_adapter.addr, align 8, !dbg !6475
  %dev40 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %19, i32 0, i32 9, !dbg !6475
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i64 0, i64 0)) #9, !dbg !6475
  br label %if.end41, !dbg !6476

if.end41:                                         ; preds = %if.then39, %if.end36
  %20 = load i32, i32* %temp, align 4, !dbg !6477
  %and42 = and i32 %20, 8, !dbg !6479
  %tobool43 = icmp ne i32 %and42, 0, !dbg !6479
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !6480

if.then44:                                        ; preds = %if.end41
  store i32 -5, i32* %result, align 4, !dbg !6481
  br label %if.end45, !dbg !6483

if.end45:                                         ; preds = %if.then44, %if.end41
  %21 = load i32, i32* %temp, align 4, !dbg !6484
  %and46 = and i32 %21, 4, !dbg !6486
  %tobool47 = icmp ne i32 %and46, 0, !dbg !6486
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !6487

if.then48:                                        ; preds = %if.end45
  store i32 -6, i32* %result, align 4, !dbg !6488
  br label %if.end49, !dbg !6490

if.end49:                                         ; preds = %if.then48, %if.end45
  %22 = load i16, i16* %piix4_smba, align 2, !dbg !6491
  %conv50 = zext i16 %22 to i32, !dbg !6491
  %add51 = add i32 0, %conv50, !dbg !6491
  %call52 = call zeroext i8 @inb_p(i32 %add51) #8, !dbg !6493
  %conv53 = zext i8 %call52 to i32, !dbg !6493
  %cmp54 = icmp ne i32 %conv53, 0, !dbg !6494
  br i1 %cmp54, label %if.then56, label %if.end62, !dbg !6495

if.then56:                                        ; preds = %if.end49
  %23 = load i16, i16* %piix4_smba, align 2, !dbg !6496
  %conv57 = zext i16 %23 to i32, !dbg !6496
  %add58 = add i32 0, %conv57, !dbg !6496
  %call59 = call zeroext i8 @inb(i32 %add58) #8, !dbg !6497
  %24 = load i16, i16* %piix4_smba, align 2, !dbg !6498
  %conv60 = zext i16 %24 to i32, !dbg !6498
  %add61 = add i32 0, %conv60, !dbg !6498
  call void @outb_p(i8 zeroext %call59, i32 %add61) #8, !dbg !6499
  br label %if.end62, !dbg !6499

if.end62:                                         ; preds = %if.then56, %if.end49
  %25 = load i16, i16* %piix4_smba, align 2, !dbg !6500
  %conv63 = zext i16 %25 to i32, !dbg !6500
  %add64 = add i32 0, %conv63, !dbg !6500
  %call65 = call zeroext i8 @inb_p(i32 %add64) #8, !dbg !6502
  %conv66 = zext i8 %call65 to i32, !dbg !6502
  store i32 %conv66, i32* %temp, align 4, !dbg !6503
  %cmp67 = icmp ne i32 %conv66, 0, !dbg !6504
  br i1 %cmp67, label %if.then69, label %if.end71, !dbg !6505

if.then69:                                        ; preds = %if.end62
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %piix4_adapter.addr, align 8, !dbg !6506
  %dev70 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %26, i32 0, i32 9, !dbg !6506
  %27 = load i32, i32* %temp, align 4, !dbg !6506
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev70, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), i32 %27) #9, !dbg !6506
  br label %if.end71, !dbg !6508

if.end71:                                         ; preds = %if.then69, %if.end62
  %28 = load i32, i32* %result, align 4, !dbg !6509
  store i32 %28, i32* %retval, align 4, !dbg !6510
  br label %return, !dbg !6510

return:                                           ; preds = %if.end71, %if.then13
  %29 = load i32, i32* %retval, align 4, !dbg !6511
  ret i32 %29, !dbg !6511
}

; Function Attrs: noredzone
declare dso_local void @set_primary_fwnode(%struct.device*, %struct.fwnode_handle*) #1

; Function Attrs: noredzone
declare dso_local %struct.acpi_device* @acpi_find_child_device(%struct.acpi_device*, i64, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %adev) #2 !dbg !6512 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !6515, metadata !DIExpression()), !dbg !6516
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6517
  %fwnode = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 2, !dbg !6518
  ret %struct.fwnode_handle* %fwnode, !dbg !6519
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !6520 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6523, metadata !DIExpression()), !dbg !6524
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6525, metadata !DIExpression()), !dbg !6526
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6527
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6528
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !6529
  store i8* %0, i8** %driver_data, align 8, !dbg !6530
  ret void, !dbg !6531
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @piix4_adap_remove(%struct.i2c_adapter* %adap) #2 !dbg !6532 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %adapdata = alloca %struct.i2c_piix4_adapdata*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !6533, metadata !DIExpression()), !dbg !6534
  call void @llvm.dbg.declare(metadata %struct.i2c_piix4_adapdata** %adapdata, metadata !6535, metadata !DIExpression()), !dbg !6536
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !6537
  %call = call i8* @i2c_get_adapdata(%struct.i2c_adapter* %0) #8, !dbg !6538
  %1 = bitcast i8* %call to %struct.i2c_piix4_adapdata*, !dbg !6538
  store %struct.i2c_piix4_adapdata* %1, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !6536
  %2 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !6539
  %smba = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %2, i32 0, i32 0, !dbg !6541
  %3 = load i16, i16* %smba, align 2, !dbg !6541
  %tobool = icmp ne i16 %3, 0, !dbg !6539
  br i1 %tobool, label %if.then, label %if.end6, !dbg !6542

if.then:                                          ; preds = %entry
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !6543
  call void @i2c_del_adapter(%struct.i2c_adapter* %4) #8, !dbg !6545
  %5 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !6546
  %port = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %5, i32 0, i32 3, !dbg !6548
  %6 = load i8, i8* %port, align 2, !dbg !6548
  %conv = zext i8 %6 to i32, !dbg !6546
  %7 = load i8, i8* @piix4_port_shift_sb800, align 1, !dbg !6549
  %conv1 = zext i8 %7 to i32, !dbg !6549
  %shl = shl i32 0, %conv1, !dbg !6550
  %cmp = icmp eq i32 %conv, %shl, !dbg !6551
  br i1 %cmp, label %if.then3, label %if.end, !dbg !6552

if.then3:                                         ; preds = %if.then
  %8 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !6553
  %smba4 = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %8, i32 0, i32 0, !dbg !6553
  %9 = load i16, i16* %smba4, align 2, !dbg !6553
  %conv5 = zext i16 %9 to i64, !dbg !6553
  call void @__release_region(%struct.resource* @ioport_resource, i64 %conv5, i64 9) #8, !dbg !6553
  br label %if.end, !dbg !6553

if.end:                                           ; preds = %if.then3, %if.then
  %10 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %adapdata, align 8, !dbg !6554
  %11 = bitcast %struct.i2c_piix4_adapdata* %10 to i8*, !dbg !6554
  call void @kfree(i8* %11) #8, !dbg !6555
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !6556
  %13 = bitcast %struct.i2c_adapter* %12 to i8*, !dbg !6556
  call void @kfree(i8* %13) #8, !dbg !6557
  br label %if.end6, !dbg !6558

if.end6:                                          ; preds = %if.end, %entry
  ret void, !dbg !6559
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4683, !4684, !4685, !4686}
!llvm.ident = !{!4687}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_force", scope: !2, file: !3, line: 105, type: !4682, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !119, globals: !4122, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/i2c/busses/i2c-piix4.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !112}
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !108, line: 10, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111}
!110 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !113, line: 305, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!114 = !{!115, !116, !117, !118}
!115 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!116 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!117 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!118 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!119 = !{!120, !7, !123, !125, !126}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !122, line: 76, flags: DIFlagFwdDecl)
!122 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !124, line: 148, baseType: !7)
!124 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !128, line: 351, size: 10880, elements: !129)
!128 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!129 = !{!130, !132, !135, !3848, !3849, !3850, !3851, !3852, !3853, !3862, !3879, !3953, !3982, !4006, !4027, !4034, !4043, !4075, !4089, !4111, !4115, !4116, !4117, !4118, !4119, !4120, !4121}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !127, file: !128, line: 352, baseType: !131, size: 32)
!131 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !127, file: !128, line: 353, baseType: !133, size: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !134, line: 424, baseType: !125)
!134 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!135 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !127, file: !128, line: 354, baseType: !136, size: 192, offset: 128)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !137, line: 17, size: 192, elements: !138)
!137 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!138 = !{!139, !141, !3847}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !136, file: !137, line: 18, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !136, file: !137, line: 19, baseType: !142, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !137, line: 110, size: 1152, elements: !145)
!145 = !{!146, !150, !154, !162, !3789, !3793, !3797, !3802, !3806, !3807, !3811, !3815, !3819, !3830, !3831, !3832, !3833, !3843}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !144, file: !137, line: 111, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!140, !140}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !144, file: !137, line: 112, baseType: !151, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !140}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !144, file: !137, line: 113, baseType: !155, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!158, !160}
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !124, line: 30, baseType: !159)
!159 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !144, file: !137, line: 114, baseType: !163, size: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!166, !160, !168}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !171)
!171 = !{!172, !3331, !3333, !3336, !3337, !3388, !3479, !3480, !3481, !3482, !3483, !3492, !3597, !3610, !3716, !3717, !3721, !3723, !3724, !3725, !3729, !3735, !3736, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3777, !3778, !3779, !3782, !3785, !3786, !3787, !3788}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !170, file: !73, line: 462, baseType: !173, size: 512)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !174, line: 64, size: 512, elements: !175)
!174 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!175 = !{!176, !180, !186, !188, !248, !3182, !3321, !3326, !3327, !3328, !3329, !3330}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !173, file: !174, line: 65, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !173, file: !174, line: 66, baseType: !181, size: 128, offset: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !124, line: 178, size: 128, elements: !182)
!182 = !{!183, !185}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !181, file: !124, line: 179, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !181, file: !124, line: 179, baseType: !184, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !173, file: !174, line: 67, baseType: !187, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !173, file: !174, line: 68, baseType: !189, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !174, line: 192, size: 704, elements: !191)
!191 = !{!192, !193, !209, !210}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !190, file: !174, line: 193, baseType: !181, size: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !190, file: !174, line: 194, baseType: !194, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !195, line: 83, baseType: !196)
!195 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !195, line: 71, elements: !197)
!197 = !{!198}
!198 = !DIDerivedType(tag: DW_TAG_member, scope: !196, file: !195, line: 72, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !196, file: !195, line: 72, elements: !200)
!200 = !{!201}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !199, file: !195, line: 73, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !195, line: 20, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !202, file: !195, line: 21, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !206, line: 25, baseType: !207)
!206 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !206, line: 25, elements: !208)
!208 = !{}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !190, file: !174, line: 195, baseType: !173, size: 512, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !190, file: !174, line: 196, baseType: !211, size: 64, offset: 640)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !174, line: 156, size: 192, elements: !214)
!214 = !{!215, !220, !225}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !213, file: !174, line: 157, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!131, !189, !187}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !174, line: 158, baseType: !221, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!177, !189, !187}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !213, file: !174, line: 159, baseType: !226, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!131, !189, !187, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !174, line: 148, size: 20736, elements: !232)
!232 = !{!233, !238, !242, !243, !247}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !231, file: !174, line: 149, baseType: !234, size: 192)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 192, elements: !236)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!236 = !{!237}
!237 = !DISubrange(count: 3)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !231, file: !174, line: 150, baseType: !239, size: 4096, offset: 192)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 4096, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !231, file: !174, line: 151, baseType: !131, size: 32, offset: 4288)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !231, file: !174, line: 152, baseType: !244, size: 16384, offset: 4320)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 16384, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 2048)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !231, file: !174, line: 153, baseType: !131, size: 32, offset: 20704)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !173, file: !174, line: 69, baseType: !249, size: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !174, line: 138, size: 448, elements: !251)
!251 = !{!252, !256, !286, !288, !3144, !3172, !3176}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !250, file: !174, line: 139, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !187}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !250, file: !174, line: 140, baseType: !257, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !260, line: 230, size: 128, elements: !261)
!260 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!261 = !{!262, !278}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !259, file: !260, line: 231, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!266, !187, !271, !235}
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !124, line: 60, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !268, line: 73, baseType: !269)
!268 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !268, line: 15, baseType: !270)
!270 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !260, line: 30, size: 128, elements: !273)
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !272, file: !260, line: 31, baseType: !177, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !272, file: !260, line: 32, baseType: !276, size: 16, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !124, line: 19, baseType: !277)
!277 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !259, file: !260, line: 232, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!266, !187, !271, !177, !282}
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !124, line: 55, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !268, line: 72, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !268, line: 16, baseType: !285)
!285 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !250, file: !174, line: 141, baseType: !287, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !250, file: !174, line: 142, baseType: !289, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !260, line: 84, size: 320, elements: !293)
!293 = !{!294, !295, !299, !3141, !3142}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !292, file: !260, line: 85, baseType: !177, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !292, file: !260, line: 86, baseType: !296, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!276, !187, !271, !131}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !292, file: !260, line: 88, baseType: !300, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!276, !187, !303, !131}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !260, line: 168, size: 448, elements: !305)
!305 = !{!306, !307, !308, !309, !3136, !3137}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !304, file: !260, line: 169, baseType: !272, size: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !304, file: !260, line: 170, baseType: !282, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !304, file: !260, line: 171, baseType: !125, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !304, file: !260, line: 172, baseType: !310, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!266, !313, !187, !303, !235, !490, !282}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !315)
!315 = !{!316, !334, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3119, !3120, !3129, !3130, !3131, !3132, !3133, !3134, !3135}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !314, file: !44, line: 920, baseType: !317, size: 128)
!317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !44, line: 917, size: 128, elements: !318)
!318 = !{!319, !325}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !317, file: !44, line: 918, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !321, line: 58, size: 64, elements: !322)
!321 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !321, line: 59, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !317, file: !44, line: 919, baseType: !326, size: 128, align: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !124, line: 216, size: 128, align: 64, elements: !327)
!327 = !{!328, !330}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !124, line: 217, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !326, file: !124, line: 218, baseType: !331, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !329}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !314, file: !44, line: 921, baseType: !335, size: 128, offset: 128)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !336, line: 8, size: 128, elements: !337)
!336 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!337 = !{!338, !342}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !335, file: !336, line: 9, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !341, line: 18, flags: DIFlagFwdDecl)
!341 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !335, file: !336, line: 10, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !341, line: 89, size: 1536, elements: !345)
!345 = !{!346, !347, !357, !365, !366, !389, !3069, !3071, !3083, !3084, !3085, !3086, !3087, !3093, !3094, !3095}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !344, file: !341, line: 91, baseType: !7, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !344, file: !341, line: 92, baseType: !348, size: 32, offset: 32)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !349, line: 277, baseType: !350)
!349 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !349, line: 277, size: 32, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !350, file: !349, line: 277, baseType: !353, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !349, line: 70, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !349, line: 65, size: 32, elements: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !354, file: !349, line: 66, baseType: !7, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !344, file: !341, line: 93, baseType: !358, size: 128, offset: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !359, line: 38, size: 128, elements: !360)
!359 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!360 = !{!361, !363}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !359, line: 39, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !358, file: !359, line: 39, baseType: !364, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !344, file: !341, line: 94, baseType: !343, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !344, file: !341, line: 95, baseType: !367, size: 128, offset: 256)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !341, line: 47, size: 128, elements: !368)
!368 = !{!369, !385}
!369 = !DIDerivedType(tag: DW_TAG_member, scope: !367, file: !341, line: 48, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !367, file: !341, line: 48, size: 64, elements: !371)
!371 = !{!372, !381}
!372 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !341, line: 49, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !370, file: !341, line: 49, size: 64, elements: !374)
!374 = !{!375, !380}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !373, file: !341, line: 50, baseType: !376, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !377, line: 21, baseType: !378)
!377 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !379, line: 27, baseType: !7)
!379 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!380 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !373, file: !341, line: 50, baseType: !376, size: 32, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !370, file: !341, line: 52, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !377, line: 23, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !379, line: 31, baseType: !384)
!384 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !367, file: !341, line: 54, baseType: !386, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!388 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !344, file: !341, line: 96, baseType: !390, size: 64, offset: 384)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !392)
!392 = !{!393, !394, !395, !403, !410, !411, !557, !2780, !2781, !2782, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !3045, !3053, !3054, !3055, !3065, !3066, !3067, !3068}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !391, file: !44, line: 611, baseType: !276, size: 16)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !391, file: !44, line: 612, baseType: !277, size: 16, offset: 16)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !391, file: !44, line: 613, baseType: !396, size: 32, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !397, line: 23, baseType: !398)
!397 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 21, size: 32, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !398, file: !397, line: 22, baseType: !401, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !124, line: 32, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !268, line: 49, baseType: !7)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !391, file: !44, line: 614, baseType: !404, size: 32, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !397, line: 28, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 26, size: 32, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !405, file: !397, line: 27, baseType: !408, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !124, line: 33, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !268, line: 50, baseType: !7)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !391, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !391, file: !44, line: 622, baseType: !412, size: 64, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !415)
!415 = !{!416, !420, !433, !437, !443, !447, !451, !455, !459, !463, !467, !468, !474, !478, !504, !533, !537, !543, !548, !552, !553}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !414, file: !44, line: 1865, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!343, !390, !343, !7}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !414, file: !44, line: 1866, baseType: !421, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!177, !343, !390, !424}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !426, line: 10, size: 128, elements: !427)
!426 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!427 = !{!428, !432}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !425, file: !426, line: 11, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !125}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !425, file: !426, line: 12, baseType: !125, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !414, file: !44, line: 1867, baseType: !434, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!131, !390, !131}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !414, file: !44, line: 1868, baseType: !438, size: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!441, !390, !131}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !414, file: !44, line: 1870, baseType: !444, size: 64, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!131, !343, !235, !131}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !414, file: !44, line: 1872, baseType: !448, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!131, !390, !343, !276, !158}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !414, file: !44, line: 1873, baseType: !452, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!131, !343, !390, !343}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !414, file: !44, line: 1874, baseType: !456, size: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!131, !390, !343}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !414, file: !44, line: 1875, baseType: !460, size: 64, offset: 512)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!131, !390, !343, !177}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !414, file: !44, line: 1876, baseType: !464, size: 64, offset: 576)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!131, !390, !343, !276}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !414, file: !44, line: 1877, baseType: !456, size: 64, offset: 640)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !414, file: !44, line: 1878, baseType: !469, size: 64, offset: 704)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!131, !390, !343, !276, !472}
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !124, line: 16, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !124, line: 13, baseType: !376)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !414, file: !44, line: 1879, baseType: !475, size: 64, offset: 768)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!131, !390, !343, !390, !343, !7}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !414, file: !44, line: 1881, baseType: !479, size: 64, offset: 832)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!131, !343, !482}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !484)
!484 = !{!485, !486, !487, !488, !489, !493, !501, !502, !503}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !483, file: !44, line: 220, baseType: !7, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !483, file: !44, line: 221, baseType: !276, size: 16, offset: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !483, file: !44, line: 222, baseType: !396, size: 32, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !483, file: !44, line: 223, baseType: !404, size: 32, offset: 96)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !483, file: !44, line: 224, baseType: !490, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !124, line: 46, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !268, line: 88, baseType: !492)
!492 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !483, file: !44, line: 225, baseType: !494, size: 128, offset: 192)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !495, line: 13, size: 128, elements: !496)
!495 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!496 = !{!497, !500}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !494, file: !495, line: 14, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !495, line: 8, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !379, line: 30, baseType: !492)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !494, file: !495, line: 15, baseType: !270, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !483, file: !44, line: 226, baseType: !494, size: 128, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !483, file: !44, line: 227, baseType: !494, size: 128, offset: 448)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !483, file: !44, line: 234, baseType: !313, size: 64, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !414, file: !44, line: 1882, baseType: !505, size: 64, offset: 896)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!131, !508, !510, !376, !7}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !512, line: 22, size: 1152, elements: !513)
!512 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!513 = !{!514, !515, !516, !517, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !511, file: !512, line: 23, baseType: !376, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !511, file: !512, line: 24, baseType: !276, size: 16, offset: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !511, file: !512, line: 25, baseType: !7, size: 32, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !511, file: !512, line: 26, baseType: !518, size: 32, offset: 96)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !124, line: 104, baseType: !376)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !511, file: !512, line: 27, baseType: !382, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !511, file: !512, line: 28, baseType: !382, size: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !511, file: !512, line: 37, baseType: !382, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !511, file: !512, line: 38, baseType: !472, size: 32, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !511, file: !512, line: 39, baseType: !472, size: 32, offset: 352)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !511, file: !512, line: 40, baseType: !396, size: 32, offset: 384)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !511, file: !512, line: 41, baseType: !404, size: 32, offset: 416)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !511, file: !512, line: 42, baseType: !490, size: 64, offset: 448)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !511, file: !512, line: 43, baseType: !494, size: 128, offset: 512)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !511, file: !512, line: 44, baseType: !494, size: 128, offset: 640)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !511, file: !512, line: 45, baseType: !494, size: 128, offset: 768)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !511, file: !512, line: 46, baseType: !494, size: 128, offset: 896)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !511, file: !512, line: 47, baseType: !382, size: 64, offset: 1024)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !511, file: !512, line: 48, baseType: !382, size: 64, offset: 1088)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !414, file: !44, line: 1883, baseType: !534, size: 64, offset: 960)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!266, !343, !235, !282}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !414, file: !44, line: 1884, baseType: !538, size: 64, offset: 1024)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!131, !390, !541, !382, !382}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !414, file: !44, line: 1886, baseType: !544, size: 64, offset: 1088)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!131, !390, !547, !131}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !414, file: !44, line: 1887, baseType: !549, size: 64, offset: 1152)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!131, !390, !343, !313, !7, !276}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !414, file: !44, line: 1890, baseType: !464, size: 64, offset: 1216)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !414, file: !44, line: 1891, baseType: !554, size: 64, offset: 1280)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!131, !390, !441, !131}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !391, file: !44, line: 623, baseType: !558, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !560)
!560 = !{!561, !562, !563, !564, !565, !566, !613, !2387, !2469, !2552, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2568, !2572, !2573, !2576, !2577, !2580, !2581, !2582, !2623, !2650, !2651, !2652, !2653, !2654, !2655, !2658, !2660, !2667, !2668, !2670, !2671, !2672, !2731, !2732, !2747, !2748, !2749, !2750, !2751, !2754, !2755, !2756, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !559, file: !44, line: 1417, baseType: !181, size: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !559, file: !44, line: 1418, baseType: !472, size: 32, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !559, file: !44, line: 1419, baseType: !388, size: 8, offset: 160)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !559, file: !44, line: 1420, baseType: !285, size: 64, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !559, file: !44, line: 1421, baseType: !490, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !559, file: !44, line: 1422, baseType: !567, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !569)
!569 = !{!570, !571, !572, !579, !583, !587, !591, !592, !593, !603, !606, !607, !608, !610, !611, !612}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !568, file: !44, line: 2229, baseType: !177, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !568, file: !44, line: 2230, baseType: !131, size: 32, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !568, file: !44, line: 2238, baseType: !573, size: 64, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!131, !576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !578, line: 28, flags: DIFlagFwdDecl)
!578 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!579 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !568, file: !44, line: 2239, baseType: !580, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !582)
!582 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !568, file: !44, line: 2240, baseType: !584, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!343, !567, !131, !177, !125}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !568, file: !44, line: 2242, baseType: !588, size: 64, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !558}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !568, file: !44, line: 2243, baseType: !120, size: 64, offset: 384)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !568, file: !44, line: 2244, baseType: !567, size: 64, offset: 448)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !568, file: !44, line: 2245, baseType: !594, size: 64, offset: 512)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !124, line: 182, size: 64, elements: !595)
!595 = !{!596}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !594, file: !124, line: 183, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !124, line: 186, size: 128, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !598, file: !124, line: 187, baseType: !597, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !598, file: !124, line: 187, baseType: !602, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !568, file: !44, line: 2247, baseType: !604, offset: 576)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !605, line: 187, elements: !208)
!605 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !568, file: !44, line: 2248, baseType: !604, offset: 576)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !568, file: !44, line: 2249, baseType: !604, offset: 576)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !568, file: !44, line: 2250, baseType: !609, offset: 576)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, elements: !236)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !568, file: !44, line: 2252, baseType: !604, offset: 576)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !568, file: !44, line: 2253, baseType: !604, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !568, file: !44, line: 2254, baseType: !604, offset: 576)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !559, file: !44, line: 1423, baseType: !614, size: 64, offset: 384)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !617)
!617 = !{!618, !622, !626, !627, !631, !637, !641, !642, !643, !647, !651, !652, !653, !654, !660, !665, !666, !673, !674, !675, !676, !2371, !2386}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !616, file: !44, line: 1936, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!390, !558}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !616, file: !44, line: 1937, baseType: !623, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !390}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !616, file: !44, line: 1938, baseType: !623, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !616, file: !44, line: 1940, baseType: !628, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !390, !131}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !616, file: !44, line: 1941, baseType: !632, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!131, !390, !635}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !616, file: !44, line: 1942, baseType: !638, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!131, !390}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !616, file: !44, line: 1943, baseType: !623, size: 64, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !616, file: !44, line: 1944, baseType: !588, size: 64, offset: 448)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !616, file: !44, line: 1945, baseType: !644, size: 64, offset: 512)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!131, !558, !131}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !616, file: !44, line: 1946, baseType: !648, size: 64, offset: 576)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!131, !558}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !616, file: !44, line: 1947, baseType: !648, size: 64, offset: 640)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !616, file: !44, line: 1948, baseType: !648, size: 64, offset: 704)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !616, file: !44, line: 1949, baseType: !648, size: 64, offset: 768)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !616, file: !44, line: 1950, baseType: !655, size: 64, offset: 832)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!131, !343, !658}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !616, file: !44, line: 1951, baseType: !661, size: 64, offset: 896)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!131, !558, !664, !235}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !616, file: !44, line: 1952, baseType: !588, size: 64, offset: 960)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !616, file: !44, line: 1954, baseType: !667, size: 64, offset: 1024)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!131, !670, !343}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !672, line: 539, flags: DIFlagFwdDecl)
!672 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!673 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !616, file: !44, line: 1955, baseType: !667, size: 64, offset: 1088)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !616, file: !44, line: 1956, baseType: !667, size: 64, offset: 1152)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !616, file: !44, line: 1957, baseType: !667, size: 64, offset: 1216)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !616, file: !44, line: 1963, baseType: !677, size: 64, offset: 1280)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!131, !558, !680, !123}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !682, line: 68, size: 512, align: 128, elements: !683)
!682 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!683 = !{!684, !685, !2363, !2370}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !681, file: !682, line: 69, baseType: !285, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, scope: !681, file: !682, line: 77, baseType: !686, size: 320, offset: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !681, file: !682, line: 77, size: 320, elements: !687)
!687 = !{!688, !875, !880, !908, !916, !922, !2294, !2362}
!688 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !682, line: 78, baseType: !689, size: 320)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !686, file: !682, line: 78, size: 320, elements: !690)
!690 = !{!691, !692, !873, !874}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !689, file: !682, line: 84, baseType: !181, size: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !689, file: !682, line: 86, baseType: !693, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !695)
!695 = !{!696, !697, !704, !705, !710, !725, !741, !742, !743, !744, !866, !867, !870, !871, !872}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !694, file: !44, line: 452, baseType: !390, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !694, file: !44, line: 453, baseType: !698, size: 128, offset: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !699, line: 292, size: 128, elements: !700)
!699 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!700 = !{!701, !702, !703}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !698, file: !699, line: 293, baseType: !194)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !698, file: !699, line: 295, baseType: !123, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !698, file: !699, line: 296, baseType: !125, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !694, file: !44, line: 454, baseType: !123, size: 32, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !694, file: !44, line: 455, baseType: !706, size: 32, offset: 224)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !124, line: 168, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 166, size: 32, elements: !708)
!708 = !{!709}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !707, file: !124, line: 167, baseType: !131, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !694, file: !44, line: 460, baseType: !711, size: 128, offset: 256)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !712, line: 125, size: 128, elements: !713)
!712 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!713 = !{!714, !724}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !711, file: !712, line: 126, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !712, line: 31, size: 64, elements: !716)
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !715, file: !712, line: 32, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !712, line: 24, size: 192, align: 64, elements: !720)
!720 = !{!721, !722, !723}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !719, file: !712, line: 25, baseType: !285, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !719, file: !712, line: 26, baseType: !718, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !719, file: !712, line: 27, baseType: !718, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !711, file: !712, line: 127, baseType: !718, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !694, file: !44, line: 461, baseType: !726, size: 256, offset: 384)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !727, line: 35, size: 256, elements: !728)
!727 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!728 = !{!729, !737, !738, !740}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !726, file: !727, line: 36, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !731, line: 13, baseType: !732)
!731 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !124, line: 175, baseType: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 173, size: 64, elements: !734)
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !733, file: !124, line: 174, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !377, line: 22, baseType: !499)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !726, file: !727, line: 42, baseType: !730, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !726, file: !727, line: 46, baseType: !739, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !195, line: 29, baseType: !202)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !726, file: !727, line: 47, baseType: !181, size: 128, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !694, file: !44, line: 462, baseType: !285, size: 64, offset: 640)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !694, file: !44, line: 463, baseType: !285, size: 64, offset: 704)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !694, file: !44, line: 464, baseType: !285, size: 64, offset: 768)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !694, file: !44, line: 465, baseType: !745, size: 64, offset: 832)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !747)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !748)
!748 = !{!749, !753, !757, !761, !765, !769, !775, !781, !785, !790, !794, !798, !802, !830, !834, !840, !841, !842, !846, !851, !855, !862}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !747, file: !44, line: 368, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!131, !680, !635}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !747, file: !44, line: 369, baseType: !754, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!131, !313, !680}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !747, file: !44, line: 372, baseType: !758, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!131, !693, !635}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !747, file: !44, line: 375, baseType: !762, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!131, !680}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !747, file: !44, line: 381, baseType: !766, size: 64, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!131, !313, !693, !184, !7}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !747, file: !44, line: 383, baseType: !770, size: 64, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !773}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !747, file: !44, line: 385, baseType: !776, size: 64, offset: 384)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!131, !313, !693, !490, !7, !7, !779, !780}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !747, file: !44, line: 388, baseType: !782, size: 64, offset: 448)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!131, !313, !693, !490, !7, !7, !680, !125}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !747, file: !44, line: 393, baseType: !786, size: 64, offset: 512)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!789, !693, !789}
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !124, line: 125, baseType: !382)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !747, file: !44, line: 394, baseType: !791, size: 64, offset: 576)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !680, !7, !7}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !747, file: !44, line: 395, baseType: !795, size: 64, offset: 640)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!131, !680, !123}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !747, file: !44, line: 396, baseType: !799, size: 64, offset: 704)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !680}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !747, file: !44, line: 397, baseType: !803, size: 64, offset: 768)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!266, !806, !828}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !808)
!808 = !{!809, !810, !811, !815, !816, !817, !820, !821}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !807, file: !44, line: 321, baseType: !313, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !807, file: !44, line: 326, baseType: !490, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !807, file: !44, line: 327, baseType: !812, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{null, !806, !270, !270}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !807, file: !44, line: 328, baseType: !125, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !807, file: !44, line: 329, baseType: !131, size: 32, offset: 256)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !807, file: !44, line: 330, baseType: !818, size: 16, offset: 288)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !377, line: 19, baseType: !819)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !379, line: 24, baseType: !277)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !807, file: !44, line: 331, baseType: !818, size: 16, offset: 304)
!821 = !DIDerivedType(tag: DW_TAG_member, scope: !807, file: !44, line: 332, baseType: !822, size: 64, offset: 320)
!822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !807, file: !44, line: 332, size: 64, elements: !823)
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !822, file: !44, line: 333, baseType: !7, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !822, file: !44, line: 334, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !747, file: !44, line: 402, baseType: !831, size: 64, offset: 832)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!131, !693, !680, !680, !5}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !747, file: !44, line: 404, baseType: !835, size: 64, offset: 896)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!158, !680, !838}
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !839, line: 305, baseType: !7)
!839 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!840 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !747, file: !44, line: 405, baseType: !799, size: 64, offset: 960)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !747, file: !44, line: 406, baseType: !762, size: 64, offset: 1024)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !747, file: !44, line: 407, baseType: !843, size: 64, offset: 1088)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!131, !680, !285, !285}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !747, file: !44, line: 409, baseType: !847, size: 64, offset: 1152)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !680, !850, !850}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !747, file: !44, line: 410, baseType: !852, size: 64, offset: 1216)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!131, !693, !680}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !747, file: !44, line: 413, baseType: !856, size: 64, offset: 1280)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!131, !859, !313, !861}
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !747, file: !44, line: 415, baseType: !863, size: 64, offset: 1344)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !313}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !44, line: 466, baseType: !285, size: 64, offset: 896)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !694, file: !44, line: 467, baseType: !868, size: 32, offset: 960)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !869, line: 8, baseType: !376)
!869 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!870 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !694, file: !44, line: 468, baseType: !194, offset: 992)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !694, file: !44, line: 469, baseType: !181, size: 128, offset: 1024)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !694, file: !44, line: 470, baseType: !125, size: 64, offset: 1152)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !689, file: !682, line: 87, baseType: !285, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !689, file: !682, line: 94, baseType: !285, size: 64, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !682, line: 96, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !686, file: !682, line: 96, size: 64, elements: !877)
!877 = !{!878}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !876, file: !682, line: 101, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !124, line: 143, baseType: !382)
!880 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !682, line: 103, baseType: !881, size: 320)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !686, file: !682, line: 103, size: 320, elements: !882)
!882 = !{!883, !893, !896, !897}
!883 = !DIDerivedType(tag: DW_TAG_member, scope: !881, file: !682, line: 104, baseType: !884, size: 128)
!884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !881, file: !682, line: 104, size: 128, elements: !885)
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !884, file: !682, line: 105, baseType: !181, size: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !884, file: !682, line: 106, baseType: !888, size: 128)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !884, file: !682, line: 106, size: 128, elements: !889)
!889 = !{!890, !891, !892}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !888, file: !682, line: 107, baseType: !680, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !888, file: !682, line: 109, baseType: !131, size: 32, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !888, file: !682, line: 110, baseType: !131, size: 32, offset: 96)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !881, file: !682, line: 117, baseType: !894, size: 64, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !682, line: 117, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !881, file: !682, line: 119, baseType: !125, size: 64, offset: 192)
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !881, file: !682, line: 120, baseType: !898, size: 64, offset: 256)
!898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !881, file: !682, line: 120, size: 64, elements: !899)
!899 = !{!900, !901, !902}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !898, file: !682, line: 121, baseType: !125, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !898, file: !682, line: 122, baseType: !285, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !682, line: 123, baseType: !903, size: 32)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !898, file: !682, line: 123, size: 32, elements: !904)
!904 = !{!905, !906, !907}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !903, file: !682, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !903, file: !682, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !903, file: !682, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!908 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !682, line: 130, baseType: !909, size: 192)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !686, file: !682, line: 130, size: 192, elements: !910)
!910 = !{!911, !912, !913, !914, !915}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !909, file: !682, line: 131, baseType: !285, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !909, file: !682, line: 134, baseType: !388, size: 8, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !909, file: !682, line: 135, baseType: !388, size: 8, offset: 72)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !909, file: !682, line: 136, baseType: !706, size: 32, offset: 96)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !909, file: !682, line: 137, baseType: !7, size: 32, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !682, line: 139, baseType: !917, size: 256)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !686, file: !682, line: 139, size: 256, elements: !918)
!918 = !{!919, !920, !921}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !917, file: !682, line: 140, baseType: !285, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !917, file: !682, line: 141, baseType: !706, size: 32, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !917, file: !682, line: 143, baseType: !181, size: 128, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !682, line: 145, baseType: !923, size: 256)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !686, file: !682, line: 145, size: 256, elements: !924)
!924 = !{!925, !926, !928, !929, !2293}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !923, file: !682, line: 146, baseType: !285, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !923, file: !682, line: 147, baseType: !927, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !672, line: 509, baseType: !680)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !923, file: !682, line: 148, baseType: !285, size: 64, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, scope: !923, file: !682, line: 149, baseType: !930, size: 64, offset: 192)
!930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !923, file: !682, line: 149, size: 64, elements: !931)
!931 = !{!932, !2292}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !930, file: !682, line: 150, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !682, line: 388, size: 7296, elements: !935)
!935 = !{!936, !2288}
!936 = !DIDerivedType(tag: DW_TAG_member, scope: !934, file: !682, line: 389, baseType: !937, size: 7296)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !934, file: !682, line: 389, size: 7296, elements: !938)
!938 = !{!939, !1057, !1058, !1059, !1063, !1064, !1065, !1066, !1067, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1108, !1116, !1119, !1165, !1166, !2272, !2273, !2276, !2277, !2278, !2281, !2282, !2283, !2286, !2287}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !937, file: !682, line: 390, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !682, line: 305, size: 1472, elements: !942)
!942 = !{!943, !944, !945, !946, !947, !948, !949, !950, !957, !958, !963, !964, !967, !1051, !1052, !1053, !1054, !1055}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !941, file: !682, line: 308, baseType: !285, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !941, file: !682, line: 309, baseType: !285, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !941, file: !682, line: 313, baseType: !940, size: 64, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !941, file: !682, line: 313, baseType: !940, size: 64, offset: 192)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !941, file: !682, line: 315, baseType: !719, size: 192, align: 64, offset: 256)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !941, file: !682, line: 323, baseType: !285, size: 64, offset: 448)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !941, file: !682, line: 327, baseType: !933, size: 64, offset: 512)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !941, file: !682, line: 333, baseType: !951, size: 64, offset: 576)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !672, line: 284, baseType: !952)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !672, line: 284, size: 64, elements: !953)
!953 = !{!954}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !952, file: !672, line: 284, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !956, line: 19, baseType: !285)
!956 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!957 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !941, file: !682, line: 334, baseType: !285, size: 64, offset: 640)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !941, file: !682, line: 343, baseType: !959, size: 256, offset: 704)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !941, file: !682, line: 340, size: 256, elements: !960)
!960 = !{!961, !962}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !959, file: !682, line: 341, baseType: !719, size: 192, align: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !959, file: !682, line: 342, baseType: !285, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !941, file: !682, line: 351, baseType: !181, size: 128, offset: 960)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !941, file: !682, line: 353, baseType: !965, size: 64, offset: 1088)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !682, line: 353, flags: DIFlagFwdDecl)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !941, file: !682, line: 356, baseType: !968, size: 64, offset: 1152)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !970)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !971)
!971 = !{!972, !976, !977, !981, !985, !1025, !1029, !1033, !1037, !1038, !1039, !1043, !1047}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !970, file: !14, line: 558, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{null, !940}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !970, file: !14, line: 559, baseType: !973, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !970, file: !14, line: 560, baseType: !978, size: 64, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!131, !940, !285}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !970, file: !14, line: 561, baseType: !982, size: 64, offset: 192)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!131, !940}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !970, file: !14, line: 562, baseType: !986, size: 64, offset: 256)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!989, !990}
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !682, line: 682, baseType: !7)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !992)
!992 = !{!993, !994, !995, !996, !997, !998, !1005, !1012, !1018, !1019, !1020, !1022, !1024}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !991, file: !14, line: 509, baseType: !940, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !991, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !991, file: !14, line: 511, baseType: !123, size: 32, offset: 96)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !991, file: !14, line: 512, baseType: !285, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !991, file: !14, line: 513, baseType: !285, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !991, file: !14, line: 514, baseType: !999, size: 64, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !672, line: 385, baseType: !1001)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !672, line: 385, size: 64, elements: !1002)
!1002 = !{!1003}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1001, file: !672, line: 385, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !956, line: 15, baseType: !285)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !991, file: !14, line: 516, baseType: !1006, size: 64, offset: 320)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !672, line: 359, baseType: !1008)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !672, line: 359, size: 64, elements: !1009)
!1009 = !{!1010}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1008, file: !672, line: 359, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !956, line: 16, baseType: !285)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !991, file: !14, line: 519, baseType: !1013, size: 64, offset: 384)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !956, line: 21, baseType: !1014)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !956, line: 21, size: 64, elements: !1015)
!1015 = !{!1016}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1014, file: !956, line: 21, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !956, line: 14, baseType: !285)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !991, file: !14, line: 521, baseType: !680, size: 64, offset: 448)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !991, file: !14, line: 522, baseType: !680, size: 64, offset: 512)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !991, file: !14, line: 528, baseType: !1021, size: 64, offset: 576)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !991, file: !14, line: 532, baseType: !1023, size: 64, offset: 640)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !991, file: !14, line: 536, baseType: !927, size: 64, offset: 704)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !970, file: !14, line: 563, baseType: !1026, size: 64, offset: 320)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!989, !990, !13}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !970, file: !14, line: 565, baseType: !1030, size: 64, offset: 384)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !990, !285, !285}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !970, file: !14, line: 567, baseType: !1034, size: 64, offset: 448)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!285, !940}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !970, file: !14, line: 571, baseType: !986, size: 64, offset: 512)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !970, file: !14, line: 574, baseType: !986, size: 64, offset: 576)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !970, file: !14, line: 579, baseType: !1040, size: 64, offset: 640)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!131, !940, !285, !125, !131, !131}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !970, file: !14, line: 585, baseType: !1044, size: 64, offset: 704)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!177, !940}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !970, file: !14, line: 615, baseType: !1048, size: 64, offset: 768)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!680, !940, !285}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !941, file: !682, line: 359, baseType: !285, size: 64, offset: 1216)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !941, file: !682, line: 361, baseType: !313, size: 64, offset: 1280)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !941, file: !682, line: 362, baseType: !125, size: 64, offset: 1344)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !941, file: !682, line: 365, baseType: !730, size: 64, offset: 1408)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !941, file: !682, line: 373, baseType: !1056, offset: 1472)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !682, line: 296, elements: !208)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !937, file: !682, line: 391, baseType: !715, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !937, file: !682, line: 392, baseType: !382, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !937, file: !682, line: 394, baseType: !1060, size: 64, offset: 192)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!285, !313, !285, !285, !285, !285}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !937, file: !682, line: 398, baseType: !285, size: 64, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !937, file: !682, line: 399, baseType: !285, size: 64, offset: 320)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !937, file: !682, line: 405, baseType: !285, size: 64, offset: 384)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !937, file: !682, line: 406, baseType: !285, size: 64, offset: 448)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !937, file: !682, line: 407, baseType: !1068, size: 64, offset: 512)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !672, line: 286, baseType: !1070)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !672, line: 286, size: 64, elements: !1071)
!1071 = !{!1072}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1070, file: !672, line: 286, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !956, line: 18, baseType: !285)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !937, file: !682, line: 416, baseType: !706, size: 32, offset: 576)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !937, file: !682, line: 428, baseType: !706, size: 32, offset: 608)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !937, file: !682, line: 437, baseType: !706, size: 32, offset: 640)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !937, file: !682, line: 447, baseType: !706, size: 32, offset: 672)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !937, file: !682, line: 450, baseType: !730, size: 64, offset: 704)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !937, file: !682, line: 452, baseType: !131, size: 32, offset: 768)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !937, file: !682, line: 454, baseType: !194, offset: 800)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !937, file: !682, line: 457, baseType: !726, size: 256, offset: 832)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !937, file: !682, line: 459, baseType: !181, size: 128, offset: 1088)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !937, file: !682, line: 466, baseType: !285, size: 64, offset: 1216)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !937, file: !682, line: 467, baseType: !285, size: 64, offset: 1280)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !937, file: !682, line: 469, baseType: !285, size: 64, offset: 1344)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !937, file: !682, line: 470, baseType: !285, size: 64, offset: 1408)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !937, file: !682, line: 471, baseType: !732, size: 64, offset: 1472)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !937, file: !682, line: 472, baseType: !285, size: 64, offset: 1536)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !937, file: !682, line: 473, baseType: !285, size: 64, offset: 1600)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !937, file: !682, line: 474, baseType: !285, size: 64, offset: 1664)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !937, file: !682, line: 475, baseType: !285, size: 64, offset: 1728)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !937, file: !682, line: 477, baseType: !194, offset: 1792)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !937, file: !682, line: 478, baseType: !285, size: 64, offset: 1792)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !937, file: !682, line: 478, baseType: !285, size: 64, offset: 1856)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !937, file: !682, line: 478, baseType: !285, size: 64, offset: 1920)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !937, file: !682, line: 478, baseType: !285, size: 64, offset: 1984)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !937, file: !682, line: 479, baseType: !285, size: 64, offset: 2048)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !937, file: !682, line: 479, baseType: !285, size: 64, offset: 2112)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !937, file: !682, line: 479, baseType: !285, size: 64, offset: 2176)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !937, file: !682, line: 480, baseType: !285, size: 64, offset: 2240)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !937, file: !682, line: 480, baseType: !285, size: 64, offset: 2304)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !937, file: !682, line: 480, baseType: !285, size: 64, offset: 2368)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !937, file: !682, line: 480, baseType: !285, size: 64, offset: 2432)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !937, file: !682, line: 482, baseType: !1105, size: 2816, offset: 2496)
!1105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 2816, elements: !1106)
!1106 = !{!1107}
!1107 = !DISubrange(count: 44)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !937, file: !682, line: 488, baseType: !1109, size: 256, offset: 5312)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1110, line: 60, size: 256, elements: !1111)
!1110 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1111 = !{!1112}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1109, file: !1110, line: 61, baseType: !1113, size: 256)
!1113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 256, elements: !1114)
!1114 = !{!1115}
!1115 = !DISubrange(count: 4)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !937, file: !682, line: 490, baseType: !1117, size: 64, offset: 5568)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !682, line: 490, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !937, file: !682, line: 493, baseType: !1120, size: 896, offset: 5632)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1121, line: 53, baseType: !1122)
!1121 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1121, line: 13, size: 896, elements: !1123)
!1123 = !{!1124, !1125, !1126, !1127, !1130, !1131, !1138, !1139, !1159, !1160, !1161}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1122, file: !1121, line: 18, baseType: !382, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1122, file: !1121, line: 28, baseType: !732, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1122, file: !1121, line: 31, baseType: !726, size: 256, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1122, file: !1121, line: 32, baseType: !1128, size: 64, offset: 384)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1121, line: 32, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1122, file: !1121, line: 37, baseType: !277, size: 16, offset: 448)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1122, file: !1121, line: 40, baseType: !1132, size: 192, offset: 512)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1133, line: 53, size: 192, elements: !1134)
!1133 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1134 = !{!1135, !1136, !1137}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1132, file: !1133, line: 54, baseType: !730, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1132, file: !1133, line: 55, baseType: !194, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1132, file: !1133, line: 59, baseType: !181, size: 128, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1122, file: !1121, line: 41, baseType: !125, size: 64, offset: 704)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1122, file: !1121, line: 42, baseType: !1140, size: 64, offset: 768)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1142)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1143, line: 13, size: 896, elements: !1144)
!1143 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1144 = !{!1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1142, file: !1143, line: 14, baseType: !125, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1142, file: !1143, line: 15, baseType: !285, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1142, file: !1143, line: 17, baseType: !285, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1142, file: !1143, line: 17, baseType: !285, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1142, file: !1143, line: 19, baseType: !270, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1142, file: !1143, line: 21, baseType: !270, size: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1142, file: !1143, line: 22, baseType: !270, size: 64, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1142, file: !1143, line: 23, baseType: !270, size: 64, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1142, file: !1143, line: 24, baseType: !270, size: 64, offset: 512)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1142, file: !1143, line: 25, baseType: !270, size: 64, offset: 576)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1142, file: !1143, line: 26, baseType: !270, size: 64, offset: 640)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1142, file: !1143, line: 27, baseType: !270, size: 64, offset: 704)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1142, file: !1143, line: 28, baseType: !270, size: 64, offset: 768)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1142, file: !1143, line: 29, baseType: !270, size: 64, offset: 832)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1122, file: !1121, line: 44, baseType: !706, size: 32, offset: 832)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1122, file: !1121, line: 50, baseType: !818, size: 16, offset: 864)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1122, file: !1121, line: 51, baseType: !1162, size: 16, offset: 880)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !377, line: 18, baseType: !1163)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !379, line: 23, baseType: !1164)
!1164 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !937, file: !682, line: 495, baseType: !285, size: 64, offset: 6528)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !937, file: !682, line: 497, baseType: !1167, size: 64, offset: 6592)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !682, line: 381, size: 384, elements: !1169)
!1169 = !{!1170, !1171, !2271}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1168, file: !682, line: 382, baseType: !706, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1168, file: !682, line: 383, baseType: !1172, size: 128, offset: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !682, line: 376, size: 128, elements: !1173)
!1173 = !{!1174, !2269}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1172, file: !682, line: 377, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1177, line: 640, size: 48640, elements: !1178)
!1177 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1178 = !{!1179, !1185, !1187, !1188, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1205, !1223, !1234, !1319, !1320, !1321, !1332, !1333, !1335, !1336, !1337, !1338, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1417, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1455, !1457, !1458, !1459, !1471, !1472, !1473, !1474, !1475, !1476, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1500, !1505, !1689, !1690, !1691, !1692, !1696, !1699, !1702, !1705, !1708, !1712, !1813, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1859, !1860, !1861, !1862, !1863, !1868, !1869, !1870, !1873, !1874, !1877, !1880, !1883, !1886, !1929, !1932, !1933, !2012, !2013, !2016, !2017, !2020, !2021, !2022, !2026, !2027, !2028, !2041, !2042, !2043, !2053, !2058, !2061, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1176, file: !1177, line: 646, baseType: !1180, size: 128)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1181, line: 56, size: 128, elements: !1182)
!1181 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1182 = !{!1183, !1184}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1180, file: !1181, line: 57, baseType: !285, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1180, file: !1181, line: 58, baseType: !376, size: 32, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1176, file: !1177, line: 649, baseType: !1186, size: 64, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !270)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1176, file: !1177, line: 657, baseType: !125, size: 64, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1176, file: !1177, line: 658, baseType: !1189, size: 32, offset: 256)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1190, line: 113, baseType: !1191)
!1190 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1190, line: 111, size: 32, elements: !1192)
!1192 = !{!1193}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1191, file: !1190, line: 112, baseType: !706, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1176, file: !1177, line: 660, baseType: !7, size: 32, offset: 288)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1176, file: !1177, line: 661, baseType: !7, size: 32, offset: 320)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1176, file: !1177, line: 684, baseType: !131, size: 32, offset: 352)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1176, file: !1177, line: 686, baseType: !131, size: 32, offset: 384)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1176, file: !1177, line: 687, baseType: !131, size: 32, offset: 416)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1176, file: !1177, line: 688, baseType: !131, size: 32, offset: 448)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1176, file: !1177, line: 689, baseType: !7, size: 32, offset: 480)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1176, file: !1177, line: 691, baseType: !1202, size: 64, offset: 512)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1204)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1177, line: 691, flags: DIFlagFwdDecl)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1176, file: !1177, line: 692, baseType: !1206, size: 832, offset: 576)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1177, line: 451, size: 832, elements: !1207)
!1207 = !{!1208, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1206, file: !1177, line: 453, baseType: !1209, size: 128)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1177, line: 325, size: 128, elements: !1210)
!1210 = !{!1211, !1212}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1209, file: !1177, line: 326, baseType: !285, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1209, file: !1177, line: 327, baseType: !376, size: 32, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1206, file: !1177, line: 454, baseType: !719, size: 192, align: 64, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1206, file: !1177, line: 455, baseType: !181, size: 128, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1206, file: !1177, line: 456, baseType: !7, size: 32, offset: 448)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1206, file: !1177, line: 458, baseType: !382, size: 64, offset: 512)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1206, file: !1177, line: 459, baseType: !382, size: 64, offset: 576)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1206, file: !1177, line: 460, baseType: !382, size: 64, offset: 640)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1206, file: !1177, line: 461, baseType: !382, size: 64, offset: 704)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1206, file: !1177, line: 463, baseType: !382, size: 64, offset: 768)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1206, file: !1177, line: 465, baseType: !1222, offset: 832)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1177, line: 415, elements: !208)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1176, file: !1177, line: 693, baseType: !1224, size: 384, offset: 1408)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1177, line: 489, size: 384, elements: !1225)
!1225 = !{!1226, !1227, !1228, !1229, !1230, !1231, !1232}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1224, file: !1177, line: 490, baseType: !181, size: 128)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1224, file: !1177, line: 491, baseType: !285, size: 64, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1224, file: !1177, line: 492, baseType: !285, size: 64, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1224, file: !1177, line: 493, baseType: !7, size: 32, offset: 256)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1224, file: !1177, line: 494, baseType: !277, size: 16, offset: 288)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1224, file: !1177, line: 495, baseType: !277, size: 16, offset: 304)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1224, file: !1177, line: 497, baseType: !1233, size: 64, offset: 320)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1176, file: !1177, line: 697, baseType: !1235, size: 1792, offset: 1792)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1177, line: 507, size: 1792, elements: !1236)
!1236 = !{!1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1316, !1317}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1235, file: !1177, line: 508, baseType: !719, size: 192, align: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1235, file: !1177, line: 515, baseType: !382, size: 64, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1235, file: !1177, line: 516, baseType: !382, size: 64, offset: 256)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1235, file: !1177, line: 517, baseType: !382, size: 64, offset: 320)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1235, file: !1177, line: 518, baseType: !382, size: 64, offset: 384)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1235, file: !1177, line: 519, baseType: !382, size: 64, offset: 448)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1235, file: !1177, line: 526, baseType: !736, size: 64, offset: 512)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1235, file: !1177, line: 527, baseType: !382, size: 64, offset: 576)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1235, file: !1177, line: 528, baseType: !7, size: 32, offset: 640)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1235, file: !1177, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1235, file: !1177, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1235, file: !1177, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1235, file: !1177, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1235, file: !1177, line: 563, baseType: !1251, size: 512, offset: 704)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1252)
!1252 = !{!1253, !1261, !1262, !1267, !1310, !1313, !1314, !1315}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1251, file: !20, line: 119, baseType: !1254, size: 256)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1255, line: 9, size: 256, elements: !1256)
!1255 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1256 = !{!1257, !1258}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1254, file: !1255, line: 10, baseType: !719, size: 192, align: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1254, file: !1255, line: 11, baseType: !1259, size: 64, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1260, line: 29, baseType: !736)
!1260 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1251, file: !20, line: 120, baseType: !1259, size: 64, offset: 256)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1251, file: !20, line: 121, baseType: !1263, size: 64, offset: 320)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!19, !1266}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1251, file: !20, line: 122, baseType: !1268, size: 64, offset: 384)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1270)
!1270 = !{!1271, !1291, !1292, !1295, !1300, !1301, !1305, !1309}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1269, file: !20, line: 160, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1274)
!1274 = !{!1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1273, file: !20, line: 215, baseType: !739)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1273, file: !20, line: 216, baseType: !7, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1273, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1273, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1273, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1273, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1273, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1273, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1273, file: !20, line: 233, baseType: !1259, size: 64, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1273, file: !20, line: 234, baseType: !1266, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1273, file: !20, line: 235, baseType: !1259, size: 64, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1273, file: !20, line: 236, baseType: !1266, size: 64, offset: 320)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1273, file: !20, line: 237, baseType: !1288, size: 4096, offset: 512)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1269, size: 4096, elements: !1289)
!1289 = !{!1290}
!1290 = !DISubrange(count: 8)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1269, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1269, file: !20, line: 162, baseType: !1293, size: 32, offset: 96)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !124, line: 27, baseType: !1294)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !268, line: 96, baseType: !131)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1269, file: !20, line: 163, baseType: !1296, size: 32, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !349, line: 276, baseType: !1297)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !349, line: 276, size: 32, elements: !1298)
!1298 = !{!1299}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1297, file: !349, line: 276, baseType: !353, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1269, file: !20, line: 164, baseType: !1266, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1269, file: !20, line: 165, baseType: !1302, size: 128, offset: 256)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1255, line: 14, size: 128, elements: !1303)
!1303 = !{!1304}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1302, file: !1255, line: 15, baseType: !711, size: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1269, file: !20, line: 166, baseType: !1306, size: 64, offset: 384)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!1259}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1269, file: !20, line: 167, baseType: !1259, size: 64, offset: 448)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1251, file: !20, line: 123, baseType: !1311, size: 8, offset: 448)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !377, line: 17, baseType: !1312)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !379, line: 21, baseType: !388)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1251, file: !20, line: 124, baseType: !1311, size: 8, offset: 456)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1251, file: !20, line: 125, baseType: !1311, size: 8, offset: 464)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1251, file: !20, line: 126, baseType: !1311, size: 8, offset: 472)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1235, file: !1177, line: 572, baseType: !1251, size: 512, offset: 1216)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1235, file: !1177, line: 580, baseType: !1318, size: 64, offset: 1728)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1176, file: !1177, line: 721, baseType: !7, size: 32, offset: 3584)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1176, file: !1177, line: 722, baseType: !131, size: 32, offset: 3616)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1176, file: !1177, line: 723, baseType: !1322, size: 64, offset: 3648)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1324)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1325, line: 17, baseType: !1326)
!1325 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1325, line: 17, size: 64, elements: !1327)
!1327 = !{!1328}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1326, file: !1325, line: 17, baseType: !1329, size: 64)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 64, elements: !1330)
!1330 = !{!1331}
!1331 = !DISubrange(count: 1)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1176, file: !1177, line: 724, baseType: !1324, size: 64, offset: 3712)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1176, file: !1177, line: 749, baseType: !1334, offset: 3776)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1177, line: 290, elements: !208)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1176, file: !1177, line: 751, baseType: !181, size: 128, offset: 3776)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1176, file: !1177, line: 757, baseType: !933, size: 64, offset: 3904)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1176, file: !1177, line: 758, baseType: !933, size: 64, offset: 3968)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1176, file: !1177, line: 761, baseType: !1339, size: 320, offset: 4032)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1110, line: 34, size: 320, elements: !1340)
!1340 = !{!1341, !1342}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1339, file: !1110, line: 35, baseType: !382, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1339, file: !1110, line: 36, baseType: !1343, size: 256, offset: 64)
!1343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !940, size: 256, elements: !1114)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1176, file: !1177, line: 766, baseType: !131, size: 32, offset: 4352)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1176, file: !1177, line: 767, baseType: !131, size: 32, offset: 4384)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1176, file: !1177, line: 768, baseType: !131, size: 32, offset: 4416)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1176, file: !1177, line: 770, baseType: !131, size: 32, offset: 4448)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1176, file: !1177, line: 772, baseType: !285, size: 64, offset: 4480)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1176, file: !1177, line: 775, baseType: !7, size: 32, offset: 4544)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1176, file: !1177, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1176, file: !1177, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1176, file: !1177, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1176, file: !1177, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1176, file: !1177, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1176, file: !1177, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1176, file: !1177, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1176, file: !1177, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1176, file: !1177, line: 831, baseType: !285, size: 64, offset: 4672)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1176, file: !1177, line: 833, baseType: !1360, size: 384, offset: 4736)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1361)
!1361 = !{!1362, !1367}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1360, file: !25, line: 26, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!270, !1366}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, scope: !1360, file: !25, line: 27, baseType: !1368, size: 320, offset: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1360, file: !25, line: 27, size: 320, elements: !1369)
!1369 = !{!1370, !1380, !1407}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1368, file: !25, line: 36, baseType: !1371, size: 320)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1368, file: !25, line: 29, size: 320, elements: !1372)
!1372 = !{!1373, !1375, !1376, !1377, !1378, !1379}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1371, file: !25, line: 30, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1371, file: !25, line: 31, baseType: !376, size: 32, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1371, file: !25, line: 32, baseType: !376, size: 32, offset: 96)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1371, file: !25, line: 33, baseType: !376, size: 32, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1371, file: !25, line: 34, baseType: !382, size: 64, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1371, file: !25, line: 35, baseType: !1374, size: 64, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1368, file: !25, line: 46, baseType: !1381, size: 192)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1368, file: !25, line: 38, size: 192, elements: !1382)
!1382 = !{!1383, !1384, !1385, !1406}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1381, file: !25, line: 39, baseType: !1293, size: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1381, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !25, line: 41, baseType: !1386, size: 64, offset: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1381, file: !25, line: 41, size: 64, elements: !1387)
!1387 = !{!1388, !1396}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1386, file: !25, line: 42, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1391, line: 7, size: 128, elements: !1392)
!1391 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1392 = !{!1393, !1395}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1390, file: !1391, line: 8, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !268, line: 93, baseType: !492)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1390, file: !1391, line: 9, baseType: !492, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1386, file: !25, line: 43, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1399, line: 7, size: 64, elements: !1400)
!1399 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1400 = !{!1401, !1405}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1398, file: !1399, line: 8, baseType: !1402, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1399, line: 5, baseType: !1403)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !377, line: 20, baseType: !1404)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !379, line: 26, baseType: !131)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1398, file: !1399, line: 9, baseType: !1403, size: 32, offset: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1381, file: !25, line: 45, baseType: !382, size: 64, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1368, file: !25, line: 54, baseType: !1408, size: 256)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1368, file: !25, line: 48, size: 256, elements: !1409)
!1409 = !{!1410, !1413, !1414, !1415, !1416}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1408, file: !25, line: 49, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1408, file: !25, line: 50, baseType: !131, size: 32, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1408, file: !25, line: 51, baseType: !131, size: 32, offset: 96)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1408, file: !25, line: 52, baseType: !285, size: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1408, file: !25, line: 53, baseType: !285, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1176, file: !1177, line: 835, baseType: !1418, size: 32, offset: 5120)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !124, line: 22, baseType: !1419)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !268, line: 28, baseType: !131)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1176, file: !1177, line: 836, baseType: !1418, size: 32, offset: 5152)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1176, file: !1177, line: 840, baseType: !285, size: 64, offset: 5184)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1176, file: !1177, line: 849, baseType: !1175, size: 64, offset: 5248)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1176, file: !1177, line: 852, baseType: !1175, size: 64, offset: 5312)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1176, file: !1177, line: 857, baseType: !181, size: 128, offset: 5376)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1176, file: !1177, line: 858, baseType: !181, size: 128, offset: 5504)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1176, file: !1177, line: 859, baseType: !1175, size: 64, offset: 5632)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1176, file: !1177, line: 867, baseType: !181, size: 128, offset: 5696)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1176, file: !1177, line: 868, baseType: !181, size: 128, offset: 5824)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1176, file: !1177, line: 871, baseType: !1430, size: 64, offset: 5952)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1432)
!1432 = !{!1433, !1434, !1435, !1436, !1438, !1439, !1446, !1447}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1431, file: !53, line: 61, baseType: !1189, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1431, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1431, file: !53, line: 63, baseType: !194, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1431, file: !53, line: 65, baseType: !1437, size: 256, offset: 64)
!1437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !594, size: 256, elements: !1114)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1431, file: !53, line: 66, baseType: !594, size: 64, offset: 320)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1431, file: !53, line: 68, baseType: !1440, size: 128, offset: 384)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1441, line: 40, baseType: !1442)
!1441 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1441, line: 36, size: 128, elements: !1443)
!1443 = !{!1444, !1445}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1442, file: !1441, line: 37, baseType: !194)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1442, file: !1441, line: 38, baseType: !181, size: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1431, file: !53, line: 69, baseType: !326, size: 128, align: 64, offset: 512)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1431, file: !53, line: 70, baseType: !1448, size: 128, offset: 640)
!1448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1449, size: 128, elements: !1330)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1450)
!1450 = !{!1451, !1452}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1449, file: !53, line: 55, baseType: !131, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1449, file: !53, line: 56, baseType: !1453, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1176, file: !1177, line: 872, baseType: !1456, size: 512, offset: 6016)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 512, elements: !1114)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1176, file: !1177, line: 873, baseType: !181, size: 128, offset: 6528)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1176, file: !1177, line: 874, baseType: !181, size: 128, offset: 6656)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1176, file: !1177, line: 876, baseType: !1460, size: 64, offset: 6784)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1462, line: 26, size: 192, elements: !1463)
!1462 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1461, file: !1462, line: 27, baseType: !7, size: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1461, file: !1462, line: 28, baseType: !1466, size: 128, offset: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1467, line: 43, size: 128, elements: !1468)
!1467 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1466, file: !1467, line: 44, baseType: !739)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1466, file: !1467, line: 45, baseType: !181, size: 128)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1176, file: !1177, line: 879, baseType: !664, size: 64, offset: 6848)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1176, file: !1177, line: 882, baseType: !664, size: 64, offset: 6912)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1176, file: !1177, line: 884, baseType: !382, size: 64, offset: 6976)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1176, file: !1177, line: 885, baseType: !382, size: 64, offset: 7040)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1176, file: !1177, line: 890, baseType: !382, size: 64, offset: 7104)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1176, file: !1177, line: 891, baseType: !1477, size: 128, offset: 7168)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1177, line: 242, size: 128, elements: !1478)
!1478 = !{!1479, !1480, !1481}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1477, file: !1177, line: 244, baseType: !382, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1477, file: !1177, line: 245, baseType: !382, size: 64, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1477, file: !1177, line: 246, baseType: !739, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1176, file: !1177, line: 900, baseType: !285, size: 64, offset: 7296)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1176, file: !1177, line: 901, baseType: !285, size: 64, offset: 7360)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1176, file: !1177, line: 904, baseType: !382, size: 64, offset: 7424)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1176, file: !1177, line: 907, baseType: !382, size: 64, offset: 7488)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1176, file: !1177, line: 910, baseType: !285, size: 64, offset: 7552)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1176, file: !1177, line: 911, baseType: !285, size: 64, offset: 7616)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1176, file: !1177, line: 914, baseType: !1489, size: 640, offset: 7680)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1490, line: 123, size: 640, elements: !1491)
!1490 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1491 = !{!1492, !1498, !1499}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1489, file: !1490, line: 124, baseType: !1493, size: 576)
!1493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1494, size: 576, elements: !236)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1490, line: 108, size: 192, elements: !1495)
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1494, file: !1490, line: 109, baseType: !382, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1494, file: !1490, line: 110, baseType: !1302, size: 128, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1489, file: !1490, line: 125, baseType: !7, size: 32, offset: 576)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1489, file: !1490, line: 126, baseType: !7, size: 32, offset: 608)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1176, file: !1177, line: 917, baseType: !1501, size: 192, offset: 8320)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1490, line: 134, size: 192, elements: !1502)
!1502 = !{!1503, !1504}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1501, file: !1490, line: 135, baseType: !326, size: 128, align: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1501, file: !1490, line: 136, baseType: !7, size: 32, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1176, file: !1177, line: 923, baseType: !1506, size: 64, offset: 8512)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1508)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1509, line: 111, size: 1280, elements: !1510)
!1509 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1510 = !{!1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1530, !1531, !1532, !1533, !1534, !1535, !1642, !1643, !1644, !1645, !1671, !1674, !1684}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1508, file: !1509, line: 112, baseType: !706, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1508, file: !1509, line: 120, baseType: !396, size: 32, offset: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1508, file: !1509, line: 121, baseType: !404, size: 32, offset: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1508, file: !1509, line: 122, baseType: !396, size: 32, offset: 96)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1508, file: !1509, line: 123, baseType: !404, size: 32, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1508, file: !1509, line: 124, baseType: !396, size: 32, offset: 160)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1508, file: !1509, line: 125, baseType: !404, size: 32, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1508, file: !1509, line: 126, baseType: !396, size: 32, offset: 224)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1508, file: !1509, line: 127, baseType: !404, size: 32, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1508, file: !1509, line: 128, baseType: !7, size: 32, offset: 288)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1508, file: !1509, line: 129, baseType: !1522, size: 64, offset: 320)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1523, line: 26, baseType: !1524)
!1523 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1523, line: 24, size: 64, elements: !1525)
!1525 = !{!1526}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1524, file: !1523, line: 25, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 64, elements: !1528)
!1528 = !{!1529}
!1529 = !DISubrange(count: 2)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1508, file: !1509, line: 130, baseType: !1522, size: 64, offset: 384)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1508, file: !1509, line: 131, baseType: !1522, size: 64, offset: 448)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1508, file: !1509, line: 132, baseType: !1522, size: 64, offset: 512)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1508, file: !1509, line: 133, baseType: !1522, size: 64, offset: 576)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1508, file: !1509, line: 135, baseType: !388, size: 8, offset: 640)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1508, file: !1509, line: 137, baseType: !1536, size: 64, offset: 704)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1538, line: 189, size: 1664, elements: !1539)
!1538 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1539 = !{!1540, !1541, !1544, !1549, !1550, !1553, !1554, !1559, !1560, !1561, !1562, !1564, !1565, !1566, !1567, !1568, !1606, !1627}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1537, file: !1538, line: 190, baseType: !1189, size: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1537, file: !1538, line: 191, baseType: !1542, size: 32, offset: 32)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1538, line: 28, baseType: !1543)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !124, line: 98, baseType: !1403)
!1544 = !DIDerivedType(tag: DW_TAG_member, scope: !1537, file: !1538, line: 192, baseType: !1545, size: 192, offset: 64)
!1545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1537, file: !1538, line: 192, size: 192, elements: !1546)
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1545, file: !1538, line: 193, baseType: !181, size: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1545, file: !1538, line: 194, baseType: !719, size: 192, align: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1537, file: !1538, line: 199, baseType: !726, size: 256, offset: 256)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1537, file: !1538, line: 200, baseType: !1551, size: 64, offset: 512)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1538, line: 200, flags: DIFlagFwdDecl)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1537, file: !1538, line: 201, baseType: !125, size: 64, offset: 576)
!1554 = !DIDerivedType(tag: DW_TAG_member, scope: !1537, file: !1538, line: 202, baseType: !1555, size: 64, offset: 640)
!1555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1537, file: !1538, line: 202, size: 64, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1555, file: !1538, line: 203, baseType: !498, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1555, file: !1538, line: 204, baseType: !498, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1537, file: !1538, line: 206, baseType: !498, size: 64, offset: 704)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1537, file: !1538, line: 207, baseType: !396, size: 32, offset: 768)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1537, file: !1538, line: 208, baseType: !404, size: 32, offset: 800)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1537, file: !1538, line: 209, baseType: !1563, size: 32, offset: 832)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1538, line: 31, baseType: !518)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1537, file: !1538, line: 210, baseType: !277, size: 16, offset: 864)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1537, file: !1538, line: 211, baseType: !277, size: 16, offset: 880)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1537, file: !1538, line: 215, baseType: !1164, size: 16, offset: 896)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1537, file: !1538, line: 222, baseType: !285, size: 64, offset: 960)
!1568 = !DIDerivedType(tag: DW_TAG_member, scope: !1537, file: !1538, line: 239, baseType: !1569, size: 320, offset: 1024)
!1569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1537, file: !1538, line: 239, size: 320, elements: !1570)
!1570 = !{!1571, !1598}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1569, file: !1538, line: 240, baseType: !1572, size: 320)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1538, line: 108, size: 320, elements: !1573)
!1573 = !{!1574, !1575, !1587, !1590, !1597}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1572, file: !1538, line: 110, baseType: !285, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !1538, line: 111, baseType: !1576, size: 64, offset: 64)
!1576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1572, file: !1538, line: 111, size: 64, elements: !1577)
!1577 = !{!1578, !1586}
!1578 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !1538, line: 112, baseType: !1579, size: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1576, file: !1538, line: 112, size: 64, elements: !1580)
!1580 = !{!1581, !1582}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1579, file: !1538, line: 114, baseType: !818, size: 16)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1579, file: !1538, line: 115, baseType: !1583, size: 48, offset: 16)
!1583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 48, elements: !1584)
!1584 = !{!1585}
!1585 = !DISubrange(count: 6)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1576, file: !1538, line: 121, baseType: !285, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1572, file: !1538, line: 123, baseType: !1588, size: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1538, line: 96, flags: DIFlagFwdDecl)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1572, file: !1538, line: 124, baseType: !1591, size: 64, offset: 192)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1538, line: 102, size: 192, elements: !1593)
!1593 = !{!1594, !1595, !1596}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1592, file: !1538, line: 103, baseType: !326, size: 128, align: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1592, file: !1538, line: 104, baseType: !1189, size: 32, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1592, file: !1538, line: 105, baseType: !158, size: 8, offset: 160)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1572, file: !1538, line: 125, baseType: !177, size: 64, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_member, scope: !1569, file: !1538, line: 241, baseType: !1599, size: 320)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1569, file: !1538, line: 241, size: 320, elements: !1600)
!1600 = !{!1601, !1602, !1603, !1604, !1605}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1599, file: !1538, line: 242, baseType: !285, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1599, file: !1538, line: 243, baseType: !285, size: 64, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1599, file: !1538, line: 244, baseType: !1588, size: 64, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1599, file: !1538, line: 245, baseType: !1591, size: 64, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1599, file: !1538, line: 246, baseType: !235, size: 64, offset: 256)
!1606 = !DIDerivedType(tag: DW_TAG_member, scope: !1537, file: !1538, line: 254, baseType: !1607, size: 256, offset: 1344)
!1607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1537, file: !1538, line: 254, size: 256, elements: !1608)
!1608 = !{!1609, !1615}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1607, file: !1538, line: 255, baseType: !1610, size: 256)
!1610 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1538, line: 128, size: 256, elements: !1611)
!1611 = !{!1612, !1613}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1610, file: !1538, line: 129, baseType: !125, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1610, file: !1538, line: 130, baseType: !1614, size: 256)
!1614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 256, elements: !1114)
!1615 = !DIDerivedType(tag: DW_TAG_member, scope: !1607, file: !1538, line: 256, baseType: !1616, size: 256)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1607, file: !1538, line: 256, size: 256, elements: !1617)
!1617 = !{!1618, !1619}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1616, file: !1538, line: 258, baseType: !181, size: 128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1616, file: !1538, line: 259, baseType: !1620, size: 128, offset: 128)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1621, line: 22, size: 128, elements: !1622)
!1621 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1622 = !{!1623, !1626}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1620, file: !1621, line: 23, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1621, line: 23, flags: DIFlagFwdDecl)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1620, file: !1621, line: 24, baseType: !285, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1537, file: !1538, line: 274, baseType: !1628, size: 64, offset: 1600)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1538, line: 170, size: 192, elements: !1630)
!1630 = !{!1631, !1640, !1641}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1629, file: !1538, line: 171, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1538, line: 165, baseType: !1633)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!131, !1536, !1636, !1638, !1536}
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1589)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1610)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1629, file: !1538, line: 172, baseType: !1536, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1629, file: !1538, line: 173, baseType: !1588, size: 64, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1508, file: !1509, line: 138, baseType: !1536, size: 64, offset: 768)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1508, file: !1509, line: 139, baseType: !1536, size: 64, offset: 832)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1508, file: !1509, line: 140, baseType: !1536, size: 64, offset: 896)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1508, file: !1509, line: 145, baseType: !1646, size: 64, offset: 960)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1648, line: 13, size: 896, elements: !1649)
!1648 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1649 = !{!1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1647, file: !1648, line: 14, baseType: !1189, size: 32)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1647, file: !1648, line: 15, baseType: !706, size: 32, offset: 32)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1647, file: !1648, line: 16, baseType: !706, size: 32, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1647, file: !1648, line: 21, baseType: !730, size: 64, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1647, file: !1648, line: 27, baseType: !285, size: 64, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1647, file: !1648, line: 28, baseType: !285, size: 64, offset: 256)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1647, file: !1648, line: 29, baseType: !730, size: 64, offset: 320)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1647, file: !1648, line: 32, baseType: !598, size: 128, offset: 384)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1647, file: !1648, line: 33, baseType: !396, size: 32, offset: 512)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1647, file: !1648, line: 37, baseType: !730, size: 64, offset: 576)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1647, file: !1648, line: 44, baseType: !1661, size: 256, offset: 640)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1662, line: 15, size: 256, elements: !1663)
!1662 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1663 = !{!1664, !1665, !1666, !1667, !1668, !1669, !1670}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1661, file: !1662, line: 16, baseType: !739)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1661, file: !1662, line: 18, baseType: !131, size: 32)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1661, file: !1662, line: 19, baseType: !131, size: 32, offset: 32)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1661, file: !1662, line: 20, baseType: !131, size: 32, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1661, file: !1662, line: 21, baseType: !131, size: 32, offset: 96)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1661, file: !1662, line: 22, baseType: !285, size: 64, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1661, file: !1662, line: 23, baseType: !285, size: 64, offset: 192)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1508, file: !1509, line: 146, baseType: !1672, size: 64, offset: 1024)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !397, line: 18, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1508, file: !1509, line: 147, baseType: !1675, size: 64, offset: 1088)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1509, line: 25, size: 64, elements: !1677)
!1677 = !{!1678, !1679, !1680}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1676, file: !1509, line: 26, baseType: !706, size: 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1676, file: !1509, line: 27, baseType: !131, size: 32, offset: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1676, file: !1509, line: 28, baseType: !1681, offset: 64)
!1681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, elements: !1682)
!1682 = !{!1683}
!1683 = !DISubrange(count: 0)
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1508, file: !1509, line: 149, baseType: !1685, size: 128, offset: 1152)
!1685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1508, file: !1509, line: 149, size: 128, elements: !1686)
!1686 = !{!1687, !1688}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1685, file: !1509, line: 150, baseType: !131, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1685, file: !1509, line: 151, baseType: !326, size: 128, align: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1176, file: !1177, line: 926, baseType: !1506, size: 64, offset: 8576)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1176, file: !1177, line: 929, baseType: !1506, size: 64, offset: 8640)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1176, file: !1177, line: 933, baseType: !1536, size: 64, offset: 8704)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1176, file: !1177, line: 943, baseType: !1693, size: 128, offset: 8768)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 128, elements: !1694)
!1694 = !{!1695}
!1695 = !DISubrange(count: 16)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1176, file: !1177, line: 945, baseType: !1697, size: 64, offset: 8896)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1177, line: 49, flags: DIFlagFwdDecl)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1176, file: !1177, line: 956, baseType: !1700, size: 64, offset: 8960)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1177, line: 45, flags: DIFlagFwdDecl)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1176, file: !1177, line: 959, baseType: !1703, size: 64, offset: 9024)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1177, line: 959, flags: DIFlagFwdDecl)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1176, file: !1177, line: 962, baseType: !1706, size: 64, offset: 9088)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1177, line: 66, flags: DIFlagFwdDecl)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1176, file: !1177, line: 966, baseType: !1709, size: 64, offset: 9152)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1711, line: 35, flags: DIFlagFwdDecl)
!1711 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1176, file: !1177, line: 969, baseType: !1713, size: 64, offset: 9216)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1715, line: 82, size: 7296, elements: !1716)
!1715 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1716 = !{!1717, !1718, !1719, !1720, !1721, !1722, !1723, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1752, !1761, !1762, !1764, !1765, !1766, !1769, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1799, !1800, !1807, !1808, !1809, !1810, !1811, !1812}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1714, file: !1715, line: 83, baseType: !1189, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1714, file: !1715, line: 84, baseType: !706, size: 32, offset: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1714, file: !1715, line: 85, baseType: !131, size: 32, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1714, file: !1715, line: 86, baseType: !181, size: 128, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1714, file: !1715, line: 88, baseType: !1440, size: 128, offset: 256)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1714, file: !1715, line: 91, baseType: !1175, size: 64, offset: 384)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1714, file: !1715, line: 94, baseType: !1724, size: 192, offset: 448)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1725, line: 30, size: 192, elements: !1726)
!1725 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1726 = !{!1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1724, file: !1725, line: 31, baseType: !181, size: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1724, file: !1725, line: 32, baseType: !1729, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1730, line: 25, baseType: !1731)
!1730 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1730, line: 23, size: 64, elements: !1732)
!1732 = !{!1733}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1731, file: !1730, line: 24, baseType: !1329, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1714, file: !1715, line: 97, baseType: !594, size: 64, offset: 640)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1714, file: !1715, line: 100, baseType: !131, size: 32, offset: 704)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1714, file: !1715, line: 106, baseType: !131, size: 32, offset: 736)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1714, file: !1715, line: 107, baseType: !1175, size: 64, offset: 768)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1714, file: !1715, line: 110, baseType: !131, size: 32, offset: 832)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1714, file: !1715, line: 111, baseType: !7, size: 32, offset: 864)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1714, file: !1715, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1714, file: !1715, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1714, file: !1715, line: 128, baseType: !131, size: 32, offset: 928)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1714, file: !1715, line: 129, baseType: !181, size: 128, offset: 960)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1714, file: !1715, line: 132, baseType: !1251, size: 512, offset: 1088)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1714, file: !1715, line: 133, baseType: !1259, size: 64, offset: 1600)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1714, file: !1715, line: 140, baseType: !1747, size: 256, offset: 1664)
!1747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1748, size: 256, elements: !1528)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1715, line: 38, size: 128, elements: !1749)
!1749 = !{!1750, !1751}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1748, file: !1715, line: 39, baseType: !382, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1748, file: !1715, line: 40, baseType: !382, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1714, file: !1715, line: 146, baseType: !1753, size: 192, offset: 1920)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1715, line: 66, size: 192, elements: !1754)
!1754 = !{!1755}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1753, file: !1715, line: 67, baseType: !1756, size: 192)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1715, line: 47, size: 192, elements: !1757)
!1757 = !{!1758, !1759, !1760}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1756, file: !1715, line: 48, baseType: !732, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1756, file: !1715, line: 49, baseType: !732, size: 64, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1756, file: !1715, line: 50, baseType: !732, size: 64, offset: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1714, file: !1715, line: 150, baseType: !1489, size: 640, offset: 2112)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1714, file: !1715, line: 153, baseType: !1763, size: 256, offset: 2752)
!1763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1430, size: 256, elements: !1114)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1714, file: !1715, line: 159, baseType: !1430, size: 64, offset: 3008)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1714, file: !1715, line: 162, baseType: !131, size: 32, offset: 3072)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1714, file: !1715, line: 164, baseType: !1767, size: 64, offset: 3136)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1715, line: 164, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1714, file: !1715, line: 175, baseType: !1770, size: 32, offset: 3200)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !349, line: 805, baseType: !1771)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !349, line: 798, size: 32, elements: !1772)
!1772 = !{!1773, !1774}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1771, file: !349, line: 803, baseType: !348, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1771, file: !349, line: 804, baseType: !194, offset: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1714, file: !1715, line: 176, baseType: !382, size: 64, offset: 3264)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1714, file: !1715, line: 176, baseType: !382, size: 64, offset: 3328)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1714, file: !1715, line: 176, baseType: !382, size: 64, offset: 3392)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1714, file: !1715, line: 176, baseType: !382, size: 64, offset: 3456)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1714, file: !1715, line: 177, baseType: !382, size: 64, offset: 3520)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1714, file: !1715, line: 178, baseType: !382, size: 64, offset: 3584)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1714, file: !1715, line: 179, baseType: !1477, size: 128, offset: 3648)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1714, file: !1715, line: 180, baseType: !285, size: 64, offset: 3776)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1714, file: !1715, line: 180, baseType: !285, size: 64, offset: 3840)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1714, file: !1715, line: 180, baseType: !285, size: 64, offset: 3904)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1714, file: !1715, line: 180, baseType: !285, size: 64, offset: 3968)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1714, file: !1715, line: 181, baseType: !285, size: 64, offset: 4032)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1714, file: !1715, line: 181, baseType: !285, size: 64, offset: 4096)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1714, file: !1715, line: 181, baseType: !285, size: 64, offset: 4160)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1714, file: !1715, line: 181, baseType: !285, size: 64, offset: 4224)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1714, file: !1715, line: 182, baseType: !285, size: 64, offset: 4288)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1714, file: !1715, line: 182, baseType: !285, size: 64, offset: 4352)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1714, file: !1715, line: 182, baseType: !285, size: 64, offset: 4416)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1714, file: !1715, line: 182, baseType: !285, size: 64, offset: 4480)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1714, file: !1715, line: 183, baseType: !285, size: 64, offset: 4544)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1714, file: !1715, line: 183, baseType: !285, size: 64, offset: 4608)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1714, file: !1715, line: 184, baseType: !1797, offset: 4672)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1798, line: 12, elements: !208)
!1798 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1714, file: !1715, line: 192, baseType: !384, size: 64, offset: 4672)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1714, file: !1715, line: 203, baseType: !1801, size: 2048, offset: 4736)
!1801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1802, size: 2048, elements: !1694)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1803, line: 43, size: 128, elements: !1804)
!1803 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1804 = !{!1805, !1806}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1802, file: !1803, line: 44, baseType: !284, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1802, file: !1803, line: 45, baseType: !284, size: 64, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1714, file: !1715, line: 220, baseType: !158, size: 8, offset: 6784)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1714, file: !1715, line: 221, baseType: !1164, size: 16, offset: 6800)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1714, file: !1715, line: 222, baseType: !1164, size: 16, offset: 6816)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1714, file: !1715, line: 224, baseType: !933, size: 64, offset: 6848)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1714, file: !1715, line: 227, baseType: !1132, size: 192, offset: 6912)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1714, file: !1715, line: 233, baseType: !1132, size: 192, offset: 7104)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1176, file: !1177, line: 970, baseType: !1814, size: 64, offset: 9280)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1715, line: 20, size: 16576, elements: !1816)
!1816 = !{!1817, !1818, !1819, !1820}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1815, file: !1715, line: 21, baseType: !194)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1815, file: !1715, line: 22, baseType: !1189, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1815, file: !1715, line: 23, baseType: !1440, size: 128, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1815, file: !1715, line: 24, baseType: !1821, size: 16384, offset: 192)
!1821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1822, size: 16384, elements: !240)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1725, line: 49, size: 256, elements: !1823)
!1823 = !{!1824}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1822, file: !1725, line: 50, baseType: !1825, size: 256)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1725, line: 35, size: 256, elements: !1826)
!1826 = !{!1827, !1834, !1835, !1841}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1825, file: !1725, line: 37, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1829, line: 19, baseType: !1830)
!1829 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1829, line: 18, baseType: !1832)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{null, !131}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1825, file: !1725, line: 38, baseType: !285, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1825, file: !1725, line: 44, baseType: !1836, size: 64, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1829, line: 22, baseType: !1837)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1829, line: 21, baseType: !1839)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{null}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1825, file: !1725, line: 46, baseType: !1729, size: 64, offset: 192)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1176, file: !1177, line: 971, baseType: !1729, size: 64, offset: 9344)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1176, file: !1177, line: 972, baseType: !1729, size: 64, offset: 9408)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1176, file: !1177, line: 974, baseType: !1729, size: 64, offset: 9472)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1176, file: !1177, line: 975, baseType: !1724, size: 192, offset: 9536)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1176, file: !1177, line: 976, baseType: !285, size: 64, offset: 9728)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1176, file: !1177, line: 977, baseType: !282, size: 64, offset: 9792)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1176, file: !1177, line: 978, baseType: !7, size: 32, offset: 9856)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1176, file: !1177, line: 980, baseType: !329, size: 64, offset: 9920)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1176, file: !1177, line: 989, baseType: !1851, size: 128, offset: 9984)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1852, line: 35, size: 128, elements: !1853)
!1852 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1853 = !{!1854, !1855, !1856}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1851, file: !1852, line: 36, baseType: !131, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1851, file: !1852, line: 37, baseType: !706, size: 32, offset: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1851, file: !1852, line: 38, baseType: !1857, size: 64, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1852, line: 23, flags: DIFlagFwdDecl)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1176, file: !1177, line: 992, baseType: !382, size: 64, offset: 10112)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1176, file: !1177, line: 993, baseType: !382, size: 64, offset: 10176)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1176, file: !1177, line: 996, baseType: !194, offset: 10240)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1176, file: !1177, line: 999, baseType: !739, offset: 10240)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1176, file: !1177, line: 1001, baseType: !1864, size: 64, offset: 10240)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1177, line: 636, size: 64, elements: !1865)
!1865 = !{!1866}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1864, file: !1177, line: 637, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1176, file: !1177, line: 1005, baseType: !711, size: 128, offset: 10304)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1176, file: !1177, line: 1007, baseType: !1175, size: 64, offset: 10432)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1176, file: !1177, line: 1009, baseType: !1871, size: 64, offset: 10496)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1177, line: 1009, flags: DIFlagFwdDecl)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1176, file: !1177, line: 1043, baseType: !125, size: 64, offset: 10560)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1176, file: !1177, line: 1046, baseType: !1875, size: 64, offset: 10624)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1177, line: 41, flags: DIFlagFwdDecl)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1176, file: !1177, line: 1050, baseType: !1878, size: 64, offset: 10688)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1177, line: 42, flags: DIFlagFwdDecl)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1176, file: !1177, line: 1054, baseType: !1881, size: 64, offset: 10752)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1177, line: 55, flags: DIFlagFwdDecl)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1176, file: !1177, line: 1056, baseType: !1884, size: 64, offset: 10816)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1177, line: 40, flags: DIFlagFwdDecl)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1176, file: !1177, line: 1058, baseType: !1887, size: 64, offset: 10880)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1889, line: 99, size: 704, elements: !1890)
!1889 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1890 = !{!1891, !1892, !1893, !1894, !1895, !1896, !1897, !1916, !1917}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1888, file: !1889, line: 100, baseType: !730, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1888, file: !1889, line: 101, baseType: !706, size: 32, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1888, file: !1889, line: 102, baseType: !706, size: 32, offset: 96)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1888, file: !1889, line: 105, baseType: !194, offset: 128)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1888, file: !1889, line: 107, baseType: !277, size: 16, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1888, file: !1889, line: 109, baseType: !698, size: 128, offset: 192)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1888, file: !1889, line: 110, baseType: !1898, size: 64, offset: 320)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1889, line: 73, size: 448, elements: !1900)
!1900 = !{!1901, !1904, !1905, !1910, !1915}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1899, file: !1889, line: 74, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1889, line: 74, flags: DIFlagFwdDecl)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1899, file: !1889, line: 75, baseType: !1887, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, scope: !1899, file: !1889, line: 83, baseType: !1906, size: 128, offset: 128)
!1906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1899, file: !1889, line: 83, size: 128, elements: !1907)
!1907 = !{!1908, !1909}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1906, file: !1889, line: 84, baseType: !181, size: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1906, file: !1889, line: 85, baseType: !894, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, scope: !1899, file: !1889, line: 87, baseType: !1911, size: 128, offset: 256)
!1911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1899, file: !1889, line: 87, size: 128, elements: !1912)
!1912 = !{!1913, !1914}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1911, file: !1889, line: 88, baseType: !598, size: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1911, file: !1889, line: 89, baseType: !326, size: 128, align: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1899, file: !1889, line: 92, baseType: !7, size: 32, offset: 384)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1888, file: !1889, line: 111, baseType: !594, size: 64, offset: 384)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1888, file: !1889, line: 113, baseType: !1918, size: 256, offset: 448)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1919, line: 102, size: 256, elements: !1920)
!1919 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1920 = !{!1921, !1922, !1923}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1918, file: !1919, line: 103, baseType: !730, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1918, file: !1919, line: 104, baseType: !181, size: 128, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1918, file: !1919, line: 105, baseType: !1924, size: 64, offset: 192)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1919, line: 21, baseType: !1925)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{null, !1928}
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1176, file: !1177, line: 1061, baseType: !1930, size: 64, offset: 10944)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1177, line: 43, flags: DIFlagFwdDecl)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1176, file: !1177, line: 1064, baseType: !285, size: 64, offset: 11008)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1176, file: !1177, line: 1065, baseType: !1934, size: 64, offset: 11072)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1725, line: 14, baseType: !1936)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1725, line: 12, size: 384, elements: !1937)
!1937 = !{!1938}
!1938 = !DIDerivedType(tag: DW_TAG_member, scope: !1936, file: !1725, line: 13, baseType: !1939, size: 384)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1936, file: !1725, line: 13, size: 384, elements: !1940)
!1940 = !{!1941, !1942, !1943, !1944}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1939, file: !1725, line: 13, baseType: !131, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1939, file: !1725, line: 13, baseType: !131, size: 32, offset: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1939, file: !1725, line: 13, baseType: !131, size: 32, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1939, file: !1725, line: 13, baseType: !1945, size: 256, offset: 128)
!1945 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1946, line: 32, size: 256, elements: !1947)
!1946 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1947 = !{!1948, !1953, !1966, !1972, !1981, !2001, !2006}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1945, file: !1946, line: 37, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1945, file: !1946, line: 34, size: 64, elements: !1950)
!1950 = !{!1951, !1952}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1949, file: !1946, line: 35, baseType: !1419, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1949, file: !1946, line: 36, baseType: !402, size: 32, offset: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1945, file: !1946, line: 45, baseType: !1954, size: 192)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1945, file: !1946, line: 40, size: 192, elements: !1955)
!1955 = !{!1956, !1958, !1959, !1965}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1954, file: !1946, line: 41, baseType: !1957, size: 32)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !268, line: 95, baseType: !131)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1954, file: !1946, line: 42, baseType: !131, size: 32, offset: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1954, file: !1946, line: 43, baseType: !1960, size: 64, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1946, line: 11, baseType: !1961)
!1961 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1946, line: 8, size: 64, elements: !1962)
!1962 = !{!1963, !1964}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1961, file: !1946, line: 9, baseType: !131, size: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1961, file: !1946, line: 10, baseType: !125, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1954, file: !1946, line: 44, baseType: !131, size: 32, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1945, file: !1946, line: 52, baseType: !1967, size: 128)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1945, file: !1946, line: 48, size: 128, elements: !1968)
!1968 = !{!1969, !1970, !1971}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1967, file: !1946, line: 49, baseType: !1419, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1967, file: !1946, line: 50, baseType: !402, size: 32, offset: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1967, file: !1946, line: 51, baseType: !1960, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1945, file: !1946, line: 61, baseType: !1973, size: 256)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1945, file: !1946, line: 55, size: 256, elements: !1974)
!1974 = !{!1975, !1976, !1977, !1978, !1980}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1973, file: !1946, line: 56, baseType: !1419, size: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1973, file: !1946, line: 57, baseType: !402, size: 32, offset: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1973, file: !1946, line: 58, baseType: !131, size: 32, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1973, file: !1946, line: 59, baseType: !1979, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !268, line: 94, baseType: !269)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1973, file: !1946, line: 60, baseType: !1979, size: 64, offset: 192)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1945, file: !1946, line: 95, baseType: !1982, size: 256)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1945, file: !1946, line: 64, size: 256, elements: !1983)
!1983 = !{!1984, !1985}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1982, file: !1946, line: 65, baseType: !125, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, scope: !1982, file: !1946, line: 77, baseType: !1986, size: 192, offset: 64)
!1986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1982, file: !1946, line: 77, size: 192, elements: !1987)
!1987 = !{!1988, !1989, !1996}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1986, file: !1946, line: 82, baseType: !1164, size: 16)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1986, file: !1946, line: 88, baseType: !1990, size: 192)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1986, file: !1946, line: 84, size: 192, elements: !1991)
!1991 = !{!1992, !1994, !1995}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1990, file: !1946, line: 85, baseType: !1993, size: 64)
!1993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 64, elements: !1289)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1990, file: !1946, line: 86, baseType: !125, size: 64, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1990, file: !1946, line: 87, baseType: !125, size: 64, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1986, file: !1946, line: 93, baseType: !1997, size: 96)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1986, file: !1946, line: 90, size: 96, elements: !1998)
!1998 = !{!1999, !2000}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1997, file: !1946, line: 91, baseType: !1993, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1997, file: !1946, line: 92, baseType: !378, size: 32, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1945, file: !1946, line: 101, baseType: !2002, size: 128)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1945, file: !1946, line: 98, size: 128, elements: !2003)
!2003 = !{!2004, !2005}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2002, file: !1946, line: 99, baseType: !270, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2002, file: !1946, line: 100, baseType: !131, size: 32, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1945, file: !1946, line: 108, baseType: !2007, size: 128)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1945, file: !1946, line: 104, size: 128, elements: !2008)
!2008 = !{!2009, !2010, !2011}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2007, file: !1946, line: 105, baseType: !125, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2007, file: !1946, line: 106, baseType: !131, size: 32, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2007, file: !1946, line: 107, baseType: !7, size: 32, offset: 96)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1176, file: !1177, line: 1067, baseType: !1797, offset: 11136)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1176, file: !1177, line: 1099, baseType: !2014, size: 64, offset: 11136)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1177, line: 56, flags: DIFlagFwdDecl)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1176, file: !1177, line: 1103, baseType: !181, size: 128, offset: 11200)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1176, file: !1177, line: 1104, baseType: !2018, size: 64, offset: 11328)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1177, line: 46, flags: DIFlagFwdDecl)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1176, file: !1177, line: 1105, baseType: !1132, size: 192, offset: 11392)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1176, file: !1177, line: 1106, baseType: !7, size: 32, offset: 11584)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1176, file: !1177, line: 1109, baseType: !2023, size: 128, offset: 11648)
!2023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2024, size: 128, elements: !1528)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1177, line: 51, flags: DIFlagFwdDecl)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1176, file: !1177, line: 1110, baseType: !1132, size: 192, offset: 11776)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1176, file: !1177, line: 1111, baseType: !181, size: 128, offset: 11968)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1176, file: !1177, line: 1173, baseType: !2029, size: 64, offset: 12096)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2031, line: 62, size: 256, align: 256, elements: !2032)
!2031 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2032 = !{!2033, !2034, !2035, !2040}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2030, file: !2031, line: 75, baseType: !378, size: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2030, file: !2031, line: 90, baseType: !378, size: 32, offset: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2030, file: !2031, line: 124, baseType: !2036, size: 64, offset: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2030, file: !2031, line: 109, size: 64, elements: !2037)
!2037 = !{!2038, !2039}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2036, file: !2031, line: 110, baseType: !383, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2036, file: !2031, line: 112, baseType: !383, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2030, file: !2031, line: 144, baseType: !378, size: 32, offset: 128)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1176, file: !1177, line: 1174, baseType: !376, size: 32, offset: 12160)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1176, file: !1177, line: 1179, baseType: !285, size: 64, offset: 12224)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1176, file: !1177, line: 1182, baseType: !2044, size: 128, offset: 12288)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1110, line: 76, size: 128, elements: !2045)
!2045 = !{!2046, !2051, !2052}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2044, file: !1110, line: 85, baseType: !2047, size: 64)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2048, line: 7, size: 64, elements: !2049)
!2048 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2049 = !{!2050}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2047, file: !2048, line: 12, baseType: !1326, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2044, file: !1110, line: 88, baseType: !158, size: 8, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2044, file: !1110, line: 95, baseType: !158, size: 8, offset: 72)
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !1177, line: 1184, baseType: !2054, size: 128, offset: 12416)
!2054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1176, file: !1177, line: 1184, size: 128, elements: !2055)
!2055 = !{!2056, !2057}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2054, file: !1177, line: 1185, baseType: !1189, size: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2054, file: !1177, line: 1186, baseType: !326, size: 128, align: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1176, file: !1177, line: 1190, baseType: !2059, size: 64, offset: 12544)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1177, line: 53, flags: DIFlagFwdDecl)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1176, file: !1177, line: 1192, baseType: !2062, size: 128, offset: 12608)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1110, line: 64, size: 128, elements: !2063)
!2063 = !{!2064, !2065, !2066}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2062, file: !1110, line: 65, baseType: !680, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2062, file: !1110, line: 67, baseType: !378, size: 32, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2062, file: !1110, line: 68, baseType: !378, size: 32, offset: 96)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1176, file: !1177, line: 1206, baseType: !131, size: 32, offset: 12736)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1176, file: !1177, line: 1207, baseType: !131, size: 32, offset: 12768)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1176, file: !1177, line: 1209, baseType: !285, size: 64, offset: 12800)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1176, file: !1177, line: 1219, baseType: !382, size: 64, offset: 12864)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1176, file: !1177, line: 1220, baseType: !382, size: 64, offset: 12928)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1176, file: !1177, line: 1317, baseType: !131, size: 32, offset: 12992)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1176, file: !1177, line: 1319, baseType: !1175, size: 64, offset: 13056)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1176, file: !1177, line: 1322, baseType: !2075, size: 64, offset: 13120)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2077, line: 56, size: 512, elements: !2078)
!2077 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2078 = !{!2079, !2080, !2081, !2082, !2083, !2084, !2085, !2087}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2076, file: !2077, line: 57, baseType: !2075, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2076, file: !2077, line: 58, baseType: !125, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2076, file: !2077, line: 59, baseType: !285, size: 64, offset: 128)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2076, file: !2077, line: 60, baseType: !285, size: 64, offset: 192)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2076, file: !2077, line: 61, baseType: !779, size: 64, offset: 256)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2076, file: !2077, line: 62, baseType: !7, size: 32, offset: 320)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2076, file: !2077, line: 63, baseType: !2086, size: 64, offset: 384)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !124, line: 153, baseType: !382)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2076, file: !2077, line: 64, baseType: !166, size: 64, offset: 448)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1176, file: !1177, line: 1326, baseType: !1189, size: 32, offset: 13184)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1176, file: !1177, line: 1342, baseType: !125, size: 64, offset: 13248)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1176, file: !1177, line: 1343, baseType: !383, size: 64, offset: 13312)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1176, file: !1177, line: 1344, baseType: !382, size: 64, offset: 13376)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1176, file: !1177, line: 1345, baseType: !383, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1176, file: !1177, line: 1346, baseType: !383, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1176, file: !1177, line: 1347, baseType: !383, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1176, file: !1177, line: 1348, baseType: !326, size: 128, align: 64, offset: 13504)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1176, file: !1177, line: 1358, baseType: !2097, size: 34816, offset: 13824)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2098, line: 485, size: 34816, elements: !2099)
!2098 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2099 = !{!2100, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2129, !2130, !2131, !2132, !2133, !2134, !2137, !2138, !2139}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2097, file: !2098, line: 487, baseType: !2101, size: 192)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2102, size: 192, elements: !236)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2103, line: 16, size: 64, elements: !2104)
!2103 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2104 = !{!2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2102, file: !2103, line: 17, baseType: !818, size: 16)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2102, file: !2103, line: 18, baseType: !818, size: 16, offset: 16)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2102, file: !2103, line: 19, baseType: !818, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2102, file: !2103, line: 19, baseType: !818, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2102, file: !2103, line: 19, baseType: !818, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2102, file: !2103, line: 19, baseType: !818, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2102, file: !2103, line: 19, baseType: !818, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2102, file: !2103, line: 20, baseType: !818, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2102, file: !2103, line: 20, baseType: !818, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2102, file: !2103, line: 20, baseType: !818, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2102, file: !2103, line: 20, baseType: !818, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2102, file: !2103, line: 20, baseType: !818, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2102, file: !2103, line: 20, baseType: !818, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2097, file: !2098, line: 491, baseType: !285, size: 64, offset: 192)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2097, file: !2098, line: 495, baseType: !277, size: 16, offset: 256)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2097, file: !2098, line: 496, baseType: !277, size: 16, offset: 272)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2097, file: !2098, line: 497, baseType: !277, size: 16, offset: 288)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2097, file: !2098, line: 498, baseType: !277, size: 16, offset: 304)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2097, file: !2098, line: 502, baseType: !285, size: 64, offset: 320)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2097, file: !2098, line: 503, baseType: !285, size: 64, offset: 384)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2097, file: !2098, line: 514, baseType: !2126, size: 256, offset: 448)
!2126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2127, size: 256, elements: !1114)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2098, line: 483, flags: DIFlagFwdDecl)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2097, file: !2098, line: 516, baseType: !285, size: 64, offset: 704)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2097, file: !2098, line: 518, baseType: !285, size: 64, offset: 768)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2097, file: !2098, line: 520, baseType: !285, size: 64, offset: 832)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2097, file: !2098, line: 521, baseType: !285, size: 64, offset: 896)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2097, file: !2098, line: 522, baseType: !285, size: 64, offset: 960)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2097, file: !2098, line: 528, baseType: !2135, size: 64, offset: 1024)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2098, line: 10, flags: DIFlagFwdDecl)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2097, file: !2098, line: 535, baseType: !285, size: 64, offset: 1088)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2097, file: !2098, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2097, file: !2098, line: 540, baseType: !2140, size: 33280, offset: 1536)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2141, line: 317, size: 33280, elements: !2142)
!2141 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2142 = !{!2143, !2144, !2145}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2140, file: !2141, line: 330, baseType: !7, size: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2140, file: !2141, line: 337, baseType: !285, size: 64, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2140, file: !2141, line: 348, baseType: !2146, size: 32768, offset: 512)
!2146 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2141, line: 304, size: 32768, elements: !2147)
!2147 = !{!2148, !2163, !2202, !2252, !2265}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2146, file: !2141, line: 305, baseType: !2149, size: 896)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2141, line: 12, size: 896, elements: !2150)
!2150 = !{!2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2162}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2149, file: !2141, line: 13, baseType: !376, size: 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2149, file: !2141, line: 14, baseType: !376, size: 32, offset: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2149, file: !2141, line: 15, baseType: !376, size: 32, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2149, file: !2141, line: 16, baseType: !376, size: 32, offset: 96)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2149, file: !2141, line: 17, baseType: !376, size: 32, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2149, file: !2141, line: 18, baseType: !376, size: 32, offset: 160)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2149, file: !2141, line: 19, baseType: !376, size: 32, offset: 192)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2149, file: !2141, line: 22, baseType: !2159, size: 640, offset: 224)
!2159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 640, elements: !2160)
!2160 = !{!2161}
!2161 = !DISubrange(count: 20)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2149, file: !2141, line: 25, baseType: !376, size: 32, offset: 864)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2146, file: !2141, line: 306, baseType: !2164, size: 4096, align: 128)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2141, line: 34, size: 4096, align: 128, elements: !2165)
!2165 = !{!2166, !2167, !2168, !2169, !2170, !2185, !2186, !2187, !2191, !2193, !2197}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2164, file: !2141, line: 35, baseType: !818, size: 16)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2164, file: !2141, line: 36, baseType: !818, size: 16, offset: 16)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2164, file: !2141, line: 37, baseType: !818, size: 16, offset: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2164, file: !2141, line: 38, baseType: !818, size: 16, offset: 48)
!2170 = !DIDerivedType(tag: DW_TAG_member, scope: !2164, file: !2141, line: 39, baseType: !2171, size: 128, offset: 64)
!2171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2164, file: !2141, line: 39, size: 128, elements: !2172)
!2172 = !{!2173, !2178}
!2173 = !DIDerivedType(tag: DW_TAG_member, scope: !2171, file: !2141, line: 40, baseType: !2174, size: 128)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2171, file: !2141, line: 40, size: 128, elements: !2175)
!2175 = !{!2176, !2177}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2174, file: !2141, line: 41, baseType: !382, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2174, file: !2141, line: 42, baseType: !382, size: 64, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, scope: !2171, file: !2141, line: 44, baseType: !2179, size: 128)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2171, file: !2141, line: 44, size: 128, elements: !2180)
!2180 = !{!2181, !2182, !2183, !2184}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2179, file: !2141, line: 45, baseType: !376, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2179, file: !2141, line: 46, baseType: !376, size: 32, offset: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2179, file: !2141, line: 47, baseType: !376, size: 32, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2179, file: !2141, line: 48, baseType: !376, size: 32, offset: 96)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2164, file: !2141, line: 51, baseType: !376, size: 32, offset: 192)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2164, file: !2141, line: 52, baseType: !376, size: 32, offset: 224)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2164, file: !2141, line: 55, baseType: !2188, size: 1024, offset: 256)
!2188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 1024, elements: !2189)
!2189 = !{!2190}
!2190 = !DISubrange(count: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2164, file: !2141, line: 58, baseType: !2192, size: 2048, offset: 1280)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 2048, elements: !240)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2164, file: !2141, line: 60, baseType: !2194, size: 384, offset: 3328)
!2194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 384, elements: !2195)
!2195 = !{!2196}
!2196 = !DISubrange(count: 12)
!2197 = !DIDerivedType(tag: DW_TAG_member, scope: !2164, file: !2141, line: 62, baseType: !2198, size: 384, offset: 3712)
!2198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2164, file: !2141, line: 62, size: 384, elements: !2199)
!2199 = !{!2200, !2201}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2198, file: !2141, line: 63, baseType: !2194, size: 384)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2198, file: !2141, line: 64, baseType: !2194, size: 384)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2146, file: !2141, line: 307, baseType: !2203, size: 1088)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2141, line: 79, size: 1088, elements: !2204)
!2204 = !{!2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2251}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2203, file: !2141, line: 80, baseType: !376, size: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2203, file: !2141, line: 81, baseType: !376, size: 32, offset: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2203, file: !2141, line: 82, baseType: !376, size: 32, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2203, file: !2141, line: 83, baseType: !376, size: 32, offset: 96)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2203, file: !2141, line: 84, baseType: !376, size: 32, offset: 128)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2203, file: !2141, line: 85, baseType: !376, size: 32, offset: 160)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2203, file: !2141, line: 86, baseType: !376, size: 32, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2203, file: !2141, line: 88, baseType: !2159, size: 640, offset: 224)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2203, file: !2141, line: 89, baseType: !1311, size: 8, offset: 864)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2203, file: !2141, line: 90, baseType: !1311, size: 8, offset: 872)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2203, file: !2141, line: 91, baseType: !1311, size: 8, offset: 880)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2203, file: !2141, line: 92, baseType: !1311, size: 8, offset: 888)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2203, file: !2141, line: 93, baseType: !1311, size: 8, offset: 896)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2203, file: !2141, line: 94, baseType: !1311, size: 8, offset: 904)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2203, file: !2141, line: 95, baseType: !2220, size: 64, offset: 960)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2222, line: 11, size: 128, elements: !2223)
!2222 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2223 = !{!2224, !2225}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2221, file: !2222, line: 12, baseType: !270, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2221, file: !2222, line: 13, baseType: !2226, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2228, line: 56, size: 1344, elements: !2229)
!2228 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2229 = !{!2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2227, file: !2228, line: 61, baseType: !285, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2227, file: !2228, line: 62, baseType: !285, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2227, file: !2228, line: 63, baseType: !285, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2227, file: !2228, line: 64, baseType: !285, size: 64, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2227, file: !2228, line: 65, baseType: !285, size: 64, offset: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2227, file: !2228, line: 66, baseType: !285, size: 64, offset: 320)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2227, file: !2228, line: 68, baseType: !285, size: 64, offset: 384)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2227, file: !2228, line: 69, baseType: !285, size: 64, offset: 448)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2227, file: !2228, line: 70, baseType: !285, size: 64, offset: 512)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2227, file: !2228, line: 71, baseType: !285, size: 64, offset: 576)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2227, file: !2228, line: 72, baseType: !285, size: 64, offset: 640)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2227, file: !2228, line: 73, baseType: !285, size: 64, offset: 704)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2227, file: !2228, line: 74, baseType: !285, size: 64, offset: 768)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2227, file: !2228, line: 75, baseType: !285, size: 64, offset: 832)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2227, file: !2228, line: 76, baseType: !285, size: 64, offset: 896)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2227, file: !2228, line: 81, baseType: !285, size: 64, offset: 960)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2227, file: !2228, line: 83, baseType: !285, size: 64, offset: 1024)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2227, file: !2228, line: 84, baseType: !285, size: 64, offset: 1088)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2227, file: !2228, line: 85, baseType: !285, size: 64, offset: 1152)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2227, file: !2228, line: 86, baseType: !285, size: 64, offset: 1216)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2227, file: !2228, line: 87, baseType: !285, size: 64, offset: 1280)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2203, file: !2141, line: 96, baseType: !376, size: 32, offset: 1024)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2146, file: !2141, line: 308, baseType: !2253, size: 4608, align: 512)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2141, line: 289, size: 4608, align: 512, elements: !2254)
!2254 = !{!2255, !2256, !2263}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2253, file: !2141, line: 290, baseType: !2164, size: 4096, align: 128)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2253, file: !2141, line: 291, baseType: !2257, size: 512, offset: 4096)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2141, line: 268, size: 512, elements: !2258)
!2258 = !{!2259, !2260, !2261}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2257, file: !2141, line: 269, baseType: !382, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2257, file: !2141, line: 270, baseType: !382, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2257, file: !2141, line: 271, baseType: !2262, size: 384, offset: 128)
!2262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 384, elements: !1584)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2253, file: !2141, line: 292, baseType: !2264, offset: 4608)
!2264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1311, elements: !1682)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2146, file: !2141, line: 309, baseType: !2266, size: 32768)
!2266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1311, size: 32768, elements: !2267)
!2267 = !{!2268}
!2268 = !DISubrange(count: 4096)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1172, file: !682, line: 378, baseType: !2270, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1168, file: !682, line: 384, baseType: !1461, size: 192, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !937, file: !682, line: 500, baseType: !194, offset: 6656)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !937, file: !682, line: 501, baseType: !2274, size: 64, offset: 6656)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !682, line: 387, flags: DIFlagFwdDecl)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !937, file: !682, line: 516, baseType: !1672, size: 64, offset: 6720)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !937, file: !682, line: 519, baseType: !313, size: 64, offset: 6784)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !937, file: !682, line: 521, baseType: !2279, size: 64, offset: 6848)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !682, line: 521, flags: DIFlagFwdDecl)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !937, file: !682, line: 545, baseType: !706, size: 32, offset: 6912)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !937, file: !682, line: 548, baseType: !158, size: 8, offset: 6944)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !937, file: !682, line: 550, baseType: !2284, offset: 6952)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2285, line: 142, elements: !208)
!2285 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !937, file: !682, line: 554, baseType: !1918, size: 256, offset: 6976)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !937, file: !682, line: 557, baseType: !376, size: 32, offset: 7232)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !934, file: !682, line: 565, baseType: !2289, offset: 7296)
!2289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, elements: !2290)
!2290 = !{!2291}
!2291 = !DISubrange(count: -1)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !930, file: !682, line: 151, baseType: !706, size: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !923, file: !682, line: 156, baseType: !194, offset: 256)
!2294 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !682, line: 159, baseType: !2295, size: 128)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !686, file: !682, line: 159, size: 128, elements: !2296)
!2296 = !{!2297, !2361}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2295, file: !682, line: 161, baseType: !2298, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2300)
!2300 = !{!2301, !2311, !2332, !2333, !2334, !2335, !2336, !2348, !2349, !2350}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2299, file: !31, line: 111, baseType: !2302, size: 384)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2303)
!2303 = !{!2304, !2306, !2307, !2308, !2309, !2310}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2302, file: !31, line: 20, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2302, file: !31, line: 21, baseType: !2305, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2302, file: !31, line: 22, baseType: !2305, size: 64, offset: 128)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2302, file: !31, line: 23, baseType: !285, size: 64, offset: 192)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2302, file: !31, line: 24, baseType: !285, size: 64, offset: 256)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2302, file: !31, line: 25, baseType: !285, size: 64, offset: 320)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2299, file: !31, line: 112, baseType: !2312, size: 64, offset: 384)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2314, line: 105, size: 128, elements: !2315)
!2314 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2315 = !{!2316, !2317}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2313, file: !2314, line: 110, baseType: !285, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2313, file: !2314, line: 118, baseType: !2318, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2314, line: 95, size: 448, elements: !2320)
!2320 = !{!2321, !2322, !2327, !2328, !2329, !2330, !2331}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2319, file: !2314, line: 96, baseType: !730, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2319, file: !2314, line: 97, baseType: !2323, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2314, line: 60, baseType: !2325)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{null, !2312}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2319, file: !2314, line: 98, baseType: !2323, size: 64, offset: 128)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2319, file: !2314, line: 99, baseType: !158, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2319, file: !2314, line: 100, baseType: !158, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2319, file: !2314, line: 101, baseType: !326, size: 128, align: 64, offset: 256)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2319, file: !2314, line: 102, baseType: !2312, size: 64, offset: 384)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2299, file: !31, line: 113, baseType: !2313, size: 128, offset: 448)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2299, file: !31, line: 114, baseType: !1461, size: 192, offset: 576)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2299, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2299, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2299, file: !31, line: 117, baseType: !2337, size: 64, offset: 832)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2339)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2340)
!2340 = !{!2341, !2342, !2346, !2347}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2339, file: !31, line: 73, baseType: !799, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2339, file: !31, line: 78, baseType: !2343, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{null, !2298}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2339, file: !31, line: 83, baseType: !2343, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2339, file: !31, line: 89, baseType: !986, size: 64, offset: 192)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2299, file: !31, line: 118, baseType: !125, size: 64, offset: 896)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2299, file: !31, line: 119, baseType: !131, size: 32, offset: 960)
!2350 = !DIDerivedType(tag: DW_TAG_member, scope: !2299, file: !31, line: 120, baseType: !2351, size: 128, offset: 1024)
!2351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2299, file: !31, line: 120, size: 128, elements: !2352)
!2352 = !{!2353, !2359}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2351, file: !31, line: 121, baseType: !2354, size: 128)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2355, line: 6, size: 128, elements: !2356)
!2355 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2356 = !{!2357, !2358}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2354, file: !2355, line: 7, baseType: !382, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2354, file: !2355, line: 8, baseType: !382, size: 64, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2351, file: !31, line: 122, baseType: !2360)
!2360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2354, elements: !1682)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2295, file: !682, line: 162, baseType: !125, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !686, file: !682, line: 176, baseType: !326, size: 128, align: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, scope: !681, file: !682, line: 179, baseType: !2364, size: 32, offset: 384)
!2364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !681, file: !682, line: 179, size: 32, elements: !2365)
!2365 = !{!2366, !2367, !2368, !2369}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2364, file: !682, line: 184, baseType: !706, size: 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2364, file: !682, line: 192, baseType: !7, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2364, file: !682, line: 194, baseType: !7, size: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2364, file: !682, line: 195, baseType: !131, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !681, file: !682, line: 199, baseType: !706, size: 32, offset: 416)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !616, file: !44, line: 1964, baseType: !2372, size: 64, offset: 1344)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!270, !558, !2375}
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2377, line: 12, size: 256, elements: !2378)
!2377 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2378 = !{!2379, !2380, !2381, !2382, !2383}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2376, file: !2377, line: 13, baseType: !123, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2376, file: !2377, line: 16, baseType: !131, size: 32, offset: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2376, file: !2377, line: 23, baseType: !285, size: 64, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2376, file: !2377, line: 30, baseType: !285, size: 64, offset: 128)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2376, file: !2377, line: 33, baseType: !2384, size: 64, offset: 192)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !682, line: 27, flags: DIFlagFwdDecl)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !616, file: !44, line: 1966, baseType: !2372, size: 64, offset: 1408)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !559, file: !44, line: 1424, baseType: !2388, size: 64, offset: 448)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2390)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2391)
!2391 = !{!2392, !2438, !2442, !2446, !2447, !2448, !2449, !2450, !2455, !2460, !2464}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2390, file: !38, line: 323, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!131, !2396}
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2398)
!2398 = !{!2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2423, !2424, !2425}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2397, file: !38, line: 295, baseType: !598, size: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2397, file: !38, line: 296, baseType: !181, size: 128, offset: 128)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2397, file: !38, line: 297, baseType: !181, size: 128, offset: 256)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2397, file: !38, line: 298, baseType: !181, size: 128, offset: 384)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2397, file: !38, line: 299, baseType: !1132, size: 192, offset: 512)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2397, file: !38, line: 300, baseType: !194, offset: 704)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2397, file: !38, line: 301, baseType: !706, size: 32, offset: 704)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2397, file: !38, line: 302, baseType: !558, size: 64, offset: 768)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2397, file: !38, line: 303, baseType: !2408, size: 64, offset: 832)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2409)
!2409 = !{!2410, !2422}
!2410 = !DIDerivedType(tag: DW_TAG_member, scope: !2408, file: !38, line: 69, baseType: !2411, size: 32)
!2411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2408, file: !38, line: 69, size: 32, elements: !2412)
!2412 = !{!2413, !2414, !2415}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2411, file: !38, line: 70, baseType: !396, size: 32)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2411, file: !38, line: 71, baseType: !404, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2411, file: !38, line: 72, baseType: !2416, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2417, line: 24, baseType: !2418)
!2417 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2417, line: 22, size: 32, elements: !2419)
!2419 = !{!2420}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2418, file: !2417, line: 23, baseType: !2421, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2417, line: 20, baseType: !402)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2408, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2397, file: !38, line: 304, baseType: !490, size: 64, offset: 896)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2397, file: !38, line: 305, baseType: !285, size: 64, offset: 960)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2397, file: !38, line: 306, baseType: !2426, size: 576, offset: 1024)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2427)
!2427 = !{!2428, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2426, file: !38, line: 206, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !492)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2426, file: !38, line: 207, baseType: !2429, size: 64, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2426, file: !38, line: 208, baseType: !2429, size: 64, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2426, file: !38, line: 209, baseType: !2429, size: 64, offset: 192)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2426, file: !38, line: 210, baseType: !2429, size: 64, offset: 256)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2426, file: !38, line: 211, baseType: !2429, size: 64, offset: 320)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2426, file: !38, line: 212, baseType: !2429, size: 64, offset: 384)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2426, file: !38, line: 213, baseType: !498, size: 64, offset: 448)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2426, file: !38, line: 214, baseType: !498, size: 64, offset: 512)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2390, file: !38, line: 324, baseType: !2439, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!2396, !558, !131}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2390, file: !38, line: 325, baseType: !2443, size: 64, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{null, !2396}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2390, file: !38, line: 326, baseType: !2393, size: 64, offset: 192)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2390, file: !38, line: 327, baseType: !2393, size: 64, offset: 256)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2390, file: !38, line: 328, baseType: !2393, size: 64, offset: 320)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2390, file: !38, line: 329, baseType: !644, size: 64, offset: 384)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2390, file: !38, line: 332, baseType: !2451, size: 64, offset: 448)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!2454, !390}
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2390, file: !38, line: 333, baseType: !2456, size: 64, offset: 512)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!131, !390, !2459}
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2390, file: !38, line: 335, baseType: !2461, size: 64, offset: 576)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!131, !390, !2454}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2390, file: !38, line: 337, baseType: !2465, size: 64, offset: 640)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!131, !558, !2468}
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !559, file: !44, line: 1425, baseType: !2470, size: 64, offset: 512)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2472)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2473)
!2473 = !{!2474, !2478, !2479, !2483, !2484, !2485, !2500, !2523, !2527, !2528, !2551}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2472, file: !38, line: 429, baseType: !2475, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!131, !558, !131, !131, !508}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2472, file: !38, line: 430, baseType: !644, size: 64, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2472, file: !38, line: 431, baseType: !2480, size: 64, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!131, !558, !7}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2472, file: !38, line: 432, baseType: !2480, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2472, file: !38, line: 433, baseType: !644, size: 64, offset: 256)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2472, file: !38, line: 434, baseType: !2486, size: 64, offset: 320)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!131, !558, !131, !2489}
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2491)
!2491 = !{!2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2490, file: !38, line: 416, baseType: !131, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2490, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2490, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2490, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2490, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2490, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2490, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2490, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2472, file: !38, line: 435, baseType: !2501, size: 64, offset: 384)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!131, !558, !2408, !2504}
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2506)
!2506 = !{!2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2505, file: !38, line: 344, baseType: !131, size: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2505, file: !38, line: 345, baseType: !382, size: 64, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2505, file: !38, line: 346, baseType: !382, size: 64, offset: 128)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2505, file: !38, line: 347, baseType: !382, size: 64, offset: 192)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2505, file: !38, line: 348, baseType: !382, size: 64, offset: 256)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2505, file: !38, line: 349, baseType: !382, size: 64, offset: 320)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2505, file: !38, line: 350, baseType: !382, size: 64, offset: 384)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2505, file: !38, line: 351, baseType: !736, size: 64, offset: 448)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2505, file: !38, line: 353, baseType: !736, size: 64, offset: 512)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2505, file: !38, line: 354, baseType: !131, size: 32, offset: 576)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2505, file: !38, line: 355, baseType: !131, size: 32, offset: 608)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2505, file: !38, line: 356, baseType: !382, size: 64, offset: 640)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2505, file: !38, line: 357, baseType: !382, size: 64, offset: 704)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2505, file: !38, line: 358, baseType: !382, size: 64, offset: 768)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2505, file: !38, line: 359, baseType: !736, size: 64, offset: 832)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2505, file: !38, line: 360, baseType: !131, size: 32, offset: 896)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2472, file: !38, line: 436, baseType: !2524, size: 64, offset: 448)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!131, !558, !2468, !2504}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2472, file: !38, line: 438, baseType: !2501, size: 64, offset: 512)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2472, file: !38, line: 439, baseType: !2529, size: 64, offset: 576)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!131, !558, !2532}
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2534)
!2534 = !{!2535, !2536}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2533, file: !38, line: 410, baseType: !7, size: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2533, file: !38, line: 411, baseType: !2537, size: 1344, offset: 64)
!2537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2538, size: 1344, elements: !236)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2539)
!2539 = !{!2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2550}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2538, file: !38, line: 396, baseType: !7, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2538, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2538, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2538, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2538, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2538, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2538, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2538, file: !38, line: 404, baseType: !384, size: 64, offset: 256)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2538, file: !38, line: 405, baseType: !2549, size: 64, offset: 320)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !124, line: 126, baseType: !382)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2538, file: !38, line: 406, baseType: !2549, size: 64, offset: 384)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2472, file: !38, line: 440, baseType: !2480, size: 64, offset: 640)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !559, file: !44, line: 1426, baseType: !2553, size: 64, offset: 576)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2555)
!2555 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !559, file: !44, line: 1427, baseType: !285, size: 64, offset: 640)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !559, file: !44, line: 1428, baseType: !285, size: 64, offset: 704)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !559, file: !44, line: 1429, baseType: !285, size: 64, offset: 768)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !559, file: !44, line: 1430, baseType: !343, size: 64, offset: 832)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !559, file: !44, line: 1431, baseType: !726, size: 256, offset: 896)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !559, file: !44, line: 1432, baseType: !131, size: 32, offset: 1152)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !559, file: !44, line: 1433, baseType: !706, size: 32, offset: 1184)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !559, file: !44, line: 1437, baseType: !2564, size: 64, offset: 1216)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2567)
!2567 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !559, file: !44, line: 1449, baseType: !2569, size: 64, offset: 1280)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !359, line: 34, size: 64, elements: !2570)
!2570 = !{!2571}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2569, file: !359, line: 35, baseType: !362, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !559, file: !44, line: 1450, baseType: !181, size: 128, offset: 1344)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !559, file: !44, line: 1451, baseType: !2574, size: 64, offset: 1472)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !559, file: !44, line: 1452, baseType: !1884, size: 64, offset: 1536)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !559, file: !44, line: 1453, baseType: !2578, size: 64, offset: 1600)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !559, file: !44, line: 1454, baseType: !598, size: 128, offset: 1664)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !559, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !559, file: !44, line: 1456, baseType: !2583, size: 2432, offset: 1856)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2584)
!2584 = !{!2585, !2586, !2587, !2589, !2621}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2583, file: !38, line: 519, baseType: !7, size: 32)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2583, file: !38, line: 520, baseType: !726, size: 256, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2583, file: !38, line: 521, baseType: !2588, size: 192, offset: 320)
!2588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 192, elements: !236)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2583, file: !38, line: 522, baseType: !2590, size: 1728, offset: 512)
!2590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2591, size: 1728, elements: !236)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2592)
!2592 = !{!2593, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2591, file: !38, line: 223, baseType: !2594, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2596)
!2596 = !{!2597, !2598, !2611, !2612}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2595, file: !38, line: 444, baseType: !131, size: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2595, file: !38, line: 445, baseType: !2599, size: 64, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2601)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2602)
!2602 = !{!2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2601, file: !38, line: 311, baseType: !644, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2601, file: !38, line: 312, baseType: !644, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2601, file: !38, line: 313, baseType: !644, size: 64, offset: 128)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2601, file: !38, line: 314, baseType: !644, size: 64, offset: 192)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2601, file: !38, line: 315, baseType: !2393, size: 64, offset: 256)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2601, file: !38, line: 316, baseType: !2393, size: 64, offset: 320)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2601, file: !38, line: 317, baseType: !2393, size: 64, offset: 384)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2601, file: !38, line: 318, baseType: !2465, size: 64, offset: 448)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2595, file: !38, line: 446, baseType: !120, size: 64, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2595, file: !38, line: 447, baseType: !2594, size: 64, offset: 192)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2591, file: !38, line: 224, baseType: !131, size: 32, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2591, file: !38, line: 226, baseType: !181, size: 128, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2591, file: !38, line: 227, baseType: !285, size: 64, offset: 256)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2591, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2591, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2591, file: !38, line: 230, baseType: !2429, size: 64, offset: 384)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2591, file: !38, line: 231, baseType: !2429, size: 64, offset: 448)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2591, file: !38, line: 232, baseType: !125, size: 64, offset: 512)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2583, file: !38, line: 523, baseType: !2622, size: 192, offset: 2240)
!2622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2599, size: 192, elements: !236)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !559, file: !44, line: 1458, baseType: !2624, size: 2112, offset: 4288)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2625)
!2625 = !{!2626, !2627, !2628}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2624, file: !44, line: 1411, baseType: !131, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2624, file: !44, line: 1412, baseType: !1440, size: 128, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2624, file: !44, line: 1413, baseType: !2629, size: 1920, offset: 192)
!2629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2630, size: 1920, elements: !236)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2631, line: 12, size: 640, elements: !2632)
!2631 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2632 = !{!2633, !2641, !2643, !2648, !2649}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2630, file: !2631, line: 13, baseType: !2634, size: 320)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2635, line: 17, size: 320, elements: !2636)
!2635 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2636 = !{!2637, !2638, !2639, !2640}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2634, file: !2635, line: 18, baseType: !131, size: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2634, file: !2635, line: 19, baseType: !131, size: 32, offset: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2634, file: !2635, line: 20, baseType: !1440, size: 128, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2634, file: !2635, line: 22, baseType: !326, size: 128, align: 64, offset: 192)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2630, file: !2631, line: 14, baseType: !2642, size: 64, offset: 320)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2630, file: !2631, line: 15, baseType: !2644, size: 64, offset: 384)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2645, line: 16, size: 64, elements: !2646)
!2645 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2646 = !{!2647}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2644, file: !2645, line: 17, baseType: !1175, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2630, file: !2631, line: 16, baseType: !1440, size: 128, offset: 448)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2630, file: !2631, line: 17, baseType: !706, size: 32, offset: 576)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !559, file: !44, line: 1465, baseType: !125, size: 64, offset: 6400)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !559, file: !44, line: 1468, baseType: !376, size: 32, offset: 6464)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !559, file: !44, line: 1470, baseType: !498, size: 64, offset: 6528)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !559, file: !44, line: 1471, baseType: !498, size: 64, offset: 6592)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !559, file: !44, line: 1473, baseType: !378, size: 32, offset: 6656)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !559, file: !44, line: 1474, baseType: !2656, size: 64, offset: 6720)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !559, file: !44, line: 1477, baseType: !2659, size: 256, offset: 6784)
!2659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 256, elements: !2189)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !559, file: !44, line: 1478, baseType: !2661, size: 128, offset: 7040)
!2661 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2662, line: 18, baseType: !2663)
!2662 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2662, line: 16, size: 128, elements: !2664)
!2664 = !{!2665}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2663, file: !2662, line: 17, baseType: !2666, size: 128)
!2666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1312, size: 128, elements: !1694)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !559, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !559, file: !44, line: 1481, baseType: !2669, size: 32, offset: 7200)
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !124, line: 150, baseType: !7)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !559, file: !44, line: 1487, baseType: !1132, size: 192, offset: 7232)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !559, file: !44, line: 1493, baseType: !177, size: 64, offset: 7424)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !559, file: !44, line: 1495, baseType: !2673, size: 64, offset: 7488)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2675)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !341, line: 135, size: 1024, align: 512, elements: !2676)
!2676 = !{!2677, !2681, !2682, !2689, !2695, !2699, !2703, !2707, !2708, !2712, !2716, !2721, !2725}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2675, file: !341, line: 136, baseType: !2678, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!131, !343, !7}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2675, file: !341, line: 137, baseType: !2678, size: 64, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2675, file: !341, line: 138, baseType: !2683, size: 64, offset: 128)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!131, !2686, !2688}
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2675, file: !341, line: 139, baseType: !2690, size: 64, offset: 192)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!131, !2686, !7, !177, !2693}
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2675, file: !341, line: 141, baseType: !2696, size: 64, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!131, !2686}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2675, file: !341, line: 142, baseType: !2700, size: 64, offset: 320)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!131, !343}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2675, file: !341, line: 143, baseType: !2704, size: 64, offset: 384)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{null, !343}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2675, file: !341, line: 144, baseType: !2704, size: 64, offset: 448)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2675, file: !341, line: 145, baseType: !2709, size: 64, offset: 512)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{null, !343, !390}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2675, file: !341, line: 146, baseType: !2713, size: 64, offset: 576)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!235, !343, !235, !131}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2675, file: !341, line: 147, baseType: !2717, size: 64, offset: 640)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!339, !2720}
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2675, file: !341, line: 148, baseType: !2722, size: 64, offset: 704)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!131, !508, !158}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2675, file: !341, line: 149, baseType: !2726, size: 64, offset: 768)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!343, !343, !2729}
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !559, file: !44, line: 1500, baseType: !131, size: 32, offset: 7552)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !559, file: !44, line: 1502, baseType: !2733, size: 448, offset: 7616)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2377, line: 60, size: 448, elements: !2734)
!2734 = !{!2735, !2740, !2741, !2742, !2743, !2744, !2745}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2733, file: !2377, line: 61, baseType: !2736, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!285, !2739, !2375}
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2733, file: !2377, line: 63, baseType: !2736, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2733, file: !2377, line: 66, baseType: !270, size: 64, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2733, file: !2377, line: 67, baseType: !131, size: 32, offset: 192)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2733, file: !2377, line: 68, baseType: !7, size: 32, offset: 224)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2733, file: !2377, line: 71, baseType: !181, size: 128, offset: 256)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2733, file: !2377, line: 77, baseType: !2746, size: 64, offset: 384)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !559, file: !44, line: 1505, baseType: !730, size: 64, offset: 8064)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !559, file: !44, line: 1508, baseType: !730, size: 64, offset: 8128)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !559, file: !44, line: 1511, baseType: !131, size: 32, offset: 8192)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !559, file: !44, line: 1514, baseType: !868, size: 32, offset: 8224)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !559, file: !44, line: 1517, baseType: !2752, size: 64, offset: 8256)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1919, line: 18, flags: DIFlagFwdDecl)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !559, file: !44, line: 1518, baseType: !594, size: 64, offset: 8320)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !559, file: !44, line: 1525, baseType: !1672, size: 64, offset: 8384)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !559, file: !44, line: 1532, baseType: !2757, size: 64, offset: 8448)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2758, line: 52, size: 64, elements: !2759)
!2758 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2759 = !{!2760}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2757, file: !2758, line: 53, baseType: !2761, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2758, line: 40, size: 256, elements: !2763)
!2763 = !{!2764, !2765, !2770}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2762, file: !2758, line: 42, baseType: !194)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2762, file: !2758, line: 44, baseType: !2766, size: 192)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2758, line: 28, size: 192, elements: !2767)
!2767 = !{!2768, !2769}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2766, file: !2758, line: 29, baseType: !181, size: 128)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2766, file: !2758, line: 31, baseType: !270, size: 64, offset: 128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2762, file: !2758, line: 49, baseType: !270, size: 64, offset: 192)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !559, file: !44, line: 1533, baseType: !2757, size: 64, offset: 8512)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !559, file: !44, line: 1534, baseType: !326, size: 128, align: 64, offset: 8576)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !559, file: !44, line: 1535, baseType: !1918, size: 256, offset: 8704)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !559, file: !44, line: 1537, baseType: !1132, size: 192, offset: 8960)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !559, file: !44, line: 1542, baseType: !131, size: 32, offset: 9152)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !559, file: !44, line: 1545, baseType: !194, offset: 9184)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !559, file: !44, line: 1546, baseType: !181, size: 128, offset: 9216)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !559, file: !44, line: 1548, baseType: !194, offset: 9344)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !559, file: !44, line: 1549, baseType: !181, size: 128, offset: 9344)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !391, file: !44, line: 624, baseType: !693, size: 64, offset: 256)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !391, file: !44, line: 631, baseType: !285, size: 64, offset: 320)
!2782 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !44, line: 639, baseType: !2783, size: 32, offset: 384)
!2783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !44, line: 639, size: 32, elements: !2784)
!2784 = !{!2785, !2787}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2783, file: !44, line: 640, baseType: !2786, size: 32)
!2786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2783, file: !44, line: 641, baseType: !7, size: 32)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !391, file: !44, line: 643, baseType: !472, size: 32, offset: 416)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !391, file: !44, line: 644, baseType: !490, size: 64, offset: 448)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !391, file: !44, line: 645, baseType: !494, size: 128, offset: 512)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !391, file: !44, line: 646, baseType: !494, size: 128, offset: 640)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !391, file: !44, line: 647, baseType: !494, size: 128, offset: 768)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !391, file: !44, line: 648, baseType: !194, offset: 896)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !391, file: !44, line: 649, baseType: !277, size: 16, offset: 896)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !391, file: !44, line: 650, baseType: !1311, size: 8, offset: 912)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !391, file: !44, line: 651, baseType: !1311, size: 8, offset: 920)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !391, file: !44, line: 652, baseType: !2549, size: 64, offset: 960)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !391, file: !44, line: 659, baseType: !285, size: 64, offset: 1024)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !391, file: !44, line: 660, baseType: !726, size: 256, offset: 1088)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !391, file: !44, line: 662, baseType: !285, size: 64, offset: 1344)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !391, file: !44, line: 663, baseType: !285, size: 64, offset: 1408)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !391, file: !44, line: 665, baseType: !598, size: 128, offset: 1472)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !391, file: !44, line: 666, baseType: !181, size: 128, offset: 1600)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !391, file: !44, line: 675, baseType: !181, size: 128, offset: 1728)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !391, file: !44, line: 676, baseType: !181, size: 128, offset: 1856)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !391, file: !44, line: 677, baseType: !181, size: 128, offset: 1984)
!2807 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !44, line: 678, baseType: !2808, size: 128, offset: 2112)
!2808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !44, line: 678, size: 128, elements: !2809)
!2809 = !{!2810, !2811}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2808, file: !44, line: 679, baseType: !594, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2808, file: !44, line: 680, baseType: !326, size: 128, align: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !391, file: !44, line: 682, baseType: !732, size: 64, offset: 2240)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !391, file: !44, line: 683, baseType: !732, size: 64, offset: 2304)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !391, file: !44, line: 684, baseType: !706, size: 32, offset: 2368)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !391, file: !44, line: 685, baseType: !706, size: 32, offset: 2400)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !391, file: !44, line: 686, baseType: !706, size: 32, offset: 2432)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !391, file: !44, line: 688, baseType: !706, size: 32, offset: 2464)
!2818 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !44, line: 690, baseType: !2819, size: 64, offset: 2496)
!2819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !44, line: 690, size: 64, elements: !2820)
!2820 = !{!2821, !3044}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2819, file: !44, line: 691, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2824)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2825)
!2825 = !{!2826, !2827, !2831, !2836, !2840, !2841, !2842, !2846, !2859, !2860, !2868, !2872, !2873, !2877, !2878, !2882, !2887, !2888, !2892, !2896, !3004, !3008, !3009, !3013, !3014, !3018, !3022, !3027, !3031, !3035, !3039, !3043}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2824, file: !44, line: 1823, baseType: !120, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2824, file: !44, line: 1824, baseType: !2828, size: 64, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!490, !313, !490, !131}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2824, file: !44, line: 1825, baseType: !2832, size: 64, offset: 128)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!266, !313, !235, !282, !2835}
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2824, file: !44, line: 1826, baseType: !2837, size: 64, offset: 192)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!266, !313, !177, !282, !2835}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2824, file: !44, line: 1827, baseType: !803, size: 64, offset: 256)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2824, file: !44, line: 1828, baseType: !803, size: 64, offset: 320)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2824, file: !44, line: 1829, baseType: !2843, size: 64, offset: 384)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!131, !806, !158}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2824, file: !44, line: 1830, baseType: !2847, size: 64, offset: 448)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!131, !313, !2850}
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2852)
!2852 = !{!2853, !2858}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2851, file: !44, line: 1777, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2855)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!131, !2850, !177, !131, !490, !382, !7}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2851, file: !44, line: 1778, baseType: !490, size: 64, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2824, file: !44, line: 1831, baseType: !2847, size: 64, offset: 512)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2824, file: !44, line: 1832, baseType: !2861, size: 64, offset: 576)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!2864, !313, !2866}
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2865, line: 52, baseType: !7)
!2865 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !578, line: 27, flags: DIFlagFwdDecl)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2824, file: !44, line: 1833, baseType: !2869, size: 64, offset: 640)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!270, !313, !7, !285}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2824, file: !44, line: 1834, baseType: !2869, size: 64, offset: 704)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2824, file: !44, line: 1835, baseType: !2874, size: 64, offset: 768)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!131, !313, !940}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2824, file: !44, line: 1836, baseType: !285, size: 64, offset: 832)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2824, file: !44, line: 1837, baseType: !2879, size: 64, offset: 896)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!131, !390, !313}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2824, file: !44, line: 1838, baseType: !2883, size: 64, offset: 960)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!131, !313, !2886}
!2886 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !125)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2824, file: !44, line: 1839, baseType: !2879, size: 64, offset: 1024)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2824, file: !44, line: 1840, baseType: !2889, size: 64, offset: 1088)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!131, !313, !490, !490, !131}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2824, file: !44, line: 1841, baseType: !2893, size: 64, offset: 1152)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!131, !131, !313, !131}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2824, file: !44, line: 1842, baseType: !2897, size: 64, offset: 1216)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!131, !313, !131, !2900}
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2902)
!2902 = !{!2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2934, !2935, !2936, !2949, !2980}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2901, file: !44, line: 1063, baseType: !2900, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2901, file: !44, line: 1064, baseType: !181, size: 128, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2901, file: !44, line: 1065, baseType: !598, size: 128, offset: 192)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2901, file: !44, line: 1066, baseType: !181, size: 128, offset: 320)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2901, file: !44, line: 1069, baseType: !181, size: 128, offset: 448)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2901, file: !44, line: 1072, baseType: !2886, size: 64, offset: 576)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2901, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2901, file: !44, line: 1074, baseType: !388, size: 8, offset: 672)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2901, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2901, file: !44, line: 1076, baseType: !131, size: 32, offset: 736)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2901, file: !44, line: 1077, baseType: !1440, size: 128, offset: 768)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2901, file: !44, line: 1078, baseType: !313, size: 64, offset: 896)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2901, file: !44, line: 1079, baseType: !490, size: 64, offset: 960)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2901, file: !44, line: 1080, baseType: !490, size: 64, offset: 1024)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2901, file: !44, line: 1082, baseType: !2918, size: 64, offset: 1088)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2920)
!2920 = !{!2921, !2929, !2930, !2931, !2932, !2933}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2919, file: !44, line: 1315, baseType: !2922)
!2922 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2923, line: 20, baseType: !2924)
!2923 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2923, line: 11, elements: !2925)
!2925 = !{!2926}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2924, file: !2923, line: 12, baseType: !2927)
!2927 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !206, line: 33, baseType: !2928)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !206, line: 31, elements: !208)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2919, file: !44, line: 1316, baseType: !131, size: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2919, file: !44, line: 1317, baseType: !131, size: 32, offset: 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2919, file: !44, line: 1318, baseType: !2918, size: 64, offset: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2919, file: !44, line: 1319, baseType: !313, size: 64, offset: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2919, file: !44, line: 1320, baseType: !326, size: 128, align: 64, offset: 192)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2901, file: !44, line: 1084, baseType: !285, size: 64, offset: 1152)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2901, file: !44, line: 1085, baseType: !285, size: 64, offset: 1216)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2901, file: !44, line: 1087, baseType: !2937, size: 64, offset: 1280)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2939)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2940)
!2940 = !{!2941, !2945}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2939, file: !44, line: 1012, baseType: !2942, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{null, !2900, !2900}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2939, file: !44, line: 1013, baseType: !2946, size: 64, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{null, !2900}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2901, file: !44, line: 1088, baseType: !2950, size: 64, offset: 1344)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2952)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2953)
!2953 = !{!2954, !2958, !2962, !2963, !2967, !2971, !2975, !2979}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2952, file: !44, line: 1017, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!2886, !2886}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2952, file: !44, line: 1018, baseType: !2959, size: 64, offset: 64)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{null, !2886}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2952, file: !44, line: 1019, baseType: !2946, size: 64, offset: 128)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2952, file: !44, line: 1020, baseType: !2964, size: 64, offset: 192)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!131, !2900, !131}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2952, file: !44, line: 1021, baseType: !2968, size: 64, offset: 256)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!158, !2900}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2952, file: !44, line: 1022, baseType: !2972, size: 64, offset: 320)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!131, !2900, !131, !184}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2952, file: !44, line: 1023, baseType: !2976, size: 64, offset: 384)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{null, !2900, !780}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2952, file: !44, line: 1024, baseType: !2968, size: 64, offset: 448)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2901, file: !44, line: 1097, baseType: !2981, size: 256, offset: 1408)
!2981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2901, file: !44, line: 1089, size: 256, elements: !2982)
!2982 = !{!2983, !2992, !2998}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2981, file: !44, line: 1090, baseType: !2984, size: 256)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2985, line: 10, size: 256, elements: !2986)
!2985 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2986 = !{!2987, !2988, !2991}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2984, file: !2985, line: 11, baseType: !376, size: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2984, file: !2985, line: 12, baseType: !2989, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2985, line: 5, flags: DIFlagFwdDecl)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2984, file: !2985, line: 13, baseType: !181, size: 128, offset: 128)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2981, file: !44, line: 1091, baseType: !2993, size: 64)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2985, line: 17, size: 64, elements: !2994)
!2994 = !{!2995}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2993, file: !2985, line: 18, baseType: !2996, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2985, line: 16, flags: DIFlagFwdDecl)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2981, file: !44, line: 1096, baseType: !2999, size: 192)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2981, file: !44, line: 1092, size: 192, elements: !3000)
!3000 = !{!3001, !3002, !3003}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2999, file: !44, line: 1093, baseType: !181, size: 128)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2999, file: !44, line: 1094, baseType: !131, size: 32, offset: 128)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2999, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2824, file: !44, line: 1843, baseType: !3005, size: 64, offset: 1280)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!266, !313, !680, !131, !282, !2835, !131}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2824, file: !44, line: 1844, baseType: !1060, size: 64, offset: 1344)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2824, file: !44, line: 1845, baseType: !3010, size: 64, offset: 1408)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!131, !131}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2824, file: !44, line: 1846, baseType: !2897, size: 64, offset: 1472)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2824, file: !44, line: 1847, baseType: !3015, size: 64, offset: 1536)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!266, !2059, !313, !2835, !282, !7}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2824, file: !44, line: 1848, baseType: !3019, size: 64, offset: 1600)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!266, !313, !2835, !2059, !282, !7}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2824, file: !44, line: 1849, baseType: !3023, size: 64, offset: 1664)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!131, !313, !270, !3026, !780}
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2824, file: !44, line: 1850, baseType: !3028, size: 64, offset: 1728)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!270, !313, !131, !490, !490}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2824, file: !44, line: 1852, baseType: !3032, size: 64, offset: 1792)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{null, !670, !313}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2824, file: !44, line: 1856, baseType: !3036, size: 64, offset: 1856)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!266, !313, !490, !313, !490, !282, !7}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2824, file: !44, line: 1858, baseType: !3040, size: 64, offset: 1920)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!490, !313, !490, !313, !490, !490, !7}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2824, file: !44, line: 1861, baseType: !2889, size: 64, offset: 1984)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2819, file: !44, line: 692, baseType: !623, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !391, file: !44, line: 694, baseType: !3046, size: 64, offset: 2560)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3048)
!3048 = !{!3049, !3050, !3051, !3052}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3047, file: !44, line: 1101, baseType: !194)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3047, file: !44, line: 1102, baseType: !181, size: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3047, file: !44, line: 1103, baseType: !181, size: 128, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3047, file: !44, line: 1104, baseType: !181, size: 128, offset: 256)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !391, file: !44, line: 695, baseType: !694, size: 1216, align: 64, offset: 2624)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !391, file: !44, line: 696, baseType: !181, size: 128, offset: 3840)
!3055 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !44, line: 697, baseType: !3056, size: 64, offset: 3968)
!3056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !44, line: 697, size: 64, elements: !3057)
!3057 = !{!3058, !3059, !3060, !3063, !3064}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3056, file: !44, line: 698, baseType: !2059, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3056, file: !44, line: 699, baseType: !2574, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3056, file: !44, line: 700, baseType: !3061, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3056, file: !44, line: 701, baseType: !235, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3056, file: !44, line: 702, baseType: !7, size: 32)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !391, file: !44, line: 705, baseType: !378, size: 32, offset: 4032)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !391, file: !44, line: 708, baseType: !378, size: 32, offset: 4064)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !391, file: !44, line: 709, baseType: !2656, size: 64, offset: 4096)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !391, file: !44, line: 720, baseType: !125, size: 64, offset: 4160)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !344, file: !341, line: 98, baseType: !3070, size: 256, offset: 448)
!3070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 256, elements: !2189)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !344, file: !341, line: 101, baseType: !3072, size: 32, offset: 704)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3073, line: 25, size: 32, elements: !3074)
!3073 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3074 = !{!3075}
!3075 = !DIDerivedType(tag: DW_TAG_member, scope: !3072, file: !3073, line: 26, baseType: !3076, size: 32)
!3076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3072, file: !3073, line: 26, size: 32, elements: !3077)
!3077 = !{!3078}
!3078 = !DIDerivedType(tag: DW_TAG_member, scope: !3076, file: !3073, line: 30, baseType: !3079, size: 32)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3076, file: !3073, line: 30, size: 32, elements: !3080)
!3080 = !{!3081, !3082}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3079, file: !3073, line: 31, baseType: !194)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3079, file: !3073, line: 32, baseType: !131, size: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !344, file: !341, line: 102, baseType: !2673, size: 64, offset: 768)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !344, file: !341, line: 103, baseType: !558, size: 64, offset: 832)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !344, file: !341, line: 104, baseType: !285, size: 64, offset: 896)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !344, file: !341, line: 105, baseType: !125, size: 64, offset: 960)
!3087 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !341, line: 107, baseType: !3088, size: 128, offset: 1024)
!3088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !341, line: 107, size: 128, elements: !3089)
!3089 = !{!3090, !3091}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3088, file: !341, line: 108, baseType: !181, size: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3088, file: !341, line: 109, baseType: !3092, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !344, file: !341, line: 111, baseType: !181, size: 128, offset: 1152)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !344, file: !341, line: 112, baseType: !181, size: 128, offset: 1280)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !344, file: !341, line: 120, baseType: !3096, size: 128, offset: 1408)
!3096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !341, line: 116, size: 128, elements: !3097)
!3097 = !{!3098, !3099, !3100}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3096, file: !341, line: 117, baseType: !598, size: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3096, file: !341, line: 118, baseType: !358, size: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3096, file: !341, line: 119, baseType: !326, size: 128, align: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !314, file: !44, line: 922, baseType: !390, size: 64, offset: 256)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !314, file: !44, line: 923, baseType: !2822, size: 64, offset: 320)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !314, file: !44, line: 929, baseType: !194, offset: 384)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !314, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !314, file: !44, line: 931, baseType: !730, size: 64, offset: 448)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !314, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !314, file: !44, line: 933, baseType: !2669, size: 32, offset: 544)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !314, file: !44, line: 934, baseType: !1132, size: 192, offset: 576)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !314, file: !44, line: 935, baseType: !490, size: 64, offset: 768)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !314, file: !44, line: 936, baseType: !3111, size: 192, offset: 832)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3112)
!3112 = !{!3113, !3114, !3115, !3116, !3117, !3118}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3111, file: !44, line: 886, baseType: !2922)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3111, file: !44, line: 887, baseType: !1430, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3111, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3111, file: !44, line: 889, baseType: !396, size: 32, offset: 96)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3111, file: !44, line: 889, baseType: !396, size: 32, offset: 128)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3111, file: !44, line: 890, baseType: !131, size: 32, offset: 160)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !314, file: !44, line: 937, baseType: !1506, size: 64, offset: 1024)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !314, file: !44, line: 938, baseType: !3121, size: 256, offset: 1088)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3122)
!3122 = !{!3123, !3124, !3125, !3126, !3127, !3128}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3121, file: !44, line: 897, baseType: !285, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3121, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3121, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3121, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3121, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3121, file: !44, line: 904, baseType: !490, size: 64, offset: 192)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !314, file: !44, line: 940, baseType: !382, size: 64, offset: 1344)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !314, file: !44, line: 945, baseType: !125, size: 64, offset: 1408)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !314, file: !44, line: 949, baseType: !181, size: 128, offset: 1472)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !314, file: !44, line: 950, baseType: !181, size: 128, offset: 1600)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !314, file: !44, line: 952, baseType: !693, size: 64, offset: 1728)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !314, file: !44, line: 953, baseType: !868, size: 32, offset: 1792)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !314, file: !44, line: 954, baseType: !868, size: 32, offset: 1824)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !304, file: !260, line: 174, baseType: !310, size: 64, offset: 320)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !304, file: !260, line: 176, baseType: !3138, size: 64, offset: 384)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!131, !313, !187, !303, !940}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !292, file: !260, line: 90, baseType: !287, size: 64, offset: 192)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !292, file: !260, line: 91, baseType: !3143, size: 64, offset: 256)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !250, file: !174, line: 143, baseType: !3145, size: 64, offset: 256)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!3148, !187}
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3150)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3151)
!3151 = !{!3152, !3153, !3157, !3161, !3167, !3171}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3150, file: !61, line: 40, baseType: !60, size: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3150, file: !61, line: 41, baseType: !3154, size: 64, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!158}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3150, file: !61, line: 42, baseType: !3158, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!125}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3150, file: !61, line: 43, baseType: !3162, size: 64, offset: 192)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!166, !3165}
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3150, file: !61, line: 44, baseType: !3168, size: 64, offset: 256)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!166}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3150, file: !61, line: 45, baseType: !429, size: 64, offset: 320)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !250, file: !174, line: 144, baseType: !3173, size: 64, offset: 320)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!166, !187}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !250, file: !174, line: 145, baseType: !3177, size: 64, offset: 384)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{null, !187, !3180, !3181}
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !173, file: !174, line: 70, baseType: !3183, size: 64, offset: 384)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !578, line: 123, size: 1024, elements: !3185)
!3185 = !{!3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3314, !3315, !3316, !3317, !3318}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3184, file: !578, line: 124, baseType: !706, size: 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3184, file: !578, line: 125, baseType: !706, size: 32, offset: 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3184, file: !578, line: 135, baseType: !3183, size: 64, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3184, file: !578, line: 136, baseType: !177, size: 64, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3184, file: !578, line: 138, baseType: !719, size: 192, align: 64, offset: 192)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3184, file: !578, line: 140, baseType: !166, size: 64, offset: 384)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3184, file: !578, line: 141, baseType: !7, size: 32, offset: 448)
!3193 = !DIDerivedType(tag: DW_TAG_member, scope: !3184, file: !578, line: 142, baseType: !3194, size: 256, offset: 512)
!3194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3184, file: !578, line: 142, size: 256, elements: !3195)
!3195 = !{!3196, !3242, !3246}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3194, file: !578, line: 143, baseType: !3197, size: 192)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !578, line: 91, size: 192, elements: !3198)
!3198 = !{!3199, !3200, !3201}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3197, file: !578, line: 92, baseType: !285, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3197, file: !578, line: 94, baseType: !715, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3197, file: !578, line: 100, baseType: !3202, size: 64, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !578, line: 180, size: 704, elements: !3204)
!3204 = !{!3205, !3206, !3207, !3214, !3215, !3216, !3240, !3241}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3203, file: !578, line: 182, baseType: !3183, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3203, file: !578, line: 183, baseType: !7, size: 32, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3203, file: !578, line: 186, baseType: !3208, size: 192, offset: 128)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3209, line: 19, size: 192, elements: !3210)
!3209 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3210 = !{!3211, !3212, !3213}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3208, file: !3209, line: 20, baseType: !698, size: 128)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3208, file: !3209, line: 21, baseType: !7, size: 32, offset: 128)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3208, file: !3209, line: 22, baseType: !7, size: 32, offset: 160)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3203, file: !578, line: 187, baseType: !376, size: 32, offset: 320)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3203, file: !578, line: 188, baseType: !376, size: 32, offset: 352)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3203, file: !578, line: 189, baseType: !3217, size: 64, offset: 384)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !578, line: 168, size: 320, elements: !3219)
!3219 = !{!3220, !3224, !3228, !3232, !3236}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3218, file: !578, line: 169, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!131, !670, !3202}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3218, file: !578, line: 171, baseType: !3225, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!131, !3183, !177, !276}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3218, file: !578, line: 173, baseType: !3229, size: 64, offset: 128)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!131, !3183}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3218, file: !578, line: 174, baseType: !3233, size: 64, offset: 192)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!131, !3183, !3183, !177}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3218, file: !578, line: 176, baseType: !3237, size: 64, offset: 256)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!131, !670, !3183, !3202}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3203, file: !578, line: 192, baseType: !181, size: 128, offset: 448)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3203, file: !578, line: 194, baseType: !1440, size: 128, offset: 576)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3194, file: !578, line: 144, baseType: !3243, size: 64)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !578, line: 103, size: 64, elements: !3244)
!3244 = !{!3245}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3243, file: !578, line: 104, baseType: !3183, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3194, file: !578, line: 145, baseType: !3247, size: 256)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !578, line: 107, size: 256, elements: !3248)
!3248 = !{!3249, !3309, !3312, !3313}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3247, file: !578, line: 108, baseType: !3250, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3252)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !578, line: 217, size: 768, elements: !3253)
!3253 = !{!3254, !3274, !3278, !3282, !3286, !3290, !3294, !3298, !3299, !3300, !3301, !3305}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3252, file: !578, line: 222, baseType: !3255, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!131, !3258}
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !578, line: 197, size: 1088, elements: !3260)
!3260 = !{!3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3259, file: !578, line: 199, baseType: !3183, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3259, file: !578, line: 200, baseType: !313, size: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3259, file: !578, line: 201, baseType: !670, size: 64, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3259, file: !578, line: 202, baseType: !125, size: 64, offset: 192)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3259, file: !578, line: 205, baseType: !1132, size: 192, offset: 256)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3259, file: !578, line: 206, baseType: !1132, size: 192, offset: 448)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3259, file: !578, line: 207, baseType: !131, size: 32, offset: 640)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3259, file: !578, line: 208, baseType: !181, size: 128, offset: 704)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3259, file: !578, line: 209, baseType: !235, size: 64, offset: 832)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3259, file: !578, line: 211, baseType: !282, size: 64, offset: 896)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3259, file: !578, line: 212, baseType: !158, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3259, file: !578, line: 213, baseType: !158, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3259, file: !578, line: 214, baseType: !968, size: 64, offset: 1024)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3252, file: !578, line: 223, baseType: !3275, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{null, !3258}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3252, file: !578, line: 236, baseType: !3279, size: 64, offset: 128)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!131, !670, !125}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3252, file: !578, line: 238, baseType: !3283, size: 64, offset: 192)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!125, !670, !2835}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3252, file: !578, line: 239, baseType: !3287, size: 64, offset: 256)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!125, !670, !125, !2835}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3252, file: !578, line: 240, baseType: !3291, size: 64, offset: 320)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{null, !670, !125}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3252, file: !578, line: 242, baseType: !3295, size: 64, offset: 384)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!266, !3258, !235, !282, !490}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3252, file: !578, line: 252, baseType: !282, size: 64, offset: 448)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3252, file: !578, line: 259, baseType: !158, size: 8, offset: 512)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3252, file: !578, line: 260, baseType: !3295, size: 64, offset: 576)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3252, file: !578, line: 263, baseType: !3302, size: 64, offset: 640)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!2864, !3258, !2866}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3252, file: !578, line: 266, baseType: !3306, size: 64, offset: 704)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!131, !3258, !940}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3247, file: !578, line: 109, baseType: !3310, size: 64, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !578, line: 31, flags: DIFlagFwdDecl)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3247, file: !578, line: 110, baseType: !490, size: 64, offset: 128)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3247, file: !578, line: 111, baseType: !3183, size: 64, offset: 192)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3184, file: !578, line: 148, baseType: !125, size: 64, offset: 768)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3184, file: !578, line: 154, baseType: !382, size: 64, offset: 832)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3184, file: !578, line: 156, baseType: !277, size: 16, offset: 896)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3184, file: !578, line: 157, baseType: !276, size: 16, offset: 912)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3184, file: !578, line: 158, baseType: !3319, size: 64, offset: 960)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !578, line: 32, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !173, file: !174, line: 71, baseType: !3322, size: 32, offset: 448)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3323, line: 19, size: 32, elements: !3324)
!3323 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3324 = !{!3325}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3322, file: !3323, line: 20, baseType: !1189, size: 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !173, file: !174, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !173, file: !174, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !173, file: !174, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !173, file: !174, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !173, file: !174, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !170, file: !73, line: 463, baseType: !3332, size: 64, offset: 512)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !170, file: !73, line: 465, baseType: !3334, size: 64, offset: 576)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !170, file: !73, line: 467, baseType: !177, size: 64, offset: 640)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !170, file: !73, line: 468, baseType: !3338, size: 64, offset: 704)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3340)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3341)
!3341 = !{!3342, !3343, !3344, !3348, !3353, !3357}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3340, file: !73, line: 88, baseType: !177, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3340, file: !73, line: 89, baseType: !289, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3340, file: !73, line: 90, baseType: !3345, size: 64, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!131, !3332, !230}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3340, file: !73, line: 91, baseType: !3349, size: 64, offset: 192)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!235, !3332, !3352, !3180, !3181}
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3340, file: !73, line: 93, baseType: !3354, size: 64, offset: 256)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{null, !3332}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3340, file: !73, line: 95, baseType: !3358, size: 64, offset: 320)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3360)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3361)
!3361 = !{!3362, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3360, file: !80, line: 279, baseType: !3363, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!131, !3332}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3360, file: !80, line: 280, baseType: !3354, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3360, file: !80, line: 281, baseType: !3363, size: 64, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3360, file: !80, line: 282, baseType: !3363, size: 64, offset: 192)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3360, file: !80, line: 283, baseType: !3363, size: 64, offset: 256)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3360, file: !80, line: 284, baseType: !3363, size: 64, offset: 320)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3360, file: !80, line: 285, baseType: !3363, size: 64, offset: 384)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3360, file: !80, line: 286, baseType: !3363, size: 64, offset: 448)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3360, file: !80, line: 287, baseType: !3363, size: 64, offset: 512)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3360, file: !80, line: 288, baseType: !3363, size: 64, offset: 576)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3360, file: !80, line: 289, baseType: !3363, size: 64, offset: 640)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3360, file: !80, line: 290, baseType: !3363, size: 64, offset: 704)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3360, file: !80, line: 291, baseType: !3363, size: 64, offset: 768)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3360, file: !80, line: 292, baseType: !3363, size: 64, offset: 832)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3360, file: !80, line: 293, baseType: !3363, size: 64, offset: 896)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3360, file: !80, line: 294, baseType: !3363, size: 64, offset: 960)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3360, file: !80, line: 295, baseType: !3363, size: 64, offset: 1024)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3360, file: !80, line: 296, baseType: !3363, size: 64, offset: 1088)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3360, file: !80, line: 297, baseType: !3363, size: 64, offset: 1152)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3360, file: !80, line: 298, baseType: !3363, size: 64, offset: 1216)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3360, file: !80, line: 299, baseType: !3363, size: 64, offset: 1280)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3360, file: !80, line: 300, baseType: !3363, size: 64, offset: 1344)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3360, file: !80, line: 301, baseType: !3363, size: 64, offset: 1408)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !170, file: !73, line: 470, baseType: !3389, size: 64, offset: 768)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3391, line: 82, size: 1408, elements: !3392)
!3391 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398, !3399, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3474, !3477, !3478}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3390, file: !3391, line: 83, baseType: !177, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3390, file: !3391, line: 84, baseType: !177, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3390, file: !3391, line: 85, baseType: !3332, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3390, file: !3391, line: 86, baseType: !289, size: 64, offset: 192)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3390, file: !3391, line: 87, baseType: !289, size: 64, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3390, file: !3391, line: 88, baseType: !289, size: 64, offset: 320)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3390, file: !3391, line: 90, baseType: !3400, size: 64, offset: 384)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!131, !3332, !3403}
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3405)
!3405 = !{!3406, !3407, !3408, !3409, !3410, !3411, !3412, !3425, !3438, !3439, !3440, !3441, !3442, !3450, !3451, !3452, !3453, !3454, !3455}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3404, file: !67, line: 96, baseType: !177, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3404, file: !67, line: 97, baseType: !3389, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3404, file: !67, line: 99, baseType: !120, size: 64, offset: 128)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3404, file: !67, line: 100, baseType: !177, size: 64, offset: 192)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3404, file: !67, line: 102, baseType: !158, size: 8, offset: 256)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3404, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3404, file: !67, line: 105, baseType: !3413, size: 64, offset: 320)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3415)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3416, line: 262, size: 1600, elements: !3417)
!3416 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3417 = !{!3418, !3419, !3420, !3424}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3415, file: !3416, line: 263, baseType: !2659, size: 256)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3415, file: !3416, line: 264, baseType: !2659, size: 256, offset: 256)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3415, file: !3416, line: 265, baseType: !3421, size: 1024, offset: 512)
!3421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 1024, elements: !3422)
!3422 = !{!3423}
!3423 = !DISubrange(count: 128)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3415, file: !3416, line: 266, baseType: !166, size: 64, offset: 1536)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3404, file: !67, line: 106, baseType: !3426, size: 64, offset: 384)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3428)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3416, line: 210, size: 256, elements: !3429)
!3429 = !{!3430, !3434, !3436, !3437}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3428, file: !3416, line: 211, baseType: !3431, size: 72)
!3431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1312, size: 72, elements: !3432)
!3432 = !{!3433}
!3433 = !DISubrange(count: 9)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3428, file: !3416, line: 212, baseType: !3435, size: 64, offset: 128)
!3435 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3416, line: 14, baseType: !285)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3428, file: !3416, line: 213, baseType: !378, size: 32, offset: 192)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3428, file: !3416, line: 214, baseType: !378, size: 32, offset: 224)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3404, file: !67, line: 108, baseType: !3363, size: 64, offset: 448)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3404, file: !67, line: 109, baseType: !3354, size: 64, offset: 512)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3404, file: !67, line: 110, baseType: !3363, size: 64, offset: 576)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3404, file: !67, line: 111, baseType: !3354, size: 64, offset: 640)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3404, file: !67, line: 112, baseType: !3443, size: 64, offset: 704)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!131, !3332, !3446}
!3446 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3447)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3448)
!3448 = !{!3449}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3447, file: !80, line: 51, baseType: !131, size: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3404, file: !67, line: 113, baseType: !3363, size: 64, offset: 768)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3404, file: !67, line: 114, baseType: !289, size: 64, offset: 832)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3404, file: !67, line: 115, baseType: !289, size: 64, offset: 896)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3404, file: !67, line: 117, baseType: !3358, size: 64, offset: 960)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3404, file: !67, line: 118, baseType: !3354, size: 64, offset: 1024)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3404, file: !67, line: 120, baseType: !3456, size: 64, offset: 1088)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
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
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3390, file: !3391, line: 112, baseType: !604, offset: 1344)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3390, file: !3391, line: 114, baseType: !158, size: 8, offset: 1344)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !170, file: !73, line: 471, baseType: !3403, size: 64, offset: 832)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !170, file: !73, line: 473, baseType: !125, size: 64, offset: 896)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !170, file: !73, line: 475, baseType: !125, size: 64, offset: 960)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !170, file: !73, line: 480, baseType: !1132, size: 192, offset: 1024)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !170, file: !73, line: 484, baseType: !3484, size: 576, offset: 1216)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3485)
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3491}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3484, file: !73, line: 362, baseType: !181, size: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3484, file: !73, line: 363, baseType: !181, size: 128, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3484, file: !73, line: 364, baseType: !181, size: 128, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3484, file: !73, line: 365, baseType: !181, size: 128, offset: 384)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3484, file: !73, line: 366, baseType: !158, size: 8, offset: 512)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3484, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !170, file: !73, line: 485, baseType: !3493, size: 2304, offset: 1792)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3590, !3594}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3493, file: !80, line: 566, baseType: !3446, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3493, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3493, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3493, file: !80, line: 569, baseType: !158, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3493, file: !80, line: 570, baseType: !158, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3493, file: !80, line: 571, baseType: !158, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3493, file: !80, line: 572, baseType: !158, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3493, file: !80, line: 573, baseType: !158, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3493, file: !80, line: 574, baseType: !158, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3493, file: !80, line: 575, baseType: !158, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3493, file: !80, line: 576, baseType: !158, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3493, file: !80, line: 577, baseType: !376, size: 32, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3493, file: !80, line: 578, baseType: !194, offset: 96)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3493, file: !80, line: 580, baseType: !181, size: 128, offset: 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3493, file: !80, line: 581, baseType: !1461, size: 192, offset: 256)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3493, file: !80, line: 582, baseType: !3511, size: 64, offset: 448)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3513, line: 43, size: 1472, elements: !3514)
!3513 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3514 = !{!3515, !3516, !3517, !3518, !3519, !3522, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3512, file: !3513, line: 44, baseType: !177, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3512, file: !3513, line: 45, baseType: !131, size: 32, offset: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3512, file: !3513, line: 46, baseType: !181, size: 128, offset: 128)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3512, file: !3513, line: 47, baseType: !194, offset: 256)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3512, file: !3513, line: 48, baseType: !3520, size: 64, offset: 256)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3512, file: !3513, line: 49, baseType: !3523, size: 320, offset: 320)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3524, line: 11, size: 320, elements: !3525)
!3524 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3525 = !{!3526, !3527, !3528, !3533}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3523, file: !3524, line: 16, baseType: !598, size: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3523, file: !3524, line: 17, baseType: !285, size: 64, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3523, file: !3524, line: 18, baseType: !3529, size: 64, offset: 192)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{null, !3532}
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3523, file: !3524, line: 19, baseType: !376, size: 32, offset: 256)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3512, file: !3513, line: 50, baseType: !285, size: 64, offset: 640)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3512, file: !3513, line: 51, baseType: !1259, size: 64, offset: 704)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3512, file: !3513, line: 52, baseType: !1259, size: 64, offset: 768)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3512, file: !3513, line: 53, baseType: !1259, size: 64, offset: 832)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3512, file: !3513, line: 54, baseType: !1259, size: 64, offset: 896)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3512, file: !3513, line: 55, baseType: !1259, size: 64, offset: 960)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3512, file: !3513, line: 56, baseType: !285, size: 64, offset: 1024)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3512, file: !3513, line: 57, baseType: !285, size: 64, offset: 1088)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3512, file: !3513, line: 58, baseType: !285, size: 64, offset: 1152)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3512, file: !3513, line: 59, baseType: !285, size: 64, offset: 1216)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3512, file: !3513, line: 60, baseType: !285, size: 64, offset: 1280)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3512, file: !3513, line: 61, baseType: !3332, size: 64, offset: 1344)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3512, file: !3513, line: 62, baseType: !158, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3512, file: !3513, line: 63, baseType: !158, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3493, file: !80, line: 583, baseType: !158, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3493, file: !80, line: 584, baseType: !158, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3493, file: !80, line: 585, baseType: !158, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3493, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3493, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3493, file: !80, line: 592, baseType: !1251, size: 512, offset: 576)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3493, file: !80, line: 593, baseType: !382, size: 64, offset: 1088)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3493, file: !80, line: 594, baseType: !1918, size: 256, offset: 1152)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3493, file: !80, line: 595, baseType: !1440, size: 128, offset: 1408)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3493, file: !80, line: 596, baseType: !3520, size: 64, offset: 1536)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3493, file: !80, line: 597, baseType: !706, size: 32, offset: 1600)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3493, file: !80, line: 598, baseType: !706, size: 32, offset: 1632)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3493, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3493, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3493, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3493, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3493, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3493, file: !80, line: 604, baseType: !158, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3493, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3493, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3493, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3493, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3493, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3493, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3493, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3493, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3493, file: !80, line: 613, baseType: !131, size: 32, offset: 1792)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3493, file: !80, line: 614, baseType: !131, size: 32, offset: 1824)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3493, file: !80, line: 615, baseType: !382, size: 64, offset: 1856)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3493, file: !80, line: 616, baseType: !382, size: 64, offset: 1920)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3493, file: !80, line: 617, baseType: !382, size: 64, offset: 1984)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3493, file: !80, line: 618, baseType: !382, size: 64, offset: 2048)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3493, file: !80, line: 620, baseType: !3581, size: 64, offset: 2112)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3583)
!3583 = !{!3584, !3585, !3586, !3587}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3582, file: !80, line: 537, baseType: !194)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3582, file: !80, line: 538, baseType: !7, size: 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3582, file: !80, line: 540, baseType: !181, size: 128, offset: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3582, file: !80, line: 543, baseType: !3588, size: 64, offset: 192)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3493, file: !80, line: 621, baseType: !3591, size: 64, offset: 2176)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{null, !3332, !1403}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3493, file: !80, line: 622, baseType: !3595, size: 64, offset: 2240)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !170, file: !73, line: 486, baseType: !3598, size: 64, offset: 4096)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3600)
!3600 = !{!3601, !3602, !3603, !3607, !3608, !3609}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3599, file: !80, line: 643, baseType: !3360, size: 1472)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3599, file: !80, line: 644, baseType: !3363, size: 64, offset: 1472)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3599, file: !80, line: 645, baseType: !3604, size: 64, offset: 1536)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{null, !3332, !158}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3599, file: !80, line: 646, baseType: !3363, size: 64, offset: 1600)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3599, file: !80, line: 647, baseType: !3354, size: 64, offset: 1664)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3599, file: !80, line: 648, baseType: !3354, size: 64, offset: 1728)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !170, file: !73, line: 493, baseType: !3611, size: 64, offset: 4160)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3613)
!3613 = !{!3614, !3615, !3616, !3700, !3701, !3702, !3703, !3704, !3705, !3708, !3709, !3710, !3711, !3712, !3713, !3714}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3612, file: !94, line: 163, baseType: !181, size: 128)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3612, file: !94, line: 164, baseType: !177, size: 64, offset: 128)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3612, file: !94, line: 165, baseType: !3617, size: 64, offset: 192)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3619)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3620)
!3620 = !{!3621, !3650, !3661, !3666, !3670, !3677, !3681, !3685, !3692, !3696}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3619, file: !94, line: 106, baseType: !3622, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!131, !3611, !3625, !93}
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3627, line: 51, size: 1344, elements: !3628)
!3627 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3628 = !{!3629, !3630, !3632, !3633, !3634, !3643, !3644, !3645, !3646, !3647, !3648, !3649}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3626, file: !3627, line: 52, baseType: !177, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3626, file: !3627, line: 53, baseType: !3631, size: 32, offset: 64)
!3631 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3627, line: 28, baseType: !376)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3626, file: !3627, line: 54, baseType: !177, size: 64, offset: 128)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3626, file: !3627, line: 55, baseType: !136, size: 192, offset: 192)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3626, file: !3627, line: 57, baseType: !3635, size: 64, offset: 384)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3627, line: 31, size: 704, elements: !3637)
!3637 = !{!3638, !3639, !3640, !3641, !3642}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3636, file: !3627, line: 32, baseType: !235, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3636, file: !3627, line: 33, baseType: !131, size: 32, offset: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3636, file: !3627, line: 34, baseType: !125, size: 64, offset: 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3636, file: !3627, line: 35, baseType: !3635, size: 64, offset: 192)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3636, file: !3627, line: 43, baseType: !304, size: 448, offset: 256)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3626, file: !3627, line: 58, baseType: !3635, size: 64, offset: 448)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3626, file: !3627, line: 59, baseType: !3625, size: 64, offset: 512)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3626, file: !3627, line: 60, baseType: !3625, size: 64, offset: 576)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3626, file: !3627, line: 61, baseType: !3625, size: 64, offset: 640)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3626, file: !3627, line: 63, baseType: !173, size: 512, offset: 704)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3626, file: !3627, line: 65, baseType: !285, size: 64, offset: 1216)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3626, file: !3627, line: 66, baseType: !125, size: 64, offset: 1280)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3619, file: !94, line: 108, baseType: !3651, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!131, !3611, !3654, !93}
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3656)
!3656 = !{!3657, !3658, !3659}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3655, file: !94, line: 64, baseType: !140, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3655, file: !94, line: 65, baseType: !131, size: 32, offset: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3655, file: !94, line: 66, baseType: !3660, size: 512, offset: 96)
!3660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 512, elements: !1694)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3619, file: !94, line: 110, baseType: !3662, size: 64, offset: 128)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!131, !3611, !7, !3665}
!3665 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !124, line: 164, baseType: !285)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3619, file: !94, line: 111, baseType: !3667, size: 64, offset: 192)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{null, !3611, !7}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3619, file: !94, line: 112, baseType: !3671, size: 64, offset: 256)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!131, !3611, !3625, !3674, !7, !3676, !2642}
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3619, file: !94, line: 117, baseType: !3678, size: 64, offset: 320)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!131, !3611, !7, !7, !125}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3619, file: !94, line: 119, baseType: !3682, size: 64, offset: 384)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{null, !3611, !7, !7}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3619, file: !94, line: 121, baseType: !3686, size: 64, offset: 448)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!131, !3611, !3689, !158}
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3691, line: 11, flags: DIFlagFwdDecl)
!3691 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3619, file: !94, line: 122, baseType: !3693, size: 64, offset: 512)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{null, !3611, !3689}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3619, file: !94, line: 123, baseType: !3697, size: 64, offset: 576)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!131, !3611, !3654, !3676, !2642}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3612, file: !94, line: 166, baseType: !125, size: 64, offset: 256)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3612, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3612, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3612, file: !94, line: 171, baseType: !140, size: 64, offset: 384)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3612, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3612, file: !94, line: 173, baseType: !3706, size: 64, offset: 512)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3612, file: !94, line: 175, baseType: !3611, size: 64, offset: 576)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3612, file: !94, line: 182, baseType: !3665, size: 64, offset: 640)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3612, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3612, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3612, file: !94, line: 185, baseType: !698, size: 128, offset: 768)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3612, file: !94, line: 186, baseType: !1132, size: 192, offset: 896)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3612, file: !94, line: 187, baseType: !3715, offset: 1088)
!3715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2290)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !170, file: !73, line: 499, baseType: !181, size: 128, offset: 4224)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !170, file: !73, line: 502, baseType: !3718, size: 64, offset: 4352)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3720)
!3720 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !170, file: !73, line: 504, baseType: !3722, size: 64, offset: 4416)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !170, file: !73, line: 505, baseType: !382, size: 64, offset: 4480)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !170, file: !73, line: 510, baseType: !382, size: 64, offset: 4544)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !170, file: !73, line: 511, baseType: !3726, size: 64, offset: 4608)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3728)
!3728 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !170, file: !73, line: 513, baseType: !3730, size: 64, offset: 4672)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3732)
!3732 = !{!3733, !3734}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3731, file: !73, line: 293, baseType: !7, size: 32)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3731, file: !73, line: 294, baseType: !285, size: 64, offset: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !170, file: !73, line: 515, baseType: !181, size: 128, offset: 4736)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !170, file: !73, line: 526, baseType: !3737, offset: 4864)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3738, line: 5, elements: !208)
!3738 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !170, file: !73, line: 528, baseType: !3625, size: 64, offset: 4864)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !170, file: !73, line: 529, baseType: !140, size: 64, offset: 4928)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !170, file: !73, line: 534, baseType: !472, size: 32, offset: 4992)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !170, file: !73, line: 535, baseType: !376, size: 32, offset: 5024)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !170, file: !73, line: 537, baseType: !194, offset: 5056)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !170, file: !73, line: 538, baseType: !181, size: 128, offset: 5056)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !170, file: !73, line: 540, baseType: !3746, size: 64, offset: 5184)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3748, line: 54, size: 960, elements: !3749)
!3748 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3749 = !{!3750, !3751, !3752, !3753, !3754, !3755, !3756, !3760, !3764, !3765, !3766, !3767, !3771, !3775, !3776}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3747, file: !3748, line: 55, baseType: !177, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3747, file: !3748, line: 56, baseType: !120, size: 64, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3747, file: !3748, line: 58, baseType: !289, size: 64, offset: 128)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3747, file: !3748, line: 59, baseType: !289, size: 64, offset: 192)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3747, file: !3748, line: 60, baseType: !187, size: 64, offset: 256)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3747, file: !3748, line: 62, baseType: !3345, size: 64, offset: 320)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3747, file: !3748, line: 63, baseType: !3757, size: 64, offset: 384)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!235, !3332, !3352}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3747, file: !3748, line: 65, baseType: !3761, size: 64, offset: 448)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{null, !3746}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3747, file: !3748, line: 66, baseType: !3354, size: 64, offset: 512)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3747, file: !3748, line: 68, baseType: !3363, size: 64, offset: 576)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3747, file: !3748, line: 70, baseType: !3148, size: 64, offset: 640)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3747, file: !3748, line: 71, baseType: !3768, size: 64, offset: 704)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!166, !3332}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3747, file: !3748, line: 73, baseType: !3772, size: 64, offset: 768)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{null, !3332, !3180, !3181}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3747, file: !3748, line: 75, baseType: !3358, size: 64, offset: 832)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3747, file: !3748, line: 77, baseType: !3475, size: 64, offset: 896)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !170, file: !73, line: 541, baseType: !289, size: 64, offset: 5248)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !170, file: !73, line: 543, baseType: !3354, size: 64, offset: 5312)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !170, file: !73, line: 544, baseType: !3780, size: 64, offset: 5376)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !170, file: !73, line: 545, baseType: !3783, size: 64, offset: 5440)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !170, file: !73, line: 547, baseType: !158, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !170, file: !73, line: 548, baseType: !158, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !170, file: !73, line: 549, baseType: !158, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !170, file: !73, line: 550, baseType: !158, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !144, file: !137, line: 116, baseType: !3790, size: 64, offset: 256)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!158, !160, !177}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !144, file: !137, line: 118, baseType: !3794, size: 64, offset: 320)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!131, !160, !177, !7, !125, !282}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !144, file: !137, line: 123, baseType: !3798, size: 64, offset: 384)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!131, !160, !177, !3801, !282}
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !144, file: !137, line: 126, baseType: !3803, size: 64, offset: 448)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!177, !160}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !144, file: !137, line: 127, baseType: !3803, size: 64, offset: 512)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !144, file: !137, line: 128, baseType: !3808, size: 64, offset: 576)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!140, !160}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !144, file: !137, line: 130, baseType: !3812, size: 64, offset: 640)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!140, !160, !140}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !144, file: !137, line: 133, baseType: !3816, size: 64, offset: 704)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!140, !160, !177}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !144, file: !137, line: 135, baseType: !3820, size: 64, offset: 768)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!131, !160, !177, !177, !7, !7, !3823}
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !137, line: 43, size: 640, elements: !3825)
!3825 = !{!3826, !3827, !3828}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3824, file: !137, line: 44, baseType: !140, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3824, file: !137, line: 45, baseType: !7, size: 32, offset: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3824, file: !137, line: 46, baseType: !3829, size: 512, offset: 128)
!3829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 512, elements: !1289)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !144, file: !137, line: 140, baseType: !3812, size: 64, offset: 832)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !144, file: !137, line: 143, baseType: !3808, size: 64, offset: 896)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !144, file: !137, line: 145, baseType: !147, size: 64, offset: 960)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !144, file: !137, line: 146, baseType: !3834, size: 64, offset: 1024)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!131, !160, !3837}
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !137, line: 29, size: 128, elements: !3839)
!3839 = !{!3840, !3841, !3842}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3838, file: !137, line: 30, baseType: !7, size: 32)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3838, file: !137, line: 31, baseType: !7, size: 32, offset: 32)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3838, file: !137, line: 32, baseType: !160, size: 64, offset: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !144, file: !137, line: 148, baseType: !3844, size: 64, offset: 1088)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!131, !160, !3332}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !136, file: !137, line: 20, baseType: !3332, size: 64, offset: 128)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !127, file: !128, line: 355, baseType: !126, size: 64, offset: 320)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !127, file: !128, line: 356, baseType: !181, size: 128, offset: 384)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !127, file: !128, line: 357, baseType: !181, size: 128, offset: 512)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !127, file: !128, line: 358, baseType: !181, size: 128, offset: 640)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !127, file: !128, line: 359, baseType: !181, size: 128, offset: 768)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !127, file: !128, line: 360, baseType: !3854, size: 32, offset: 896)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !128, line: 179, size: 32, elements: !3855)
!3855 = !{!3856, !3857, !3858, !3859, !3860, !3861}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !3854, file: !128, line: 180, baseType: !376, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3854, file: !128, line: 181, baseType: !376, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !3854, file: !128, line: 182, baseType: !376, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !3854, file: !128, line: 183, baseType: !376, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !3854, file: !128, line: 184, baseType: !376, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3854, file: !128, line: 185, baseType: !376, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !127, file: !128, line: 361, baseType: !3863, size: 32, offset: 928)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !128, line: 190, size: 32, elements: !3864)
!3864 = !{!3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !3863, file: !128, line: 191, baseType: !376, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3863, file: !128, line: 192, baseType: !376, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !3863, file: !128, line: 193, baseType: !376, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !3863, file: !128, line: 194, baseType: !376, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !3863, file: !128, line: 195, baseType: !376, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !3863, file: !128, line: 196, baseType: !376, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !3863, file: !128, line: 197, baseType: !376, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !3863, file: !128, line: 198, baseType: !376, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !3863, file: !128, line: 199, baseType: !376, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !3863, file: !128, line: 200, baseType: !376, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !3863, file: !128, line: 201, baseType: !376, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !3863, file: !128, line: 202, baseType: !376, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !3863, file: !128, line: 203, baseType: !376, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3863, file: !128, line: 204, baseType: !376, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !127, file: !128, line: 362, baseType: !3880, size: 960, offset: 960)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !128, line: 234, size: 960, elements: !3881)
!3881 = !{!3882, !3884, !3891, !3893, !3894, !3895, !3900, !3903}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !3880, file: !128, line: 235, baseType: !3883, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !128, line: 217, baseType: !1993)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3880, file: !128, line: 236, baseType: !3885, size: 32, offset: 64)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !128, line: 227, size: 32, elements: !3886)
!3886 = !{!3887, !3888, !3889, !3890}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !3885, file: !128, line: 228, baseType: !376, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !3885, file: !128, line: 229, baseType: !376, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !3885, file: !128, line: 230, baseType: !376, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3885, file: !128, line: 231, baseType: !376, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !3880, file: !128, line: 237, baseType: !3892, size: 64, offset: 128)
!3892 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !128, line: 218, baseType: !382)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !3880, file: !128, line: 238, baseType: !235, size: 64, offset: 192)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !3880, file: !128, line: 239, baseType: !181, size: 128, offset: 256)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !3880, file: !128, line: 240, baseType: !3896, size: 320, offset: 384)
!3896 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !128, line: 219, baseType: !3897)
!3897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 320, elements: !3898)
!3898 = !{!3899}
!3899 = !DISubrange(count: 40)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !3880, file: !128, line: 241, baseType: !3901, size: 160, offset: 704)
!3901 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !128, line: 220, baseType: !3902)
!3902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 160, elements: !2160)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !3880, file: !128, line: 242, baseType: !3904, size: 64, offset: 896)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !134, line: 899, size: 192, elements: !3906)
!3906 = !{!3907, !3909, !3914, !3920, !3927, !3933, !3939, !3947}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3905, file: !134, line: 900, baseType: !3908, size: 32)
!3908 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !134, line: 635, baseType: !376)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !3905, file: !134, line: 904, baseType: !3910, size: 128)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3905, file: !134, line: 901, size: 128, elements: !3911)
!3911 = !{!3912, !3913}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3910, file: !134, line: 902, baseType: !3908, size: 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3910, file: !134, line: 903, baseType: !382, size: 64, offset: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3905, file: !134, line: 910, baseType: !3915, size: 128)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3905, file: !134, line: 906, size: 128, elements: !3916)
!3916 = !{!3917, !3918, !3919}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3915, file: !134, line: 907, baseType: !3908, size: 32)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3915, file: !134, line: 908, baseType: !376, size: 32, offset: 32)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3915, file: !134, line: 909, baseType: !235, size: 64, offset: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3905, file: !134, line: 916, baseType: !3921, size: 128)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3905, file: !134, line: 912, size: 128, elements: !3922)
!3922 = !{!3923, !3924, !3925}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3921, file: !134, line: 913, baseType: !3908, size: 32)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3921, file: !134, line: 914, baseType: !376, size: 32, offset: 32)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3921, file: !134, line: 915, baseType: !3926, size: 64, offset: 64)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !3905, file: !134, line: 922, baseType: !3928, size: 128)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3905, file: !134, line: 918, size: 128, elements: !3929)
!3929 = !{!3930, !3931, !3932}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3928, file: !134, line: 919, baseType: !3908, size: 32)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3928, file: !134, line: 920, baseType: !376, size: 32, offset: 32)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !3928, file: !134, line: 921, baseType: !3904, size: 64, offset: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !3905, file: !134, line: 928, baseType: !3934, size: 128)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3905, file: !134, line: 924, size: 128, elements: !3935)
!3935 = !{!3936, !3937, !3938}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3934, file: !134, line: 925, baseType: !3908, size: 32)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !3934, file: !134, line: 926, baseType: !3908, size: 32, offset: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !3934, file: !134, line: 927, baseType: !133, size: 64, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !3905, file: !134, line: 935, baseType: !3940, size: 192)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3905, file: !134, line: 930, size: 192, elements: !3941)
!3941 = !{!3942, !3943, !3944, !3946}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3940, file: !134, line: 931, baseType: !3908, size: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !3940, file: !134, line: 932, baseType: !376, size: 32, offset: 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !3940, file: !134, line: 933, baseType: !3945, size: 64, offset: 64)
!3945 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !134, line: 128, baseType: !382)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !3940, file: !134, line: 934, baseType: !376, size: 32, offset: 128)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !3905, file: !134, line: 941, baseType: !3948, size: 96)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3905, file: !134, line: 937, size: 96, elements: !3949)
!3949 = !{!3950, !3951, !3952}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3948, file: !134, line: 938, baseType: !3908, size: 32)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !3948, file: !134, line: 939, baseType: !376, size: 32, offset: 32)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !3948, file: !134, line: 940, baseType: !376, size: 32, offset: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !127, file: !128, line: 363, baseType: !3954, size: 1344, offset: 1920)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !128, line: 275, size: 1344, elements: !3955)
!3955 = !{!3956, !3957, !3967}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3954, file: !128, line: 276, baseType: !131, size: 32)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3954, file: !128, line: 277, baseType: !3958, size: 32, offset: 32)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !128, line: 254, size: 32, elements: !3959)
!3959 = !{!3960, !3961, !3962, !3963, !3964, !3965, !3966}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !3958, file: !128, line: 255, baseType: !376, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !3958, file: !128, line: 256, baseType: !376, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !3958, file: !128, line: 257, baseType: !376, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !3958, file: !128, line: 258, baseType: !376, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !3958, file: !128, line: 259, baseType: !376, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !3958, file: !128, line: 260, baseType: !376, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3958, file: !128, line: 261, baseType: !376, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !3954, file: !128, line: 278, baseType: !3968, size: 1280, offset: 64)
!3968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3969, size: 1280, elements: !3980)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !128, line: 264, size: 256, elements: !3970)
!3970 = !{!3971, !3977, !3978, !3979}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3969, file: !128, line: 269, baseType: !3972, size: 8)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3969, file: !128, line: 265, size: 8, elements: !3973)
!3973 = !{!3974, !3975, !3976}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !3972, file: !128, line: 266, baseType: !1311, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !3972, file: !128, line: 267, baseType: !1311, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3972, file: !128, line: 268, baseType: !1311, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3969, file: !128, line: 270, baseType: !131, size: 32, offset: 32)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !3969, file: !128, line: 271, baseType: !131, size: 32, offset: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3969, file: !128, line: 272, baseType: !181, size: 128, offset: 128)
!3980 = !{!3981}
!3981 = !DISubrange(count: 5)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !127, file: !128, line: 364, baseType: !3983, size: 640, offset: 3264)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !128, line: 315, size: 640, elements: !3984)
!3984 = !{!3985, !3986, !3987, !3988, !3989, !3994, !4003, !4004, !4005}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !3983, file: !128, line: 316, baseType: !133, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !3983, file: !128, line: 317, baseType: !382, size: 64, offset: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !3983, file: !128, line: 318, baseType: !382, size: 64, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3983, file: !128, line: 319, baseType: !181, size: 128, offset: 192)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3983, file: !128, line: 320, baseType: !3990, size: 8, offset: 320)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !128, line: 305, size: 8, elements: !3991)
!3991 = !{!3992, !3993}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !3990, file: !128, line: 306, baseType: !1311, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !3990, file: !128, line: 307, baseType: !1311, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !3983, file: !128, line: 321, baseType: !3995, size: 128, offset: 384)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !128, line: 310, size: 128, elements: !3996)
!3996 = !{!3997, !4002}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3995, file: !128, line: 311, baseType: !3998, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{null, !4001}
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3995, file: !128, line: 312, baseType: !3332, size: 64, offset: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !3983, file: !128, line: 322, baseType: !3511, size: 64, offset: 512)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !3983, file: !128, line: 323, baseType: !131, size: 32, offset: 576)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !3983, file: !128, line: 324, baseType: !131, size: 32, offset: 608)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !127, file: !128, line: 365, baseType: !4007, size: 192, offset: 3904)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !128, line: 297, size: 192, elements: !4008)
!4008 = !{!4009, !4010, !4014, !4015}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4007, file: !128, line: 298, baseType: !131, size: 32)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4007, file: !128, line: 299, baseType: !4011, size: 8, offset: 32)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !128, line: 283, size: 8, elements: !4012)
!4012 = !{!4013}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4011, file: !128, line: 284, baseType: !1311, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !4007, file: !128, line: 300, baseType: !131, size: 32, offset: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4007, file: !128, line: 301, baseType: !4016, size: 64, offset: 128)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !128, line: 287, size: 64, elements: !4018)
!4018 = !{!4019, !4024, !4025, !4026}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4017, file: !128, line: 291, baseType: !4020, size: 8)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4017, file: !128, line: 288, size: 8, elements: !4021)
!4021 = !{!4022, !4023}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4020, file: !128, line: 289, baseType: !1311, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4020, file: !128, line: 290, baseType: !1311, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4017, file: !128, line: 292, baseType: !1311, size: 8, offset: 8)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !4017, file: !128, line: 293, baseType: !1311, size: 8, offset: 16)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4017, file: !128, line: 294, baseType: !131, size: 32, offset: 32)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !127, file: !128, line: 366, baseType: !4028, size: 64, offset: 4096)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !128, line: 209, size: 64, elements: !4029)
!4029 = !{!4030}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4028, file: !128, line: 210, baseType: !4031, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4033, line: 123, flags: DIFlagFwdDecl)
!4033 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !127, file: !128, line: 367, baseType: !4035, size: 384, offset: 4160)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !128, line: 341, size: 384, elements: !4036)
!4036 = !{!4037, !4040, !4041, !4042}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4035, file: !128, line: 342, baseType: !4038, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3905)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4035, file: !128, line: 343, baseType: !181, size: 128, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !4035, file: !128, line: 344, baseType: !4038, size: 64, offset: 192)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !4035, file: !128, line: 345, baseType: !181, size: 128, offset: 256)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !127, file: !128, line: 368, baseType: !4044, size: 64, offset: 4544)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !128, line: 122, size: 1216, elements: !4046)
!4046 = !{!4047, !4048, !4049, !4054, !4058, !4062, !4063, !4064}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4045, file: !128, line: 123, baseType: !3426, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !4045, file: !128, line: 124, baseType: !181, size: 128, offset: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4045, file: !128, line: 125, baseType: !4050, size: 64, offset: 192)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!158, !177, !4053}
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4045, file: !128, line: 126, baseType: !4055, size: 64, offset: 256)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!131, !126, !3426}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4045, file: !128, line: 127, baseType: !4059, size: 64, offset: 320)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{null, !126}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4045, file: !128, line: 128, baseType: !3354, size: 64, offset: 384)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !4045, file: !128, line: 129, baseType: !3354, size: 64, offset: 448)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4045, file: !128, line: 130, baseType: !4065, size: 704, offset: 512)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !128, line: 108, size: 704, elements: !4066)
!4066 = !{!4067, !4068, !4072, !4073, !4074}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4065, file: !128, line: 109, baseType: !173, size: 512)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !4065, file: !128, line: 110, baseType: !4069, size: 64, offset: 512)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!131, !126}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !4065, file: !128, line: 111, baseType: !4059, size: 64, offset: 576)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4065, file: !128, line: 112, baseType: !158, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !4065, file: !128, line: 113, baseType: !158, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !127, file: !128, line: 369, baseType: !4076, size: 64, offset: 4608)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !128, line: 138, size: 256, elements: !4078)
!4078 = !{!4079, !4080, !4084, !4088}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4077, file: !128, line: 139, baseType: !126, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4077, file: !128, line: 140, baseType: !4081, size: 64, offset: 64)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!131, !126, !376}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4077, file: !128, line: 141, baseType: !4085, size: 64, offset: 128)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{null, !126, !376}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4077, file: !128, line: 142, baseType: !4059, size: 64, offset: 192)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !127, file: !128, line: 370, baseType: !4090, size: 64, offset: 4672)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !128, line: 162, size: 2816, elements: !4092)
!4092 = !{!4093, !4097, !4098, !4099, !4100, !4109, !4110}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4091, file: !128, line: 163, baseType: !4094, size: 640)
!4094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 640, elements: !4095)
!4095 = !{!4096}
!4096 = !DISubrange(count: 80)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4091, file: !128, line: 164, baseType: !4094, size: 640, offset: 640)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4091, file: !128, line: 165, baseType: !3426, size: 64, offset: 1280)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4091, file: !128, line: 166, baseType: !7, size: 32, offset: 1344)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4091, file: !128, line: 167, baseType: !4101, size: 192, offset: 1408)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !128, line: 154, size: 192, elements: !4102)
!4102 = !{!4103, !4105, !4107}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !4101, file: !128, line: 155, baseType: !4104, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !128, line: 150, baseType: !4069)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4101, file: !128, line: 156, baseType: !4106, size: 64, offset: 64)
!4106 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !128, line: 151, baseType: !4069)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4101, file: !128, line: 157, baseType: !4108, size: 64, offset: 128)
!4108 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !128, line: 152, baseType: !4085)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !4091, file: !128, line: 168, baseType: !3404, size: 1152, offset: 1600)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4091, file: !128, line: 169, baseType: !120, size: 64, offset: 2752)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !127, file: !128, line: 371, baseType: !4112, size: 64, offset: 4736)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4114)
!4114 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !128, line: 348, flags: DIFlagFwdDecl)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !127, file: !128, line: 372, baseType: !125, size: 64, offset: 4800)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !127, file: !128, line: 373, baseType: !170, size: 5568, offset: 4864)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !127, file: !128, line: 374, baseType: !7, size: 32, offset: 10432)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !127, file: !128, line: 375, baseType: !7, size: 32, offset: 10464)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !127, file: !128, line: 376, baseType: !181, size: 128, offset: 10496)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !127, file: !128, line: 377, baseType: !1132, size: 192, offset: 10624)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !127, file: !128, line: 378, baseType: !4059, size: 64, offset: 10816)
!4122 = !{!4123, !4175, !4180, !4185, !4187, !4192, !4197, !4199, !4204, !4209, !4214, !4219, !4222, !4227, !4229, !0, !4231, !4236, !4512, !4515, !4517, !4519, !4521, !4523, !4526, !4528, !4551, !4554, !4673, !4675, !4678, !4680}
!4123 = !DIGlobalVariableExpression(var: !4124, expr: !DIExpression())
!4124 = distinct !DIGlobalVariable(name: "__param_force", scope: !2, file: !3, line: 105, type: !4125, isLocal: true, isDefinition: true, align: 64)
!4125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4126)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4127, line: 69, size: 320, elements: !4128)
!4127 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!4128 = !{!4129, !4130, !4131, !4147, !4149, !4153, !4154}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4126, file: !4127, line: 70, baseType: !177, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4126, file: !4127, line: 71, baseType: !120, size: 64, offset: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4126, file: !4127, line: 72, baseType: !4132, size: 64, offset: 128)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4134)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4127, line: 47, size: 256, elements: !4135)
!4135 = !{!4136, !4137, !4142, !4146}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4134, file: !4127, line: 49, baseType: !7, size: 32)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4134, file: !4127, line: 51, baseType: !4138, size: 64, offset: 64)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!131, !177, !4141}
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4134, file: !4127, line: 53, baseType: !4143, size: 64, offset: 128)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!131, !235, !4141}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4134, file: !4127, line: 55, baseType: !429, size: 64, offset: 192)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4126, file: !4127, line: 73, baseType: !4148, size: 16, offset: 192)
!4148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !818)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4126, file: !4127, line: 74, baseType: !4150, size: 8, offset: 208)
!4150 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !377, line: 16, baseType: !4151)
!4151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !379, line: 20, baseType: !4152)
!4152 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4126, file: !4127, line: 75, baseType: !1311, size: 8, offset: 216)
!4154 = !DIDerivedType(tag: DW_TAG_member, scope: !4126, file: !4127, line: 76, baseType: !4155, size: 64, offset: 256)
!4155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4126, file: !4127, line: 76, size: 64, elements: !4156)
!4156 = !{!4157, !4158, !4165}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4155, file: !4127, line: 77, baseType: !125, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4155, file: !4127, line: 78, baseType: !4159, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4161)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4127, line: 86, size: 128, elements: !4162)
!4162 = !{!4163, !4164}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4161, file: !4127, line: 87, baseType: !7, size: 32)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4161, file: !4127, line: 88, baseType: !235, size: 64, offset: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4155, file: !4127, line: 79, baseType: !4166, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4168)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4127, line: 92, size: 256, elements: !4169)
!4169 = !{!4170, !4171, !4172, !4173, !4174}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4168, file: !4127, line: 94, baseType: !7, size: 32)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4168, file: !4127, line: 95, baseType: !7, size: 32, offset: 32)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4168, file: !4127, line: 96, baseType: !2642, size: 64, offset: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4168, file: !4127, line: 97, baseType: !4132, size: 64, offset: 128)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4168, file: !4127, line: 98, baseType: !125, size: 64, offset: 192)
!4175 = !DIGlobalVariableExpression(var: !4176, expr: !DIExpression())
!4176 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_forcetype240", scope: !2, file: !3, line: 105, type: !4177, isLocal: true, isDefinition: true, align: 8)
!4177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 232, elements: !4178)
!4178 = !{!4179}
!4179 = !DISubrange(count: 29)
!4180 = !DIGlobalVariableExpression(var: !4181, expr: !DIExpression())
!4181 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_force241", scope: !2, file: !3, line: 106, type: !4182, isLocal: true, isDefinition: true, align: 8)
!4182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 472, elements: !4183)
!4183 = !{!4184}
!4184 = !DISubrange(count: 59)
!4185 = !DIGlobalVariableExpression(var: !4186, expr: !DIExpression())
!4186 = distinct !DIGlobalVariable(name: "__param_force_addr", scope: !2, file: !3, line: 111, type: !4125, isLocal: true, isDefinition: true, align: 64)
!4187 = !DIGlobalVariableExpression(var: !4188, expr: !DIExpression())
!4188 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_force_addrtype242", scope: !2, file: !3, line: 111, type: !4189, isLocal: true, isDefinition: true, align: 8)
!4189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 272, elements: !4190)
!4190 = !{!4191}
!4191 = !DISubrange(count: 34)
!4192 = !DIGlobalVariableExpression(var: !4193, expr: !DIExpression())
!4193 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_force_addr243", scope: !2, file: !3, line: 112, type: !4194, isLocal: true, isDefinition: true, align: 8)
!4194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 760, elements: !4195)
!4195 = !{!4196}
!4196 = !DISubrange(count: 95)
!4197 = !DIGlobalVariableExpression(var: !4198, expr: !DIExpression())
!4198 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_piix4_driver_init245", scope: !2, file: !3, line: 1033, type: !125, isLocal: true, isDefinition: true)
!4199 = !DIGlobalVariableExpression(var: !4200, expr: !DIExpression())
!4200 = distinct !DIGlobalVariable(name: "__exitcall_piix4_driver_exit", scope: !2, file: !3, line: 1033, type: !4201, isLocal: true, isDefinition: true)
!4201 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4202, line: 117, baseType: !4203)
!4202 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!4204 = !DIGlobalVariableExpression(var: !4205, expr: !DIExpression())
!4205 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author246", scope: !2, file: !3, line: 1035, type: !4206, isLocal: true, isDefinition: true, align: 8)
!4206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 392, elements: !4207)
!4207 = !{!4208}
!4208 = !DISubrange(count: 49)
!4209 = !DIGlobalVariableExpression(var: !4210, expr: !DIExpression())
!4210 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author247", scope: !2, file: !3, line: 1036, type: !4211, isLocal: true, isDefinition: true, align: 8)
!4211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 440, elements: !4212)
!4212 = !{!4213}
!4213 = !DISubrange(count: 55)
!4214 = !DIGlobalVariableExpression(var: !4215, expr: !DIExpression())
!4215 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description248", scope: !2, file: !3, line: 1037, type: !4216, isLocal: true, isDefinition: true, align: 8)
!4216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 328, elements: !4217)
!4217 = !{!4218}
!4218 = !DISubrange(count: 41)
!4219 = !DIGlobalVariableExpression(var: !4220, expr: !DIExpression())
!4220 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file249", scope: !2, file: !3, line: 1038, type: !4221, isLocal: true, isDefinition: true, align: 8)
!4221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 352, elements: !1106)
!4222 = !DIGlobalVariableExpression(var: !4223, expr: !DIExpression())
!4223 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license250", scope: !2, file: !3, line: 1038, type: !4224, isLocal: true, isDefinition: true, align: 8)
!4224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 176, elements: !4225)
!4225 = !{!4226}
!4226 = !DISubrange(count: 22)
!4227 = !DIGlobalVariableExpression(var: !4228, expr: !DIExpression())
!4228 = distinct !DIGlobalVariable(name: "force", scope: !2, file: !3, line: 104, type: !131, isLocal: true, isDefinition: true)
!4229 = !DIGlobalVariableExpression(var: !4230, expr: !DIExpression())
!4230 = distinct !DIGlobalVariable(name: "force_addr", scope: !2, file: !3, line: 110, type: !131, isLocal: true, isDefinition: true)
!4231 = !DIGlobalVariableExpression(var: !4232, expr: !DIExpression())
!4232 = distinct !DIGlobalVariable(name: "__param_str_force_addr", scope: !2, file: !3, line: 111, type: !4233, isLocal: true, isDefinition: true)
!4233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 168, elements: !4234)
!4234 = !{!4235}
!4235 = !DISubrange(count: 21)
!4236 = !DIGlobalVariableExpression(var: !4237, expr: !DIExpression())
!4237 = distinct !DIGlobalVariable(name: "piix4_driver", scope: !2, file: !3, line: 1026, type: !4238, isLocal: true, isDefinition: true)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4239, line: 858, size: 2048, elements: !4240)
!4239 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4240 = !{!4241, !4242, !4243, !4255, !4470, !4474, !4478, !4482, !4483, !4487, !4505, !4506, !4507}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4238, file: !4239, line: 859, baseType: !181, size: 128)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4238, file: !4239, line: 860, baseType: !177, size: 64, offset: 128)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4238, file: !4239, line: 861, baseType: !4244, size: 64, offset: 192)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4246)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3416, line: 38, size: 256, elements: !4247)
!4247 = !{!4248, !4249, !4250, !4251, !4252, !4253, !4254}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4246, file: !3416, line: 39, baseType: !378, size: 32)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4246, file: !3416, line: 39, baseType: !378, size: 32, offset: 32)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4246, file: !3416, line: 40, baseType: !378, size: 32, offset: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4246, file: !3416, line: 40, baseType: !378, size: 32, offset: 96)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4246, file: !3416, line: 41, baseType: !378, size: 32, offset: 128)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4246, file: !3416, line: 41, baseType: !378, size: 32, offset: 160)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4246, file: !3416, line: 42, baseType: !3435, size: 64, offset: 192)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4238, file: !4239, line: 862, baseType: !4256, size: 64, offset: 256)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!131, !4259, !4244}
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4239, line: 309, size: 19264, elements: !4261)
!4261 = !{!4262, !4263, !4335, !4336, !4337, !4338, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4367, !4368, !4369, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4393, !4394, !4395, !4396, !4398, !4399, !4400, !4401, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4444, !4445, !4446, !4447, !4448, !4449, !4451, !4452, !4453, !4456, !4463, !4464, !4465, !4466, !4467, !4468, !4469}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4260, file: !4239, line: 310, baseType: !181, size: 128)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4260, file: !4239, line: 311, baseType: !4264, size: 64, offset: 128)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4239, line: 605, size: 8064, elements: !4266)
!4266 = !{!4267, !4268, !4269, !4270, !4271, !4272, !4273, !4288, !4289, !4290, !4314, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4327, !4328, !4330, !4331, !4332, !4333, !4334}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4265, file: !4239, line: 606, baseType: !181, size: 128)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4265, file: !4239, line: 607, baseType: !4264, size: 64, offset: 128)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4265, file: !4239, line: 608, baseType: !181, size: 128, offset: 192)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4265, file: !4239, line: 609, baseType: !181, size: 128, offset: 320)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4265, file: !4239, line: 610, baseType: !4259, size: 64, offset: 448)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4265, file: !4239, line: 611, baseType: !181, size: 128, offset: 512)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4265, file: !4239, line: 613, baseType: !4274, size: 256, offset: 640)
!4274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4275, size: 256, elements: !1114)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4277, line: 20, size: 512, elements: !4278)
!4277 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4278 = !{!4279, !4281, !4282, !4283, !4284, !4285, !4286, !4287}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4276, file: !4277, line: 21, baseType: !4280, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !124, line: 158, baseType: !2086)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4276, file: !4277, line: 22, baseType: !4280, size: 64, offset: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4276, file: !4277, line: 23, baseType: !177, size: 64, offset: 128)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4276, file: !4277, line: 24, baseType: !285, size: 64, offset: 192)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4276, file: !4277, line: 25, baseType: !285, size: 64, offset: 256)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4276, file: !4277, line: 26, baseType: !4275, size: 64, offset: 320)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4276, file: !4277, line: 26, baseType: !4275, size: 64, offset: 384)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4276, file: !4277, line: 26, baseType: !4275, size: 64, offset: 448)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4265, file: !4239, line: 614, baseType: !181, size: 128, offset: 896)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4265, file: !4239, line: 615, baseType: !4276, size: 512, offset: 1024)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4265, file: !4239, line: 617, baseType: !4291, size: 64, offset: 1536)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4239, line: 731, size: 320, elements: !4293)
!4293 = !{!4294, !4298, !4302, !4306, !4310}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4292, file: !4239, line: 732, baseType: !4295, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!131, !4264}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4292, file: !4239, line: 733, baseType: !4299, size: 64, offset: 64)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{null, !4264}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4292, file: !4239, line: 734, baseType: !4303, size: 64, offset: 128)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!125, !4264, !7, !131}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4292, file: !4239, line: 735, baseType: !4307, size: 64, offset: 192)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!131, !4264, !7, !131, !131, !1374}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4292, file: !4239, line: 736, baseType: !4311, size: 64, offset: 256)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!131, !4264, !7, !131, !131, !376}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4265, file: !4239, line: 618, baseType: !4315, size: 64, offset: 1600)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4239, line: 537, flags: DIFlagFwdDecl)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4265, file: !4239, line: 619, baseType: !125, size: 64, offset: 1664)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4265, file: !4239, line: 620, baseType: !4031, size: 64, offset: 1728)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4265, file: !4239, line: 622, baseType: !388, size: 8, offset: 1792)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4265, file: !4239, line: 623, baseType: !388, size: 8, offset: 1800)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4265, file: !4239, line: 624, baseType: !388, size: 8, offset: 1808)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4265, file: !4239, line: 625, baseType: !388, size: 8, offset: 1816)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4265, file: !4239, line: 630, baseType: !4324, size: 384, offset: 1824)
!4324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 384, elements: !4325)
!4325 = !{!4326}
!4326 = !DISubrange(count: 48)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4265, file: !4239, line: 632, baseType: !277, size: 16, offset: 2208)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4265, file: !4239, line: 633, baseType: !4329, size: 16, offset: 2224)
!4329 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4239, line: 237, baseType: !277)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4265, file: !4239, line: 634, baseType: !3332, size: 64, offset: 2240)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4265, file: !4239, line: 635, baseType: !170, size: 5568, offset: 2304)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4265, file: !4239, line: 636, baseType: !303, size: 64, offset: 7872)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4265, file: !4239, line: 637, baseType: !303, size: 64, offset: 7936)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4265, file: !4239, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4260, file: !4239, line: 312, baseType: !4264, size: 64, offset: 192)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4260, file: !4239, line: 314, baseType: !125, size: 64, offset: 256)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4260, file: !4239, line: 315, baseType: !4031, size: 64, offset: 320)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4260, file: !4239, line: 316, baseType: !4339, size: 64, offset: 384)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4239, line: 69, size: 832, elements: !4341)
!4341 = !{!4342, !4343, !4344, !4347, !4348}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4340, file: !4239, line: 70, baseType: !4264, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4340, file: !4239, line: 71, baseType: !181, size: 128, offset: 64)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4340, file: !4239, line: 72, baseType: !4345, size: 64, offset: 192)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4239, line: 72, flags: DIFlagFwdDecl)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4340, file: !4239, line: 73, baseType: !388, size: 8, offset: 256)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4340, file: !4239, line: 74, baseType: !173, size: 512, offset: 320)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4260, file: !4239, line: 318, baseType: !7, size: 32, offset: 448)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4260, file: !4239, line: 319, baseType: !277, size: 16, offset: 480)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4260, file: !4239, line: 320, baseType: !277, size: 16, offset: 496)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4260, file: !4239, line: 321, baseType: !277, size: 16, offset: 512)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4260, file: !4239, line: 322, baseType: !277, size: 16, offset: 528)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4260, file: !4239, line: 323, baseType: !7, size: 32, offset: 544)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4260, file: !4239, line: 324, baseType: !1311, size: 8, offset: 576)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4260, file: !4239, line: 325, baseType: !1311, size: 8, offset: 584)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4260, file: !4239, line: 330, baseType: !1311, size: 8, offset: 592)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4260, file: !4239, line: 331, baseType: !1311, size: 8, offset: 600)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4260, file: !4239, line: 332, baseType: !1311, size: 8, offset: 608)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4260, file: !4239, line: 333, baseType: !1311, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4260, file: !4239, line: 334, baseType: !1311, size: 8, offset: 624)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4260, file: !4239, line: 335, baseType: !1311, size: 8, offset: 632)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4260, file: !4239, line: 336, baseType: !818, size: 16, offset: 640)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4260, file: !4239, line: 337, baseType: !3676, size: 64, offset: 704)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4260, file: !4239, line: 339, baseType: !4366, size: 64, offset: 768)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4260, file: !4239, line: 340, baseType: !382, size: 64, offset: 832)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4260, file: !4239, line: 346, baseType: !3731, size: 128, offset: 896)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4260, file: !4239, line: 348, baseType: !4370, size: 32, offset: 1024)
!4370 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4239, line: 155, baseType: !131)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4260, file: !4239, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4260, file: !4239, line: 352, baseType: !1311, size: 8, offset: 1064)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4260, file: !4239, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4260, file: !4239, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4260, file: !4239, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4260, file: !4239, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4260, file: !4239, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4260, file: !4239, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4260, file: !4239, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4260, file: !4239, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4260, file: !4239, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4260, file: !4239, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4260, file: !4239, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4260, file: !4239, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4260, file: !4239, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4260, file: !4239, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4260, file: !4239, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4260, file: !4239, line: 376, baseType: !7, size: 32, offset: 1120)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4260, file: !4239, line: 377, baseType: !7, size: 32, offset: 1152)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4260, file: !4239, line: 380, baseType: !4391, size: 64, offset: 1216)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4239, line: 303, flags: DIFlagFwdDecl)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4260, file: !4239, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4260, file: !4239, line: 383, baseType: !131, size: 32, offset: 1312)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4260, file: !4239, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4260, file: !4239, line: 387, baseType: !4397, size: 32, offset: 1376)
!4397 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4239, line: 180, baseType: !7)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4260, file: !4239, line: 388, baseType: !170, size: 5568, offset: 1408)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4260, file: !4239, line: 390, baseType: !131, size: 32, offset: 6976)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4260, file: !4239, line: 396, baseType: !7, size: 32, offset: 7008)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4260, file: !4239, line: 397, baseType: !4402, size: 8704, offset: 7040)
!4402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4276, size: 8704, elements: !4403)
!4403 = !{!4404}
!4404 = !DISubrange(count: 17)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4260, file: !4239, line: 399, baseType: !158, size: 8, offset: 15744)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4260, file: !4239, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4260, file: !4239, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4260, file: !4239, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4260, file: !4239, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4260, file: !4239, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4260, file: !4239, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4260, file: !4239, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4260, file: !4239, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4260, file: !4239, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4260, file: !4239, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4260, file: !4239, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4260, file: !4239, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4260, file: !4239, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4260, file: !4239, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4260, file: !4239, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4260, file: !4239, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4260, file: !4239, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4260, file: !4239, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4260, file: !4239, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4260, file: !4239, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4260, file: !4239, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4260, file: !4239, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4260, file: !4239, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4260, file: !4239, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4260, file: !4239, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4260, file: !4239, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4260, file: !4239, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4260, file: !4239, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4260, file: !4239, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4260, file: !4239, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4260, file: !4239, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4260, file: !4239, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4260, file: !4239, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4260, file: !4239, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4260, file: !4239, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4260, file: !4239, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4260, file: !4239, line: 450, baseType: !4443, size: 16, offset: 15792)
!4443 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4239, line: 206, baseType: !277)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4260, file: !4239, line: 451, baseType: !706, size: 32, offset: 15808)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4260, file: !4239, line: 453, baseType: !3660, size: 512, offset: 15840)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4260, file: !4239, line: 454, baseType: !594, size: 64, offset: 16384)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4260, file: !4239, line: 455, baseType: !303, size: 64, offset: 16448)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4260, file: !4239, line: 456, baseType: !131, size: 32, offset: 16512)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4260, file: !4239, line: 457, baseType: !4450, size: 1088, offset: 16576)
!4450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 1088, elements: !4403)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4260, file: !4239, line: 458, baseType: !4450, size: 1088, offset: 17664)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4260, file: !4239, line: 469, baseType: !289, size: 64, offset: 18752)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4260, file: !4239, line: 471, baseType: !4454, size: 64, offset: 18816)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4239, line: 304, flags: DIFlagFwdDecl)
!4456 = !DIDerivedType(tag: DW_TAG_member, scope: !4260, file: !4239, line: 478, baseType: !4457, size: 64, offset: 18880)
!4457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4260, file: !4239, line: 478, size: 64, elements: !4458)
!4458 = !{!4459, !4462}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4457, file: !4239, line: 479, baseType: !4460, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4239, line: 305, flags: DIFlagFwdDecl)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4457, file: !4239, line: 480, baseType: !4259, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4260, file: !4239, line: 482, baseType: !818, size: 16, offset: 18944)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4260, file: !4239, line: 483, baseType: !1311, size: 8, offset: 18960)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4260, file: !4239, line: 497, baseType: !818, size: 16, offset: 18976)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4260, file: !4239, line: 498, baseType: !2086, size: 64, offset: 19008)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4260, file: !4239, line: 499, baseType: !282, size: 64, offset: 19072)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4260, file: !4239, line: 500, baseType: !235, size: 64, offset: 19136)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4260, file: !4239, line: 502, baseType: !285, size: 64, offset: 19200)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4238, file: !4239, line: 863, baseType: !4471, size: 64, offset: 320)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{null, !4259}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4238, file: !4239, line: 864, baseType: !4475, size: 64, offset: 384)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!131, !4259, !3446}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4238, file: !4239, line: 865, baseType: !4479, size: 64, offset: 448)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!131, !4259}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4238, file: !4239, line: 866, baseType: !4471, size: 64, offset: 512)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4238, file: !4239, line: 867, baseType: !4484, size: 64, offset: 576)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!131, !4259, !131}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4238, file: !4239, line: 868, baseType: !4488, size: 64, offset: 640)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4490)
!4490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4239, line: 795, size: 384, elements: !4491)
!4491 = !{!4492, !4497, !4501, !4502, !4503, !4504}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4490, file: !4239, line: 797, baseType: !4493, size: 64)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!4496, !4259, !4397}
!4496 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4239, line: 772, baseType: !7)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4490, file: !4239, line: 801, baseType: !4498, size: 64, offset: 64)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!4496, !4259}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4490, file: !4239, line: 804, baseType: !4498, size: 64, offset: 128)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4490, file: !4239, line: 807, baseType: !4471, size: 64, offset: 192)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4490, file: !4239, line: 808, baseType: !4471, size: 64, offset: 256)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4490, file: !4239, line: 811, baseType: !4471, size: 64, offset: 320)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4238, file: !4239, line: 869, baseType: !289, size: 64, offset: 704)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4238, file: !4239, line: 870, baseType: !3404, size: 1152, offset: 768)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4238, file: !4239, line: 871, baseType: !4508, size: 128, offset: 1920)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4239, line: 759, size: 128, elements: !4509)
!4509 = !{!4510, !4511}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4508, file: !4239, line: 760, baseType: !194)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4508, file: !4239, line: 761, baseType: !181, size: 128)
!4512 = !DIGlobalVariableExpression(var: !4513, expr: !DIExpression())
!4513 = distinct !DIGlobalVariable(name: "piix4_ids", scope: !2, file: !3, line: 782, type: !4514, isLocal: true, isDefinition: true)
!4514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4245, size: 4096, elements: !1694)
!4515 = !DIGlobalVariableExpression(var: !4516, expr: !DIExpression())
!4516 = distinct !DIGlobalVariable(name: "piix4_port_sel_sb800", scope: !2, file: !3, line: 150, type: !1311, isLocal: true, isDefinition: true)
!4517 = !DIGlobalVariableExpression(var: !4518, expr: !DIExpression())
!4518 = distinct !DIGlobalVariable(name: "piix4_port_mask_sb800", scope: !2, file: !3, line: 151, type: !1311, isLocal: true, isDefinition: true)
!4519 = !DIGlobalVariableExpression(var: !4520, expr: !DIExpression())
!4520 = distinct !DIGlobalVariable(name: "piix4_port_shift_sb800", scope: !2, file: !3, line: 152, type: !1311, isLocal: true, isDefinition: true)
!4521 = !DIGlobalVariableExpression(var: !4522, expr: !DIExpression())
!4522 = distinct !DIGlobalVariable(name: "piix4_adapter_count", scope: !2, file: !3, line: 810, type: !131, isLocal: true, isDefinition: true)
!4523 = !DIGlobalVariableExpression(var: !4524, expr: !DIExpression())
!4524 = distinct !DIGlobalVariable(name: "piix4_main_port_names_sb800", scope: !2, file: !3, line: 153, type: !4525, isLocal: true, isDefinition: true)
!4525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 256, elements: !1114)
!4526 = !DIGlobalVariableExpression(var: !4527, expr: !DIExpression())
!4527 = distinct !DIGlobalVariable(name: "srvrworks_csb5_delay", scope: !2, file: !3, line: 116, type: !131, isLocal: true, isDefinition: true)
!4528 = !DIGlobalVariableExpression(var: !4529, expr: !DIExpression())
!4529 = distinct !DIGlobalVariable(name: "piix4_dmi_blacklist", scope: !2, file: !3, line: 119, type: !4530, isLocal: true, isDefinition: true)
!4530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4531, size: 8256, elements: !236)
!4531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4532)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !3416, line: 566, size: 2752, elements: !4533)
!4533 = !{!4534, !4539, !4540, !4550}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4532, file: !3416, line: 567, baseType: !4535, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!131, !4538}
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !4532, file: !3416, line: 568, baseType: !177, size: 64, offset: 64)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !4532, file: !3416, line: 569, baseType: !4541, size: 2560, offset: 128)
!4541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4542, size: 2560, elements: !1114)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !3416, line: 560, size: 640, elements: !4543)
!4543 = !{!4544, !4545, !4546}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4542, file: !3416, line: 561, baseType: !388, size: 7, flags: DIFlagBitField, extraData: i64 0)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !4542, file: !3416, line: 562, baseType: !388, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !4542, file: !3416, line: 563, baseType: !4547, size: 632, offset: 8)
!4547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 632, elements: !4548)
!4548 = !{!4549}
!4549 = !DISubrange(count: 79)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4532, file: !3416, line: 570, baseType: !125, size: 64, offset: 2688)
!4551 = !DIGlobalVariableExpression(var: !4552, expr: !DIExpression())
!4552 = distinct !DIGlobalVariable(name: "piix4_dmi_ibm", scope: !2, file: !3, line: 139, type: !4553, isLocal: true, isDefinition: true)
!4553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4531, size: 5504, elements: !1528)
!4554 = !DIGlobalVariableExpression(var: !4555, expr: !DIExpression())
!4555 = distinct !DIGlobalVariable(name: "piix4_smbus_algorithm_sb800", scope: !2, file: !3, line: 777, type: !4556, isLocal: true, isDefinition: true)
!4556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4557)
!4557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !4558, line: 519, size: 320, elements: !4559)
!4558 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4559 = !{!4560, !4656, !4657, !4668, !4669}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4557, file: !4558, line: 529, baseType: !4561, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!131, !4564, !4647, !131}
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !4558, line: 695, size: 7552, elements: !4566)
!4566 = !{!4567, !4568, !4569, !4571, !4572, !4586, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4635, !4646}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4565, file: !4558, line: 696, baseType: !120, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4565, file: !4558, line: 697, baseType: !7, size: 32, offset: 64)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4565, file: !4558, line: 698, baseType: !4570, size: 64, offset: 128)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4565, file: !4558, line: 699, baseType: !125, size: 64, offset: 192)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4565, file: !4558, line: 702, baseType: !4573, size: 64, offset: 256)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4575)
!4575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !4558, line: 557, size: 192, elements: !4576)
!4576 = !{!4577, !4581, !4585}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4575, file: !4558, line: 558, baseType: !4578, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{null, !4564, !7}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4575, file: !4558, line: 559, baseType: !4582, size: 64, offset: 64)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!131, !4564, !7}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4575, file: !4558, line: 560, baseType: !4578, size: 64, offset: 128)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4565, file: !4558, line: 703, baseType: !4587, size: 192, offset: 320)
!4587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4588, line: 30, size: 192, elements: !4589)
!4588 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4589 = !{!4590, !4591, !4592}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4587, file: !4588, line: 31, baseType: !739)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4587, file: !4588, line: 32, baseType: !711, size: 128)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4587, file: !4588, line: 33, baseType: !1175, size: 64, offset: 128)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4565, file: !4558, line: 704, baseType: !4587, size: 192, offset: 512)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4565, file: !4558, line: 706, baseType: !131, size: 32, offset: 704)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4565, file: !4558, line: 707, baseType: !131, size: 32, offset: 736)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4565, file: !4558, line: 708, baseType: !170, size: 5568, offset: 768)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4565, file: !4558, line: 709, baseType: !285, size: 64, offset: 6336)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4565, file: !4558, line: 713, baseType: !131, size: 32, offset: 6400)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4565, file: !4558, line: 714, baseType: !4324, size: 384, offset: 6432)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4565, file: !4558, line: 715, baseType: !1461, size: 192, offset: 6848)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4565, file: !4558, line: 717, baseType: !1132, size: 192, offset: 7040)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4565, file: !4558, line: 718, baseType: !181, size: 128, offset: 7232)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4565, file: !4558, line: 720, baseType: !4604, size: 64, offset: 7360)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !4558, line: 618, size: 832, elements: !4606)
!4606 = !{!4607, !4611, !4612, !4616, !4617, !4618, !4619, !4623, !4624, !4627, !4628, !4631, !4634}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4605, file: !4558, line: 619, baseType: !4608, size: 64)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!131, !4564}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4605, file: !4558, line: 621, baseType: !4608, size: 64, offset: 64)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4605, file: !4558, line: 622, baseType: !4613, size: 64, offset: 128)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{null, !4564, !131}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4605, file: !4558, line: 623, baseType: !4608, size: 64, offset: 192)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4605, file: !4558, line: 624, baseType: !4613, size: 64, offset: 256)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4605, file: !4558, line: 625, baseType: !4608, size: 64, offset: 320)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4605, file: !4558, line: 627, baseType: !4620, size: 64, offset: 384)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{null, !4564}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4605, file: !4558, line: 628, baseType: !4620, size: 64, offset: 448)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4605, file: !4558, line: 631, baseType: !4625, size: 64, offset: 512)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4558, line: 631, flags: DIFlagFwdDecl)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4605, file: !4558, line: 632, baseType: !4625, size: 64, offset: 576)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4605, file: !4558, line: 633, baseType: !4629, size: 64, offset: 640)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !4558, line: 633, flags: DIFlagFwdDecl)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4605, file: !4558, line: 634, baseType: !4632, size: 64, offset: 704)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !4558, line: 634, flags: DIFlagFwdDecl)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4605, file: !4558, line: 635, baseType: !4632, size: 64, offset: 768)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4565, file: !4558, line: 721, baseType: !4636, size: 64, offset: 7424)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4638)
!4638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !4558, line: 664, size: 192, elements: !4639)
!4639 = !{!4640, !4641, !4642, !4643, !4644, !4645}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4638, file: !4558, line: 665, baseType: !382, size: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4638, file: !4558, line: 666, baseType: !131, size: 32, offset: 64)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4638, file: !4558, line: 667, baseType: !818, size: 16, offset: 96)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4638, file: !4558, line: 668, baseType: !818, size: 16, offset: 112)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4638, file: !4558, line: 669, baseType: !818, size: 16, offset: 128)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4638, file: !4558, line: 670, baseType: !818, size: 16, offset: 144)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4565, file: !4558, line: 723, baseType: !3611, size: 64, offset: 7488)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4649, line: 69, size: 128, elements: !4650)
!4649 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4650 = !{!4651, !4652, !4653, !4654}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4648, file: !4649, line: 70, baseType: !819, size: 16)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4648, file: !4649, line: 71, baseType: !819, size: 16, offset: 16)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4648, file: !4649, line: 84, baseType: !819, size: 16, offset: 32)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4648, file: !4649, line: 85, baseType: !4655, size: 64, offset: 64)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4557, file: !4558, line: 531, baseType: !4561, size: 64, offset: 64)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4557, file: !4558, line: 533, baseType: !4658, size: 64, offset: 128)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!131, !4564, !818, !277, !179, !1311, !131, !4661}
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4649, line: 135, size: 272, elements: !4663)
!4663 = !{!4664, !4665, !4666}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4662, file: !4649, line: 136, baseType: !1312, size: 8)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4662, file: !4649, line: 137, baseType: !819, size: 16)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4662, file: !4649, line: 138, baseType: !4667, size: 272)
!4667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1312, size: 272, elements: !4190)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4557, file: !4558, line: 536, baseType: !4658, size: 64, offset: 192)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4557, file: !4558, line: 541, baseType: !4670, size: 64, offset: 256)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!376, !4564}
!4673 = !DIGlobalVariableExpression(var: !4674, expr: !DIExpression())
!4674 = distinct !DIGlobalVariable(name: "smbus_algorithm", scope: !2, file: !3, line: 772, type: !4556, isLocal: true, isDefinition: true)
!4675 = !DIGlobalVariableExpression(var: !4676, expr: !DIExpression())
!4676 = distinct !DIGlobalVariable(name: "piix4_main_adapters", scope: !2, file: !3, line: 808, type: !4677, isLocal: true, isDefinition: true)
!4677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4564, size: 256, elements: !1114)
!4678 = !DIGlobalVariableExpression(var: !4679, expr: !DIExpression())
!4679 = distinct !DIGlobalVariable(name: "piix4_aux_port_name_sb800", scope: !2, file: !3, line: 156, type: !177, isLocal: true, isDefinition: true)
!4680 = !DIGlobalVariableExpression(var: !4681, expr: !DIExpression())
!4681 = distinct !DIGlobalVariable(name: "piix4_aux_adapter", scope: !2, file: !3, line: 809, type: !4564, isLocal: true, isDefinition: true)
!4682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 128, elements: !1694)
!4683 = !{i32 7, !"Dwarf Version", i32 4}
!4684 = !{i32 2, !"Debug Info Version", i32 3}
!4685 = !{i32 1, !"wchar_size", i32 2}
!4686 = !{i32 1, !"Code Model", i32 2}
!4687 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4688 = distinct !DISubprogram(name: "piix4_driver_init", scope: !3, file: !3, line: 1033, type: !4689, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!131}
!4691 = !DILocation(line: 1033, column: 1, scope: !4688)
!4692 = distinct !DISubprogram(name: "piix4_driver_exit", scope: !3, file: !3, line: 1033, type: !1839, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4693 = !DILocation(line: 1033, column: 1, scope: !4692)
!4694 = distinct !DISubprogram(name: "piix4_probe", scope: !3, file: !3, line: 914, type: !4257, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4695 = !DILocalVariable(name: "dev", arg: 1, scope: !4694, file: !3, line: 914, type: !4259)
!4696 = !DILocation(line: 914, column: 40, scope: !4694)
!4697 = !DILocalVariable(name: "id", arg: 2, scope: !4694, file: !3, line: 914, type: !4244)
!4698 = !DILocation(line: 914, column: 73, scope: !4694)
!4699 = !DILocalVariable(name: "retval", scope: !4694, file: !3, line: 916, type: !131)
!4700 = !DILocation(line: 916, column: 6, scope: !4694)
!4701 = !DILocalVariable(name: "is_sb800", scope: !4694, file: !3, line: 917, type: !158)
!4702 = !DILocation(line: 917, column: 7, scope: !4694)
!4703 = !DILocation(line: 919, column: 7, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4694, file: !3, line: 919, column: 6)
!4705 = !DILocation(line: 919, column: 12, scope: !4704)
!4706 = !DILocation(line: 919, column: 19, scope: !4704)
!4707 = !DILocation(line: 919, column: 40, scope: !4704)
!4708 = !DILocation(line: 920, column: 7, scope: !4704)
!4709 = !DILocation(line: 920, column: 12, scope: !4704)
!4710 = !DILocation(line: 920, column: 19, scope: !4704)
!4711 = !DILocation(line: 920, column: 52, scope: !4704)
!4712 = !DILocation(line: 921, column: 7, scope: !4704)
!4713 = !DILocation(line: 921, column: 12, scope: !4704)
!4714 = !DILocation(line: 921, column: 21, scope: !4704)
!4715 = !DILocation(line: 921, column: 30, scope: !4704)
!4716 = !DILocation(line: 922, column: 6, scope: !4704)
!4717 = !DILocation(line: 922, column: 11, scope: !4704)
!4718 = !DILocation(line: 922, column: 18, scope: !4704)
!4719 = !DILocation(line: 922, column: 39, scope: !4704)
!4720 = !DILocation(line: 923, column: 6, scope: !4704)
!4721 = !DILocation(line: 923, column: 11, scope: !4704)
!4722 = !DILocation(line: 923, column: 18, scope: !4704)
!4723 = !DILocation(line: 919, column: 6, scope: !4694)
!4724 = !DILocalVariable(name: "notify_imc", scope: !4725, file: !3, line: 924, type: !158)
!4725 = distinct !DILexicalBlock(scope: !4704, file: !3, line: 923, column: 42)
!4726 = !DILocation(line: 924, column: 8, scope: !4725)
!4727 = !DILocation(line: 925, column: 12, scope: !4725)
!4728 = !DILocation(line: 927, column: 8, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 927, column: 7)
!4730 = !DILocation(line: 927, column: 13, scope: !4729)
!4731 = !DILocation(line: 927, column: 20, scope: !4729)
!4732 = !DILocation(line: 927, column: 41, scope: !4729)
!4733 = !DILocation(line: 928, column: 8, scope: !4729)
!4734 = !DILocation(line: 928, column: 13, scope: !4729)
!4735 = !DILocation(line: 928, column: 20, scope: !4729)
!4736 = !DILocation(line: 928, column: 44, scope: !4729)
!4737 = !DILocation(line: 929, column: 7, scope: !4729)
!4738 = !DILocation(line: 929, column: 12, scope: !4729)
!4739 = !DILocation(line: 929, column: 19, scope: !4729)
!4740 = !DILocation(line: 927, column: 7, scope: !4725)
!4741 = !DILocalVariable(name: "imc", scope: !4742, file: !3, line: 930, type: !1311)
!4742 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 929, column: 54)
!4743 = !DILocation(line: 930, column: 7, scope: !4742)
!4744 = !DILocation(line: 936, column: 29, scope: !4742)
!4745 = !DILocation(line: 936, column: 34, scope: !4742)
!4746 = !DILocation(line: 936, column: 4, scope: !4742)
!4747 = !DILocation(line: 938, column: 8, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4742, file: !3, line: 938, column: 8)
!4749 = !DILocation(line: 938, column: 12, scope: !4748)
!4750 = !DILocation(line: 938, column: 8, scope: !4742)
!4751 = !DILocation(line: 939, column: 16, scope: !4748)
!4752 = !DILocation(line: 939, column: 5, scope: !4748)
!4753 = !DILocation(line: 940, column: 3, scope: !4742)
!4754 = !DILocation(line: 943, column: 30, scope: !4725)
!4755 = !DILocation(line: 943, column: 35, scope: !4725)
!4756 = !DILocation(line: 943, column: 12, scope: !4725)
!4757 = !DILocation(line: 943, column: 10, scope: !4725)
!4758 = !DILocation(line: 944, column: 7, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 944, column: 7)
!4760 = !DILocation(line: 944, column: 14, scope: !4759)
!4761 = !DILocation(line: 944, column: 7, scope: !4725)
!4762 = !DILocation(line: 945, column: 11, scope: !4759)
!4763 = !DILocation(line: 945, column: 4, scope: !4759)
!4764 = !DILocation(line: 951, column: 37, scope: !4725)
!4765 = !DILocation(line: 951, column: 42, scope: !4725)
!4766 = !DILocation(line: 951, column: 50, scope: !4725)
!4767 = !DILocation(line: 951, column: 12, scope: !4725)
!4768 = !DILocation(line: 951, column: 10, scope: !4725)
!4769 = !DILocation(line: 952, column: 7, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 952, column: 7)
!4771 = !DILocation(line: 952, column: 14, scope: !4770)
!4772 = !DILocation(line: 952, column: 7, scope: !4725)
!4773 = !DILocation(line: 953, column: 11, scope: !4770)
!4774 = !DILocation(line: 953, column: 4, scope: !4770)
!4775 = !DILocation(line: 954, column: 2, scope: !4725)
!4776 = !DILocation(line: 955, column: 24, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4704, file: !3, line: 954, column: 9)
!4778 = !DILocation(line: 955, column: 29, scope: !4777)
!4779 = !DILocation(line: 955, column: 12, scope: !4777)
!4780 = !DILocation(line: 955, column: 10, scope: !4777)
!4781 = !DILocation(line: 956, column: 7, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 956, column: 7)
!4783 = !DILocation(line: 956, column: 14, scope: !4782)
!4784 = !DILocation(line: 956, column: 7, scope: !4777)
!4785 = !DILocation(line: 957, column: 11, scope: !4782)
!4786 = !DILocation(line: 957, column: 4, scope: !4782)
!4787 = !DILocation(line: 960, column: 30, scope: !4777)
!4788 = !DILocation(line: 960, column: 35, scope: !4777)
!4789 = !DILocation(line: 960, column: 12, scope: !4777)
!4790 = !DILocation(line: 960, column: 10, scope: !4777)
!4791 = !DILocation(line: 962, column: 7, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 962, column: 7)
!4793 = !DILocation(line: 962, column: 14, scope: !4792)
!4794 = !DILocation(line: 962, column: 7, scope: !4777)
!4795 = !DILocation(line: 963, column: 11, scope: !4792)
!4796 = !DILocation(line: 963, column: 4, scope: !4792)
!4797 = !DILocation(line: 967, column: 9, scope: !4694)
!4798 = !DILocation(line: 969, column: 6, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4694, file: !3, line: 969, column: 6)
!4800 = !DILocation(line: 969, column: 11, scope: !4799)
!4801 = !DILocation(line: 969, column: 18, scope: !4799)
!4802 = !DILocation(line: 969, column: 39, scope: !4799)
!4803 = !DILocation(line: 970, column: 6, scope: !4799)
!4804 = !DILocation(line: 970, column: 11, scope: !4799)
!4805 = !DILocation(line: 970, column: 18, scope: !4799)
!4806 = !DILocation(line: 969, column: 6, scope: !4694)
!4807 = !DILocation(line: 971, column: 7, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 971, column: 7)
!4809 = distinct !DILexicalBlock(scope: !4799, file: !3, line: 970, column: 52)
!4810 = !DILocation(line: 971, column: 12, scope: !4808)
!4811 = !DILocation(line: 971, column: 21, scope: !4808)
!4812 = !DILocation(line: 971, column: 7, scope: !4809)
!4813 = !DILocation(line: 972, column: 29, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 971, column: 29)
!4815 = !DILocation(line: 972, column: 34, scope: !4814)
!4816 = !DILocation(line: 972, column: 13, scope: !4814)
!4817 = !DILocation(line: 972, column: 11, scope: !4814)
!4818 = !DILocation(line: 973, column: 3, scope: !4814)
!4819 = !DILocation(line: 975, column: 31, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 973, column: 10)
!4821 = !DILocation(line: 975, column: 36, scope: !4820)
!4822 = !DILocation(line: 975, column: 13, scope: !4820)
!4823 = !DILocation(line: 975, column: 11, scope: !4820)
!4824 = !DILocation(line: 977, column: 2, scope: !4809)
!4825 = !DILocation(line: 979, column: 6, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4694, file: !3, line: 979, column: 6)
!4827 = !DILocation(line: 979, column: 11, scope: !4826)
!4828 = !DILocation(line: 979, column: 18, scope: !4826)
!4829 = !DILocation(line: 979, column: 39, scope: !4826)
!4830 = !DILocation(line: 980, column: 7, scope: !4826)
!4831 = !DILocation(line: 980, column: 12, scope: !4826)
!4832 = !DILocation(line: 980, column: 19, scope: !4826)
!4833 = !DILocation(line: 980, column: 54, scope: !4826)
!4834 = !DILocation(line: 981, column: 7, scope: !4826)
!4835 = !DILocation(line: 981, column: 12, scope: !4826)
!4836 = !DILocation(line: 981, column: 19, scope: !4826)
!4837 = !DILocation(line: 979, column: 6, scope: !4694)
!4838 = !DILocation(line: 982, column: 30, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4826, file: !3, line: 981, column: 55)
!4840 = !DILocation(line: 982, column: 35, scope: !4839)
!4841 = !DILocation(line: 982, column: 12, scope: !4839)
!4842 = !DILocation(line: 982, column: 10, scope: !4839)
!4843 = !DILocation(line: 983, column: 2, scope: !4839)
!4844 = !DILocation(line: 985, column: 6, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4694, file: !3, line: 985, column: 6)
!4846 = !DILocation(line: 985, column: 13, scope: !4845)
!4847 = !DILocation(line: 985, column: 6, scope: !4694)
!4848 = !DILocation(line: 988, column: 21, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 985, column: 18)
!4850 = !DILocation(line: 988, column: 26, scope: !4849)
!4851 = !DILocation(line: 989, column: 7, scope: !4849)
!4852 = !DILocation(line: 989, column: 18, scope: !4849)
!4853 = !DILocation(line: 988, column: 3, scope: !4849)
!4854 = !DILocation(line: 991, column: 2, scope: !4849)
!4855 = !DILocation(line: 993, column: 2, scope: !4694)
!4856 = !DILocation(line: 994, column: 1, scope: !4694)
!4857 = distinct !DISubprogram(name: "piix4_remove", scope: !3, file: !3, line: 1009, type: !4472, scopeLine: 1010, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4858 = !DILocalVariable(name: "dev", arg: 1, scope: !4857, file: !3, line: 1009, type: !4259)
!4859 = !DILocation(line: 1009, column: 42, scope: !4857)
!4860 = !DILocalVariable(name: "port", scope: !4857, file: !3, line: 1011, type: !131)
!4861 = !DILocation(line: 1011, column: 6, scope: !4857)
!4862 = !DILocation(line: 1011, column: 13, scope: !4857)
!4863 = !DILocation(line: 1013, column: 2, scope: !4857)
!4864 = !DILocation(line: 1013, column: 9, scope: !4857)
!4865 = !DILocation(line: 1013, column: 16, scope: !4857)
!4866 = !DILocation(line: 1014, column: 27, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4868, file: !3, line: 1014, column: 7)
!4868 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 1013, column: 22)
!4869 = !DILocation(line: 1014, column: 7, scope: !4867)
!4870 = !DILocation(line: 1014, column: 7, scope: !4868)
!4871 = !DILocation(line: 1015, column: 42, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4867, file: !3, line: 1014, column: 34)
!4873 = !DILocation(line: 1015, column: 22, scope: !4872)
!4874 = !DILocation(line: 1015, column: 4, scope: !4872)
!4875 = !DILocation(line: 1016, column: 24, scope: !4872)
!4876 = !DILocation(line: 1016, column: 4, scope: !4872)
!4877 = !DILocation(line: 1016, column: 30, scope: !4872)
!4878 = !DILocation(line: 1017, column: 3, scope: !4872)
!4879 = distinct !{!4879, !4863, !4880}
!4880 = !DILocation(line: 1018, column: 2, scope: !4857)
!4881 = !DILocation(line: 1020, column: 6, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 1020, column: 6)
!4883 = !DILocation(line: 1020, column: 6, scope: !4857)
!4884 = !DILocation(line: 1021, column: 21, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4882, file: !3, line: 1020, column: 25)
!4886 = !DILocation(line: 1021, column: 3, scope: !4885)
!4887 = !DILocation(line: 1022, column: 21, scope: !4885)
!4888 = !DILocation(line: 1023, column: 2, scope: !4885)
!4889 = !DILocation(line: 1024, column: 1, scope: !4857)
!4890 = distinct !DISubprogram(name: "piix4_setup_sb800", scope: !3, file: !3, line: 266, type: !4891, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4891 = !DISubroutineType(types: !4892)
!4892 = !{!131, !4259, !4244, !1311}
!4893 = !DILocalVariable(name: "PIIX4_dev", arg: 1, scope: !4890, file: !3, line: 266, type: !4259)
!4894 = !DILocation(line: 266, column: 46, scope: !4890)
!4895 = !DILocalVariable(name: "id", arg: 2, scope: !4890, file: !3, line: 267, type: !4244)
!4896 = !DILocation(line: 267, column: 37, scope: !4890)
!4897 = !DILocalVariable(name: "aux", arg: 3, scope: !4890, file: !3, line: 267, type: !1311)
!4898 = !DILocation(line: 267, column: 44, scope: !4890)
!4899 = !DILocalVariable(name: "piix4_smba", scope: !4890, file: !3, line: 269, type: !277)
!4900 = !DILocation(line: 269, column: 17, scope: !4890)
!4901 = !DILocalVariable(name: "smba_en_lo", scope: !4890, file: !3, line: 270, type: !1311)
!4902 = !DILocation(line: 270, column: 5, scope: !4890)
!4903 = !DILocalVariable(name: "smba_en_hi", scope: !4890, file: !3, line: 270, type: !1311)
!4904 = !DILocation(line: 270, column: 17, scope: !4890)
!4905 = !DILocalVariable(name: "smb_en", scope: !4890, file: !3, line: 270, type: !1311)
!4906 = !DILocation(line: 270, column: 29, scope: !4890)
!4907 = !DILocalVariable(name: "smb_en_status", scope: !4890, file: !3, line: 270, type: !1311)
!4908 = !DILocation(line: 270, column: 37, scope: !4890)
!4909 = !DILocalVariable(name: "port_sel", scope: !4890, file: !3, line: 270, type: !1311)
!4910 = !DILocation(line: 270, column: 52, scope: !4890)
!4911 = !DILocalVariable(name: "i2ccfg", scope: !4890, file: !3, line: 271, type: !1311)
!4912 = !DILocation(line: 271, column: 5, scope: !4890)
!4913 = !DILocalVariable(name: "i2ccfg_offset", scope: !4890, file: !3, line: 271, type: !1311)
!4914 = !DILocation(line: 271, column: 13, scope: !4890)
!4915 = !DILocation(line: 274, column: 6, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 274, column: 6)
!4917 = !DILocation(line: 274, column: 12, scope: !4916)
!4918 = !DILocation(line: 274, column: 15, scope: !4916)
!4919 = !DILocation(line: 274, column: 6, scope: !4890)
!4920 = !DILocation(line: 275, column: 3, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 274, column: 27)
!4922 = !DILocation(line: 277, column: 3, scope: !4921)
!4923 = !DILocation(line: 281, column: 7, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 281, column: 6)
!4925 = !DILocation(line: 281, column: 18, scope: !4924)
!4926 = !DILocation(line: 281, column: 25, scope: !4924)
!4927 = !DILocation(line: 281, column: 46, scope: !4924)
!4928 = !DILocation(line: 282, column: 7, scope: !4924)
!4929 = !DILocation(line: 282, column: 18, scope: !4924)
!4930 = !DILocation(line: 282, column: 25, scope: !4924)
!4931 = !DILocation(line: 282, column: 60, scope: !4924)
!4932 = !DILocation(line: 283, column: 7, scope: !4924)
!4933 = !DILocation(line: 283, column: 18, scope: !4924)
!4934 = !DILocation(line: 283, column: 27, scope: !4924)
!4935 = !DILocation(line: 283, column: 36, scope: !4924)
!4936 = !DILocation(line: 284, column: 7, scope: !4924)
!4937 = !DILocation(line: 284, column: 18, scope: !4924)
!4938 = !DILocation(line: 284, column: 25, scope: !4924)
!4939 = !DILocation(line: 284, column: 46, scope: !4924)
!4940 = !DILocation(line: 285, column: 7, scope: !4924)
!4941 = !DILocation(line: 285, column: 18, scope: !4924)
!4942 = !DILocation(line: 285, column: 25, scope: !4924)
!4943 = !DILocation(line: 285, column: 59, scope: !4924)
!4944 = !DILocation(line: 286, column: 7, scope: !4924)
!4945 = !DILocation(line: 286, column: 18, scope: !4924)
!4946 = !DILocation(line: 286, column: 27, scope: !4924)
!4947 = !DILocation(line: 286, column: 36, scope: !4924)
!4948 = !DILocation(line: 287, column: 7, scope: !4924)
!4949 = !DILocation(line: 287, column: 18, scope: !4924)
!4950 = !DILocation(line: 287, column: 25, scope: !4924)
!4951 = !DILocation(line: 287, column: 48, scope: !4924)
!4952 = !DILocation(line: 288, column: 7, scope: !4924)
!4953 = !DILocation(line: 288, column: 18, scope: !4924)
!4954 = !DILocation(line: 288, column: 25, scope: !4924)
!4955 = !DILocation(line: 281, column: 6, scope: !4890)
!4956 = !DILocation(line: 289, column: 10, scope: !4924)
!4957 = !DILocation(line: 289, column: 3, scope: !4924)
!4958 = !DILocation(line: 291, column: 13, scope: !4924)
!4959 = !DILocation(line: 291, column: 12, scope: !4924)
!4960 = !DILocation(line: 291, column: 10, scope: !4924)
!4961 = !DILocation(line: 293, column: 7, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 293, column: 6)
!4963 = !DILocation(line: 293, column: 6, scope: !4890)
!4964 = !DILocation(line: 294, column: 3, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 293, column: 72)
!4966 = !DILocation(line: 297, column: 3, scope: !4965)
!4967 = !DILocation(line: 300, column: 9, scope: !4890)
!4968 = !DILocation(line: 300, column: 2, scope: !4890)
!4969 = !DILocation(line: 301, column: 15, scope: !4890)
!4970 = !DILocation(line: 301, column: 13, scope: !4890)
!4971 = !DILocation(line: 302, column: 9, scope: !4890)
!4972 = !DILocation(line: 302, column: 16, scope: !4890)
!4973 = !DILocation(line: 302, column: 2, scope: !4890)
!4974 = !DILocation(line: 303, column: 15, scope: !4890)
!4975 = !DILocation(line: 303, column: 13, scope: !4890)
!4976 = !DILocation(line: 305, column: 2, scope: !4890)
!4977 = !DILocation(line: 307, column: 7, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 307, column: 6)
!4979 = !DILocation(line: 307, column: 6, scope: !4890)
!4980 = !DILocation(line: 308, column: 19, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4978, file: !3, line: 307, column: 15)
!4982 = !DILocation(line: 308, column: 30, scope: !4981)
!4983 = !DILocation(line: 308, column: 17, scope: !4981)
!4984 = !DILocation(line: 309, column: 16, scope: !4981)
!4985 = !DILocation(line: 309, column: 27, scope: !4981)
!4986 = !DILocation(line: 309, column: 14, scope: !4981)
!4987 = !DILocation(line: 310, column: 7, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 310, column: 7)
!4989 = !DILocation(line: 310, column: 7, scope: !4981)
!4990 = !DILocation(line: 311, column: 15, scope: !4988)
!4991 = !DILocation(line: 311, column: 4, scope: !4988)
!4992 = !DILocation(line: 312, column: 2, scope: !4981)
!4993 = !DILocation(line: 313, column: 19, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4978, file: !3, line: 312, column: 9)
!4995 = !DILocation(line: 313, column: 30, scope: !4994)
!4996 = !DILocation(line: 313, column: 17, scope: !4994)
!4997 = !DILocation(line: 314, column: 18, scope: !4994)
!4998 = !DILocation(line: 314, column: 29, scope: !4994)
!4999 = !DILocation(line: 314, column: 37, scope: !4994)
!5000 = !DILocation(line: 314, column: 35, scope: !4994)
!5001 = !DILocation(line: 314, column: 49, scope: !4994)
!5002 = !DILocation(line: 314, column: 16, scope: !4994)
!5003 = !DILocation(line: 314, column: 14, scope: !4994)
!5004 = !DILocation(line: 317, column: 7, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 317, column: 6)
!5006 = !DILocation(line: 317, column: 6, scope: !4890)
!5007 = !DILocation(line: 318, column: 3, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 317, column: 22)
!5009 = !DILocation(line: 320, column: 3, scope: !5008)
!5010 = !DILocation(line: 323, column: 24, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 323, column: 6)
!5012 = !DILocation(line: 323, column: 60, scope: !5011)
!5013 = !DILocation(line: 323, column: 6, scope: !5011)
!5014 = !DILocation(line: 323, column: 6, scope: !4890)
!5015 = !DILocation(line: 324, column: 3, scope: !5011)
!5016 = !DILocation(line: 326, column: 7, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 326, column: 6)
!5018 = !DILocation(line: 326, column: 6, scope: !4890)
!5019 = !DILocation(line: 327, column: 3, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 326, column: 65)
!5021 = !DILocation(line: 329, column: 3, scope: !5020)
!5022 = !DILocation(line: 333, column: 6, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 333, column: 6)
!5024 = !DILocation(line: 333, column: 6, scope: !4890)
!5025 = !DILocation(line: 334, column: 3, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 333, column: 11)
!5027 = !DILocation(line: 337, column: 10, scope: !5026)
!5028 = !DILocation(line: 337, column: 3, scope: !5026)
!5029 = !DILocation(line: 341, column: 7, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 341, column: 6)
!5031 = !DILocation(line: 341, column: 6, scope: !4890)
!5032 = !DILocation(line: 342, column: 3, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5030, file: !3, line: 341, column: 64)
!5034 = !DILocation(line: 344, column: 3, scope: !5033)
!5035 = !DILocation(line: 345, column: 3, scope: !5033)
!5036 = !DILocation(line: 347, column: 17, scope: !4890)
!5037 = !DILocation(line: 347, column: 30, scope: !4890)
!5038 = !DILocation(line: 347, column: 28, scope: !4890)
!5039 = !DILocation(line: 347, column: 11, scope: !4890)
!5040 = !DILocation(line: 347, column: 9, scope: !4890)
!5041 = !DILocation(line: 348, column: 2, scope: !4890)
!5042 = !DILocation(line: 350, column: 6, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 350, column: 6)
!5044 = !DILocation(line: 350, column: 13, scope: !5043)
!5045 = !DILocation(line: 350, column: 6, scope: !4890)
!5046 = !DILocation(line: 351, column: 3, scope: !5043)
!5047 = !DILocation(line: 355, column: 2, scope: !4890)
!5048 = !DILocation(line: 360, column: 6, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 360, column: 6)
!5050 = !DILocation(line: 360, column: 17, scope: !5049)
!5051 = !DILocation(line: 360, column: 24, scope: !5049)
!5052 = !DILocation(line: 360, column: 45, scope: !5049)
!5053 = !DILocation(line: 361, column: 6, scope: !5049)
!5054 = !DILocation(line: 361, column: 17, scope: !5049)
!5055 = !DILocation(line: 361, column: 24, scope: !5049)
!5056 = !DILocation(line: 360, column: 6, scope: !4890)
!5057 = !DILocation(line: 362, column: 7, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 362, column: 7)
!5059 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 361, column: 48)
!5060 = !DILocation(line: 362, column: 18, scope: !5058)
!5061 = !DILocation(line: 362, column: 25, scope: !5058)
!5062 = !DILocation(line: 362, column: 59, scope: !5058)
!5063 = !DILocation(line: 363, column: 8, scope: !5058)
!5064 = !DILocation(line: 363, column: 19, scope: !5058)
!5065 = !DILocation(line: 363, column: 26, scope: !5058)
!5066 = !DILocation(line: 363, column: 61, scope: !5058)
!5067 = !DILocation(line: 364, column: 8, scope: !5058)
!5068 = !DILocation(line: 364, column: 19, scope: !5058)
!5069 = !DILocation(line: 364, column: 28, scope: !5058)
!5070 = !DILocation(line: 362, column: 7, scope: !5059)
!5071 = !DILocation(line: 365, column: 25, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5058, file: !3, line: 364, column: 38)
!5073 = !DILocation(line: 366, column: 26, scope: !5072)
!5074 = !DILocation(line: 367, column: 27, scope: !5072)
!5075 = !DILocation(line: 368, column: 3, scope: !5072)
!5076 = !DILocation(line: 369, column: 25, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5058, file: !3, line: 368, column: 10)
!5078 = !DILocation(line: 370, column: 26, scope: !5077)
!5079 = !DILocation(line: 371, column: 27, scope: !5077)
!5080 = !DILocation(line: 373, column: 2, scope: !5059)
!5081 = !DILocation(line: 374, column: 8, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5083, file: !3, line: 374, column: 7)
!5083 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 373, column: 9)
!5084 = !DILocation(line: 374, column: 7, scope: !5083)
!5085 = !DILocation(line: 376, column: 4, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5082, file: !3, line: 375, column: 28)
!5087 = !DILocation(line: 377, column: 4, scope: !5086)
!5088 = !DILocation(line: 380, column: 3, scope: !5083)
!5089 = !DILocation(line: 381, column: 14, scope: !5083)
!5090 = !DILocation(line: 381, column: 12, scope: !5083)
!5091 = !DILocation(line: 382, column: 27, scope: !5083)
!5092 = !DILocation(line: 382, column: 36, scope: !5083)
!5093 = !DILocation(line: 382, column: 26, scope: !5083)
!5094 = !DILocation(line: 382, column: 24, scope: !5083)
!5095 = !DILocation(line: 385, column: 25, scope: !5083)
!5096 = !DILocation(line: 386, column: 26, scope: !5083)
!5097 = !DILocation(line: 387, column: 3, scope: !5083)
!5098 = !DILocation(line: 390, column: 2, scope: !4890)
!5099 = !DILocation(line: 394, column: 9, scope: !4890)
!5100 = !DILocation(line: 394, column: 2, scope: !4890)
!5101 = !DILocation(line: 395, column: 1, scope: !4890)
!5102 = distinct !DISubprogram(name: "piix4_add_adapters_sb800", scope: !3, file: !3, line: 870, type: !5103, scopeLine: 872, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5103 = !DISubroutineType(types: !5104)
!5104 = !{!131, !4259, !277, !158}
!5105 = !DILocalVariable(name: "dev", arg: 1, scope: !5102, file: !3, line: 870, type: !4259)
!5106 = !DILocation(line: 870, column: 53, scope: !5102)
!5107 = !DILocalVariable(name: "smba", arg: 2, scope: !5102, file: !3, line: 870, type: !277)
!5108 = !DILocation(line: 870, column: 73, scope: !5102)
!5109 = !DILocalVariable(name: "notify_imc", arg: 3, scope: !5102, file: !3, line: 871, type: !158)
!5110 = !DILocation(line: 871, column: 14, scope: !5102)
!5111 = !DILocalVariable(name: "adapdata", scope: !5102, file: !3, line: 873, type: !5112)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5113, size: 64)
!5113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_piix4_adapdata", file: !3, line: 158, size: 48, elements: !5114)
!5114 = !{!5115, !5116, !5117, !5118}
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "smba", scope: !5113, file: !3, line: 159, baseType: !277, size: 16)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "sb800_main", scope: !5113, file: !3, line: 162, baseType: !158, size: 8, offset: 16)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "notify_imc", scope: !5113, file: !3, line: 163, baseType: !158, size: 8, offset: 24)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5113, file: !3, line: 164, baseType: !1311, size: 8, offset: 32)
!5119 = !DILocation(line: 873, column: 29, scope: !5102)
!5120 = !DILocalVariable(name: "port", scope: !5102, file: !3, line: 874, type: !131)
!5121 = !DILocation(line: 874, column: 6, scope: !5102)
!5122 = !DILocalVariable(name: "retval", scope: !5102, file: !3, line: 875, type: !131)
!5123 = !DILocation(line: 875, column: 6, scope: !5102)
!5124 = !DILocation(line: 877, column: 6, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 877, column: 6)
!5126 = !DILocation(line: 877, column: 11, scope: !5125)
!5127 = !DILocation(line: 877, column: 18, scope: !5125)
!5128 = !DILocation(line: 877, column: 52, scope: !5125)
!5129 = !DILocation(line: 878, column: 7, scope: !5125)
!5130 = !DILocation(line: 878, column: 12, scope: !5125)
!5131 = !DILocation(line: 878, column: 19, scope: !5125)
!5132 = !DILocation(line: 878, column: 54, scope: !5125)
!5133 = !DILocation(line: 879, column: 7, scope: !5125)
!5134 = !DILocation(line: 879, column: 12, scope: !5125)
!5135 = !DILocation(line: 879, column: 21, scope: !5125)
!5136 = !DILocation(line: 877, column: 6, scope: !5102)
!5137 = !DILocation(line: 880, column: 23, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 879, column: 31)
!5139 = !DILocation(line: 881, column: 2, scope: !5138)
!5140 = !DILocation(line: 882, column: 23, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 881, column: 9)
!5142 = !DILocation(line: 885, column: 12, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 885, column: 2)
!5144 = !DILocation(line: 885, column: 7, scope: !5143)
!5145 = !DILocation(line: 885, column: 17, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5143, file: !3, line: 885, column: 2)
!5147 = !DILocation(line: 885, column: 24, scope: !5146)
!5148 = !DILocation(line: 885, column: 22, scope: !5146)
!5149 = !DILocation(line: 885, column: 2, scope: !5143)
!5150 = !DILocalVariable(name: "hw_port_nr", scope: !5151, file: !3, line: 886, type: !1311)
!5151 = distinct !DILexicalBlock(scope: !5146, file: !3, line: 885, column: 53)
!5152 = !DILocation(line: 886, column: 6, scope: !5151)
!5153 = !DILocation(line: 886, column: 19, scope: !5151)
!5154 = !DILocation(line: 886, column: 24, scope: !5151)
!5155 = !DILocation(line: 886, column: 35, scope: !5151)
!5156 = !DILocation(line: 886, column: 40, scope: !5151)
!5157 = !DILocation(line: 888, column: 30, scope: !5151)
!5158 = !DILocation(line: 888, column: 35, scope: !5151)
!5159 = !DILocation(line: 888, column: 47, scope: !5151)
!5160 = !DILocation(line: 888, column: 53, scope: !5151)
!5161 = !DILocation(line: 889, column: 9, scope: !5151)
!5162 = !DILocation(line: 890, column: 37, scope: !5151)
!5163 = !DILocation(line: 890, column: 9, scope: !5151)
!5164 = !DILocation(line: 891, column: 30, scope: !5151)
!5165 = !DILocation(line: 891, column: 10, scope: !5151)
!5166 = !DILocation(line: 888, column: 12, scope: !5151)
!5167 = !DILocation(line: 888, column: 10, scope: !5151)
!5168 = !DILocation(line: 892, column: 7, scope: !5169)
!5169 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 892, column: 7)
!5170 = !DILocation(line: 892, column: 14, scope: !5169)
!5171 = !DILocation(line: 892, column: 7, scope: !5151)
!5172 = !DILocation(line: 893, column: 4, scope: !5169)
!5173 = !DILocation(line: 894, column: 2, scope: !5151)
!5174 = !DILocation(line: 885, column: 49, scope: !5146)
!5175 = !DILocation(line: 885, column: 2, scope: !5146)
!5176 = distinct !{!5176, !5149, !5177}
!5177 = !DILocation(line: 894, column: 2, scope: !5143)
!5178 = !DILocation(line: 896, column: 9, scope: !5102)
!5179 = !DILocation(line: 896, column: 2, scope: !5102)
!5180 = !DILabel(scope: !5102, name: "error", file: !3, line: 898)
!5181 = !DILocation(line: 898, column: 1, scope: !5102)
!5182 = !DILocation(line: 899, column: 2, scope: !5102)
!5183 = !DILocation(line: 901, column: 2, scope: !5102)
!5184 = !DILocation(line: 901, column: 9, scope: !5102)
!5185 = !DILocation(line: 901, column: 16, scope: !5102)
!5186 = !DILocation(line: 902, column: 51, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 901, column: 22)
!5188 = !DILocation(line: 902, column: 31, scope: !5187)
!5189 = !DILocation(line: 902, column: 14, scope: !5187)
!5190 = !DILocation(line: 902, column: 12, scope: !5187)
!5191 = !DILocation(line: 903, column: 7, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 903, column: 7)
!5193 = !DILocation(line: 903, column: 17, scope: !5192)
!5194 = !DILocation(line: 903, column: 7, scope: !5187)
!5195 = !DILocation(line: 904, column: 40, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 903, column: 23)
!5197 = !DILocation(line: 904, column: 20, scope: !5196)
!5198 = !DILocation(line: 904, column: 4, scope: !5196)
!5199 = !DILocation(line: 905, column: 10, scope: !5196)
!5200 = !DILocation(line: 905, column: 4, scope: !5196)
!5201 = !DILocation(line: 906, column: 30, scope: !5196)
!5202 = !DILocation(line: 906, column: 10, scope: !5196)
!5203 = !DILocation(line: 906, column: 4, scope: !5196)
!5204 = !DILocation(line: 907, column: 24, scope: !5196)
!5205 = !DILocation(line: 907, column: 4, scope: !5196)
!5206 = !DILocation(line: 907, column: 30, scope: !5196)
!5207 = !DILocation(line: 908, column: 3, scope: !5196)
!5208 = distinct !{!5208, !5183, !5209}
!5209 = !DILocation(line: 909, column: 2, scope: !5102)
!5210 = !DILocation(line: 911, column: 9, scope: !5102)
!5211 = !DILocation(line: 911, column: 2, scope: !5102)
!5212 = !DILocation(line: 912, column: 1, scope: !5102)
!5213 = distinct !DISubprogram(name: "piix4_setup", scope: !3, file: !3, line: 167, type: !4257, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5214 = !DILocalVariable(name: "PIIX4_dev", arg: 1, scope: !5213, file: !3, line: 167, type: !4259)
!5215 = !DILocation(line: 167, column: 40, scope: !5213)
!5216 = !DILocalVariable(name: "id", arg: 2, scope: !5213, file: !3, line: 168, type: !4244)
!5217 = !DILocation(line: 168, column: 38, scope: !5213)
!5218 = !DILocalVariable(name: "temp", scope: !5213, file: !3, line: 170, type: !388)
!5219 = !DILocation(line: 170, column: 16, scope: !5213)
!5220 = !DILocalVariable(name: "piix4_smba", scope: !5213, file: !3, line: 171, type: !277)
!5221 = !DILocation(line: 171, column: 17, scope: !5213)
!5222 = !DILocation(line: 173, column: 7, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 173, column: 6)
!5224 = !DILocation(line: 173, column: 18, scope: !5223)
!5225 = !DILocation(line: 173, column: 25, scope: !5223)
!5226 = !DILocation(line: 173, column: 55, scope: !5223)
!5227 = !DILocation(line: 174, column: 7, scope: !5223)
!5228 = !DILocation(line: 174, column: 18, scope: !5223)
!5229 = !DILocation(line: 174, column: 25, scope: !5223)
!5230 = !DILocation(line: 173, column: 6, scope: !5213)
!5231 = !DILocation(line: 175, column: 24, scope: !5223)
!5232 = !DILocation(line: 175, column: 3, scope: !5223)
!5233 = !DILocation(line: 179, column: 6, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 179, column: 6)
!5235 = !DILocation(line: 179, column: 6, scope: !5213)
!5236 = !DILocation(line: 180, column: 3, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 179, column: 45)
!5238 = !DILocation(line: 182, column: 3, scope: !5237)
!5239 = !DILocation(line: 186, column: 6, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 186, column: 6)
!5241 = !DILocation(line: 186, column: 38, scope: !5240)
!5242 = !DILocation(line: 187, column: 4, scope: !5240)
!5243 = !DILocation(line: 187, column: 15, scope: !5240)
!5244 = !DILocation(line: 187, column: 22, scope: !5240)
!5245 = !DILocation(line: 186, column: 6, scope: !5213)
!5246 = !DILocation(line: 188, column: 3, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 187, column: 46)
!5248 = !DILocation(line: 191, column: 3, scope: !5247)
!5249 = !DILocation(line: 195, column: 6, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 195, column: 6)
!5251 = !DILocation(line: 195, column: 6, scope: !5213)
!5252 = !DILocation(line: 196, column: 16, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5250, file: !3, line: 195, column: 18)
!5254 = !DILocation(line: 196, column: 27, scope: !5253)
!5255 = !DILocation(line: 196, column: 14, scope: !5253)
!5256 = !DILocation(line: 197, column: 9, scope: !5253)
!5257 = !DILocation(line: 198, column: 2, scope: !5253)
!5258 = !DILocation(line: 199, column: 24, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5250, file: !3, line: 198, column: 9)
!5260 = !DILocation(line: 199, column: 3, scope: !5259)
!5261 = !DILocation(line: 200, column: 14, scope: !5259)
!5262 = !DILocation(line: 201, column: 6, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5259, file: !3, line: 201, column: 6)
!5264 = !DILocation(line: 201, column: 17, scope: !5263)
!5265 = !DILocation(line: 201, column: 6, scope: !5259)
!5266 = !DILocation(line: 202, column: 4, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5263, file: !3, line: 201, column: 23)
!5268 = !DILocation(line: 205, column: 4, scope: !5267)
!5269 = !DILocation(line: 209, column: 24, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 209, column: 6)
!5271 = !DILocation(line: 209, column: 60, scope: !5270)
!5272 = !DILocation(line: 209, column: 6, scope: !5270)
!5273 = !DILocation(line: 209, column: 6, scope: !5213)
!5274 = !DILocation(line: 210, column: 3, scope: !5270)
!5275 = !DILocation(line: 212, column: 7, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 212, column: 6)
!5277 = !DILocation(line: 212, column: 6, scope: !5213)
!5278 = !DILocation(line: 213, column: 3, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5276, file: !3, line: 212, column: 65)
!5280 = !DILocation(line: 215, column: 3, scope: !5279)
!5281 = !DILocation(line: 218, column: 23, scope: !5213)
!5282 = !DILocation(line: 218, column: 2, scope: !5213)
!5283 = !DILocation(line: 222, column: 6, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 222, column: 6)
!5285 = !DILocation(line: 222, column: 6, scope: !5213)
!5286 = !DILocation(line: 223, column: 25, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5284, file: !3, line: 222, column: 18)
!5288 = !DILocation(line: 223, column: 47, scope: !5287)
!5289 = !DILocation(line: 223, column: 52, scope: !5287)
!5290 = !DILocation(line: 223, column: 3, scope: !5287)
!5291 = !DILocation(line: 224, column: 25, scope: !5287)
!5292 = !DILocation(line: 224, column: 43, scope: !5287)
!5293 = !DILocation(line: 224, column: 3, scope: !5287)
!5294 = !DILocation(line: 225, column: 25, scope: !5287)
!5295 = !DILocation(line: 225, column: 47, scope: !5287)
!5296 = !DILocation(line: 225, column: 52, scope: !5287)
!5297 = !DILocation(line: 225, column: 3, scope: !5287)
!5298 = !DILocation(line: 226, column: 3, scope: !5287)
!5299 = !DILocation(line: 228, column: 2, scope: !5287)
!5300 = !DILocation(line: 228, column: 14, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5284, file: !3, line: 228, column: 13)
!5302 = !DILocation(line: 228, column: 19, scope: !5301)
!5303 = !DILocation(line: 228, column: 24, scope: !5301)
!5304 = !DILocation(line: 228, column: 13, scope: !5284)
!5305 = !DILocation(line: 229, column: 7, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 229, column: 7)
!5307 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 228, column: 30)
!5308 = !DILocation(line: 229, column: 7, scope: !5307)
!5309 = !DILocation(line: 238, column: 26, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 229, column: 14)
!5311 = !DILocation(line: 239, column: 12, scope: !5310)
!5312 = !DILocation(line: 239, column: 17, scope: !5310)
!5313 = !DILocation(line: 238, column: 4, scope: !5310)
!5314 = !DILocation(line: 240, column: 4, scope: !5310)
!5315 = !DILocation(line: 242, column: 3, scope: !5310)
!5316 = !DILocation(line: 243, column: 4, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 242, column: 10)
!5318 = !DILocation(line: 245, column: 4, scope: !5317)
!5319 = !DILocation(line: 246, column: 4, scope: !5317)
!5320 = !DILocation(line: 248, column: 2, scope: !5307)
!5321 = !DILocation(line: 250, column: 8, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 250, column: 6)
!5323 = !DILocation(line: 250, column: 13, scope: !5322)
!5324 = !DILocation(line: 250, column: 21, scope: !5322)
!5325 = !DILocation(line: 250, column: 27, scope: !5322)
!5326 = !DILocation(line: 250, column: 32, scope: !5322)
!5327 = !DILocation(line: 250, column: 37, scope: !5322)
!5328 = !DILocation(line: 250, column: 45, scope: !5322)
!5329 = !DILocation(line: 250, column: 6, scope: !5213)
!5330 = !DILocation(line: 251, column: 3, scope: !5322)
!5331 = !DILocation(line: 252, column: 12, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5322, file: !3, line: 252, column: 11)
!5333 = !DILocation(line: 252, column: 17, scope: !5332)
!5334 = !DILocation(line: 252, column: 25, scope: !5332)
!5335 = !DILocation(line: 252, column: 11, scope: !5322)
!5336 = !DILocation(line: 253, column: 3, scope: !5332)
!5337 = !DILocation(line: 255, column: 3, scope: !5332)
!5338 = !DILocation(line: 258, column: 23, scope: !5213)
!5339 = !DILocation(line: 258, column: 2, scope: !5213)
!5340 = !DILocation(line: 259, column: 2, scope: !5213)
!5341 = !DILocation(line: 263, column: 9, scope: !5213)
!5342 = !DILocation(line: 263, column: 2, scope: !5213)
!5343 = !DILocation(line: 264, column: 1, scope: !5213)
!5344 = distinct !DISubprogram(name: "piix4_add_adapter", scope: !3, file: !3, line: 812, type: !5345, scopeLine: 816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5345 = !DISubroutineType(types: !5346)
!5346 = !{!131, !4259, !277, !158, !1311, !158, !1311, !177, !5347}
!5347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!5348 = !DILocalVariable(name: "dev", arg: 1, scope: !5344, file: !3, line: 812, type: !4259)
!5349 = !DILocation(line: 812, column: 46, scope: !5344)
!5350 = !DILocalVariable(name: "smba", arg: 2, scope: !5344, file: !3, line: 812, type: !277)
!5351 = !DILocation(line: 812, column: 66, scope: !5344)
!5352 = !DILocalVariable(name: "sb800_main", arg: 3, scope: !5344, file: !3, line: 813, type: !158)
!5353 = !DILocation(line: 813, column: 14, scope: !5344)
!5354 = !DILocalVariable(name: "port", arg: 4, scope: !5344, file: !3, line: 813, type: !1311)
!5355 = !DILocation(line: 813, column: 29, scope: !5344)
!5356 = !DILocalVariable(name: "notify_imc", arg: 5, scope: !5344, file: !3, line: 813, type: !158)
!5357 = !DILocation(line: 813, column: 40, scope: !5344)
!5358 = !DILocalVariable(name: "hw_port_nr", arg: 6, scope: !5344, file: !3, line: 814, type: !1311)
!5359 = !DILocation(line: 814, column: 12, scope: !5344)
!5360 = !DILocalVariable(name: "name", arg: 7, scope: !5344, file: !3, line: 814, type: !177)
!5361 = !DILocation(line: 814, column: 36, scope: !5344)
!5362 = !DILocalVariable(name: "padap", arg: 8, scope: !5344, file: !3, line: 815, type: !5347)
!5363 = !DILocation(line: 815, column: 30, scope: !5344)
!5364 = !DILocalVariable(name: "adap", scope: !5344, file: !3, line: 817, type: !4564)
!5365 = !DILocation(line: 817, column: 22, scope: !5344)
!5366 = !DILocalVariable(name: "adapdata", scope: !5344, file: !3, line: 818, type: !5112)
!5367 = !DILocation(line: 818, column: 29, scope: !5344)
!5368 = !DILocalVariable(name: "retval", scope: !5344, file: !3, line: 819, type: !131)
!5369 = !DILocation(line: 819, column: 6, scope: !5344)
!5370 = !DILocation(line: 821, column: 9, scope: !5344)
!5371 = !DILocation(line: 821, column: 7, scope: !5344)
!5372 = !DILocation(line: 822, column: 6, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 822, column: 6)
!5374 = !DILocation(line: 822, column: 11, scope: !5373)
!5375 = !DILocation(line: 822, column: 6, scope: !5344)
!5376 = !DILocation(line: 823, column: 3, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 822, column: 20)
!5378 = !DILocation(line: 824, column: 3, scope: !5377)
!5379 = !DILocation(line: 827, column: 2, scope: !5344)
!5380 = !DILocation(line: 827, column: 8, scope: !5344)
!5381 = !DILocation(line: 827, column: 14, scope: !5344)
!5382 = !DILocation(line: 828, column: 2, scope: !5344)
!5383 = !DILocation(line: 828, column: 8, scope: !5344)
!5384 = !DILocation(line: 828, column: 14, scope: !5344)
!5385 = !DILocation(line: 829, column: 15, scope: !5344)
!5386 = !DILocation(line: 829, column: 2, scope: !5344)
!5387 = !DILocation(line: 829, column: 8, scope: !5344)
!5388 = !DILocation(line: 829, column: 13, scope: !5344)
!5389 = !DILocation(line: 832, column: 13, scope: !5344)
!5390 = !DILocation(line: 832, column: 11, scope: !5344)
!5391 = !DILocation(line: 833, column: 6, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 833, column: 6)
!5393 = !DILocation(line: 833, column: 15, scope: !5392)
!5394 = !DILocation(line: 833, column: 6, scope: !5344)
!5395 = !DILocation(line: 834, column: 9, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5392, file: !3, line: 833, column: 24)
!5397 = !DILocation(line: 834, column: 3, scope: !5396)
!5398 = !DILocation(line: 835, column: 3, scope: !5396)
!5399 = !DILocation(line: 836, column: 3, scope: !5396)
!5400 = !DILocation(line: 839, column: 19, scope: !5344)
!5401 = !DILocation(line: 839, column: 2, scope: !5344)
!5402 = !DILocation(line: 839, column: 12, scope: !5344)
!5403 = !DILocation(line: 839, column: 17, scope: !5344)
!5404 = !DILocation(line: 840, column: 25, scope: !5344)
!5405 = !DILocation(line: 840, column: 2, scope: !5344)
!5406 = !DILocation(line: 840, column: 12, scope: !5344)
!5407 = !DILocation(line: 840, column: 23, scope: !5344)
!5408 = !DILocation(line: 841, column: 19, scope: !5344)
!5409 = !DILocation(line: 841, column: 27, scope: !5344)
!5410 = !DILocation(line: 841, column: 24, scope: !5344)
!5411 = !DILocation(line: 841, column: 2, scope: !5344)
!5412 = !DILocation(line: 841, column: 12, scope: !5344)
!5413 = !DILocation(line: 841, column: 17, scope: !5344)
!5414 = !DILocation(line: 842, column: 25, scope: !5344)
!5415 = !DILocation(line: 842, column: 2, scope: !5344)
!5416 = !DILocation(line: 842, column: 12, scope: !5344)
!5417 = !DILocation(line: 842, column: 23, scope: !5344)
!5418 = !DILocation(line: 845, column: 22, scope: !5344)
!5419 = !DILocation(line: 845, column: 27, scope: !5344)
!5420 = !DILocation(line: 845, column: 2, scope: !5344)
!5421 = !DILocation(line: 845, column: 8, scope: !5344)
!5422 = !DILocation(line: 845, column: 12, scope: !5344)
!5423 = !DILocation(line: 845, column: 19, scope: !5344)
!5424 = !DILocation(line: 847, column: 26, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 847, column: 6)
!5426 = !DILocation(line: 847, column: 31, scope: !5425)
!5427 = !DILocation(line: 847, column: 6, scope: !5425)
!5428 = !DILocation(line: 847, column: 6, scope: !5344)
!5429 = !DILocation(line: 848, column: 26, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5425, file: !3, line: 847, column: 37)
!5431 = !DILocation(line: 848, column: 32, scope: !5430)
!5432 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !5433, file: !3, line: 849, type: !140)
!5433 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 849, column: 11)
!5434 = !DILocation(line: 849, column: 11, scope: !5433)
!5435 = !DILocalVariable(name: "__mptr", scope: !5436, file: !3, line: 849, type: !125)
!5436 = distinct !DILexicalBlock(scope: !5433, file: !3, line: 849, column: 11)
!5437 = !DILocation(line: 849, column: 11, scope: !5436)
!5438 = !DILocation(line: 849, column: 11, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 849, column: 11)
!5440 = !DILocation(line: 850, column: 11, scope: !5430)
!5441 = !DILocation(line: 848, column: 3, scope: !5430)
!5442 = !DILocation(line: 851, column: 2, scope: !5430)
!5443 = !DILocation(line: 853, column: 11, scope: !5344)
!5444 = !DILocation(line: 853, column: 17, scope: !5344)
!5445 = !DILocation(line: 854, column: 36, scope: !5344)
!5446 = !DILocation(line: 854, column: 42, scope: !5344)
!5447 = !DILocation(line: 853, column: 2, scope: !5344)
!5448 = !DILocation(line: 856, column: 19, scope: !5344)
!5449 = !DILocation(line: 856, column: 25, scope: !5344)
!5450 = !DILocation(line: 856, column: 2, scope: !5344)
!5451 = !DILocation(line: 858, column: 27, scope: !5344)
!5452 = !DILocation(line: 858, column: 11, scope: !5344)
!5453 = !DILocation(line: 858, column: 9, scope: !5344)
!5454 = !DILocation(line: 859, column: 6, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 859, column: 6)
!5456 = !DILocation(line: 859, column: 6, scope: !5344)
!5457 = !DILocation(line: 860, column: 9, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5455, file: !3, line: 859, column: 14)
!5459 = !DILocation(line: 860, column: 3, scope: !5458)
!5460 = !DILocation(line: 861, column: 9, scope: !5458)
!5461 = !DILocation(line: 861, column: 3, scope: !5458)
!5462 = !DILocation(line: 862, column: 3, scope: !5458)
!5463 = !DILocation(line: 863, column: 10, scope: !5458)
!5464 = !DILocation(line: 863, column: 3, scope: !5458)
!5465 = !DILocation(line: 866, column: 11, scope: !5344)
!5466 = !DILocation(line: 866, column: 3, scope: !5344)
!5467 = !DILocation(line: 866, column: 9, scope: !5344)
!5468 = !DILocation(line: 867, column: 2, scope: !5344)
!5469 = !DILocation(line: 868, column: 1, scope: !5344)
!5470 = distinct !DISubprogram(name: "piix4_setup_aux", scope: !3, file: !3, line: 397, type: !5471, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5471 = !DISubroutineType(types: !5472)
!5472 = !{!131, !4259, !4244, !277}
!5473 = !DILocalVariable(name: "PIIX4_dev", arg: 1, scope: !5470, file: !3, line: 397, type: !4259)
!5474 = !DILocation(line: 397, column: 44, scope: !5470)
!5475 = !DILocalVariable(name: "id", arg: 2, scope: !5470, file: !3, line: 398, type: !4244)
!5476 = !DILocation(line: 398, column: 35, scope: !5470)
!5477 = !DILocalVariable(name: "base_reg_addr", arg: 3, scope: !5470, file: !3, line: 399, type: !277)
!5478 = !DILocation(line: 399, column: 22, scope: !5470)
!5479 = !DILocalVariable(name: "piix4_smba", scope: !5470, file: !3, line: 404, type: !277)
!5480 = !DILocation(line: 404, column: 17, scope: !5470)
!5481 = !DILocation(line: 407, column: 23, scope: !5470)
!5482 = !DILocation(line: 407, column: 34, scope: !5470)
!5483 = !DILocation(line: 407, column: 2, scope: !5470)
!5484 = !DILocation(line: 408, column: 7, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5470, file: !3, line: 408, column: 6)
!5486 = !DILocation(line: 408, column: 18, scope: !5485)
!5487 = !DILocation(line: 408, column: 23, scope: !5485)
!5488 = !DILocation(line: 408, column: 6, scope: !5470)
!5489 = !DILocation(line: 411, column: 3, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5485, file: !3, line: 408, column: 29)
!5491 = !DILocation(line: 414, column: 13, scope: !5470)
!5492 = !DILocation(line: 415, column: 6, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5470, file: !3, line: 415, column: 6)
!5494 = !DILocation(line: 415, column: 17, scope: !5493)
!5495 = !DILocation(line: 415, column: 6, scope: !5470)
!5496 = !DILocation(line: 418, column: 3, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5493, file: !3, line: 415, column: 23)
!5498 = !DILocation(line: 421, column: 24, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5470, file: !3, line: 421, column: 6)
!5500 = !DILocation(line: 421, column: 60, scope: !5499)
!5501 = !DILocation(line: 421, column: 6, scope: !5499)
!5502 = !DILocation(line: 421, column: 6, scope: !5470)
!5503 = !DILocation(line: 422, column: 3, scope: !5499)
!5504 = !DILocation(line: 424, column: 7, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5470, file: !3, line: 424, column: 6)
!5506 = !DILocation(line: 424, column: 6, scope: !5470)
!5507 = !DILocation(line: 425, column: 3, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5505, file: !3, line: 424, column: 65)
!5509 = !DILocation(line: 427, column: 3, scope: !5508)
!5510 = !DILocation(line: 430, column: 2, scope: !5470)
!5511 = !DILocation(line: 434, column: 9, scope: !5470)
!5512 = !DILocation(line: 434, column: 2, scope: !5470)
!5513 = !DILocation(line: 435, column: 1, scope: !5470)
!5514 = distinct !DISubprogram(name: "outb_p", scope: !5515, file: !5515, line: 334, type: !5516, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5515 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!5516 = !DISubroutineType(types: !5517)
!5517 = !{null, !388, !131}
!5518 = !DILocalVariable(name: "value", arg: 1, scope: !5514, file: !5515, line: 334, type: !388)
!5519 = !DILocation(line: 334, column: 1, scope: !5514)
!5520 = !DILocalVariable(name: "port", arg: 2, scope: !5514, file: !5515, line: 334, type: !131)
!5521 = distinct !DISubprogram(name: "inb_p", scope: !5515, file: !5515, line: 334, type: !5522, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5522 = !DISubroutineType(types: !5523)
!5523 = !{!388, !131}
!5524 = !DILocalVariable(name: "port", arg: 1, scope: !5521, file: !5515, line: 334, type: !131)
!5525 = !DILocation(line: 334, column: 1, scope: !5521)
!5526 = !DILocalVariable(name: "value", scope: !5521, file: !5515, line: 334, type: !388)
!5527 = distinct !DISubprogram(name: "outb", scope: !5515, file: !5515, line: 334, type: !5516, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5528 = !DILocalVariable(name: "value", arg: 1, scope: !5527, file: !5515, line: 334, type: !388)
!5529 = !DILocation(line: 334, column: 1, scope: !5527)
!5530 = !DILocalVariable(name: "port", arg: 2, scope: !5527, file: !5515, line: 334, type: !131)
!5531 = !{i32 -2143395741}
!5532 = distinct !DISubprogram(name: "slow_down_io", scope: !5533, file: !5533, line: 40, type: !1839, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5533 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5534 = !DILocation(line: 42, column: 13, scope: !5532)
!5535 = !DILocation(line: 42, column: 2, scope: !5532)
!5536 = !DILocation(line: 48, column: 1, scope: !5532)
!5537 = distinct !DISubprogram(name: "inb", scope: !5515, file: !5515, line: 334, type: !5522, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5538 = !DILocalVariable(name: "port", arg: 1, scope: !5537, file: !5515, line: 334, type: !131)
!5539 = !DILocation(line: 334, column: 1, scope: !5537)
!5540 = !DILocalVariable(name: "value", scope: !5537, file: !5515, line: 334, type: !388)
!5541 = !{i32 -2143395539}
!5542 = distinct !DISubprogram(name: "i2c_get_adapdata", scope: !4558, file: !4558, line: 727, type: !5543, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5543 = !DISubroutineType(types: !5544)
!5544 = !{!125, !5545}
!5545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5546, size: 64)
!5546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4565)
!5547 = !DILocalVariable(name: "adap", arg: 1, scope: !5542, file: !4558, line: 727, type: !5545)
!5548 = !DILocation(line: 727, column: 64, scope: !5542)
!5549 = !DILocation(line: 729, column: 26, scope: !5542)
!5550 = !DILocation(line: 729, column: 32, scope: !5542)
!5551 = !DILocation(line: 729, column: 9, scope: !5542)
!5552 = !DILocation(line: 729, column: 2, scope: !5542)
!5553 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !5554, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5554 = !DISubroutineType(types: !5555)
!5555 = !{!125, !168}
!5556 = !DILocalVariable(name: "dev", arg: 1, scope: !5553, file: !73, line: 655, type: !168)
!5557 = !DILocation(line: 655, column: 58, scope: !5553)
!5558 = !DILocation(line: 657, column: 9, scope: !5553)
!5559 = !DILocation(line: 657, column: 14, scope: !5553)
!5560 = !DILocation(line: 657, column: 2, scope: !5553)
!5561 = distinct !DISubprogram(name: "kzalloc", scope: !113, file: !113, line: 662, type: !5562, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5562 = !DISubroutineType(types: !5563)
!5563 = !{!125, !282, !123}
!5564 = !DILocalVariable(name: "s", arg: 1, scope: !5565, file: !113, line: 445, type: !894)
!5565 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !113, file: !113, line: 445, type: !5566, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5566 = !DISubroutineType(types: !5567)
!5567 = !{!125, !894, !123, !282}
!5568 = !DILocation(line: 445, column: 72, scope: !5565, inlinedAt: !5569)
!5569 = distinct !DILocation(line: 552, column: 10, scope: !5570, inlinedAt: !5573)
!5570 = distinct !DILexicalBlock(scope: !5571, file: !113, line: 540, column: 34)
!5571 = distinct !DILexicalBlock(scope: !5572, file: !113, line: 540, column: 6)
!5572 = distinct !DISubprogram(name: "kmalloc", scope: !113, file: !113, line: 538, type: !5562, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5573 = distinct !DILocation(line: 664, column: 9, scope: !5561)
!5574 = !DILocalVariable(name: "flags", arg: 2, scope: !5565, file: !113, line: 446, type: !123)
!5575 = !DILocation(line: 446, column: 9, scope: !5565, inlinedAt: !5569)
!5576 = !DILocalVariable(name: "size", arg: 3, scope: !5565, file: !113, line: 446, type: !282)
!5577 = !DILocation(line: 446, column: 23, scope: !5565, inlinedAt: !5569)
!5578 = !DILocalVariable(name: "ret", scope: !5565, file: !113, line: 448, type: !125)
!5579 = !DILocation(line: 448, column: 8, scope: !5565, inlinedAt: !5569)
!5580 = !DILocalVariable(name: "flags", arg: 1, scope: !5581, file: !113, line: 318, type: !123)
!5581 = distinct !DISubprogram(name: "kmalloc_type", scope: !113, file: !113, line: 318, type: !5582, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5582 = !DISubroutineType(types: !5583)
!5583 = !{!112, !123}
!5584 = !DILocation(line: 318, column: 67, scope: !5581, inlinedAt: !5585)
!5585 = distinct !DILocation(line: 553, column: 20, scope: !5570, inlinedAt: !5573)
!5586 = !DILocalVariable(name: "size", arg: 1, scope: !5587, file: !113, line: 346, type: !282)
!5587 = distinct !DISubprogram(name: "kmalloc_index", scope: !113, file: !113, line: 346, type: !5588, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5588 = !DISubroutineType(types: !5589)
!5589 = !{!7, !282}
!5590 = !DILocation(line: 346, column: 58, scope: !5587, inlinedAt: !5591)
!5591 = distinct !DILocation(line: 547, column: 11, scope: !5570, inlinedAt: !5573)
!5592 = !DILocalVariable(name: "size", arg: 1, scope: !5593, file: !113, line: 472, type: !282)
!5593 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !113, file: !113, line: 472, type: !5594, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5594 = !DISubroutineType(types: !5595)
!5595 = !{!125, !282, !123, !7}
!5596 = !DILocation(line: 472, column: 28, scope: !5593, inlinedAt: !5597)
!5597 = distinct !DILocation(line: 481, column: 9, scope: !5598, inlinedAt: !5599)
!5598 = distinct !DISubprogram(name: "kmalloc_large", scope: !113, file: !113, line: 478, type: !5562, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5599 = distinct !DILocation(line: 545, column: 11, scope: !5600, inlinedAt: !5573)
!5600 = distinct !DILexicalBlock(scope: !5570, file: !113, line: 544, column: 7)
!5601 = !DILocalVariable(name: "flags", arg: 2, scope: !5593, file: !113, line: 472, type: !123)
!5602 = !DILocation(line: 472, column: 40, scope: !5593, inlinedAt: !5597)
!5603 = !DILocalVariable(name: "order", arg: 3, scope: !5593, file: !113, line: 472, type: !7)
!5604 = !DILocation(line: 472, column: 60, scope: !5593, inlinedAt: !5597)
!5605 = !DILocalVariable(name: "size", arg: 1, scope: !5598, file: !113, line: 478, type: !282)
!5606 = !DILocation(line: 478, column: 51, scope: !5598, inlinedAt: !5599)
!5607 = !DILocalVariable(name: "flags", arg: 2, scope: !5598, file: !113, line: 478, type: !123)
!5608 = !DILocation(line: 478, column: 63, scope: !5598, inlinedAt: !5599)
!5609 = !DILocalVariable(name: "order", scope: !5598, file: !113, line: 480, type: !7)
!5610 = !DILocation(line: 480, column: 15, scope: !5598, inlinedAt: !5599)
!5611 = !DILocalVariable(name: "size", arg: 1, scope: !5572, file: !113, line: 538, type: !282)
!5612 = !DILocation(line: 538, column: 45, scope: !5572, inlinedAt: !5573)
!5613 = !DILocalVariable(name: "flags", arg: 2, scope: !5572, file: !113, line: 538, type: !123)
!5614 = !DILocation(line: 538, column: 57, scope: !5572, inlinedAt: !5573)
!5615 = !DILocalVariable(name: "index", scope: !5570, file: !113, line: 542, type: !7)
!5616 = !DILocation(line: 542, column: 16, scope: !5570, inlinedAt: !5573)
!5617 = !DILocalVariable(name: "size", arg: 1, scope: !5561, file: !113, line: 662, type: !282)
!5618 = !DILocation(line: 662, column: 36, scope: !5561)
!5619 = !DILocalVariable(name: "flags", arg: 2, scope: !5561, file: !113, line: 662, type: !123)
!5620 = !DILocation(line: 662, column: 48, scope: !5561)
!5621 = !DILocation(line: 664, column: 17, scope: !5561)
!5622 = !DILocation(line: 664, column: 23, scope: !5561)
!5623 = !DILocation(line: 664, column: 29, scope: !5561)
!5624 = !DILocation(line: 540, column: 27, scope: !5571, inlinedAt: !5573)
!5625 = !DILocation(line: 540, column: 6, scope: !5571, inlinedAt: !5573)
!5626 = !DILocation(line: 540, column: 6, scope: !5572, inlinedAt: !5573)
!5627 = !DILocation(line: 544, column: 7, scope: !5600, inlinedAt: !5573)
!5628 = !DILocation(line: 544, column: 12, scope: !5600, inlinedAt: !5573)
!5629 = !DILocation(line: 544, column: 7, scope: !5570, inlinedAt: !5573)
!5630 = !DILocation(line: 545, column: 25, scope: !5600, inlinedAt: !5573)
!5631 = !DILocation(line: 545, column: 31, scope: !5600, inlinedAt: !5573)
!5632 = !DILocation(line: 480, column: 33, scope: !5598, inlinedAt: !5599)
!5633 = !DILocation(line: 480, column: 23, scope: !5598, inlinedAt: !5599)
!5634 = !DILocation(line: 481, column: 29, scope: !5598, inlinedAt: !5599)
!5635 = !DILocation(line: 481, column: 35, scope: !5598, inlinedAt: !5599)
!5636 = !DILocation(line: 481, column: 42, scope: !5598, inlinedAt: !5599)
!5637 = !DILocation(line: 474, column: 23, scope: !5593, inlinedAt: !5597)
!5638 = !DILocation(line: 474, column: 29, scope: !5593, inlinedAt: !5597)
!5639 = !DILocation(line: 474, column: 36, scope: !5593, inlinedAt: !5597)
!5640 = !DILocation(line: 474, column: 9, scope: !5593, inlinedAt: !5597)
!5641 = !DILocation(line: 545, column: 4, scope: !5600, inlinedAt: !5573)
!5642 = !DILocation(line: 547, column: 25, scope: !5570, inlinedAt: !5573)
!5643 = !DILocation(line: 348, column: 7, scope: !5644, inlinedAt: !5591)
!5644 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 348, column: 6)
!5645 = !DILocation(line: 348, column: 6, scope: !5587, inlinedAt: !5591)
!5646 = !DILocation(line: 349, column: 3, scope: !5644, inlinedAt: !5591)
!5647 = !DILocation(line: 351, column: 6, scope: !5648, inlinedAt: !5591)
!5648 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 351, column: 6)
!5649 = !DILocation(line: 351, column: 11, scope: !5648, inlinedAt: !5591)
!5650 = !DILocation(line: 351, column: 6, scope: !5587, inlinedAt: !5591)
!5651 = !DILocation(line: 352, column: 3, scope: !5648, inlinedAt: !5591)
!5652 = !DILocation(line: 354, column: 32, scope: !5653, inlinedAt: !5591)
!5653 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 354, column: 6)
!5654 = !DILocation(line: 354, column: 37, scope: !5653, inlinedAt: !5591)
!5655 = !DILocation(line: 354, column: 42, scope: !5653, inlinedAt: !5591)
!5656 = !DILocation(line: 354, column: 45, scope: !5653, inlinedAt: !5591)
!5657 = !DILocation(line: 354, column: 50, scope: !5653, inlinedAt: !5591)
!5658 = !DILocation(line: 354, column: 6, scope: !5587, inlinedAt: !5591)
!5659 = !DILocation(line: 355, column: 3, scope: !5653, inlinedAt: !5591)
!5660 = !DILocation(line: 356, column: 32, scope: !5661, inlinedAt: !5591)
!5661 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 356, column: 6)
!5662 = !DILocation(line: 356, column: 37, scope: !5661, inlinedAt: !5591)
!5663 = !DILocation(line: 356, column: 43, scope: !5661, inlinedAt: !5591)
!5664 = !DILocation(line: 356, column: 46, scope: !5661, inlinedAt: !5591)
!5665 = !DILocation(line: 356, column: 51, scope: !5661, inlinedAt: !5591)
!5666 = !DILocation(line: 356, column: 6, scope: !5587, inlinedAt: !5591)
!5667 = !DILocation(line: 357, column: 3, scope: !5661, inlinedAt: !5591)
!5668 = !DILocation(line: 358, column: 6, scope: !5669, inlinedAt: !5591)
!5669 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 358, column: 6)
!5670 = !DILocation(line: 358, column: 11, scope: !5669, inlinedAt: !5591)
!5671 = !DILocation(line: 358, column: 6, scope: !5587, inlinedAt: !5591)
!5672 = !DILocation(line: 358, column: 26, scope: !5669, inlinedAt: !5591)
!5673 = !DILocation(line: 359, column: 6, scope: !5674, inlinedAt: !5591)
!5674 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 359, column: 6)
!5675 = !DILocation(line: 359, column: 11, scope: !5674, inlinedAt: !5591)
!5676 = !DILocation(line: 359, column: 6, scope: !5587, inlinedAt: !5591)
!5677 = !DILocation(line: 359, column: 26, scope: !5674, inlinedAt: !5591)
!5678 = !DILocation(line: 360, column: 6, scope: !5679, inlinedAt: !5591)
!5679 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 360, column: 6)
!5680 = !DILocation(line: 360, column: 11, scope: !5679, inlinedAt: !5591)
!5681 = !DILocation(line: 360, column: 6, scope: !5587, inlinedAt: !5591)
!5682 = !DILocation(line: 360, column: 26, scope: !5679, inlinedAt: !5591)
!5683 = !DILocation(line: 361, column: 6, scope: !5684, inlinedAt: !5591)
!5684 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 361, column: 6)
!5685 = !DILocation(line: 361, column: 11, scope: !5684, inlinedAt: !5591)
!5686 = !DILocation(line: 361, column: 6, scope: !5587, inlinedAt: !5591)
!5687 = !DILocation(line: 361, column: 26, scope: !5684, inlinedAt: !5591)
!5688 = !DILocation(line: 362, column: 6, scope: !5689, inlinedAt: !5591)
!5689 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 362, column: 6)
!5690 = !DILocation(line: 362, column: 11, scope: !5689, inlinedAt: !5591)
!5691 = !DILocation(line: 362, column: 6, scope: !5587, inlinedAt: !5591)
!5692 = !DILocation(line: 362, column: 26, scope: !5689, inlinedAt: !5591)
!5693 = !DILocation(line: 363, column: 6, scope: !5694, inlinedAt: !5591)
!5694 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 363, column: 6)
!5695 = !DILocation(line: 363, column: 11, scope: !5694, inlinedAt: !5591)
!5696 = !DILocation(line: 363, column: 6, scope: !5587, inlinedAt: !5591)
!5697 = !DILocation(line: 363, column: 26, scope: !5694, inlinedAt: !5591)
!5698 = !DILocation(line: 364, column: 6, scope: !5699, inlinedAt: !5591)
!5699 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 364, column: 6)
!5700 = !DILocation(line: 364, column: 11, scope: !5699, inlinedAt: !5591)
!5701 = !DILocation(line: 364, column: 6, scope: !5587, inlinedAt: !5591)
!5702 = !DILocation(line: 364, column: 26, scope: !5699, inlinedAt: !5591)
!5703 = !DILocation(line: 365, column: 6, scope: !5704, inlinedAt: !5591)
!5704 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 365, column: 6)
!5705 = !DILocation(line: 365, column: 11, scope: !5704, inlinedAt: !5591)
!5706 = !DILocation(line: 365, column: 6, scope: !5587, inlinedAt: !5591)
!5707 = !DILocation(line: 365, column: 26, scope: !5704, inlinedAt: !5591)
!5708 = !DILocation(line: 366, column: 6, scope: !5709, inlinedAt: !5591)
!5709 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 366, column: 6)
!5710 = !DILocation(line: 366, column: 11, scope: !5709, inlinedAt: !5591)
!5711 = !DILocation(line: 366, column: 6, scope: !5587, inlinedAt: !5591)
!5712 = !DILocation(line: 366, column: 26, scope: !5709, inlinedAt: !5591)
!5713 = !DILocation(line: 367, column: 6, scope: !5714, inlinedAt: !5591)
!5714 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 367, column: 6)
!5715 = !DILocation(line: 367, column: 11, scope: !5714, inlinedAt: !5591)
!5716 = !DILocation(line: 367, column: 6, scope: !5587, inlinedAt: !5591)
!5717 = !DILocation(line: 367, column: 26, scope: !5714, inlinedAt: !5591)
!5718 = !DILocation(line: 368, column: 6, scope: !5719, inlinedAt: !5591)
!5719 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 368, column: 6)
!5720 = !DILocation(line: 368, column: 11, scope: !5719, inlinedAt: !5591)
!5721 = !DILocation(line: 368, column: 6, scope: !5587, inlinedAt: !5591)
!5722 = !DILocation(line: 368, column: 26, scope: !5719, inlinedAt: !5591)
!5723 = !DILocation(line: 369, column: 6, scope: !5724, inlinedAt: !5591)
!5724 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 369, column: 6)
!5725 = !DILocation(line: 369, column: 11, scope: !5724, inlinedAt: !5591)
!5726 = !DILocation(line: 369, column: 6, scope: !5587, inlinedAt: !5591)
!5727 = !DILocation(line: 369, column: 26, scope: !5724, inlinedAt: !5591)
!5728 = !DILocation(line: 370, column: 6, scope: !5729, inlinedAt: !5591)
!5729 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 370, column: 6)
!5730 = !DILocation(line: 370, column: 11, scope: !5729, inlinedAt: !5591)
!5731 = !DILocation(line: 370, column: 6, scope: !5587, inlinedAt: !5591)
!5732 = !DILocation(line: 370, column: 26, scope: !5729, inlinedAt: !5591)
!5733 = !DILocation(line: 371, column: 6, scope: !5734, inlinedAt: !5591)
!5734 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 371, column: 6)
!5735 = !DILocation(line: 371, column: 11, scope: !5734, inlinedAt: !5591)
!5736 = !DILocation(line: 371, column: 6, scope: !5587, inlinedAt: !5591)
!5737 = !DILocation(line: 371, column: 26, scope: !5734, inlinedAt: !5591)
!5738 = !DILocation(line: 372, column: 6, scope: !5739, inlinedAt: !5591)
!5739 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 372, column: 6)
!5740 = !DILocation(line: 372, column: 11, scope: !5739, inlinedAt: !5591)
!5741 = !DILocation(line: 372, column: 6, scope: !5587, inlinedAt: !5591)
!5742 = !DILocation(line: 372, column: 26, scope: !5739, inlinedAt: !5591)
!5743 = !DILocation(line: 373, column: 6, scope: !5744, inlinedAt: !5591)
!5744 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 373, column: 6)
!5745 = !DILocation(line: 373, column: 11, scope: !5744, inlinedAt: !5591)
!5746 = !DILocation(line: 373, column: 6, scope: !5587, inlinedAt: !5591)
!5747 = !DILocation(line: 373, column: 26, scope: !5744, inlinedAt: !5591)
!5748 = !DILocation(line: 374, column: 6, scope: !5749, inlinedAt: !5591)
!5749 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 374, column: 6)
!5750 = !DILocation(line: 374, column: 11, scope: !5749, inlinedAt: !5591)
!5751 = !DILocation(line: 374, column: 6, scope: !5587, inlinedAt: !5591)
!5752 = !DILocation(line: 374, column: 26, scope: !5749, inlinedAt: !5591)
!5753 = !DILocation(line: 375, column: 6, scope: !5754, inlinedAt: !5591)
!5754 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 375, column: 6)
!5755 = !DILocation(line: 375, column: 11, scope: !5754, inlinedAt: !5591)
!5756 = !DILocation(line: 375, column: 6, scope: !5587, inlinedAt: !5591)
!5757 = !DILocation(line: 375, column: 27, scope: !5754, inlinedAt: !5591)
!5758 = !DILocation(line: 376, column: 6, scope: !5759, inlinedAt: !5591)
!5759 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 376, column: 6)
!5760 = !DILocation(line: 376, column: 11, scope: !5759, inlinedAt: !5591)
!5761 = !DILocation(line: 376, column: 6, scope: !5587, inlinedAt: !5591)
!5762 = !DILocation(line: 376, column: 32, scope: !5759, inlinedAt: !5591)
!5763 = !DILocation(line: 377, column: 6, scope: !5764, inlinedAt: !5591)
!5764 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 377, column: 6)
!5765 = !DILocation(line: 377, column: 11, scope: !5764, inlinedAt: !5591)
!5766 = !DILocation(line: 377, column: 6, scope: !5587, inlinedAt: !5591)
!5767 = !DILocation(line: 377, column: 32, scope: !5764, inlinedAt: !5591)
!5768 = !DILocation(line: 378, column: 6, scope: !5769, inlinedAt: !5591)
!5769 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 378, column: 6)
!5770 = !DILocation(line: 378, column: 11, scope: !5769, inlinedAt: !5591)
!5771 = !DILocation(line: 378, column: 6, scope: !5587, inlinedAt: !5591)
!5772 = !DILocation(line: 378, column: 32, scope: !5769, inlinedAt: !5591)
!5773 = !DILocation(line: 379, column: 6, scope: !5774, inlinedAt: !5591)
!5774 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 379, column: 6)
!5775 = !DILocation(line: 379, column: 11, scope: !5774, inlinedAt: !5591)
!5776 = !DILocation(line: 379, column: 6, scope: !5587, inlinedAt: !5591)
!5777 = !DILocation(line: 379, column: 33, scope: !5774, inlinedAt: !5591)
!5778 = !DILocation(line: 380, column: 6, scope: !5779, inlinedAt: !5591)
!5779 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 380, column: 6)
!5780 = !DILocation(line: 380, column: 11, scope: !5779, inlinedAt: !5591)
!5781 = !DILocation(line: 380, column: 6, scope: !5587, inlinedAt: !5591)
!5782 = !DILocation(line: 380, column: 33, scope: !5779, inlinedAt: !5591)
!5783 = !DILocation(line: 381, column: 6, scope: !5784, inlinedAt: !5591)
!5784 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 381, column: 6)
!5785 = !DILocation(line: 381, column: 11, scope: !5784, inlinedAt: !5591)
!5786 = !DILocation(line: 381, column: 6, scope: !5587, inlinedAt: !5591)
!5787 = !DILocation(line: 381, column: 33, scope: !5784, inlinedAt: !5591)
!5788 = !DILocation(line: 382, column: 2, scope: !5789, inlinedAt: !5591)
!5789 = distinct !DILexicalBlock(scope: !5790, file: !113, line: 382, column: 2)
!5790 = distinct !DILexicalBlock(scope: !5587, file: !113, line: 382, column: 2)
!5791 = !{i32 -2143252021, i32 -2143251992, i32 -2143251946, i32 -2143251888, i32 -2143251834, i32 -2143251780, i32 -2143251725, i32 -2143251694}
!5792 = !DILocation(line: 382, column: 2, scope: !5793, inlinedAt: !5591)
!5793 = distinct !DILexicalBlock(scope: !5794, file: !113, line: 382, column: 2)
!5794 = distinct !DILexicalBlock(scope: !5790, file: !113, line: 382, column: 2)
!5795 = !{i32 -2143251251, i32 -2143251244, i32 -2143251190, i32 -2143251159, i32 -2143251129}
!5796 = !DILocation(line: 382, column: 2, scope: !5794, inlinedAt: !5591)
!5797 = !DILocation(line: 386, column: 1, scope: !5587, inlinedAt: !5591)
!5798 = !DILocation(line: 547, column: 9, scope: !5570, inlinedAt: !5573)
!5799 = !DILocation(line: 549, column: 8, scope: !5800, inlinedAt: !5573)
!5800 = distinct !DILexicalBlock(scope: !5570, file: !113, line: 549, column: 7)
!5801 = !DILocation(line: 549, column: 7, scope: !5570, inlinedAt: !5573)
!5802 = !DILocation(line: 550, column: 4, scope: !5800, inlinedAt: !5573)
!5803 = !DILocation(line: 553, column: 33, scope: !5570, inlinedAt: !5573)
!5804 = !DILocation(line: 325, column: 6, scope: !5805, inlinedAt: !5585)
!5805 = distinct !DILexicalBlock(scope: !5581, file: !113, line: 325, column: 6)
!5806 = !DILocation(line: 325, column: 6, scope: !5581, inlinedAt: !5585)
!5807 = !DILocation(line: 326, column: 3, scope: !5805, inlinedAt: !5585)
!5808 = !DILocation(line: 332, column: 9, scope: !5581, inlinedAt: !5585)
!5809 = !DILocation(line: 332, column: 15, scope: !5581, inlinedAt: !5585)
!5810 = !DILocation(line: 332, column: 2, scope: !5581, inlinedAt: !5585)
!5811 = !DILocation(line: 336, column: 1, scope: !5581, inlinedAt: !5585)
!5812 = !DILocation(line: 553, column: 5, scope: !5570, inlinedAt: !5573)
!5813 = !DILocation(line: 553, column: 41, scope: !5570, inlinedAt: !5573)
!5814 = !DILocation(line: 554, column: 5, scope: !5570, inlinedAt: !5573)
!5815 = !DILocation(line: 554, column: 12, scope: !5570, inlinedAt: !5573)
!5816 = !DILocation(line: 448, column: 31, scope: !5565, inlinedAt: !5569)
!5817 = !DILocation(line: 448, column: 34, scope: !5565, inlinedAt: !5569)
!5818 = !DILocation(line: 448, column: 14, scope: !5565, inlinedAt: !5569)
!5819 = !DILocation(line: 450, column: 22, scope: !5565, inlinedAt: !5569)
!5820 = !DILocation(line: 450, column: 25, scope: !5565, inlinedAt: !5569)
!5821 = !DILocation(line: 450, column: 30, scope: !5565, inlinedAt: !5569)
!5822 = !DILocation(line: 450, column: 36, scope: !5565, inlinedAt: !5569)
!5823 = !DILocation(line: 450, column: 8, scope: !5565, inlinedAt: !5569)
!5824 = !DILocation(line: 450, column: 6, scope: !5565, inlinedAt: !5569)
!5825 = !DILocation(line: 451, column: 9, scope: !5565, inlinedAt: !5569)
!5826 = !DILocation(line: 552, column: 3, scope: !5570, inlinedAt: !5573)
!5827 = !DILocation(line: 557, column: 19, scope: !5572, inlinedAt: !5573)
!5828 = !DILocation(line: 557, column: 25, scope: !5572, inlinedAt: !5573)
!5829 = !DILocation(line: 557, column: 9, scope: !5572, inlinedAt: !5573)
!5830 = !DILocation(line: 557, column: 2, scope: !5572, inlinedAt: !5573)
!5831 = !DILocation(line: 558, column: 1, scope: !5572, inlinedAt: !5573)
!5832 = !DILocation(line: 664, column: 2, scope: !5561)
!5833 = distinct !DISubprogram(name: "has_acpi_companion", scope: !5834, file: !5834, line: 84, type: !5835, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5834 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!5835 = !DISubroutineType(types: !5836)
!5836 = !{!158, !3332}
!5837 = !DILocalVariable(name: "dev", arg: 1, scope: !5833, file: !5834, line: 84, type: !3332)
!5838 = !DILocation(line: 84, column: 54, scope: !5833)
!5839 = !DILocation(line: 86, column: 29, scope: !5833)
!5840 = !DILocation(line: 86, column: 34, scope: !5833)
!5841 = !DILocation(line: 86, column: 9, scope: !5833)
!5842 = !DILocation(line: 86, column: 2, scope: !5833)
!5843 = distinct !DISubprogram(name: "acpi_preset_companion", scope: !5834, file: !5834, line: 89, type: !5844, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5844 = !DISubroutineType(types: !5845)
!5845 = !{null, !3332, !126, !382}
!5846 = !DILocalVariable(name: "dev", arg: 1, scope: !5843, file: !5834, line: 89, type: !3332)
!5847 = !DILocation(line: 89, column: 57, scope: !5843)
!5848 = !DILocalVariable(name: "parent", arg: 2, scope: !5843, file: !5834, line: 90, type: !126)
!5849 = !DILocation(line: 90, column: 27, scope: !5843)
!5850 = !DILocalVariable(name: "addr", arg: 3, scope: !5843, file: !5834, line: 90, type: !382)
!5851 = !DILocation(line: 90, column: 39, scope: !5843)
!5852 = !DILocation(line: 92, column: 2, scope: !5843)
!5853 = !DILocation(line: 93, column: 1, scope: !5843)
!5854 = distinct !DISubprogram(name: "i2c_set_adapdata", scope: !4558, file: !4558, line: 732, type: !5855, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5855 = !DISubroutineType(types: !5856)
!5856 = !{null, !4564, !125}
!5857 = !DILocalVariable(name: "adap", arg: 1, scope: !5854, file: !4558, line: 732, type: !4564)
!5858 = !DILocation(line: 732, column: 57, scope: !5854)
!5859 = !DILocalVariable(name: "data", arg: 2, scope: !5854, file: !4558, line: 732, type: !125)
!5860 = !DILocation(line: 732, column: 69, scope: !5854)
!5861 = !DILocation(line: 734, column: 19, scope: !5854)
!5862 = !DILocation(line: 734, column: 25, scope: !5854)
!5863 = !DILocation(line: 734, column: 30, scope: !5854)
!5864 = !DILocation(line: 734, column: 2, scope: !5854)
!5865 = !DILocation(line: 735, column: 1, scope: !5854)
!5866 = distinct !DISubprogram(name: "get_order", scope: !5867, file: !5867, line: 29, type: !5868, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5867 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5868 = !DISubroutineType(types: !5869)
!5869 = !{!131, !285}
!5870 = !DILocalVariable(name: "x", arg: 1, scope: !5871, file: !5872, line: 366, type: !383)
!5871 = distinct !DISubprogram(name: "fls64", scope: !5872, file: !5872, line: 366, type: !5873, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5872 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5873 = !DISubroutineType(types: !5874)
!5874 = !{!131, !383}
!5875 = !DILocation(line: 366, column: 40, scope: !5871, inlinedAt: !5876)
!5876 = distinct !DILocation(line: 46, column: 9, scope: !5866)
!5877 = !DILocalVariable(name: "bitpos", scope: !5871, file: !5872, line: 368, type: !131)
!5878 = !DILocation(line: 368, column: 6, scope: !5871, inlinedAt: !5876)
!5879 = !DILocalVariable(name: "size", arg: 1, scope: !5866, file: !5867, line: 29, type: !285)
!5880 = !DILocation(line: 29, column: 63, scope: !5866)
!5881 = !DILocation(line: 31, column: 27, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5866, file: !5867, line: 31, column: 6)
!5883 = !DILocation(line: 31, column: 6, scope: !5882)
!5884 = !DILocation(line: 31, column: 6, scope: !5866)
!5885 = !DILocation(line: 32, column: 8, scope: !5886)
!5886 = distinct !DILexicalBlock(scope: !5887, file: !5867, line: 32, column: 7)
!5887 = distinct !DILexicalBlock(scope: !5882, file: !5867, line: 31, column: 34)
!5888 = !DILocation(line: 32, column: 7, scope: !5887)
!5889 = !DILocation(line: 33, column: 4, scope: !5886)
!5890 = !DILocation(line: 35, column: 7, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5887, file: !5867, line: 35, column: 7)
!5892 = !DILocation(line: 35, column: 12, scope: !5891)
!5893 = !DILocation(line: 35, column: 7, scope: !5887)
!5894 = !DILocation(line: 36, column: 4, scope: !5891)
!5895 = !DILocation(line: 38, column: 10, scope: !5887)
!5896 = !DILocation(line: 38, column: 28, scope: !5887)
!5897 = !DILocation(line: 38, column: 41, scope: !5887)
!5898 = !DILocation(line: 38, column: 3, scope: !5887)
!5899 = !DILocation(line: 41, column: 6, scope: !5866)
!5900 = !DILocation(line: 42, column: 7, scope: !5866)
!5901 = !DILocation(line: 46, column: 15, scope: !5866)
!5902 = !DILocation(line: 374, column: 2, scope: !5871, inlinedAt: !5876)
!5903 = !DILocation(line: 376, column: 14, scope: !5871, inlinedAt: !5876)
!5904 = !{i32 325205}
!5905 = !DILocation(line: 377, column: 9, scope: !5871, inlinedAt: !5876)
!5906 = !DILocation(line: 377, column: 16, scope: !5871, inlinedAt: !5876)
!5907 = !DILocation(line: 46, column: 2, scope: !5866)
!5908 = !DILocation(line: 48, column: 1, scope: !5866)
!5909 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5910, file: !5910, line: 30, type: !5911, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5910 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5911 = !DISubroutineType(types: !5912)
!5912 = !{!131, !382}
!5913 = !DILocation(line: 366, column: 40, scope: !5871, inlinedAt: !5914)
!5914 = distinct !DILocation(line: 32, column: 9, scope: !5909)
!5915 = !DILocation(line: 368, column: 6, scope: !5871, inlinedAt: !5914)
!5916 = !DILocalVariable(name: "n", arg: 1, scope: !5909, file: !5910, line: 30, type: !382)
!5917 = !DILocation(line: 30, column: 21, scope: !5909)
!5918 = !DILocation(line: 32, column: 15, scope: !5909)
!5919 = !DILocation(line: 374, column: 2, scope: !5871, inlinedAt: !5914)
!5920 = !DILocation(line: 376, column: 14, scope: !5871, inlinedAt: !5914)
!5921 = !DILocation(line: 377, column: 9, scope: !5871, inlinedAt: !5914)
!5922 = !DILocation(line: 377, column: 16, scope: !5871, inlinedAt: !5914)
!5923 = !DILocation(line: 32, column: 18, scope: !5909)
!5924 = !DILocation(line: 32, column: 2, scope: !5909)
!5925 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5926, file: !5926, line: 137, type: !5927, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5926 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5927 = !DISubroutineType(types: !5928)
!5928 = !{!125, !894, !166, !282, !123}
!5929 = !DILocalVariable(name: "s", arg: 1, scope: !5925, file: !5926, line: 137, type: !894)
!5930 = !DILocation(line: 137, column: 54, scope: !5925)
!5931 = !DILocalVariable(name: "object", arg: 2, scope: !5925, file: !5926, line: 137, type: !166)
!5932 = !DILocation(line: 137, column: 69, scope: !5925)
!5933 = !DILocalVariable(name: "size", arg: 3, scope: !5925, file: !5926, line: 138, type: !282)
!5934 = !DILocation(line: 138, column: 12, scope: !5925)
!5935 = !DILocalVariable(name: "flags", arg: 4, scope: !5925, file: !5926, line: 138, type: !123)
!5936 = !DILocation(line: 138, column: 24, scope: !5925)
!5937 = !DILocation(line: 140, column: 17, scope: !5925)
!5938 = !DILocation(line: 140, column: 2, scope: !5925)
!5939 = distinct !DISubprogram(name: "piix4_access_sb800", scope: !3, file: !3, line: 673, type: !5940, scopeLine: 676, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5940 = !DISubroutineType(types: !5941)
!5941 = !{!1403, !4564, !818, !277, !179, !1311, !131, !4661}
!5942 = !DILocalVariable(name: "adap", arg: 1, scope: !5939, file: !3, line: 673, type: !4564)
!5943 = !DILocation(line: 673, column: 51, scope: !5939)
!5944 = !DILocalVariable(name: "addr", arg: 2, scope: !5939, file: !3, line: 673, type: !818)
!5945 = !DILocation(line: 673, column: 61, scope: !5939)
!5946 = !DILocalVariable(name: "flags", arg: 3, scope: !5939, file: !3, line: 674, type: !277)
!5947 = !DILocation(line: 674, column: 19, scope: !5939)
!5948 = !DILocalVariable(name: "read_write", arg: 4, scope: !5939, file: !3, line: 674, type: !179)
!5949 = !DILocation(line: 674, column: 31, scope: !5939)
!5950 = !DILocalVariable(name: "command", arg: 5, scope: !5939, file: !3, line: 675, type: !1311)
!5951 = !DILocation(line: 675, column: 7, scope: !5939)
!5952 = !DILocalVariable(name: "size", arg: 6, scope: !5939, file: !3, line: 675, type: !131)
!5953 = !DILocation(line: 675, column: 20, scope: !5939)
!5954 = !DILocalVariable(name: "data", arg: 7, scope: !5939, file: !3, line: 675, type: !4661)
!5955 = !DILocation(line: 675, column: 48, scope: !5939)
!5956 = !DILocalVariable(name: "adapdata", scope: !5939, file: !3, line: 677, type: !5112)
!5957 = !DILocation(line: 677, column: 29, scope: !5939)
!5958 = !DILocation(line: 677, column: 57, scope: !5939)
!5959 = !DILocation(line: 677, column: 40, scope: !5939)
!5960 = !DILocalVariable(name: "piix4_smba", scope: !5939, file: !3, line: 678, type: !277)
!5961 = !DILocation(line: 678, column: 17, scope: !5939)
!5962 = !DILocation(line: 678, column: 30, scope: !5939)
!5963 = !DILocation(line: 678, column: 40, scope: !5939)
!5964 = !DILocalVariable(name: "retries", scope: !5939, file: !3, line: 679, type: !131)
!5965 = !DILocation(line: 679, column: 6, scope: !5939)
!5966 = !DILocalVariable(name: "smbslvcnt", scope: !5939, file: !3, line: 680, type: !131)
!5967 = !DILocation(line: 680, column: 6, scope: !5939)
!5968 = !DILocalVariable(name: "smba_en_lo", scope: !5939, file: !3, line: 681, type: !1311)
!5969 = !DILocation(line: 681, column: 5, scope: !5939)
!5970 = !DILocalVariable(name: "port", scope: !5939, file: !3, line: 682, type: !1311)
!5971 = !DILocation(line: 682, column: 5, scope: !5939)
!5972 = !DILocalVariable(name: "retval", scope: !5939, file: !3, line: 683, type: !131)
!5973 = !DILocation(line: 683, column: 6, scope: !5939)
!5974 = !DILocation(line: 685, column: 7, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 685, column: 6)
!5976 = !DILocation(line: 685, column: 6, scope: !5939)
!5977 = !DILocation(line: 686, column: 3, scope: !5975)
!5978 = !DILocation(line: 689, column: 21, scope: !5939)
!5979 = !DILocation(line: 689, column: 15, scope: !5939)
!5980 = !DILocation(line: 689, column: 13, scope: !5939)
!5981 = !DILocation(line: 690, column: 2, scope: !5939)
!5982 = !DILocation(line: 691, column: 10, scope: !5983)
!5983 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 690, column: 5)
!5984 = !DILocation(line: 691, column: 20, scope: !5983)
!5985 = !DILocation(line: 691, column: 28, scope: !5983)
!5986 = !DILocation(line: 691, column: 3, scope: !5983)
!5987 = !DILocation(line: 694, column: 22, scope: !5983)
!5988 = !DILocation(line: 694, column: 16, scope: !5983)
!5989 = !DILocation(line: 694, column: 14, scope: !5983)
!5990 = !DILocation(line: 695, column: 7, scope: !5991)
!5991 = distinct !DILexicalBlock(scope: !5983, file: !3, line: 695, column: 7)
!5992 = !DILocation(line: 695, column: 17, scope: !5991)
!5993 = !DILocation(line: 695, column: 7, scope: !5983)
!5994 = !DILocation(line: 696, column: 4, scope: !5991)
!5995 = !DILocation(line: 698, column: 3, scope: !5983)
!5996 = !DILocation(line: 699, column: 2, scope: !5983)
!5997 = !DILocation(line: 699, column: 11, scope: !5939)
!5998 = distinct !{!5998, !5981, !5999}
!5999 = !DILocation(line: 699, column: 20, scope: !5939)
!6000 = !DILocation(line: 701, column: 7, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 701, column: 6)
!6002 = !DILocation(line: 701, column: 6, scope: !5939)
!6003 = !DILocation(line: 702, column: 10, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !6001, file: !3, line: 701, column: 16)
!6005 = !DILocation(line: 703, column: 3, scope: !6004)
!6006 = !DILocation(line: 715, column: 7, scope: !6007)
!6007 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 715, column: 6)
!6008 = !DILocation(line: 715, column: 12, scope: !6007)
!6009 = !DILocation(line: 715, column: 37, scope: !6007)
!6010 = !DILocation(line: 715, column: 40, scope: !6007)
!6011 = !DILocation(line: 715, column: 50, scope: !6007)
!6012 = !DILocation(line: 715, column: 6, scope: !5939)
!6013 = !DILocalVariable(name: "ret", scope: !6014, file: !3, line: 716, type: !131)
!6014 = distinct !DILexicalBlock(scope: !6007, file: !3, line: 715, column: 62)
!6015 = !DILocation(line: 716, column: 7, scope: !6014)
!6016 = !DILocation(line: 718, column: 9, scope: !6014)
!6017 = !DILocation(line: 718, column: 7, scope: !6014)
!6018 = !DILocation(line: 719, column: 11, scope: !6014)
!6019 = !DILocation(line: 719, column: 3, scope: !6014)
!6020 = !DILocation(line: 721, column: 4, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !6014, file: !3, line: 719, column: 16)
!6022 = !DILocation(line: 724, column: 4, scope: !6021)
!6023 = !DILocation(line: 726, column: 4, scope: !6021)
!6024 = !DILocation(line: 728, column: 4, scope: !6021)
!6025 = !DILocation(line: 730, column: 4, scope: !6021)
!6026 = !DILocation(line: 734, column: 7, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !6014, file: !3, line: 734, column: 7)
!6028 = !DILocation(line: 734, column: 7, scope: !6014)
!6029 = !DILocation(line: 735, column: 4, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !6027, file: !3, line: 734, column: 12)
!6031 = !DILocation(line: 737, column: 4, scope: !6030)
!6032 = !DILocation(line: 737, column: 14, scope: !6030)
!6033 = !DILocation(line: 737, column: 25, scope: !6030)
!6034 = !DILocation(line: 738, column: 3, scope: !6030)
!6035 = !DILocation(line: 739, column: 2, scope: !6014)
!6036 = !DILocation(line: 741, column: 9, scope: !5939)
!6037 = !DILocation(line: 741, column: 2, scope: !5939)
!6038 = !DILocation(line: 742, column: 15, scope: !5939)
!6039 = !DILocation(line: 742, column: 13, scope: !5939)
!6040 = !DILocation(line: 744, column: 9, scope: !5939)
!6041 = !DILocation(line: 744, column: 19, scope: !5939)
!6042 = !DILocation(line: 744, column: 7, scope: !5939)
!6043 = !DILocation(line: 745, column: 7, scope: !6044)
!6044 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 745, column: 6)
!6045 = !DILocation(line: 745, column: 20, scope: !6044)
!6046 = !DILocation(line: 745, column: 18, scope: !6044)
!6047 = !DILocation(line: 745, column: 46, scope: !6044)
!6048 = !DILocation(line: 745, column: 43, scope: !6044)
!6049 = !DILocation(line: 745, column: 6, scope: !5939)
!6050 = !DILocation(line: 746, column: 11, scope: !6044)
!6051 = !DILocation(line: 746, column: 25, scope: !6044)
!6052 = !DILocation(line: 746, column: 24, scope: !6044)
!6053 = !DILocation(line: 746, column: 22, scope: !6044)
!6054 = !DILocation(line: 746, column: 50, scope: !6044)
!6055 = !DILocation(line: 746, column: 48, scope: !6044)
!6056 = !DILocation(line: 746, column: 10, scope: !6044)
!6057 = !DILocation(line: 746, column: 3, scope: !6044)
!6058 = !DILocation(line: 749, column: 24, scope: !5939)
!6059 = !DILocation(line: 749, column: 30, scope: !5939)
!6060 = !DILocation(line: 749, column: 36, scope: !5939)
!6061 = !DILocation(line: 749, column: 43, scope: !5939)
!6062 = !DILocation(line: 750, column: 10, scope: !5939)
!6063 = !DILocation(line: 750, column: 19, scope: !5939)
!6064 = !DILocation(line: 750, column: 25, scope: !5939)
!6065 = !DILocation(line: 749, column: 11, scope: !5939)
!6066 = !DILocation(line: 749, column: 9, scope: !5939)
!6067 = !DILocation(line: 752, column: 9, scope: !5939)
!6068 = !DILocation(line: 752, column: 2, scope: !5939)
!6069 = !DILocation(line: 755, column: 9, scope: !5939)
!6070 = !DILocation(line: 755, column: 19, scope: !5939)
!6071 = !DILocation(line: 755, column: 27, scope: !5939)
!6072 = !DILocation(line: 755, column: 2, scope: !5939)
!6073 = !DILocation(line: 757, column: 7, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 757, column: 6)
!6075 = !DILocation(line: 757, column: 12, scope: !6074)
!6076 = !DILocation(line: 757, column: 37, scope: !6074)
!6077 = !DILocation(line: 757, column: 40, scope: !6074)
!6078 = !DILocation(line: 757, column: 50, scope: !6074)
!6079 = !DILocation(line: 757, column: 6, scope: !5939)
!6080 = !DILocation(line: 758, column: 3, scope: !6074)
!6081 = !DILabel(scope: !5939, name: "release", file: !3, line: 760)
!6082 = !DILocation(line: 760, column: 1, scope: !5939)
!6083 = !DILocation(line: 761, column: 2, scope: !5939)
!6084 = !DILocation(line: 762, column: 9, scope: !5939)
!6085 = !DILocation(line: 762, column: 2, scope: !5939)
!6086 = !DILocation(line: 763, column: 1, scope: !5939)
!6087 = distinct !DISubprogram(name: "piix4_func", scope: !3, file: !3, line: 765, type: !4671, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6088 = !DILocalVariable(name: "adapter", arg: 1, scope: !6087, file: !3, line: 765, type: !4564)
!6089 = !DILocation(line: 765, column: 43, scope: !6087)
!6090 = !DILocation(line: 767, column: 2, scope: !6087)
!6091 = distinct !DISubprogram(name: "piix4_imc_sleep", scope: !3, file: !3, line: 616, type: !4689, scopeLine: 617, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6092 = !DILocalVariable(name: "timeout", scope: !6091, file: !3, line: 618, type: !131)
!6093 = !DILocation(line: 618, column: 6, scope: !6091)
!6094 = !DILocation(line: 620, column: 7, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !6091, file: !3, line: 620, column: 6)
!6096 = !DILocation(line: 620, column: 6, scope: !6091)
!6097 = !DILocation(line: 621, column: 3, scope: !6095)
!6098 = !DILocation(line: 624, column: 2, scope: !6091)
!6099 = !DILocation(line: 626, column: 2, scope: !6091)
!6100 = !DILocation(line: 628, column: 2, scope: !6091)
!6101 = !DILocation(line: 630, column: 2, scope: !6091)
!6102 = !DILocation(line: 630, column: 16, scope: !6091)
!6103 = !DILocation(line: 631, column: 7, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !6105, file: !3, line: 631, column: 7)
!6105 = distinct !DILexicalBlock(scope: !6091, file: !3, line: 630, column: 20)
!6106 = !DILocation(line: 631, column: 28, scope: !6104)
!6107 = !DILocation(line: 631, column: 7, scope: !6105)
!6108 = !DILocation(line: 632, column: 4, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !6104, file: !3, line: 631, column: 37)
!6110 = !DILocation(line: 633, column: 4, scope: !6109)
!6111 = !DILocation(line: 635, column: 3, scope: !6105)
!6112 = distinct !{!6112, !6101, !6113}
!6113 = !DILocation(line: 636, column: 2, scope: !6091)
!6114 = !DILocation(line: 638, column: 2, scope: !6091)
!6115 = !DILocation(line: 639, column: 2, scope: !6091)
!6116 = !DILocation(line: 640, column: 1, scope: !6091)
!6117 = distinct !DISubprogram(name: "piix4_access", scope: !3, file: !3, line: 514, type: !5940, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6118 = !DILocalVariable(name: "adap", arg: 1, scope: !6117, file: !3, line: 514, type: !4564)
!6119 = !DILocation(line: 514, column: 46, scope: !6117)
!6120 = !DILocalVariable(name: "addr", arg: 2, scope: !6117, file: !3, line: 514, type: !818)
!6121 = !DILocation(line: 514, column: 56, scope: !6117)
!6122 = !DILocalVariable(name: "flags", arg: 3, scope: !6117, file: !3, line: 515, type: !277)
!6123 = !DILocation(line: 515, column: 19, scope: !6117)
!6124 = !DILocalVariable(name: "read_write", arg: 4, scope: !6117, file: !3, line: 515, type: !179)
!6125 = !DILocation(line: 515, column: 31, scope: !6117)
!6126 = !DILocalVariable(name: "command", arg: 5, scope: !6117, file: !3, line: 516, type: !1311)
!6127 = !DILocation(line: 516, column: 7, scope: !6117)
!6128 = !DILocalVariable(name: "size", arg: 6, scope: !6117, file: !3, line: 516, type: !131)
!6129 = !DILocation(line: 516, column: 20, scope: !6117)
!6130 = !DILocalVariable(name: "data", arg: 7, scope: !6117, file: !3, line: 516, type: !4661)
!6131 = !DILocation(line: 516, column: 49, scope: !6117)
!6132 = !DILocalVariable(name: "adapdata", scope: !6117, file: !3, line: 518, type: !5112)
!6133 = !DILocation(line: 518, column: 29, scope: !6117)
!6134 = !DILocation(line: 518, column: 57, scope: !6117)
!6135 = !DILocation(line: 518, column: 40, scope: !6117)
!6136 = !DILocalVariable(name: "piix4_smba", scope: !6117, file: !3, line: 519, type: !277)
!6137 = !DILocation(line: 519, column: 17, scope: !6117)
!6138 = !DILocation(line: 519, column: 30, scope: !6117)
!6139 = !DILocation(line: 519, column: 40, scope: !6117)
!6140 = !DILocalVariable(name: "i", scope: !6117, file: !3, line: 520, type: !131)
!6141 = !DILocation(line: 520, column: 6, scope: !6117)
!6142 = !DILocalVariable(name: "len", scope: !6117, file: !3, line: 520, type: !131)
!6143 = !DILocation(line: 520, column: 9, scope: !6117)
!6144 = !DILocalVariable(name: "status", scope: !6117, file: !3, line: 521, type: !131)
!6145 = !DILocation(line: 521, column: 6, scope: !6117)
!6146 = !DILocation(line: 523, column: 10, scope: !6117)
!6147 = !DILocation(line: 523, column: 2, scope: !6117)
!6148 = !DILocation(line: 525, column: 11, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6117, file: !3, line: 523, column: 16)
!6150 = !DILocation(line: 525, column: 16, scope: !6149)
!6151 = !DILocation(line: 525, column: 24, scope: !6149)
!6152 = !DILocation(line: 525, column: 22, scope: !6149)
!6153 = !DILocation(line: 525, column: 10, scope: !6149)
!6154 = !DILocation(line: 526, column: 10, scope: !6149)
!6155 = !DILocation(line: 525, column: 3, scope: !6149)
!6156 = !DILocation(line: 527, column: 8, scope: !6149)
!6157 = !DILocation(line: 528, column: 3, scope: !6149)
!6158 = !DILocation(line: 530, column: 11, scope: !6149)
!6159 = !DILocation(line: 530, column: 16, scope: !6149)
!6160 = !DILocation(line: 530, column: 24, scope: !6149)
!6161 = !DILocation(line: 530, column: 22, scope: !6149)
!6162 = !DILocation(line: 530, column: 10, scope: !6149)
!6163 = !DILocation(line: 531, column: 10, scope: !6149)
!6164 = !DILocation(line: 530, column: 3, scope: !6149)
!6165 = !DILocation(line: 532, column: 7, scope: !6166)
!6166 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 532, column: 7)
!6167 = !DILocation(line: 532, column: 18, scope: !6166)
!6168 = !DILocation(line: 532, column: 7, scope: !6149)
!6169 = !DILocation(line: 533, column: 11, scope: !6166)
!6170 = !DILocation(line: 533, column: 20, scope: !6166)
!6171 = !DILocation(line: 533, column: 4, scope: !6166)
!6172 = !DILocation(line: 534, column: 8, scope: !6149)
!6173 = !DILocation(line: 535, column: 3, scope: !6149)
!6174 = !DILocation(line: 537, column: 11, scope: !6149)
!6175 = !DILocation(line: 537, column: 16, scope: !6149)
!6176 = !DILocation(line: 537, column: 24, scope: !6149)
!6177 = !DILocation(line: 537, column: 22, scope: !6149)
!6178 = !DILocation(line: 537, column: 10, scope: !6149)
!6179 = !DILocation(line: 538, column: 10, scope: !6149)
!6180 = !DILocation(line: 537, column: 3, scope: !6149)
!6181 = !DILocation(line: 539, column: 10, scope: !6149)
!6182 = !DILocation(line: 539, column: 19, scope: !6149)
!6183 = !DILocation(line: 539, column: 3, scope: !6149)
!6184 = !DILocation(line: 540, column: 7, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 540, column: 7)
!6186 = !DILocation(line: 540, column: 18, scope: !6185)
!6187 = !DILocation(line: 540, column: 7, scope: !6149)
!6188 = !DILocation(line: 541, column: 11, scope: !6185)
!6189 = !DILocation(line: 541, column: 17, scope: !6185)
!6190 = !DILocation(line: 541, column: 23, scope: !6185)
!6191 = !DILocation(line: 541, column: 4, scope: !6185)
!6192 = !DILocation(line: 542, column: 8, scope: !6149)
!6193 = !DILocation(line: 543, column: 3, scope: !6149)
!6194 = !DILocation(line: 545, column: 11, scope: !6149)
!6195 = !DILocation(line: 545, column: 16, scope: !6149)
!6196 = !DILocation(line: 545, column: 24, scope: !6149)
!6197 = !DILocation(line: 545, column: 22, scope: !6149)
!6198 = !DILocation(line: 545, column: 10, scope: !6149)
!6199 = !DILocation(line: 546, column: 10, scope: !6149)
!6200 = !DILocation(line: 545, column: 3, scope: !6149)
!6201 = !DILocation(line: 547, column: 10, scope: !6149)
!6202 = !DILocation(line: 547, column: 19, scope: !6149)
!6203 = !DILocation(line: 547, column: 3, scope: !6149)
!6204 = !DILocation(line: 548, column: 7, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 548, column: 7)
!6206 = !DILocation(line: 548, column: 18, scope: !6205)
!6207 = !DILocation(line: 548, column: 7, scope: !6149)
!6208 = !DILocation(line: 549, column: 11, scope: !6209)
!6209 = distinct !DILexicalBlock(scope: !6205, file: !3, line: 548, column: 38)
!6210 = !DILocation(line: 549, column: 17, scope: !6209)
!6211 = !DILocation(line: 549, column: 22, scope: !6209)
!6212 = !DILocation(line: 549, column: 30, scope: !6209)
!6213 = !DILocation(line: 549, column: 4, scope: !6209)
!6214 = !DILocation(line: 550, column: 12, scope: !6209)
!6215 = !DILocation(line: 550, column: 18, scope: !6209)
!6216 = !DILocation(line: 550, column: 23, scope: !6209)
!6217 = !DILocation(line: 550, column: 33, scope: !6209)
!6218 = !DILocation(line: 550, column: 11, scope: !6209)
!6219 = !DILocation(line: 550, column: 39, scope: !6209)
!6220 = !DILocation(line: 550, column: 4, scope: !6209)
!6221 = !DILocation(line: 551, column: 3, scope: !6209)
!6222 = !DILocation(line: 552, column: 8, scope: !6149)
!6223 = !DILocation(line: 553, column: 3, scope: !6149)
!6224 = !DILocation(line: 555, column: 11, scope: !6149)
!6225 = !DILocation(line: 555, column: 16, scope: !6149)
!6226 = !DILocation(line: 555, column: 24, scope: !6149)
!6227 = !DILocation(line: 555, column: 22, scope: !6149)
!6228 = !DILocation(line: 555, column: 10, scope: !6149)
!6229 = !DILocation(line: 556, column: 10, scope: !6149)
!6230 = !DILocation(line: 555, column: 3, scope: !6149)
!6231 = !DILocation(line: 557, column: 10, scope: !6149)
!6232 = !DILocation(line: 557, column: 19, scope: !6149)
!6233 = !DILocation(line: 557, column: 3, scope: !6149)
!6234 = !DILocation(line: 558, column: 7, scope: !6235)
!6235 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 558, column: 7)
!6236 = !DILocation(line: 558, column: 18, scope: !6235)
!6237 = !DILocation(line: 558, column: 7, scope: !6149)
!6238 = !DILocation(line: 559, column: 10, scope: !6239)
!6239 = distinct !DILexicalBlock(scope: !6235, file: !3, line: 558, column: 38)
!6240 = !DILocation(line: 559, column: 16, scope: !6239)
!6241 = !DILocation(line: 559, column: 8, scope: !6239)
!6242 = !DILocation(line: 560, column: 8, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !6239, file: !3, line: 560, column: 8)
!6244 = !DILocation(line: 560, column: 12, scope: !6243)
!6245 = !DILocation(line: 560, column: 17, scope: !6243)
!6246 = !DILocation(line: 560, column: 20, scope: !6243)
!6247 = !DILocation(line: 560, column: 24, scope: !6243)
!6248 = !DILocation(line: 560, column: 8, scope: !6239)
!6249 = !DILocation(line: 561, column: 5, scope: !6243)
!6250 = !DILocation(line: 562, column: 11, scope: !6239)
!6251 = !DILocation(line: 562, column: 16, scope: !6239)
!6252 = !DILocation(line: 562, column: 4, scope: !6239)
!6253 = !DILocation(line: 563, column: 10, scope: !6239)
!6254 = !DILocation(line: 563, column: 4, scope: !6239)
!6255 = !DILocation(line: 564, column: 11, scope: !6256)
!6256 = distinct !DILexicalBlock(scope: !6239, file: !3, line: 564, column: 4)
!6257 = !DILocation(line: 564, column: 9, scope: !6256)
!6258 = !DILocation(line: 564, column: 16, scope: !6259)
!6259 = distinct !DILexicalBlock(scope: !6256, file: !3, line: 564, column: 4)
!6260 = !DILocation(line: 564, column: 21, scope: !6259)
!6261 = !DILocation(line: 564, column: 18, scope: !6259)
!6262 = !DILocation(line: 564, column: 4, scope: !6256)
!6263 = !DILocation(line: 565, column: 12, scope: !6259)
!6264 = !DILocation(line: 565, column: 18, scope: !6259)
!6265 = !DILocation(line: 565, column: 24, scope: !6259)
!6266 = !DILocation(line: 565, column: 28, scope: !6259)
!6267 = !DILocation(line: 565, column: 5, scope: !6259)
!6268 = !DILocation(line: 564, column: 27, scope: !6259)
!6269 = !DILocation(line: 564, column: 4, scope: !6259)
!6270 = distinct !{!6270, !6262, !6271}
!6271 = !DILocation(line: 565, column: 37, scope: !6256)
!6272 = !DILocation(line: 566, column: 3, scope: !6239)
!6273 = !DILocation(line: 567, column: 8, scope: !6149)
!6274 = !DILocation(line: 568, column: 3, scope: !6149)
!6275 = !DILocation(line: 570, column: 3, scope: !6149)
!6276 = !DILocation(line: 571, column: 3, scope: !6149)
!6277 = !DILocation(line: 574, column: 10, scope: !6117)
!6278 = !DILocation(line: 574, column: 15, scope: !6117)
!6279 = !DILocation(line: 574, column: 23, scope: !6117)
!6280 = !DILocation(line: 574, column: 9, scope: !6117)
!6281 = !DILocation(line: 574, column: 44, scope: !6117)
!6282 = !DILocation(line: 574, column: 2, scope: !6117)
!6283 = !DILocation(line: 576, column: 29, scope: !6117)
!6284 = !DILocation(line: 576, column: 11, scope: !6117)
!6285 = !DILocation(line: 576, column: 9, scope: !6117)
!6286 = !DILocation(line: 577, column: 6, scope: !6287)
!6287 = distinct !DILexicalBlock(scope: !6117, file: !3, line: 577, column: 6)
!6288 = !DILocation(line: 577, column: 6, scope: !6117)
!6289 = !DILocation(line: 578, column: 10, scope: !6287)
!6290 = !DILocation(line: 578, column: 3, scope: !6287)
!6291 = !DILocation(line: 580, column: 7, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6117, file: !3, line: 580, column: 6)
!6293 = !DILocation(line: 580, column: 18, scope: !6292)
!6294 = !DILocation(line: 580, column: 38, scope: !6292)
!6295 = !DILocation(line: 580, column: 42, scope: !6292)
!6296 = !DILocation(line: 580, column: 47, scope: !6292)
!6297 = !DILocation(line: 580, column: 6, scope: !6117)
!6298 = !DILocation(line: 581, column: 3, scope: !6292)
!6299 = !DILocation(line: 584, column: 10, scope: !6117)
!6300 = !DILocation(line: 584, column: 2, scope: !6117)
!6301 = !DILocation(line: 587, column: 22, scope: !6302)
!6302 = distinct !DILexicalBlock(scope: !6117, file: !3, line: 584, column: 16)
!6303 = !DILocation(line: 587, column: 16, scope: !6302)
!6304 = !DILocation(line: 587, column: 3, scope: !6302)
!6305 = !DILocation(line: 587, column: 9, scope: !6302)
!6306 = !DILocation(line: 587, column: 14, scope: !6302)
!6307 = !DILocation(line: 588, column: 3, scope: !6302)
!6308 = !DILocation(line: 590, column: 22, scope: !6302)
!6309 = !DILocation(line: 590, column: 16, scope: !6302)
!6310 = !DILocation(line: 590, column: 43, scope: !6302)
!6311 = !DILocation(line: 590, column: 37, scope: !6302)
!6312 = !DILocation(line: 590, column: 55, scope: !6302)
!6313 = !DILocation(line: 590, column: 34, scope: !6302)
!6314 = !DILocation(line: 590, column: 3, scope: !6302)
!6315 = !DILocation(line: 590, column: 9, scope: !6302)
!6316 = !DILocation(line: 590, column: 14, scope: !6302)
!6317 = !DILocation(line: 591, column: 3, scope: !6302)
!6318 = !DILocation(line: 593, column: 26, scope: !6302)
!6319 = !DILocation(line: 593, column: 20, scope: !6302)
!6320 = !DILocation(line: 593, column: 3, scope: !6302)
!6321 = !DILocation(line: 593, column: 9, scope: !6302)
!6322 = !DILocation(line: 593, column: 18, scope: !6302)
!6323 = !DILocation(line: 594, column: 7, scope: !6324)
!6324 = distinct !DILexicalBlock(scope: !6302, file: !3, line: 594, column: 7)
!6325 = !DILocation(line: 594, column: 13, scope: !6324)
!6326 = !DILocation(line: 594, column: 22, scope: !6324)
!6327 = !DILocation(line: 594, column: 27, scope: !6324)
!6328 = !DILocation(line: 594, column: 30, scope: !6324)
!6329 = !DILocation(line: 594, column: 36, scope: !6324)
!6330 = !DILocation(line: 594, column: 45, scope: !6324)
!6331 = !DILocation(line: 594, column: 7, scope: !6302)
!6332 = !DILocation(line: 595, column: 4, scope: !6324)
!6333 = !DILocation(line: 596, column: 9, scope: !6302)
!6334 = !DILocation(line: 596, column: 3, scope: !6302)
!6335 = !DILocation(line: 597, column: 10, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6302, file: !3, line: 597, column: 3)
!6337 = !DILocation(line: 597, column: 8, scope: !6336)
!6338 = !DILocation(line: 597, column: 15, scope: !6339)
!6339 = distinct !DILexicalBlock(scope: !6336, file: !3, line: 597, column: 3)
!6340 = !DILocation(line: 597, column: 20, scope: !6339)
!6341 = !DILocation(line: 597, column: 26, scope: !6339)
!6342 = !DILocation(line: 597, column: 17, scope: !6339)
!6343 = !DILocation(line: 597, column: 3, scope: !6336)
!6344 = !DILocation(line: 598, column: 27, scope: !6339)
!6345 = !DILocation(line: 598, column: 21, scope: !6339)
!6346 = !DILocation(line: 598, column: 4, scope: !6339)
!6347 = !DILocation(line: 598, column: 10, scope: !6339)
!6348 = !DILocation(line: 598, column: 16, scope: !6339)
!6349 = !DILocation(line: 598, column: 19, scope: !6339)
!6350 = !DILocation(line: 597, column: 37, scope: !6339)
!6351 = !DILocation(line: 597, column: 3, scope: !6339)
!6352 = distinct !{!6352, !6343, !6353}
!6353 = !DILocation(line: 598, column: 36, scope: !6336)
!6354 = !DILocation(line: 599, column: 3, scope: !6302)
!6355 = !DILocation(line: 601, column: 2, scope: !6117)
!6356 = !DILocation(line: 602, column: 1, scope: !6117)
!6357 = distinct !DISubprogram(name: "piix4_imc_wakeup", scope: !3, file: !3, line: 642, type: !1839, scopeLine: 643, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6358 = !DILocalVariable(name: "timeout", scope: !6357, file: !3, line: 644, type: !131)
!6359 = !DILocation(line: 644, column: 6, scope: !6357)
!6360 = !DILocation(line: 646, column: 7, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !6357, file: !3, line: 646, column: 6)
!6362 = !DILocation(line: 646, column: 6, scope: !6357)
!6363 = !DILocation(line: 647, column: 3, scope: !6361)
!6364 = !DILocation(line: 650, column: 2, scope: !6357)
!6365 = !DILocation(line: 652, column: 2, scope: !6357)
!6366 = !DILocation(line: 654, column: 2, scope: !6357)
!6367 = !DILocation(line: 656, column: 2, scope: !6357)
!6368 = !DILocation(line: 656, column: 16, scope: !6357)
!6369 = !DILocation(line: 657, column: 7, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6371, file: !3, line: 657, column: 7)
!6371 = distinct !DILexicalBlock(scope: !6357, file: !3, line: 656, column: 20)
!6372 = !DILocation(line: 657, column: 28, scope: !6370)
!6373 = !DILocation(line: 657, column: 7, scope: !6371)
!6374 = !DILocation(line: 658, column: 4, scope: !6370)
!6375 = !DILocation(line: 659, column: 3, scope: !6371)
!6376 = distinct !{!6376, !6367, !6377}
!6377 = !DILocation(line: 660, column: 2, scope: !6357)
!6378 = !DILocation(line: 662, column: 2, scope: !6357)
!6379 = !DILocation(line: 663, column: 1, scope: !6357)
!6380 = distinct !DISubprogram(name: "piix4_imc_write", scope: !3, file: !3, line: 610, type: !6381, scopeLine: 611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6381 = !DISubroutineType(types: !6382)
!6382 = !{null, !6383, !6383}
!6383 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !124, line: 102, baseType: !1311)
!6384 = !DILocalVariable(name: "idx", arg: 1, scope: !6380, file: !3, line: 610, type: !6383)
!6385 = !DILocation(line: 610, column: 37, scope: !6380)
!6386 = !DILocalVariable(name: "value", arg: 2, scope: !6380, file: !3, line: 610, type: !6383)
!6387 = !DILocation(line: 610, column: 50, scope: !6380)
!6388 = !DILocation(line: 612, column: 9, scope: !6380)
!6389 = !DILocation(line: 612, column: 2, scope: !6380)
!6390 = !DILocation(line: 613, column: 9, scope: !6380)
!6391 = !DILocation(line: 613, column: 2, scope: !6380)
!6392 = !DILocation(line: 614, column: 1, scope: !6380)
!6393 = distinct !DISubprogram(name: "piix4_imc_read", scope: !3, file: !3, line: 604, type: !6394, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6394 = !DISubroutineType(types: !6395)
!6395 = !{!6383, !6383}
!6396 = !DILocalVariable(name: "idx", arg: 1, scope: !6393, file: !3, line: 604, type: !6383)
!6397 = !DILocation(line: 604, column: 39, scope: !6393)
!6398 = !DILocation(line: 606, column: 9, scope: !6393)
!6399 = !DILocation(line: 606, column: 2, scope: !6393)
!6400 = !DILocation(line: 607, column: 9, scope: !6393)
!6401 = !DILocation(line: 607, column: 2, scope: !6393)
!6402 = distinct !DISubprogram(name: "piix4_transaction", scope: !3, file: !3, line: 437, type: !4609, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6403 = !DILocalVariable(name: "piix4_adapter", arg: 1, scope: !6402, file: !3, line: 437, type: !4564)
!6404 = !DILocation(line: 437, column: 50, scope: !6402)
!6405 = !DILocalVariable(name: "adapdata", scope: !6402, file: !3, line: 439, type: !5112)
!6406 = !DILocation(line: 439, column: 29, scope: !6402)
!6407 = !DILocation(line: 439, column: 57, scope: !6402)
!6408 = !DILocation(line: 439, column: 40, scope: !6402)
!6409 = !DILocalVariable(name: "piix4_smba", scope: !6402, file: !3, line: 440, type: !277)
!6410 = !DILocation(line: 440, column: 17, scope: !6402)
!6411 = !DILocation(line: 440, column: 30, scope: !6402)
!6412 = !DILocation(line: 440, column: 40, scope: !6402)
!6413 = !DILocalVariable(name: "temp", scope: !6402, file: !3, line: 441, type: !131)
!6414 = !DILocation(line: 441, column: 6, scope: !6402)
!6415 = !DILocalVariable(name: "result", scope: !6402, file: !3, line: 442, type: !131)
!6416 = !DILocation(line: 442, column: 6, scope: !6402)
!6417 = !DILocalVariable(name: "timeout", scope: !6402, file: !3, line: 443, type: !131)
!6418 = !DILocation(line: 443, column: 6, scope: !6402)
!6419 = !DILocation(line: 451, column: 20, scope: !6420)
!6420 = distinct !DILexicalBlock(scope: !6402, file: !3, line: 451, column: 6)
!6421 = !DILocation(line: 451, column: 14, scope: !6420)
!6422 = !DILocation(line: 451, column: 12, scope: !6420)
!6423 = !DILocation(line: 451, column: 32, scope: !6420)
!6424 = !DILocation(line: 451, column: 6, scope: !6402)
!6425 = !DILocation(line: 454, column: 10, scope: !6426)
!6426 = distinct !DILexicalBlock(scope: !6420, file: !3, line: 451, column: 41)
!6427 = !DILocation(line: 454, column: 16, scope: !6426)
!6428 = !DILocation(line: 454, column: 3, scope: !6426)
!6429 = !DILocation(line: 455, column: 21, scope: !6430)
!6430 = distinct !DILexicalBlock(scope: !6426, file: !3, line: 455, column: 7)
!6431 = !DILocation(line: 455, column: 15, scope: !6430)
!6432 = !DILocation(line: 455, column: 13, scope: !6430)
!6433 = !DILocation(line: 455, column: 33, scope: !6430)
!6434 = !DILocation(line: 455, column: 7, scope: !6426)
!6435 = !DILocation(line: 456, column: 4, scope: !6436)
!6436 = distinct !DILexicalBlock(scope: !6430, file: !3, line: 455, column: 42)
!6437 = !DILocation(line: 457, column: 4, scope: !6436)
!6438 = !DILocation(line: 461, column: 2, scope: !6426)
!6439 = !DILocation(line: 464, column: 13, scope: !6402)
!6440 = !DILocation(line: 464, column: 9, scope: !6402)
!6441 = !DILocation(line: 464, column: 24, scope: !6402)
!6442 = !DILocation(line: 464, column: 33, scope: !6402)
!6443 = !DILocation(line: 464, column: 2, scope: !6402)
!6444 = !DILocation(line: 467, column: 6, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !6402, file: !3, line: 467, column: 6)
!6446 = !DILocation(line: 467, column: 6, scope: !6402)
!6447 = !DILocation(line: 468, column: 3, scope: !6445)
!6448 = !DILocation(line: 470, column: 3, scope: !6445)
!6449 = !DILocation(line: 472, column: 2, scope: !6402)
!6450 = !DILocation(line: 472, column: 10, scope: !6402)
!6451 = !DILocation(line: 472, column: 20, scope: !6402)
!6452 = !DILocation(line: 472, column: 35, scope: !6402)
!6453 = !DILocation(line: 473, column: 24, scope: !6402)
!6454 = !DILocation(line: 473, column: 18, scope: !6402)
!6455 = !DILocation(line: 473, column: 16, scope: !6402)
!6456 = !DILocation(line: 473, column: 36, scope: !6402)
!6457 = !DILocation(line: 0, scope: !6402)
!6458 = !DILocation(line: 474, column: 3, scope: !6402)
!6459 = distinct !{!6459, !6449, !6460}
!6460 = !DILocation(line: 474, column: 24, scope: !6402)
!6461 = !DILocation(line: 477, column: 6, scope: !6462)
!6462 = distinct !DILexicalBlock(scope: !6402, file: !3, line: 477, column: 6)
!6463 = !DILocation(line: 477, column: 14, scope: !6462)
!6464 = !DILocation(line: 477, column: 6, scope: !6402)
!6465 = !DILocation(line: 478, column: 3, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6462, file: !3, line: 477, column: 30)
!6467 = !DILocation(line: 479, column: 10, scope: !6466)
!6468 = !DILocation(line: 480, column: 2, scope: !6466)
!6469 = !DILocation(line: 482, column: 6, scope: !6470)
!6470 = distinct !DILexicalBlock(scope: !6402, file: !3, line: 482, column: 6)
!6471 = !DILocation(line: 482, column: 11, scope: !6470)
!6472 = !DILocation(line: 482, column: 6, scope: !6402)
!6473 = !DILocation(line: 483, column: 10, scope: !6474)
!6474 = distinct !DILexicalBlock(scope: !6470, file: !3, line: 482, column: 19)
!6475 = !DILocation(line: 484, column: 3, scope: !6474)
!6476 = !DILocation(line: 485, column: 2, scope: !6474)
!6477 = !DILocation(line: 487, column: 6, scope: !6478)
!6478 = distinct !DILexicalBlock(scope: !6402, file: !3, line: 487, column: 6)
!6479 = !DILocation(line: 487, column: 11, scope: !6478)
!6480 = !DILocation(line: 487, column: 6, scope: !6402)
!6481 = !DILocation(line: 488, column: 10, scope: !6482)
!6482 = distinct !DILexicalBlock(scope: !6478, file: !3, line: 487, column: 19)
!6483 = !DILocation(line: 492, column: 2, scope: !6482)
!6484 = !DILocation(line: 494, column: 6, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6402, file: !3, line: 494, column: 6)
!6486 = !DILocation(line: 494, column: 11, scope: !6485)
!6487 = !DILocation(line: 494, column: 6, scope: !6402)
!6488 = !DILocation(line: 495, column: 10, scope: !6489)
!6489 = distinct !DILexicalBlock(scope: !6485, file: !3, line: 494, column: 19)
!6490 = !DILocation(line: 497, column: 2, scope: !6489)
!6491 = !DILocation(line: 499, column: 12, scope: !6492)
!6492 = distinct !DILexicalBlock(scope: !6402, file: !3, line: 499, column: 6)
!6493 = !DILocation(line: 499, column: 6, scope: !6492)
!6494 = !DILocation(line: 499, column: 23, scope: !6492)
!6495 = !DILocation(line: 499, column: 6, scope: !6402)
!6496 = !DILocation(line: 500, column: 14, scope: !6492)
!6497 = !DILocation(line: 500, column: 10, scope: !6492)
!6498 = !DILocation(line: 500, column: 26, scope: !6492)
!6499 = !DILocation(line: 500, column: 3, scope: !6492)
!6500 = !DILocation(line: 502, column: 20, scope: !6501)
!6501 = distinct !DILexicalBlock(scope: !6402, file: !3, line: 502, column: 6)
!6502 = !DILocation(line: 502, column: 14, scope: !6501)
!6503 = !DILocation(line: 502, column: 12, scope: !6501)
!6504 = !DILocation(line: 502, column: 32, scope: !6501)
!6505 = !DILocation(line: 502, column: 6, scope: !6402)
!6506 = !DILocation(line: 503, column: 3, scope: !6507)
!6507 = distinct !DILexicalBlock(scope: !6501, file: !3, line: 502, column: 41)
!6508 = !DILocation(line: 505, column: 2, scope: !6507)
!6509 = !DILocation(line: 510, column: 9, scope: !6402)
!6510 = !DILocation(line: 510, column: 2, scope: !6402)
!6511 = !DILocation(line: 511, column: 1, scope: !6402)
!6512 = distinct !DISubprogram(name: "acpi_fwnode_handle", scope: !128, file: !128, line: 438, type: !6513, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6513 = !DISubroutineType(types: !6514)
!6514 = !{!140, !126}
!6515 = !DILocalVariable(name: "adev", arg: 1, scope: !6512, file: !128, line: 438, type: !126)
!6516 = !DILocation(line: 438, column: 76, scope: !6512)
!6517 = !DILocation(line: 440, column: 10, scope: !6512)
!6518 = !DILocation(line: 440, column: 16, scope: !6512)
!6519 = !DILocation(line: 440, column: 2, scope: !6512)
!6520 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !6521, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6521 = !DISubroutineType(types: !6522)
!6522 = !{null, !3332, !125}
!6523 = !DILocalVariable(name: "dev", arg: 1, scope: !6520, file: !73, line: 660, type: !3332)
!6524 = !DILocation(line: 660, column: 51, scope: !6520)
!6525 = !DILocalVariable(name: "data", arg: 2, scope: !6520, file: !73, line: 660, type: !125)
!6526 = !DILocation(line: 660, column: 62, scope: !6520)
!6527 = !DILocation(line: 662, column: 21, scope: !6520)
!6528 = !DILocation(line: 662, column: 2, scope: !6520)
!6529 = !DILocation(line: 662, column: 7, scope: !6520)
!6530 = !DILocation(line: 662, column: 19, scope: !6520)
!6531 = !DILocation(line: 663, column: 1, scope: !6520)
!6532 = distinct !DISubprogram(name: "piix4_adap_remove", scope: !3, file: !3, line: 996, type: !4621, scopeLine: 997, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6533 = !DILocalVariable(name: "adap", arg: 1, scope: !6532, file: !3, line: 996, type: !4564)
!6534 = !DILocation(line: 996, column: 51, scope: !6532)
!6535 = !DILocalVariable(name: "adapdata", scope: !6532, file: !3, line: 998, type: !5112)
!6536 = !DILocation(line: 998, column: 29, scope: !6532)
!6537 = !DILocation(line: 998, column: 57, scope: !6532)
!6538 = !DILocation(line: 998, column: 40, scope: !6532)
!6539 = !DILocation(line: 1000, column: 6, scope: !6540)
!6540 = distinct !DILexicalBlock(scope: !6532, file: !3, line: 1000, column: 6)
!6541 = !DILocation(line: 1000, column: 16, scope: !6540)
!6542 = !DILocation(line: 1000, column: 6, scope: !6532)
!6543 = !DILocation(line: 1001, column: 19, scope: !6544)
!6544 = distinct !DILexicalBlock(scope: !6540, file: !3, line: 1000, column: 22)
!6545 = !DILocation(line: 1001, column: 3, scope: !6544)
!6546 = !DILocation(line: 1002, column: 7, scope: !6547)
!6547 = distinct !DILexicalBlock(scope: !6544, file: !3, line: 1002, column: 7)
!6548 = !DILocation(line: 1002, column: 17, scope: !6547)
!6549 = !DILocation(line: 1002, column: 31, scope: !6547)
!6550 = !DILocation(line: 1002, column: 28, scope: !6547)
!6551 = !DILocation(line: 1002, column: 22, scope: !6547)
!6552 = !DILocation(line: 1002, column: 7, scope: !6544)
!6553 = !DILocation(line: 1003, column: 4, scope: !6547)
!6554 = !DILocation(line: 1004, column: 9, scope: !6544)
!6555 = !DILocation(line: 1004, column: 3, scope: !6544)
!6556 = !DILocation(line: 1005, column: 9, scope: !6544)
!6557 = !DILocation(line: 1005, column: 3, scope: !6544)
!6558 = !DILocation(line: 1006, column: 2, scope: !6544)
!6559 = !DILocation(line: 1007, column: 1, scope: !6532)
