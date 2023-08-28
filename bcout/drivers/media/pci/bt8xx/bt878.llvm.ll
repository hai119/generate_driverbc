; ModuleID = '../bcout/drivers/media/pci/bt8xx/bt878.llvm.bc'
source_filename = "drivers/media/pci/bt8xx/bt878.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_bt878_init_module6:\09\09\09"
module asm ".long\09bt878_init_module - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.62, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.proc_dir_entry = type opaque
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.61, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.61 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.4, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.10, %struct.list_head, %struct.list_head, %union.anon.11 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.5, i8* }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.page = type { i64, %union.anon.2, %union.anon.36, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.36 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.9, i32 }
%union.anon.9 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.56, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.1, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.1 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.15, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.16, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.17, %union.anon.21, %struct.key_restriction* }
%union.anon.15 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.16 = type { i64 }
%union.anon.17 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.18, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.18 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.21 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.42, %union.anon.43, i32 }
%struct.request_queue = type opaque
%union.anon.42 = type { %struct.list_head }
%union.anon.43 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.44 }
%struct.anon.44 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.48 }
%struct.anon.48 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.55, i32, [12 x i8] }
%union.anon.55 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.56 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.57, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.60 }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { i64, i64 }
%union.anon.60 = type { [12 x i32] }
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
%union.anon.10 = type { %struct.list_head }
%union.anon.11 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.65 = type { %struct.callback_head }
%union.anon.66 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.12 }
%union.anon.12 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.67 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.13 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.13 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.23 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.23 = type { %struct.callback_head }
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
%union.anon.62 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.bt878 = type { %struct.mutex, i32, i32, %struct.i2c_adapter*, %struct.pci_dev*, i32, i32, i8, i32, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i32, i32*, i64, i32, %struct.tasklet_struct, i32 }
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
%struct.tasklet_struct = type { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, %union.anon.63, i64 }
%union.anon.63 = type { void (i64)* }
%union.dst_gpio_packet = type { %struct.dst_gpio_read }
%struct.dst_gpio_read = type { i64 }
%struct.dst_gpio_enable = type { i32, i32 }
%struct.dst_gpio_output = type { i32, i32 }

@__param_str_verbose = internal constant [14 x i8] c"bt878.verbose\00", align 1, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@bt878_verbose = internal global i32 1, align 4, !dbg !4413
@__param_verbose = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_verbose, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @bt878_verbose to i8*) } }, section "__param", align 8, !dbg !4317
@__UNIQUE_ID_verbosetype262 = internal constant [27 x i8] c"bt878.parmtype=verbose:int\00", section ".modinfo", align 1, !dbg !4369
@__UNIQUE_ID_verbose263 = internal constant [64 x i8] c"bt878.parm=verbose:verbose startup messages, default is 1 (yes)\00", section ".modinfo", align 1, !dbg !4374
@__param_str_debug = internal constant [12 x i8] c"bt878.debug\00", align 1, !dbg !4415
@bt878_debug = internal global i32 0, align 4, !dbg !4406
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @bt878_debug to i8*) } }, section "__param", align 8, !dbg !4377
@__UNIQUE_ID_debugtype264 = internal constant [25 x i8] c"bt878.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !4379
@__UNIQUE_ID_debug265 = internal constant [60 x i8] c"bt878.parm=debug:Turn on/off debugging, default is 0 (off).\00", section ".modinfo", align 1, !dbg !4384
@.str = private unnamed_addr constant [40 x i8] c"\017bt878 debug: bt878_start (ctl=%8.8x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"\017bt878 debug: bt878_stop\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"\017bt878(%d) debug: bt878_stop, i=%d, stat=0x%8.8x\0A\00", align 1
@bt878_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([13 x %struct.pci_device_id], [13 x %struct.pci_device_id]* @bt878_pci_tbl, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @bt878_probe, void (%struct.pci_dev*)* @bt878_remove, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !4418
@__UNIQUE_ID___addressable_bt878_init_module266 = internal global i8* bitcast (i32 ()* @bt878_init_module to i8*), section ".discard.addressable", align 8, !dbg !4389
@__exitcall_bt878_cleanup_module = internal global void ()* @bt878_cleanup_module, section ".exitcall.exit", align 8, !dbg !4391
@__UNIQUE_ID_file267 = internal constant [41 x i8] c"bt878.file=drivers/media/pci/bt8xx/bt878\00", section ".modinfo", align 1, !dbg !4396
@__UNIQUE_ID_license268 = internal constant [18 x i8] c"bt878.license=GPL\00", section ".modinfo", align 1, !dbg !4401
@bt878_num = dso_local global i32 0, align 4, !dbg !4408
@bt878 = dso_local global [4 x %struct.bt878] zeroinitializer, align 16, !dbg !4410
@.str.3 = private unnamed_addr constant [47 x i8] c"\017bt878: risc len lines %u, bytes per line %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"bt878\00", align 1
@bt878_pci_tbl = internal constant [13 x %struct.pci_device_id] [%struct.pci_device_id { i32 4254, i32 2168, i32 113, i32 257, i32 0, i32 0, i64 ptrtoint ([26 x i8]* @.str.5 to i64) }, %struct.pci_device_id { i32 4254, i32 2168, i32 5217, i32 1889, i32 0, i32 0, i64 ptrtoint ([27 x i8]* @.str.6 to i64) }, %struct.pci_device_id { i32 4254, i32 2168, i32 4541, i32 28, i32 0, i32 0, i64 ptrtoint ([18 x i8]* @.str.7 to i64) }, %struct.pci_device_id { i32 4254, i32 2168, i32 4541, i32 38, i32 0, i32 0, i64 ptrtoint ([21 x i8]* @.str.8 to i64) }, %struct.pci_device_id { i32 4254, i32 2168, i32 6178, i32 1, i32 0, i32 0, i64 ptrtoint ([23 x i8]* @.str.9 to i64) }, %struct.pci_device_id { i32 4254, i32 2168, i32 9999, i32 64512, i32 0, i32 0, i64 ptrtoint ([33 x i8]* @.str.10 to i64) }, %struct.pci_device_id { i32 4254, i32 2168, i32 5217, i32 1905, i32 0, i32 0, i64 ptrtoint ([27 x i8]* @.str.11 to i64) }, %struct.pci_device_id { i32 4254, i32 2168, i32 6316, i32 56080, i32 0, i32 0, i64 ptrtoint ([28 x i8]* @.str.12 to i64) }, %struct.pci_device_id { i32 4254, i32 2168, i32 6316, i32 56081, i32 0, i32 0, i64 ptrtoint ([21 x i8]* @.str.13 to i64) }, %struct.pci_device_id { i32 4254, i32 2168, i32 6316, i32 54528, i32 0, i32 0, i64 ptrtoint ([24 x i8]* @.str.14 to i64) }, %struct.pci_device_id { i32 4254, i32 2168, i32 28771, i32 8192, i32 0, i32 0, i64 ptrtoint ([18 x i8]* @.str.15 to i64) }, %struct.pci_device_id { i32 4254, i32 2168, i32 6178, i32 38, i32 0, i32 0, i64 ptrtoint ([16 x i8]* @.str.16 to i64) }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4420
@.str.5 = private unnamed_addr constant [26 x i8] c"Nebula Electronics DigiTV\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"AverMedia AverTV DVB-T 761\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Pinnacle PCTV Sat\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Pinnacle PCTV SAT CI\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Twinhan VisionPlus DVB\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"ChainTech digitop DST-1000 DVB-S\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"AVermedia AverTV DVB-T 771\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"DViCO FusionHDTV DVB-T Lite\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Ultraview DVB-T Lite\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"DViCO FusionHDTV 5 Lite\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"pcHDTV HD-2000 TV\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"DNTV Live! Mini\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"\016bt878: Bt878 AUDIO function found (%d).\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"\013bt878: Too many devices inserted\0A\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"\016%s: card id=[0x%x],[ %s ] has DVB functions.\0A\00", align 1
@__func__.bt878_probe = private unnamed_addr constant [12 x i8] c"bt878_probe\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 8
@.str.20 = private unnamed_addr constant [45 x i8] c"\016bt878(%d): Bt%x (rev %d) at %02x:%02x.%x, \00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"irq: %d, latency: %d, memory: 0x%lx\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"\013bt878(%d): Bad irq number or handler\0A\00", align 1
@.str.23 = private unnamed_addr constant [58 x i8] c"\013bt878(%d): IRQ %d busy, change your PnP config in BIOS\0A\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"\013bt878: failed to allocate memory!\0A\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"\016bt878(%d): irq%s%s risc_pc=%08x\0A\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c" SCERR\00", align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [7 x i8] c" OCERR\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"\016bt878(%d): irq%s%s%s risc_pc=%08x\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c" PABORT\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c" RIPERR\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c" PPERR\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c" FDSR\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c" FTRGT\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c" FBUS\00", align 1
@.str.37 = private unnamed_addr constant [43 x i8] c"\013bt878(%d): IRQ lockup, cleared int mask\0A\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"\013bt878: buffer size error!\0A\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"\016bt878(%d): unloading\0A\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"\017bt878_mem: 0x%p.\0A\00", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"\016bt878: AUDIO driver version %d.%d.%d loaded\0A\00", align 1
@llvm.used = appending global [11 x i8*] [i8* bitcast (%struct.kernel_param* @__param_verbose to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_verbosetype262, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__UNIQUE_ID_verbose263, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_debugtype264, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__UNIQUE_ID_debug265, i32 0, i32 0), i8* bitcast (void ()* @bt878_cleanup_module to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_bt878_init_module266 to i8*), i8* bitcast (void ()** @__exitcall_bt878_cleanup_module to i8*), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__UNIQUE_ID_file267, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__UNIQUE_ID_license268, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @bt878_start(%struct.bt878* %bt, i32 %controlreg, i32 %op_sync_orin, i32 %irq_err_ignore) #0 !dbg !4433 {
entry:
  %bt.addr = alloca %struct.bt878*, align 8
  %controlreg.addr = alloca i32, align 4
  %op_sync_orin.addr = alloca i32, align 4
  %irq_err_ignore.addr = alloca i32, align 4
  %int_mask = alloca i32, align 4
  store %struct.bt878* %bt, %struct.bt878** %bt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bt878** %bt.addr, metadata !4436, metadata !DIExpression()), !dbg !4437
  store i32 %controlreg, i32* %controlreg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %controlreg.addr, metadata !4438, metadata !DIExpression()), !dbg !4439
  store i32 %op_sync_orin, i32* %op_sync_orin.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %op_sync_orin.addr, metadata !4440, metadata !DIExpression()), !dbg !4441
  store i32 %irq_err_ignore, i32* %irq_err_ignore.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq_err_ignore.addr, metadata !4442, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.declare(metadata i32* %int_mask, metadata !4444, metadata !DIExpression()), !dbg !4445
  br label %do.body, !dbg !4446

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @bt878_debug, align 4, !dbg !4447
  %tobool = icmp ne i32 %0, 0, !dbg !4447
  br i1 %tobool, label %if.then, label %if.end, !dbg !4450

if.then:                                          ; preds = %do.body
  %1 = load i32, i32* %controlreg.addr, align 4, !dbg !4447
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %1) #5, !dbg !4447
  br label %if.end, !dbg !4447

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4450

do.end:                                           ; preds = %if.end
  %2 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4451
  %3 = load i32, i32* %op_sync_orin.addr, align 4, !dbg !4452
  call void @bt878_risc_program(%struct.bt878* %2, i32 %3) #6, !dbg !4453
  %4 = load i32, i32* %controlreg.addr, align 4, !dbg !4454
  %and = and i32 %4, -32, !dbg !4454
  store i32 %and, i32* %controlreg.addr, align 4, !dbg !4454
  %5 = load i32, i32* %controlreg.addr, align 4, !dbg !4455
  %or = or i32 %5, 27, !dbg !4455
  store i32 %or, i32* %controlreg.addr, align 4, !dbg !4455
  %6 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4456
  %risc_dma = getelementptr inbounds %struct.bt878, %struct.bt878* %6, i32 0, i32 22, !dbg !4456
  %7 = load i64, i64* %risc_dma, align 8, !dbg !4456
  %conv = trunc i64 %7 to i32, !dbg !4456
  %8 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4456
  %bt878_mem = getelementptr inbounds %struct.bt878, %struct.bt878* %8, i32 0, i32 10, !dbg !4456
  %9 = load i8*, i8** %bt878_mem, align 8, !dbg !4456
  %add.ptr = getelementptr i8, i8* %9, i64 276, !dbg !4456
  call void @writel(i32 %conv, i8* %add.ptr) #6, !dbg !4456
  store i32 1046528, i32* %int_mask, align 4, !dbg !4457
  %10 = load i32, i32* %irq_err_ignore.addr, align 4, !dbg !4458
  %neg = xor i32 %10, -1, !dbg !4459
  %11 = load i32, i32* %int_mask, align 4, !dbg !4460
  %and1 = and i32 %11, %neg, !dbg !4460
  store i32 %and1, i32* %int_mask, align 4, !dbg !4460
  %12 = load i32, i32* %int_mask, align 4, !dbg !4461
  %13 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4461
  %bt878_mem2 = getelementptr inbounds %struct.bt878, %struct.bt878* %13, i32 0, i32 10, !dbg !4461
  %14 = load i8*, i8** %bt878_mem2, align 8, !dbg !4461
  %add.ptr3 = getelementptr i8, i8* %14, i64 260, !dbg !4461
  call void @writel(i32 %12, i8* %add.ptr3) #6, !dbg !4461
  %15 = load i32, i32* %controlreg.addr, align 4, !dbg !4462
  %16 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4462
  %bt878_mem4 = getelementptr inbounds %struct.bt878, %struct.bt878* %16, i32 0, i32 10, !dbg !4462
  %17 = load i8*, i8** %bt878_mem4, align 8, !dbg !4462
  %add.ptr5 = getelementptr i8, i8* %17, i64 268, !dbg !4462
  call void @writel(i32 %15, i8* %add.ptr5) #6, !dbg !4462
  ret void, !dbg !4463
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bt878_risc_program(%struct.bt878* %bt, i32 %op_sync_orin) #0 !dbg !4464 {
entry:
  %bt.addr = alloca %struct.bt878*, align 8
  %op_sync_orin.addr = alloca i32, align 4
  %buf_pos = alloca i32, align 4
  %line = alloca i32, align 4
  store %struct.bt878* %bt, %struct.bt878** %bt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bt878** %bt.addr, metadata !4467, metadata !DIExpression()), !dbg !4468
  store i32 %op_sync_orin, i32* %op_sync_orin.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %op_sync_orin.addr, metadata !4469, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.declare(metadata i32* %buf_pos, metadata !4471, metadata !DIExpression()), !dbg !4472
  store i32 0, i32* %buf_pos, align 4, !dbg !4472
  call void @llvm.dbg.declare(metadata i32* %line, metadata !4473, metadata !DIExpression()), !dbg !4474
  %0 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4475
  %risc_pos = getelementptr inbounds %struct.bt878, %struct.bt878* %0, i32 0, i32 23, !dbg !4475
  store i32 0, i32* %risc_pos, align 8, !dbg !4475
  %1 = load i32, i32* %op_sync_orin.addr, align 4, !dbg !4476
  %or = or i32 -2147483642, %1, !dbg !4476
  %2 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4476
  %risc_cpu = getelementptr inbounds %struct.bt878, %struct.bt878* %2, i32 0, i32 21, !dbg !4476
  %3 = load i32*, i32** %risc_cpu, align 8, !dbg !4476
  %4 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4476
  %risc_pos1 = getelementptr inbounds %struct.bt878, %struct.bt878* %4, i32 0, i32 23, !dbg !4476
  %5 = load i32, i32* %risc_pos1, align 8, !dbg !4476
  %inc = add i32 %5, 1, !dbg !4476
  store i32 %inc, i32* %risc_pos1, align 8, !dbg !4476
  %idxprom = zext i32 %5 to i64, !dbg !4476
  %arrayidx = getelementptr i32, i32* %3, i64 %idxprom, !dbg !4476
  store i32 %or, i32* %arrayidx, align 4, !dbg !4476
  %6 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4477
  %risc_cpu2 = getelementptr inbounds %struct.bt878, %struct.bt878* %6, i32 0, i32 21, !dbg !4477
  %7 = load i32*, i32** %risc_cpu2, align 8, !dbg !4477
  %8 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4477
  %risc_pos3 = getelementptr inbounds %struct.bt878, %struct.bt878* %8, i32 0, i32 23, !dbg !4477
  %9 = load i32, i32* %risc_pos3, align 8, !dbg !4477
  %inc4 = add i32 %9, 1, !dbg !4477
  store i32 %inc4, i32* %risc_pos3, align 8, !dbg !4477
  %idxprom5 = zext i32 %9 to i64, !dbg !4477
  %arrayidx6 = getelementptr i32, i32* %7, i64 %idxprom5, !dbg !4477
  store i32 0, i32* %arrayidx6, align 4, !dbg !4477
  br label %do.body, !dbg !4478

do.body:                                          ; preds = %entry
  %10 = load i32, i32* @bt878_debug, align 4, !dbg !4479
  %tobool = icmp ne i32 %10, 0, !dbg !4479
  br i1 %tobool, label %if.then, label %if.end, !dbg !4482

if.then:                                          ; preds = %do.body
  %11 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4479
  %line_count = getelementptr inbounds %struct.bt878, %struct.bt878* %11, i32 0, i32 16, !dbg !4479
  %12 = load i32, i32* %line_count, align 4, !dbg !4479
  %13 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4479
  %line_bytes = getelementptr inbounds %struct.bt878, %struct.bt878* %13, i32 0, i32 15, !dbg !4479
  %14 = load i32, i32* %line_bytes, align 8, !dbg !4479
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %12, i32 %14) #5, !dbg !4479
  br label %if.end, !dbg !4479

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4482

do.end:                                           ; preds = %if.end
  store i32 0, i32* %line, align 4, !dbg !4483
  br label %for.cond, !dbg !4485

for.cond:                                         ; preds = %for.inc, %do.end
  %15 = load i32, i32* %line, align 4, !dbg !4486
  %16 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4488
  %line_count7 = getelementptr inbounds %struct.bt878, %struct.bt878* %16, i32 0, i32 16, !dbg !4489
  %17 = load i32, i32* %line_count7, align 4, !dbg !4489
  %cmp = icmp ult i32 %15, %17, !dbg !4490
  br i1 %cmp, label %for.body, label %for.end, !dbg !4491

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %buf_pos, align 4, !dbg !4492
  %19 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4495
  %block_bytes = getelementptr inbounds %struct.bt878, %struct.bt878* %19, i32 0, i32 14, !dbg !4496
  %20 = load i32, i32* %block_bytes, align 4, !dbg !4496
  %rem = urem i32 %18, %20, !dbg !4497
  %tobool8 = icmp ne i32 %rem, 0, !dbg !4497
  br i1 %tobool8, label %if.else, label %if.then9, !dbg !4498

if.then9:                                         ; preds = %for.body
  %21 = load i32, i32* %buf_pos, align 4, !dbg !4499
  %22 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4499
  %block_bytes10 = getelementptr inbounds %struct.bt878, %struct.bt878* %22, i32 0, i32 14, !dbg !4499
  %23 = load i32, i32* %block_bytes10, align 4, !dbg !4499
  %div = udiv i32 %21, %23, !dbg !4499
  %24 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4499
  %block_count = getelementptr inbounds %struct.bt878, %struct.bt878* %24, i32 0, i32 13, !dbg !4499
  %25 = load i32, i32* %block_count, align 8, !dbg !4499
  %sub = sub i32 %25, 1, !dbg !4499
  %add = add i32 %div, %sub, !dbg !4499
  %neg = xor i32 %add, -1, !dbg !4499
  %26 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4499
  %block_count11 = getelementptr inbounds %struct.bt878, %struct.bt878* %26, i32 0, i32 13, !dbg !4499
  %27 = load i32, i32* %block_count11, align 8, !dbg !4499
  %rem12 = urem i32 %neg, %27, !dbg !4499
  %and = and i32 %rem12, 15, !dbg !4499
  %shl = shl i32 %and, 20, !dbg !4499
  %28 = load i32, i32* %buf_pos, align 4, !dbg !4499
  %29 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4499
  %block_bytes13 = getelementptr inbounds %struct.bt878, %struct.bt878* %29, i32 0, i32 14, !dbg !4499
  %30 = load i32, i32* %block_bytes13, align 4, !dbg !4499
  %div14 = udiv i32 %28, %30, !dbg !4499
  %31 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4499
  %block_count15 = getelementptr inbounds %struct.bt878, %struct.bt878* %31, i32 0, i32 13, !dbg !4499
  %32 = load i32, i32* %block_count15, align 8, !dbg !4499
  %sub16 = sub i32 %32, 1, !dbg !4499
  %add17 = add i32 %div14, %sub16, !dbg !4499
  %33 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4499
  %block_count18 = getelementptr inbounds %struct.bt878, %struct.bt878* %33, i32 0, i32 13, !dbg !4499
  %34 = load i32, i32* %block_count18, align 8, !dbg !4499
  %rem19 = urem i32 %add17, %34, !dbg !4499
  %and20 = and i32 %rem19, 15, !dbg !4499
  %shl21 = shl i32 %and20, 16, !dbg !4499
  %or22 = or i32 %shl, %shl21, !dbg !4499
  %or23 = or i32 486539264, %or22, !dbg !4499
  %35 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4499
  %line_bytes24 = getelementptr inbounds %struct.bt878, %struct.bt878* %35, i32 0, i32 15, !dbg !4499
  %36 = load i32, i32* %line_bytes24, align 8, !dbg !4499
  %or25 = or i32 %or23, %36, !dbg !4499
  %37 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4499
  %risc_cpu26 = getelementptr inbounds %struct.bt878, %struct.bt878* %37, i32 0, i32 21, !dbg !4499
  %38 = load i32*, i32** %risc_cpu26, align 8, !dbg !4499
  %39 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4499
  %risc_pos27 = getelementptr inbounds %struct.bt878, %struct.bt878* %39, i32 0, i32 23, !dbg !4499
  %40 = load i32, i32* %risc_pos27, align 8, !dbg !4499
  %inc28 = add i32 %40, 1, !dbg !4499
  store i32 %inc28, i32* %risc_pos27, align 8, !dbg !4499
  %idxprom29 = zext i32 %40 to i64, !dbg !4499
  %arrayidx30 = getelementptr i32, i32* %38, i64 %idxprom29, !dbg !4499
  store i32 %or25, i32* %arrayidx30, align 4, !dbg !4499
  br label %if.end38, !dbg !4499

if.else:                                          ; preds = %for.body
  %41 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4500
  %line_bytes31 = getelementptr inbounds %struct.bt878, %struct.bt878* %41, i32 0, i32 15, !dbg !4500
  %42 = load i32, i32* %line_bytes31, align 8, !dbg !4500
  %or32 = or i32 469762048, %42, !dbg !4500
  %43 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4500
  %risc_cpu33 = getelementptr inbounds %struct.bt878, %struct.bt878* %43, i32 0, i32 21, !dbg !4500
  %44 = load i32*, i32** %risc_cpu33, align 8, !dbg !4500
  %45 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4500
  %risc_pos34 = getelementptr inbounds %struct.bt878, %struct.bt878* %45, i32 0, i32 23, !dbg !4500
  %46 = load i32, i32* %risc_pos34, align 8, !dbg !4500
  %inc35 = add i32 %46, 1, !dbg !4500
  store i32 %inc35, i32* %risc_pos34, align 8, !dbg !4500
  %idxprom36 = zext i32 %46 to i64, !dbg !4500
  %arrayidx37 = getelementptr i32, i32* %44, i64 %idxprom36, !dbg !4500
  store i32 %or32, i32* %arrayidx37, align 4, !dbg !4500
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then9
  %47 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4501
  %buf_dma = getelementptr inbounds %struct.bt878, %struct.bt878* %47, i32 0, i32 19, !dbg !4501
  %48 = load i64, i64* %buf_dma, align 8, !dbg !4501
  %49 = load i32, i32* %buf_pos, align 4, !dbg !4501
  %conv = zext i32 %49 to i64, !dbg !4501
  %add39 = add i64 %48, %conv, !dbg !4501
  %conv40 = trunc i64 %add39 to i32, !dbg !4501
  %50 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4501
  %risc_cpu41 = getelementptr inbounds %struct.bt878, %struct.bt878* %50, i32 0, i32 21, !dbg !4501
  %51 = load i32*, i32** %risc_cpu41, align 8, !dbg !4501
  %52 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4501
  %risc_pos42 = getelementptr inbounds %struct.bt878, %struct.bt878* %52, i32 0, i32 23, !dbg !4501
  %53 = load i32, i32* %risc_pos42, align 8, !dbg !4501
  %inc43 = add i32 %53, 1, !dbg !4501
  store i32 %inc43, i32* %risc_pos42, align 8, !dbg !4501
  %idxprom44 = zext i32 %53 to i64, !dbg !4501
  %arrayidx45 = getelementptr i32, i32* %51, i64 %idxprom44, !dbg !4501
  store i32 %conv40, i32* %arrayidx45, align 4, !dbg !4501
  %54 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4502
  %line_bytes46 = getelementptr inbounds %struct.bt878, %struct.bt878* %54, i32 0, i32 15, !dbg !4503
  %55 = load i32, i32* %line_bytes46, align 8, !dbg !4503
  %56 = load i32, i32* %buf_pos, align 4, !dbg !4504
  %add47 = add i32 %56, %55, !dbg !4504
  store i32 %add47, i32* %buf_pos, align 4, !dbg !4504
  br label %for.inc, !dbg !4505

for.inc:                                          ; preds = %if.end38
  %57 = load i32, i32* %line, align 4, !dbg !4506
  %inc48 = add i32 %57, 1, !dbg !4506
  store i32 %inc48, i32* %line, align 4, !dbg !4506
  br label %for.cond, !dbg !4507, !llvm.loop !4508

for.end:                                          ; preds = %for.cond
  %58 = load i32, i32* %op_sync_orin.addr, align 4, !dbg !4510
  %or49 = or i32 -2147483648, %58, !dbg !4510
  %or50 = or i32 %or49, 12, !dbg !4510
  %59 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4510
  %risc_cpu51 = getelementptr inbounds %struct.bt878, %struct.bt878* %59, i32 0, i32 21, !dbg !4510
  %60 = load i32*, i32** %risc_cpu51, align 8, !dbg !4510
  %61 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4510
  %risc_pos52 = getelementptr inbounds %struct.bt878, %struct.bt878* %61, i32 0, i32 23, !dbg !4510
  %62 = load i32, i32* %risc_pos52, align 8, !dbg !4510
  %inc53 = add i32 %62, 1, !dbg !4510
  store i32 %inc53, i32* %risc_pos52, align 8, !dbg !4510
  %idxprom54 = zext i32 %62 to i64, !dbg !4510
  %arrayidx55 = getelementptr i32, i32* %60, i64 %idxprom54, !dbg !4510
  store i32 %or50, i32* %arrayidx55, align 4, !dbg !4510
  %63 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4511
  %risc_cpu56 = getelementptr inbounds %struct.bt878, %struct.bt878* %63, i32 0, i32 21, !dbg !4511
  %64 = load i32*, i32** %risc_cpu56, align 8, !dbg !4511
  %65 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4511
  %risc_pos57 = getelementptr inbounds %struct.bt878, %struct.bt878* %65, i32 0, i32 23, !dbg !4511
  %66 = load i32, i32* %risc_pos57, align 8, !dbg !4511
  %inc58 = add i32 %66, 1, !dbg !4511
  store i32 %inc58, i32* %risc_pos57, align 8, !dbg !4511
  %idxprom59 = zext i32 %66 to i64, !dbg !4511
  %arrayidx60 = getelementptr i32, i32* %64, i64 %idxprom59, !dbg !4511
  store i32 0, i32* %arrayidx60, align 4, !dbg !4511
  %67 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4512
  %risc_cpu61 = getelementptr inbounds %struct.bt878, %struct.bt878* %67, i32 0, i32 21, !dbg !4512
  %68 = load i32*, i32** %risc_cpu61, align 8, !dbg !4512
  %69 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4512
  %risc_pos62 = getelementptr inbounds %struct.bt878, %struct.bt878* %69, i32 0, i32 23, !dbg !4512
  %70 = load i32, i32* %risc_pos62, align 8, !dbg !4512
  %inc63 = add i32 %70, 1, !dbg !4512
  store i32 %inc63, i32* %risc_pos62, align 8, !dbg !4512
  %idxprom64 = zext i32 %70 to i64, !dbg !4512
  %arrayidx65 = getelementptr i32, i32* %68, i64 %idxprom64, !dbg !4512
  store i32 1879048192, i32* %arrayidx65, align 4, !dbg !4512
  %71 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4513
  %risc_dma = getelementptr inbounds %struct.bt878, %struct.bt878* %71, i32 0, i32 22, !dbg !4513
  %72 = load i64, i64* %risc_dma, align 8, !dbg !4513
  %conv66 = trunc i64 %72 to i32, !dbg !4513
  %73 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4513
  %risc_cpu67 = getelementptr inbounds %struct.bt878, %struct.bt878* %73, i32 0, i32 21, !dbg !4513
  %74 = load i32*, i32** %risc_cpu67, align 8, !dbg !4513
  %75 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4513
  %risc_pos68 = getelementptr inbounds %struct.bt878, %struct.bt878* %75, i32 0, i32 23, !dbg !4513
  %76 = load i32, i32* %risc_pos68, align 8, !dbg !4513
  %inc69 = add i32 %76, 1, !dbg !4513
  store i32 %inc69, i32* %risc_pos68, align 8, !dbg !4513
  %idxprom70 = zext i32 %76 to i64, !dbg !4513
  %arrayidx71 = getelementptr i32, i32* %74, i64 %idxprom70, !dbg !4513
  store i32 %conv66, i32* %arrayidx71, align 4, !dbg !4513
  %77 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4514
  %line_count72 = getelementptr inbounds %struct.bt878, %struct.bt878* %77, i32 0, i32 16, !dbg !4514
  %78 = load i32, i32* %line_count72, align 4, !dbg !4514
  %shl73 = shl i32 %78, 16, !dbg !4514
  %79 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4514
  %line_bytes74 = getelementptr inbounds %struct.bt878, %struct.bt878* %79, i32 0, i32 15, !dbg !4514
  %80 = load i32, i32* %line_bytes74, align 8, !dbg !4514
  %or75 = or i32 %shl73, %80, !dbg !4514
  %81 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4514
  %bt878_mem = getelementptr inbounds %struct.bt878, %struct.bt878* %81, i32 0, i32 10, !dbg !4514
  %82 = load i8*, i8** %bt878_mem, align 8, !dbg !4514
  %add.ptr = getelementptr i8, i8* %82, i64 272, !dbg !4514
  call void @writel(i32 %or75, i8* %add.ptr) #6, !dbg !4514
  ret void, !dbg !4515
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !4516 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4520, metadata !DIExpression()), !dbg !4521
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4522, metadata !DIExpression()), !dbg !4521
  %0 = load i32, i32* %val.addr, align 4, !dbg !4521
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !4521
  %2 = bitcast i8* %1 to i32*, !dbg !4521
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #7, !dbg !4521, !srcloc !4523
  ret void, !dbg !4521
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @bt878_stop(%struct.bt878* %bt) #0 !dbg !4524 {
entry:
  %bt.addr = alloca %struct.bt878*, align 8
  %stat = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.bt878* %bt, %struct.bt878** %bt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bt878** %bt.addr, metadata !4527, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.declare(metadata i32* %stat, metadata !4529, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4531, metadata !DIExpression()), !dbg !4532
  store i32 0, i32* %i, align 4, !dbg !4532
  br label %do.body, !dbg !4533

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @bt878_debug, align 4, !dbg !4534
  %tobool = icmp ne i32 %0, 0, !dbg !4534
  br i1 %tobool, label %if.then, label %if.end, !dbg !4537

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !4534
  br label %if.end, !dbg !4534

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4537

do.end:                                           ; preds = %if.end
  %1 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4538
  %bt878_mem = getelementptr inbounds %struct.bt878, %struct.bt878* %1, i32 0, i32 10, !dbg !4538
  %2 = load i8*, i8** %bt878_mem, align 8, !dbg !4538
  %add.ptr = getelementptr i8, i8* %2, i64 260, !dbg !4538
  call void @writel(i32 0, i8* %add.ptr) #6, !dbg !4538
  %3 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4539
  %bt878_mem1 = getelementptr inbounds %struct.bt878, %struct.bt878* %3, i32 0, i32 10, !dbg !4539
  %4 = load i8*, i8** %bt878_mem1, align 8, !dbg !4539
  %add.ptr2 = getelementptr i8, i8* %4, i64 268, !dbg !4539
  %call3 = call i32 @readl(i8* %add.ptr2) #6, !dbg !4539
  %and = and i32 -20, %call3, !dbg !4539
  %5 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4539
  %bt878_mem4 = getelementptr inbounds %struct.bt878, %struct.bt878* %5, i32 0, i32 10, !dbg !4539
  %6 = load i8*, i8** %bt878_mem4, align 8, !dbg !4539
  %add.ptr5 = getelementptr i8, i8* %6, i64 268, !dbg !4539
  call void @writel(i32 %and, i8* %add.ptr5) #6, !dbg !4539
  br label %do.body6, !dbg !4540

do.body6:                                         ; preds = %do.cond, %do.end
  %7 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4541
  %bt878_mem7 = getelementptr inbounds %struct.bt878, %struct.bt878* %7, i32 0, i32 10, !dbg !4541
  %8 = load i8*, i8** %bt878_mem7, align 8, !dbg !4541
  %add.ptr8 = getelementptr i8, i8* %8, i64 256, !dbg !4541
  %call9 = call i32 @readl(i8* %add.ptr8) #6, !dbg !4541
  store i32 %call9, i32* %stat, align 4, !dbg !4543
  %9 = load i32, i32* %stat, align 4, !dbg !4544
  %and10 = and i32 %9, 134217728, !dbg !4546
  %tobool11 = icmp ne i32 %and10, 0, !dbg !4546
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !4547

if.then12:                                        ; preds = %do.body6
  br label %do.end14, !dbg !4548

if.end13:                                         ; preds = %do.body6
  %10 = load i32, i32* %i, align 4, !dbg !4549
  %inc = add i32 %10, 1, !dbg !4549
  store i32 %inc, i32* %i, align 4, !dbg !4549
  br label %do.cond, !dbg !4550

do.cond:                                          ; preds = %if.end13
  %11 = load i32, i32* %i, align 4, !dbg !4551
  %cmp = icmp slt i32 %11, 500, !dbg !4552
  br i1 %cmp, label %do.body6, label %do.end14, !dbg !4550, !llvm.loop !4553

do.end14:                                         ; preds = %do.cond, %if.then12
  br label %do.body15, !dbg !4555

do.body15:                                        ; preds = %do.end14
  %12 = load i32, i32* @bt878_debug, align 4, !dbg !4556
  %tobool16 = icmp ne i32 %12, 0, !dbg !4556
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !4559

if.then17:                                        ; preds = %do.body15
  %13 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4556
  %nr = getelementptr inbounds %struct.bt878, %struct.bt878* %13, i32 0, i32 1, !dbg !4556
  %14 = load i32, i32* %nr, align 8, !dbg !4556
  %15 = load i32, i32* %i, align 4, !dbg !4556
  %16 = load i32, i32* %stat, align 4, !dbg !4556
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %14, i32 %15, i32 %16) #5, !dbg !4556
  br label %if.end19, !dbg !4556

if.end19:                                         ; preds = %if.then17, %do.body15
  br label %do.end21, !dbg !4559

do.end21:                                         ; preds = %if.end19
  ret void, !dbg !4560
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !4561 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4566, metadata !DIExpression()), !dbg !4567
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4568, metadata !DIExpression()), !dbg !4567
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !4567
  %1 = bitcast i8* %0 to i32*, !dbg !4567
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #7, !dbg !4567, !srcloc !4569
  store i32 %2, i32* %ret, align 4, !dbg !4567
  %3 = load i32, i32* %ret, align 4, !dbg !4567
  ret i32 %3, !dbg !4567
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @bt878_device_control(%struct.bt878* %bt, i32 %cmd, %union.dst_gpio_packet* %mp) #0 !dbg !4570 {
entry:
  %retval = alloca i32, align 4
  %bt.addr = alloca %struct.bt878*, align 8
  %cmd.addr = alloca i32, align 4
  %mp.addr = alloca %union.dst_gpio_packet*, align 8
  %retval1 = alloca i32, align 4
  store %struct.bt878* %bt, %struct.bt878** %bt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bt878** %bt.addr, metadata !4592, metadata !DIExpression()), !dbg !4593
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !4594, metadata !DIExpression()), !dbg !4595
  store %union.dst_gpio_packet* %mp, %union.dst_gpio_packet** %mp.addr, align 8
  call void @llvm.dbg.declare(metadata %union.dst_gpio_packet** %mp.addr, metadata !4596, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4598, metadata !DIExpression()), !dbg !4599
  store i32 0, i32* %retval1, align 4, !dbg !4600
  %0 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4601
  %gpio_lock = getelementptr inbounds %struct.bt878, %struct.bt878* %0, i32 0, i32 0, !dbg !4603
  %call = call i32 @mutex_lock_interruptible(%struct.mutex* %gpio_lock) #6, !dbg !4604
  %tobool = icmp ne i32 %call, 0, !dbg !4604
  br i1 %tobool, label %if.then, label %if.end, !dbg !4605

if.then:                                          ; preds = %entry
  store i32 -512, i32* %retval, align 4, !dbg !4606
  br label %return, !dbg !4606

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %cmd.addr, align 4, !dbg !4607
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb12
    i32 3, label %sw.bb15
  ], !dbg !4608

sw.bb:                                            ; preds = %if.end
  %2 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4609
  %bttv_nr = getelementptr inbounds %struct.bt878, %struct.bt878* %2, i32 0, i32 2, !dbg !4611
  %3 = load i32, i32* %bttv_nr, align 4, !dbg !4611
  %4 = load %union.dst_gpio_packet*, %union.dst_gpio_packet** %mp.addr, align 8, !dbg !4612
  %enb = bitcast %union.dst_gpio_packet* %4 to %struct.dst_gpio_enable*, !dbg !4613
  %mask = getelementptr inbounds %struct.dst_gpio_enable, %struct.dst_gpio_enable* %enb, i32 0, i32 0, !dbg !4614
  %5 = load i32, i32* %mask, align 8, !dbg !4614
  %conv = zext i32 %5 to i64, !dbg !4612
  %6 = load %union.dst_gpio_packet*, %union.dst_gpio_packet** %mp.addr, align 8, !dbg !4615
  %enb2 = bitcast %union.dst_gpio_packet* %6 to %struct.dst_gpio_enable*, !dbg !4616
  %enable = getelementptr inbounds %struct.dst_gpio_enable, %struct.dst_gpio_enable* %enb2, i32 0, i32 1, !dbg !4617
  %7 = load i32, i32* %enable, align 4, !dbg !4617
  %conv3 = zext i32 %7 to i64, !dbg !4615
  %call4 = call i32 @bttv_gpio_enable(i32 %3, i64 %conv, i64 %conv3) #6, !dbg !4618
  store i32 %call4, i32* %retval1, align 4, !dbg !4619
  br label %sw.epilog, !dbg !4620

sw.bb5:                                           ; preds = %if.end
  %8 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4621
  %bttv_nr6 = getelementptr inbounds %struct.bt878, %struct.bt878* %8, i32 0, i32 2, !dbg !4622
  %9 = load i32, i32* %bttv_nr6, align 4, !dbg !4622
  %10 = load %union.dst_gpio_packet*, %union.dst_gpio_packet** %mp.addr, align 8, !dbg !4623
  %outp = bitcast %union.dst_gpio_packet* %10 to %struct.dst_gpio_output*, !dbg !4624
  %mask7 = getelementptr inbounds %struct.dst_gpio_output, %struct.dst_gpio_output* %outp, i32 0, i32 0, !dbg !4625
  %11 = load i32, i32* %mask7, align 8, !dbg !4625
  %conv8 = zext i32 %11 to i64, !dbg !4623
  %12 = load %union.dst_gpio_packet*, %union.dst_gpio_packet** %mp.addr, align 8, !dbg !4626
  %outp9 = bitcast %union.dst_gpio_packet* %12 to %struct.dst_gpio_output*, !dbg !4627
  %highvals = getelementptr inbounds %struct.dst_gpio_output, %struct.dst_gpio_output* %outp9, i32 0, i32 1, !dbg !4628
  %13 = load i32, i32* %highvals, align 4, !dbg !4628
  %conv10 = zext i32 %13 to i64, !dbg !4626
  %call11 = call i32 @bttv_write_gpio(i32 %9, i64 %conv8, i64 %conv10) #6, !dbg !4629
  store i32 %call11, i32* %retval1, align 4, !dbg !4630
  br label %sw.epilog, !dbg !4631

sw.bb12:                                          ; preds = %if.end
  %14 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4632
  %bttv_nr13 = getelementptr inbounds %struct.bt878, %struct.bt878* %14, i32 0, i32 2, !dbg !4633
  %15 = load i32, i32* %bttv_nr13, align 4, !dbg !4633
  %16 = load %union.dst_gpio_packet*, %union.dst_gpio_packet** %mp.addr, align 8, !dbg !4634
  %rd = bitcast %union.dst_gpio_packet* %16 to %struct.dst_gpio_read*, !dbg !4635
  %value = getelementptr inbounds %struct.dst_gpio_read, %struct.dst_gpio_read* %rd, i32 0, i32 0, !dbg !4636
  %call14 = call i32 @bttv_read_gpio(i32 %15, i64* %value) #6, !dbg !4637
  store i32 %call14, i32* %retval1, align 4, !dbg !4638
  br label %sw.epilog, !dbg !4639

sw.bb15:                                          ; preds = %if.end
  %17 = load %union.dst_gpio_packet*, %union.dst_gpio_packet** %mp.addr, align 8, !dbg !4640
  %psize = bitcast %union.dst_gpio_packet* %17 to i32*, !dbg !4641
  %18 = load i32, i32* %psize, align 8, !dbg !4641
  %19 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4642
  %TS_Size = getelementptr inbounds %struct.bt878, %struct.bt878* %19, i32 0, i32 6, !dbg !4643
  store i32 %18, i32* %TS_Size, align 4, !dbg !4644
  br label %sw.epilog, !dbg !4645

sw.default:                                       ; preds = %if.end
  store i32 -22, i32* %retval1, align 4, !dbg !4646
  br label %sw.epilog, !dbg !4647

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb12, %sw.bb5, %sw.bb
  %20 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !4648
  %gpio_lock16 = getelementptr inbounds %struct.bt878, %struct.bt878* %20, i32 0, i32 0, !dbg !4649
  call void @mutex_unlock(%struct.mutex* %gpio_lock16) #6, !dbg !4650
  %21 = load i32, i32* %retval1, align 4, !dbg !4651
  store i32 %21, i32* %retval, align 4, !dbg !4652
  br label %return, !dbg !4652

return:                                           ; preds = %sw.epilog, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !4653
  ret i32 %22, !dbg !4653
}

; Function Attrs: noredzone
declare dso_local i32 @mutex_lock_interruptible(%struct.mutex*) #3

; Function Attrs: noredzone
declare dso_local i32 @bttv_gpio_enable(i32, i64, i64) #3

; Function Attrs: noredzone
declare dso_local i32 @bttv_write_gpio(i32, i64, i64) #3

; Function Attrs: noredzone
declare dso_local i32 @bttv_read_gpio(i32, i64*) #3

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #3

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @bt878_cleanup_module() #4 section ".exit.text" !dbg !4654 {
entry:
  call void @pci_unregister_driver(%struct.pci_driver* @bt878_pci_driver) #6, !dbg !4655
  ret void, !dbg !4656
}

; Function Attrs: noredzone
declare dso_local void @pci_unregister_driver(%struct.pci_driver*) #3

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @bt878_init_module() #4 section ".init.text" !dbg !4657 {
entry:
  store i32 0, i32* @bt878_num, align 4, !dbg !4660
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i64 0, i64 0), i32 0, i32 0, i32 0) #5, !dbg !4661
  %call1 = call i32 @__pci_register_driver(%struct.pci_driver* @bt878_pci_driver, %struct.module* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !4662
  ret i32 %call1, !dbg !4663
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bt878_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %pci_id) #0 !dbg !4664 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pci_id.addr = alloca %struct.pci_device_id*, align 8
  %result = alloca i32, align 4
  %lat = alloca i8, align 1
  %bt = alloca %struct.bt878*, align 8
  %cardid = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4665, metadata !DIExpression()), !dbg !4666
  store %struct.pci_device_id* %pci_id, %struct.pci_device_id** %pci_id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %pci_id.addr, metadata !4667, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4669, metadata !DIExpression()), !dbg !4670
  store i32 0, i32* %result, align 4, !dbg !4670
  call void @llvm.dbg.declare(metadata i8* %lat, metadata !4671, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.declare(metadata %struct.bt878** %bt, metadata !4673, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.declare(metadata i32* %cardid, metadata !4675, metadata !DIExpression()), !dbg !4676
  %0 = load i32, i32* @bt878_num, align 4, !dbg !4677
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0), i32 %0) #5, !dbg !4678
  %1 = load i32, i32* @bt878_num, align 4, !dbg !4679
  %cmp = icmp sge i32 %1, 4, !dbg !4681
  br i1 %cmp, label %if.then, label %if.end, !dbg !4682

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0)) #5, !dbg !4683
  store i32 -12, i32* %retval, align 4, !dbg !4685
  br label %return, !dbg !4685

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4686
  %call2 = call i32 @pci_enable_device(%struct.pci_dev* %2) #6, !dbg !4688
  %tobool = icmp ne i32 %call2, 0, !dbg !4688
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !4689

if.then3:                                         ; preds = %if.end
  store i32 -5, i32* %retval, align 4, !dbg !4690
  br label %return, !dbg !4690

if.end4:                                          ; preds = %if.end
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4691
  %subsystem_device = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 10, !dbg !4692
  %4 = load i16, i16* %subsystem_device, align 2, !dbg !4692
  %conv = zext i16 %4 to i32, !dbg !4691
  %shl = shl i32 %conv, 16, !dbg !4693
  store i32 %shl, i32* %cardid, align 4, !dbg !4694
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4695
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 9, !dbg !4696
  %6 = load i16, i16* %subsystem_vendor, align 8, !dbg !4696
  %conv5 = zext i16 %6 to i32, !dbg !4695
  %7 = load i32, i32* %cardid, align 4, !dbg !4697
  %or = or i32 %7, %conv5, !dbg !4697
  store i32 %or, i32* %cardid, align 4, !dbg !4697
  %8 = load i32, i32* %cardid, align 4, !dbg !4698
  %9 = load %struct.pci_device_id*, %struct.pci_device_id** %pci_id.addr, align 8, !dbg !4699
  %call6 = call i8* @card_name(%struct.pci_device_id* %9) #6, !dbg !4700
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.bt878_probe, i64 0, i64 0), i32 %8, i8* %call6) #5, !dbg !4701
  %10 = load i32, i32* @bt878_num, align 4, !dbg !4702
  %idxprom = sext i32 %10 to i64, !dbg !4703
  %arrayidx = getelementptr [4 x %struct.bt878], [4 x %struct.bt878]* @bt878, i64 0, i64 %idxprom, !dbg !4703
  store %struct.bt878* %arrayidx, %struct.bt878** %bt, align 8, !dbg !4704
  %11 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4705
  %12 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4706
  %dev8 = getelementptr inbounds %struct.bt878, %struct.bt878* %12, i32 0, i32 4, !dbg !4707
  store %struct.pci_dev* %11, %struct.pci_dev** %dev8, align 8, !dbg !4708
  %13 = load i32, i32* @bt878_num, align 4, !dbg !4709
  %14 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4710
  %nr = getelementptr inbounds %struct.bt878, %struct.bt878* %14, i32 0, i32 1, !dbg !4711
  store i32 %13, i32* %nr, align 8, !dbg !4712
  %15 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4713
  %shutdown = getelementptr inbounds %struct.bt878, %struct.bt878* %15, i32 0, i32 25, !dbg !4714
  store i32 0, i32* %shutdown, align 8, !dbg !4715
  %16 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4716
  %device = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 8, !dbg !4717
  %17 = load i16, i16* %device, align 2, !dbg !4717
  %conv9 = zext i16 %17 to i32, !dbg !4716
  %18 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4718
  %id = getelementptr inbounds %struct.bt878, %struct.bt878* %18, i32 0, i32 5, !dbg !4719
  store i32 %conv9, i32* %id, align 8, !dbg !4720
  %19 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4721
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 43, !dbg !4722
  %20 = load i32, i32* %irq, align 4, !dbg !4722
  %21 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4723
  %irq10 = getelementptr inbounds %struct.bt878, %struct.bt878* %21, i32 0, i32 8, !dbg !4724
  store i32 %20, i32* %irq10, align 4, !dbg !4725
  %22 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4726
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 44, !dbg !4726
  %arrayidx11 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !4726
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx11, i32 0, i32 0, !dbg !4726
  %23 = load i64, i64* %start, align 8, !dbg !4726
  %24 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4727
  %bt878_adr = getelementptr inbounds %struct.bt878, %struct.bt878* %24, i32 0, i32 9, !dbg !4728
  store i64 %23, i64* %bt878_adr, align 8, !dbg !4729
  %25 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4730
  %resource12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 44, !dbg !4730
  %arrayidx13 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource12, i64 0, i64 0, !dbg !4730
  %start14 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx13, i32 0, i32 0, !dbg !4730
  %26 = load i64, i64* %start14, align 8, !dbg !4730
  %27 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4730
  %resource15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 44, !dbg !4730
  %arrayidx16 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource15, i64 0, i64 0, !dbg !4730
  %start17 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx16, i32 0, i32 0, !dbg !4730
  %28 = load i64, i64* %start17, align 8, !dbg !4730
  %cmp18 = icmp eq i64 %28, 0, !dbg !4730
  br i1 %cmp18, label %land.lhs.true, label %cond.false, !dbg !4730

land.lhs.true:                                    ; preds = %if.end4
  %29 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4730
  %resource20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 44, !dbg !4730
  %arrayidx21 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource20, i64 0, i64 0, !dbg !4730
  %end = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx21, i32 0, i32 1, !dbg !4730
  %30 = load i64, i64* %end, align 8, !dbg !4730
  %31 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4730
  %resource22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 44, !dbg !4730
  %arrayidx23 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource22, i64 0, i64 0, !dbg !4730
  %start24 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx23, i32 0, i32 0, !dbg !4730
  %32 = load i64, i64* %start24, align 8, !dbg !4730
  %cmp25 = icmp eq i64 %30, %32, !dbg !4730
  br i1 %cmp25, label %cond.true, label %cond.false, !dbg !4730

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end, !dbg !4730

cond.false:                                       ; preds = %land.lhs.true, %if.end4
  %33 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4730
  %resource27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 44, !dbg !4730
  %arrayidx28 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource27, i64 0, i64 0, !dbg !4730
  %end29 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx28, i32 0, i32 1, !dbg !4730
  %34 = load i64, i64* %end29, align 8, !dbg !4730
  %35 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4730
  %resource30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 44, !dbg !4730
  %arrayidx31 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource30, i64 0, i64 0, !dbg !4730
  %start32 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx31, i32 0, i32 0, !dbg !4730
  %36 = load i64, i64* %start32, align 8, !dbg !4730
  %sub = sub i64 %34, %36, !dbg !4730
  %add = add i64 %sub, 1, !dbg !4730
  br label %cond.end, !dbg !4730

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %add, %cond.false ], !dbg !4730
  %call33 = call %struct.resource* @__request_region(%struct.resource* @iomem_resource, i64 %26, i64 %cond, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 0) #6, !dbg !4730
  %tobool34 = icmp ne %struct.resource* %call33, null, !dbg !4730
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !4732

if.then35:                                        ; preds = %cond.end
  store i32 -16, i32* %result, align 4, !dbg !4733
  br label %fail0, !dbg !4735

if.end36:                                         ; preds = %cond.end
  %37 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4736
  %revision = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 12, !dbg !4737
  %38 = load i8, i8* %revision, align 8, !dbg !4737
  %39 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4738
  %revision37 = getelementptr inbounds %struct.bt878, %struct.bt878* %39, i32 0, i32 7, !dbg !4739
  store i8 %38, i8* %revision37, align 8, !dbg !4740
  %40 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4741
  %call38 = call i32 @pci_read_config_byte(%struct.pci_dev* %40, i32 13, i8* %lat) #6, !dbg !4742
  %41 = load i32, i32* @bt878_num, align 4, !dbg !4743
  %42 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4744
  %id39 = getelementptr inbounds %struct.bt878, %struct.bt878* %42, i32 0, i32 5, !dbg !4745
  %43 = load i32, i32* %id39, align 8, !dbg !4745
  %44 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4746
  %revision40 = getelementptr inbounds %struct.bt878, %struct.bt878* %44, i32 0, i32 7, !dbg !4747
  %45 = load i8, i8* %revision40, align 8, !dbg !4747
  %conv41 = zext i8 %45 to i32, !dbg !4746
  %46 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4748
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 1, !dbg !4749
  %47 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4749
  %number = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %47, i32 0, i32 13, !dbg !4750
  %48 = load i8, i8* %number, align 8, !dbg !4750
  %conv42 = zext i8 %48 to i32, !dbg !4748
  %49 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4751
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 6, !dbg !4751
  %50 = load i32, i32* %devfn, align 8, !dbg !4751
  %shr = lshr i32 %50, 3, !dbg !4751
  %and = and i32 %shr, 31, !dbg !4751
  %51 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4752
  %devfn43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 6, !dbg !4752
  %52 = load i32, i32* %devfn43, align 8, !dbg !4752
  %and44 = and i32 %52, 7, !dbg !4752
  %call45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0), i32 %41, i32 %43, i32 %conv41, i32 %conv42, i32 %and, i32 %and44) #5, !dbg !4753
  %53 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4754
  %irq46 = getelementptr inbounds %struct.bt878, %struct.bt878* %53, i32 0, i32 8, !dbg !4755
  %54 = load i32, i32* %irq46, align 4, !dbg !4755
  %55 = load i8, i8* %lat, align 1, !dbg !4756
  %conv47 = zext i8 %55 to i32, !dbg !4756
  %56 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4757
  %bt878_adr48 = getelementptr inbounds %struct.bt878, %struct.bt878* %56, i32 0, i32 9, !dbg !4758
  %57 = load i64, i64* %bt878_adr48, align 8, !dbg !4758
  %call49 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0), i32 %54, i32 %conv47, i64 %57) #5, !dbg !4759
  %58 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4760
  %bt878_adr50 = getelementptr inbounds %struct.bt878, %struct.bt878* %58, i32 0, i32 9, !dbg !4761
  %59 = load i64, i64* %bt878_adr50, align 8, !dbg !4761
  %call51 = call i8* @ioremap(i64 %59, i64 4096) #6, !dbg !4762
  %60 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4763
  %bt878_mem = getelementptr inbounds %struct.bt878, %struct.bt878* %60, i32 0, i32 10, !dbg !4764
  store i8* %call51, i8** %bt878_mem, align 8, !dbg !4765
  %61 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4766
  %bt878_mem52 = getelementptr inbounds %struct.bt878, %struct.bt878* %61, i32 0, i32 10, !dbg !4766
  %62 = load i8*, i8** %bt878_mem52, align 8, !dbg !4766
  %add.ptr = getelementptr i8, i8* %62, i64 260, !dbg !4766
  call void @writel(i32 0, i8* %add.ptr) #6, !dbg !4766
  %63 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4767
  %irq53 = getelementptr inbounds %struct.bt878, %struct.bt878* %63, i32 0, i32 8, !dbg !4768
  %64 = load i32, i32* %irq53, align 4, !dbg !4768
  %65 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4769
  %66 = bitcast %struct.bt878* %65 to i8*, !dbg !4770
  %call54 = call i32 @request_irq(i32 %64, i32 (i32, i8*)* @bt878_irq, i64 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %66) #6, !dbg !4771
  store i32 %call54, i32* %result, align 4, !dbg !4772
  %67 = load i32, i32* %result, align 4, !dbg !4773
  %cmp55 = icmp eq i32 %67, -22, !dbg !4775
  br i1 %cmp55, label %if.then57, label %if.end59, !dbg !4776

if.then57:                                        ; preds = %if.end36
  %68 = load i32, i32* @bt878_num, align 4, !dbg !4777
  %call58 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), i32 %68) #5, !dbg !4779
  br label %fail1, !dbg !4780

if.end59:                                         ; preds = %if.end36
  %69 = load i32, i32* %result, align 4, !dbg !4781
  %cmp60 = icmp eq i32 %69, -16, !dbg !4783
  br i1 %cmp60, label %if.then62, label %if.end65, !dbg !4784

if.then62:                                        ; preds = %if.end59
  %70 = load i32, i32* @bt878_num, align 4, !dbg !4785
  %71 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4787
  %irq63 = getelementptr inbounds %struct.bt878, %struct.bt878* %71, i32 0, i32 8, !dbg !4788
  %72 = load i32, i32* %irq63, align 4, !dbg !4788
  %call64 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.23, i64 0, i64 0), i32 %70, i32 %72) #5, !dbg !4789
  br label %fail1, !dbg !4790

if.end65:                                         ; preds = %if.end59
  %73 = load i32, i32* %result, align 4, !dbg !4791
  %cmp66 = icmp slt i32 %73, 0, !dbg !4793
  br i1 %cmp66, label %if.then68, label %if.end69, !dbg !4794

if.then68:                                        ; preds = %if.end65
  br label %fail1, !dbg !4795

if.end69:                                         ; preds = %if.end65
  %74 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4796
  call void @pci_set_master(%struct.pci_dev* %74) #6, !dbg !4797
  %75 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4798
  %76 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4799
  %77 = bitcast %struct.bt878* %76 to i8*, !dbg !4799
  call void @pci_set_drvdata(%struct.pci_dev* %75, i8* %77) #6, !dbg !4800
  %78 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4801
  %call70 = call i32 @bt878_mem_alloc(%struct.bt878* %78) #6, !dbg !4803
  store i32 %call70, i32* %result, align 4, !dbg !4804
  %tobool71 = icmp ne i32 %call70, 0, !dbg !4804
  br i1 %tobool71, label %if.then72, label %if.end74, !dbg !4805

if.then72:                                        ; preds = %if.end69
  %call73 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0)) #5, !dbg !4806
  br label %fail2, !dbg !4808

if.end74:                                         ; preds = %if.end69
  %79 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4809
  %call75 = call i32 @bt878_make_risc(%struct.bt878* %79) #6, !dbg !4810
  %80 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4811
  %bt878_mem76 = getelementptr inbounds %struct.bt878, %struct.bt878* %80, i32 0, i32 10, !dbg !4811
  %81 = load i8*, i8** %bt878_mem76, align 8, !dbg !4811
  %add.ptr77 = getelementptr i8, i8* %81, i64 260, !dbg !4811
  call void @writel(i32 0, i8* %add.ptr77) #6, !dbg !4811
  %82 = load i32, i32* @bt878_num, align 4, !dbg !4812
  %inc = add i32 %82, 1, !dbg !4812
  store i32 %inc, i32* @bt878_num, align 4, !dbg !4812
  store i32 0, i32* %retval, align 4, !dbg !4813
  br label %return, !dbg !4813

fail2:                                            ; preds = %if.then72
  call void @llvm.dbg.label(metadata !4814), !dbg !4815
  %83 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4816
  %irq78 = getelementptr inbounds %struct.bt878, %struct.bt878* %83, i32 0, i32 8, !dbg !4817
  %84 = load i32, i32* %irq78, align 4, !dbg !4817
  %85 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4818
  %86 = bitcast %struct.bt878* %85 to i8*, !dbg !4818
  %call79 = call i8* @free_irq(i32 %84, i8* %86) #6, !dbg !4819
  br label %fail1, !dbg !4819

fail1:                                            ; preds = %fail2, %if.then68, %if.then62, %if.then57
  call void @llvm.dbg.label(metadata !4820), !dbg !4821
  %87 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4822
  %dev80 = getelementptr inbounds %struct.bt878, %struct.bt878* %87, i32 0, i32 4, !dbg !4822
  %88 = load %struct.pci_dev*, %struct.pci_dev** %dev80, align 8, !dbg !4822
  %resource81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %88, i32 0, i32 44, !dbg !4822
  %arrayidx82 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource81, i64 0, i64 0, !dbg !4822
  %start83 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx82, i32 0, i32 0, !dbg !4822
  %89 = load i64, i64* %start83, align 8, !dbg !4822
  %90 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4822
  %dev84 = getelementptr inbounds %struct.bt878, %struct.bt878* %90, i32 0, i32 4, !dbg !4822
  %91 = load %struct.pci_dev*, %struct.pci_dev** %dev84, align 8, !dbg !4822
  %resource85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %91, i32 0, i32 44, !dbg !4822
  %arrayidx86 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource85, i64 0, i64 0, !dbg !4822
  %start87 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx86, i32 0, i32 0, !dbg !4822
  %92 = load i64, i64* %start87, align 8, !dbg !4822
  %cmp88 = icmp eq i64 %92, 0, !dbg !4822
  br i1 %cmp88, label %land.lhs.true90, label %cond.false102, !dbg !4822

land.lhs.true90:                                  ; preds = %fail1
  %93 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4822
  %dev91 = getelementptr inbounds %struct.bt878, %struct.bt878* %93, i32 0, i32 4, !dbg !4822
  %94 = load %struct.pci_dev*, %struct.pci_dev** %dev91, align 8, !dbg !4822
  %resource92 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 44, !dbg !4822
  %arrayidx93 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource92, i64 0, i64 0, !dbg !4822
  %end94 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx93, i32 0, i32 1, !dbg !4822
  %95 = load i64, i64* %end94, align 8, !dbg !4822
  %96 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4822
  %dev95 = getelementptr inbounds %struct.bt878, %struct.bt878* %96, i32 0, i32 4, !dbg !4822
  %97 = load %struct.pci_dev*, %struct.pci_dev** %dev95, align 8, !dbg !4822
  %resource96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 44, !dbg !4822
  %arrayidx97 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource96, i64 0, i64 0, !dbg !4822
  %start98 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx97, i32 0, i32 0, !dbg !4822
  %98 = load i64, i64* %start98, align 8, !dbg !4822
  %cmp99 = icmp eq i64 %95, %98, !dbg !4822
  br i1 %cmp99, label %cond.true101, label %cond.false102, !dbg !4822

cond.true101:                                     ; preds = %land.lhs.true90
  br label %cond.end113, !dbg !4822

cond.false102:                                    ; preds = %land.lhs.true90, %fail1
  %99 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4822
  %dev103 = getelementptr inbounds %struct.bt878, %struct.bt878* %99, i32 0, i32 4, !dbg !4822
  %100 = load %struct.pci_dev*, %struct.pci_dev** %dev103, align 8, !dbg !4822
  %resource104 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %100, i32 0, i32 44, !dbg !4822
  %arrayidx105 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource104, i64 0, i64 0, !dbg !4822
  %end106 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx105, i32 0, i32 1, !dbg !4822
  %101 = load i64, i64* %end106, align 8, !dbg !4822
  %102 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4822
  %dev107 = getelementptr inbounds %struct.bt878, %struct.bt878* %102, i32 0, i32 4, !dbg !4822
  %103 = load %struct.pci_dev*, %struct.pci_dev** %dev107, align 8, !dbg !4822
  %resource108 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %103, i32 0, i32 44, !dbg !4822
  %arrayidx109 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource108, i64 0, i64 0, !dbg !4822
  %start110 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx109, i32 0, i32 0, !dbg !4822
  %104 = load i64, i64* %start110, align 8, !dbg !4822
  %sub111 = sub i64 %101, %104, !dbg !4822
  %add112 = add i64 %sub111, 1, !dbg !4822
  br label %cond.end113, !dbg !4822

cond.end113:                                      ; preds = %cond.false102, %cond.true101
  %cond114 = phi i64 [ 0, %cond.true101 ], [ %add112, %cond.false102 ], !dbg !4822
  call void @__release_region(%struct.resource* @iomem_resource, i64 %89, i64 %cond114) #6, !dbg !4822
  br label %fail0, !dbg !4822

fail0:                                            ; preds = %cond.end113, %if.then35
  call void @llvm.dbg.label(metadata !4823), !dbg !4824
  %105 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4825
  call void @pci_disable_device(%struct.pci_dev* %105) #6, !dbg !4826
  %106 = load i32, i32* %result, align 4, !dbg !4827
  store i32 %106, i32* %retval, align 4, !dbg !4828
  br label %return, !dbg !4828

return:                                           ; preds = %fail0, %if.end74, %if.then3, %if.then
  %107 = load i32, i32* %retval, align 4, !dbg !4829
  ret i32 %107, !dbg !4829
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bt878_remove(%struct.pci_dev* %pci_dev) #0 !dbg !4830 {
entry:
  %pci_dev.addr = alloca %struct.pci_dev*, align 8
  %command = alloca i8, align 1
  %bt = alloca %struct.bt878*, align 8
  store %struct.pci_dev* %pci_dev, %struct.pci_dev** %pci_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pci_dev.addr, metadata !4831, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.declare(metadata i8* %command, metadata !4833, metadata !DIExpression()), !dbg !4834
  call void @llvm.dbg.declare(metadata %struct.bt878** %bt, metadata !4835, metadata !DIExpression()), !dbg !4836
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev.addr, align 8, !dbg !4837
  %call = call i8* @pci_get_drvdata(%struct.pci_dev* %0) #6, !dbg !4838
  %1 = bitcast i8* %call to %struct.bt878*, !dbg !4838
  store %struct.bt878* %1, %struct.bt878** %bt, align 8, !dbg !4836
  %2 = load i32, i32* @bt878_verbose, align 4, !dbg !4839
  %tobool = icmp ne i32 %2, 0, !dbg !4839
  br i1 %tobool, label %if.then, label %if.end, !dbg !4841

if.then:                                          ; preds = %entry
  %3 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4842
  %nr = getelementptr inbounds %struct.bt878, %struct.bt878* %3, i32 0, i32 1, !dbg !4843
  %4 = load i32, i32* %nr, align 8, !dbg !4843
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), i32 %4) #5, !dbg !4844
  br label %if.end, !dbg !4844

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4845
  %bt878_mem = getelementptr inbounds %struct.bt878, %struct.bt878* %5, i32 0, i32 10, !dbg !4845
  %6 = load i8*, i8** %bt878_mem, align 8, !dbg !4845
  %add.ptr = getelementptr i8, i8* %6, i64 268, !dbg !4845
  %call2 = call i32 @readl(i8* %add.ptr) #6, !dbg !4845
  %and = and i32 -20, %call2, !dbg !4845
  %7 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4845
  %bt878_mem3 = getelementptr inbounds %struct.bt878, %struct.bt878* %7, i32 0, i32 10, !dbg !4845
  %8 = load i8*, i8** %bt878_mem3, align 8, !dbg !4845
  %add.ptr4 = getelementptr i8, i8* %8, i64 268, !dbg !4845
  call void @writel(i32 %and, i8* %add.ptr4) #6, !dbg !4845
  %9 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4846
  %bt878_mem5 = getelementptr inbounds %struct.bt878, %struct.bt878* %9, i32 0, i32 10, !dbg !4846
  %10 = load i8*, i8** %bt878_mem5, align 8, !dbg !4846
  %add.ptr6 = getelementptr i8, i8* %10, i64 260, !dbg !4846
  call void @writel(i32 0, i8* %add.ptr6) #6, !dbg !4846
  %11 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4847
  %bt878_mem7 = getelementptr inbounds %struct.bt878, %struct.bt878* %11, i32 0, i32 10, !dbg !4847
  %12 = load i8*, i8** %bt878_mem7, align 8, !dbg !4847
  %add.ptr8 = getelementptr i8, i8* %12, i64 256, !dbg !4847
  call void @writel(i32 -1, i8* %add.ptr8) #6, !dbg !4847
  %13 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4848
  %dev = getelementptr inbounds %struct.bt878, %struct.bt878* %13, i32 0, i32 4, !dbg !4849
  %14 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4849
  %call9 = call i32 @pci_read_config_byte(%struct.pci_dev* %14, i32 4, i8* %command) #6, !dbg !4850
  %15 = load i8, i8* %command, align 1, !dbg !4851
  %conv = zext i8 %15 to i32, !dbg !4851
  %and10 = and i32 %conv, -5, !dbg !4851
  %conv11 = trunc i32 %and10 to i8, !dbg !4851
  store i8 %conv11, i8* %command, align 1, !dbg !4851
  %16 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4852
  %dev12 = getelementptr inbounds %struct.bt878, %struct.bt878* %16, i32 0, i32 4, !dbg !4853
  %17 = load %struct.pci_dev*, %struct.pci_dev** %dev12, align 8, !dbg !4853
  %18 = load i8, i8* %command, align 1, !dbg !4854
  %call13 = call i32 @pci_write_config_byte(%struct.pci_dev* %17, i32 4, i8 zeroext %18) #6, !dbg !4855
  %19 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4856
  %irq = getelementptr inbounds %struct.bt878, %struct.bt878* %19, i32 0, i32 8, !dbg !4857
  %20 = load i32, i32* %irq, align 4, !dbg !4857
  %21 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4858
  %22 = bitcast %struct.bt878* %21 to i8*, !dbg !4858
  %call14 = call i8* @free_irq(i32 %20, i8* %22) #6, !dbg !4859
  %23 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4860
  %bt878_mem15 = getelementptr inbounds %struct.bt878, %struct.bt878* %23, i32 0, i32 10, !dbg !4861
  %24 = load i8*, i8** %bt878_mem15, align 8, !dbg !4861
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0), i8* %24) #5, !dbg !4862
  %25 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4863
  %bt878_mem17 = getelementptr inbounds %struct.bt878, %struct.bt878* %25, i32 0, i32 10, !dbg !4865
  %26 = load i8*, i8** %bt878_mem17, align 8, !dbg !4865
  %tobool18 = icmp ne i8* %26, null, !dbg !4863
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !4866

if.then19:                                        ; preds = %if.end
  %27 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4867
  %bt878_mem20 = getelementptr inbounds %struct.bt878, %struct.bt878* %27, i32 0, i32 10, !dbg !4868
  %28 = load i8*, i8** %bt878_mem20, align 8, !dbg !4868
  call void @iounmap(i8* %28) #6, !dbg !4869
  br label %if.end21, !dbg !4869

if.end21:                                         ; preds = %if.then19, %if.end
  %29 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4870
  %dev22 = getelementptr inbounds %struct.bt878, %struct.bt878* %29, i32 0, i32 4, !dbg !4870
  %30 = load %struct.pci_dev*, %struct.pci_dev** %dev22, align 8, !dbg !4870
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 44, !dbg !4870
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !4870
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !4870
  %31 = load i64, i64* %start, align 8, !dbg !4870
  %32 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4870
  %dev23 = getelementptr inbounds %struct.bt878, %struct.bt878* %32, i32 0, i32 4, !dbg !4870
  %33 = load %struct.pci_dev*, %struct.pci_dev** %dev23, align 8, !dbg !4870
  %resource24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 44, !dbg !4870
  %arrayidx25 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource24, i64 0, i64 0, !dbg !4870
  %start26 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx25, i32 0, i32 0, !dbg !4870
  %34 = load i64, i64* %start26, align 8, !dbg !4870
  %cmp = icmp eq i64 %34, 0, !dbg !4870
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !4870

land.lhs.true:                                    ; preds = %if.end21
  %35 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4870
  %dev28 = getelementptr inbounds %struct.bt878, %struct.bt878* %35, i32 0, i32 4, !dbg !4870
  %36 = load %struct.pci_dev*, %struct.pci_dev** %dev28, align 8, !dbg !4870
  %resource29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 44, !dbg !4870
  %arrayidx30 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource29, i64 0, i64 0, !dbg !4870
  %end = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx30, i32 0, i32 1, !dbg !4870
  %37 = load i64, i64* %end, align 8, !dbg !4870
  %38 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4870
  %dev31 = getelementptr inbounds %struct.bt878, %struct.bt878* %38, i32 0, i32 4, !dbg !4870
  %39 = load %struct.pci_dev*, %struct.pci_dev** %dev31, align 8, !dbg !4870
  %resource32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 44, !dbg !4870
  %arrayidx33 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource32, i64 0, i64 0, !dbg !4870
  %start34 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx33, i32 0, i32 0, !dbg !4870
  %40 = load i64, i64* %start34, align 8, !dbg !4870
  %cmp35 = icmp eq i64 %37, %40, !dbg !4870
  br i1 %cmp35, label %cond.true, label %cond.false, !dbg !4870

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end, !dbg !4870

cond.false:                                       ; preds = %land.lhs.true, %if.end21
  %41 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4870
  %dev37 = getelementptr inbounds %struct.bt878, %struct.bt878* %41, i32 0, i32 4, !dbg !4870
  %42 = load %struct.pci_dev*, %struct.pci_dev** %dev37, align 8, !dbg !4870
  %resource38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 44, !dbg !4870
  %arrayidx39 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource38, i64 0, i64 0, !dbg !4870
  %end40 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx39, i32 0, i32 1, !dbg !4870
  %43 = load i64, i64* %end40, align 8, !dbg !4870
  %44 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4870
  %dev41 = getelementptr inbounds %struct.bt878, %struct.bt878* %44, i32 0, i32 4, !dbg !4870
  %45 = load %struct.pci_dev*, %struct.pci_dev** %dev41, align 8, !dbg !4870
  %resource42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 44, !dbg !4870
  %arrayidx43 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource42, i64 0, i64 0, !dbg !4870
  %start44 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx43, i32 0, i32 0, !dbg !4870
  %46 = load i64, i64* %start44, align 8, !dbg !4870
  %sub = sub i64 %43, %46, !dbg !4870
  %add = add i64 %sub, 1, !dbg !4870
  br label %cond.end, !dbg !4870

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %add, %cond.false ], !dbg !4870
  call void @__release_region(%struct.resource* @iomem_resource, i64 %31, i64 %cond) #6, !dbg !4870
  %47 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4871
  %shutdown = getelementptr inbounds %struct.bt878, %struct.bt878* %47, i32 0, i32 25, !dbg !4872
  store i32 1, i32* %shutdown, align 8, !dbg !4873
  %48 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4874
  call void @bt878_mem_free(%struct.bt878* %48) #6, !dbg !4875
  %49 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev.addr, align 8, !dbg !4876
  call void @pci_disable_device(%struct.pci_dev* %49) #6, !dbg !4877
  ret void, !dbg !4878
}

; Function Attrs: noredzone
declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @card_name(%struct.pci_device_id* %id) #0 !dbg !4879 {
entry:
  %id.addr = alloca %struct.pci_device_id*, align 8
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !4882, metadata !DIExpression()), !dbg !4883
  %0 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !4884
  %driver_data = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %0, i32 0, i32 6, !dbg !4885
  %1 = load i64, i64* %driver_data, align 8, !dbg !4885
  %tobool = icmp ne i64 %1, 0, !dbg !4884
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4884

cond.true:                                        ; preds = %entry
  %2 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !4886
  %driver_data1 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %2, i32 0, i32 6, !dbg !4887
  %3 = load i64, i64* %driver_data1, align 8, !dbg !4887
  %4 = inttoptr i64 %3 to i8*, !dbg !4888
  br label %cond.end, !dbg !4884

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4884

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), %cond.false ], !dbg !4884
  ret i8* %cond, !dbg !4889
}

; Function Attrs: noredzone
declare dso_local %struct.resource* @__request_region(%struct.resource*, i64, i64, i8*, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #3

; Function Attrs: noredzone
declare dso_local i8* @ioremap(i64, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #0 !dbg !4890 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4898, metadata !DIExpression()), !dbg !4899
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !4900, metadata !DIExpression()), !dbg !4901
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4902, metadata !DIExpression()), !dbg !4903
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4904, metadata !DIExpression()), !dbg !4905
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !4906, metadata !DIExpression()), !dbg !4907
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4908
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !4909
  %2 = load i64, i64* %flags.addr, align 8, !dbg !4910
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4911
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !4912
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #6, !dbg !4913
  ret i32 %call, !dbg !4914
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bt878_irq(i32 %irq, i8* %dev_id) #0 !dbg !4915 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %dev_id.addr = alloca i8*, align 8
  %stat = alloca i32, align 4
  %astat = alloca i32, align 4
  %mask = alloca i32, align 4
  %count = alloca i32, align 4
  %bt = alloca %struct.bt878*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4916, metadata !DIExpression()), !dbg !4917
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !4918, metadata !DIExpression()), !dbg !4919
  call void @llvm.dbg.declare(metadata i32* %stat, metadata !4920, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.declare(metadata i32* %astat, metadata !4922, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !4924, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.declare(metadata i32* %count, metadata !4926, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.declare(metadata %struct.bt878** %bt, metadata !4928, metadata !DIExpression()), !dbg !4929
  %0 = load i8*, i8** %dev_id.addr, align 8, !dbg !4930
  %1 = bitcast i8* %0 to %struct.bt878*, !dbg !4931
  store %struct.bt878* %1, %struct.bt878** %bt, align 8, !dbg !4932
  store i32 0, i32* %count, align 4, !dbg !4933
  br label %while.body, !dbg !4934

while.body:                                       ; preds = %entry, %if.end74
  %2 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4935
  %bt878_mem = getelementptr inbounds %struct.bt878, %struct.bt878* %2, i32 0, i32 10, !dbg !4935
  %3 = load i8*, i8** %bt878_mem, align 8, !dbg !4935
  %add.ptr = getelementptr i8, i8* %3, i64 256, !dbg !4935
  %call = call i32 @readl(i8* %add.ptr) #6, !dbg !4935
  store i32 %call, i32* %stat, align 4, !dbg !4937
  %4 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4938
  %bt878_mem1 = getelementptr inbounds %struct.bt878, %struct.bt878* %4, i32 0, i32 10, !dbg !4938
  %5 = load i8*, i8** %bt878_mem1, align 8, !dbg !4938
  %add.ptr2 = getelementptr i8, i8* %5, i64 260, !dbg !4938
  %call3 = call i32 @readl(i8* %add.ptr2) #6, !dbg !4938
  store i32 %call3, i32* %mask, align 4, !dbg !4939
  %6 = load i32, i32* %stat, align 4, !dbg !4940
  %7 = load i32, i32* %mask, align 4, !dbg !4942
  %and = and i32 %6, %7, !dbg !4943
  store i32 %and, i32* %astat, align 4, !dbg !4944
  %tobool = icmp ne i32 %and, 0, !dbg !4944
  br i1 %tobool, label %if.end, label %if.then, !dbg !4945

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval, align 4, !dbg !4946
  br label %return, !dbg !4946

if.end:                                           ; preds = %while.body
  %8 = load i32, i32* %astat, align 4, !dbg !4947
  %9 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4947
  %bt878_mem4 = getelementptr inbounds %struct.bt878, %struct.bt878* %9, i32 0, i32 10, !dbg !4947
  %10 = load i8*, i8** %bt878_mem4, align 8, !dbg !4947
  %add.ptr5 = getelementptr i8, i8* %10, i64 256, !dbg !4947
  call void @writel(i32 %8, i8* %add.ptr5) #6, !dbg !4947
  %11 = load i32, i32* %astat, align 4, !dbg !4948
  %and6 = and i32 %11, 786432, !dbg !4950
  %tobool7 = icmp ne i32 %and6, 0, !dbg !4950
  br i1 %tobool7, label %if.then8, label %if.end21, !dbg !4951

if.then8:                                         ; preds = %if.end
  %12 = load i32, i32* @bt878_verbose, align 4, !dbg !4952
  %tobool9 = icmp ne i32 %12, 0, !dbg !4952
  br i1 %tobool9, label %if.then10, label %if.end20, !dbg !4955

if.then10:                                        ; preds = %if.then8
  %13 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4956
  %nr = getelementptr inbounds %struct.bt878, %struct.bt878* %13, i32 0, i32 1, !dbg !4958
  %14 = load i32, i32* %nr, align 8, !dbg !4958
  %15 = load i32, i32* %astat, align 4, !dbg !4959
  %and11 = and i32 %15, 524288, !dbg !4960
  %tobool12 = icmp ne i32 %and11, 0, !dbg !4961
  %16 = zext i1 %tobool12 to i64, !dbg !4961
  %cond = select i1 %tobool12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), !dbg !4961
  %17 = load i32, i32* %astat, align 4, !dbg !4962
  %and13 = and i32 %17, 262144, !dbg !4963
  %tobool14 = icmp ne i32 %and13, 0, !dbg !4964
  %18 = zext i1 %tobool14 to i64, !dbg !4964
  %cond15 = select i1 %tobool14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), !dbg !4964
  %19 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4965
  %bt878_mem16 = getelementptr inbounds %struct.bt878, %struct.bt878* %19, i32 0, i32 10, !dbg !4965
  %20 = load i8*, i8** %bt878_mem16, align 8, !dbg !4965
  %add.ptr17 = getelementptr i8, i8* %20, i64 288, !dbg !4965
  %call18 = call i32 @readl(i8* %add.ptr17) #6, !dbg !4965
  %call19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), i32 %14, i8* %cond, i8* %cond15, i32 %call18) #5, !dbg !4966
  br label %if.end20, !dbg !4967

if.end20:                                         ; preds = %if.then10, %if.then8
  br label %if.end21, !dbg !4968

if.end21:                                         ; preds = %if.end20, %if.end
  %21 = load i32, i32* %astat, align 4, !dbg !4969
  %and22 = and i32 %21, 229376, !dbg !4971
  %tobool23 = icmp ne i32 %and22, 0, !dbg !4971
  br i1 %tobool23, label %if.then24, label %if.end42, !dbg !4972

if.then24:                                        ; preds = %if.end21
  %22 = load i32, i32* @bt878_verbose, align 4, !dbg !4973
  %tobool25 = icmp ne i32 %22, 0, !dbg !4973
  br i1 %tobool25, label %if.then26, label %if.end41, !dbg !4976

if.then26:                                        ; preds = %if.then24
  %23 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4977
  %nr27 = getelementptr inbounds %struct.bt878, %struct.bt878* %23, i32 0, i32 1, !dbg !4979
  %24 = load i32, i32* %nr27, align 8, !dbg !4979
  %25 = load i32, i32* %astat, align 4, !dbg !4980
  %and28 = and i32 %25, 131072, !dbg !4981
  %tobool29 = icmp ne i32 %and28, 0, !dbg !4982
  %26 = zext i1 %tobool29 to i64, !dbg !4982
  %cond30 = select i1 %tobool29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), !dbg !4982
  %27 = load i32, i32* %astat, align 4, !dbg !4983
  %and31 = and i32 %27, 65536, !dbg !4984
  %tobool32 = icmp ne i32 %and31, 0, !dbg !4985
  %28 = zext i1 %tobool32 to i64, !dbg !4985
  %cond33 = select i1 %tobool32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), !dbg !4985
  %29 = load i32, i32* %astat, align 4, !dbg !4986
  %and34 = and i32 %29, 32768, !dbg !4987
  %tobool35 = icmp ne i32 %and34, 0, !dbg !4988
  %30 = zext i1 %tobool35 to i64, !dbg !4988
  %cond36 = select i1 %tobool35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), !dbg !4988
  %31 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !4989
  %bt878_mem37 = getelementptr inbounds %struct.bt878, %struct.bt878* %31, i32 0, i32 10, !dbg !4989
  %32 = load i8*, i8** %bt878_mem37, align 8, !dbg !4989
  %add.ptr38 = getelementptr i8, i8* %32, i64 288, !dbg !4989
  %call39 = call i32 @readl(i8* %add.ptr38) #6, !dbg !4989
  %call40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i64 0, i64 0), i32 %24, i8* %cond30, i8* %cond33, i8* %cond36, i32 %call39) #5, !dbg !4990
  br label %if.end41, !dbg !4991

if.end41:                                         ; preds = %if.then26, %if.then24
  br label %if.end42, !dbg !4992

if.end42:                                         ; preds = %if.end41, %if.end21
  %33 = load i32, i32* %astat, align 4, !dbg !4993
  %and43 = and i32 %33, 28672, !dbg !4995
  %tobool44 = icmp ne i32 %and43, 0, !dbg !4995
  br i1 %tobool44, label %if.then45, label %if.end63, !dbg !4996

if.then45:                                        ; preds = %if.end42
  %34 = load i32, i32* @bt878_verbose, align 4, !dbg !4997
  %tobool46 = icmp ne i32 %34, 0, !dbg !4997
  br i1 %tobool46, label %if.then47, label %if.end62, !dbg !5000

if.then47:                                        ; preds = %if.then45
  %35 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !5001
  %nr48 = getelementptr inbounds %struct.bt878, %struct.bt878* %35, i32 0, i32 1, !dbg !5003
  %36 = load i32, i32* %nr48, align 8, !dbg !5003
  %37 = load i32, i32* %astat, align 4, !dbg !5004
  %and49 = and i32 %37, 16384, !dbg !5005
  %tobool50 = icmp ne i32 %and49, 0, !dbg !5006
  %38 = zext i1 %tobool50 to i64, !dbg !5006
  %cond51 = select i1 %tobool50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), !dbg !5006
  %39 = load i32, i32* %astat, align 4, !dbg !5007
  %and52 = and i32 %39, 8192, !dbg !5008
  %tobool53 = icmp ne i32 %and52, 0, !dbg !5009
  %40 = zext i1 %tobool53 to i64, !dbg !5009
  %cond54 = select i1 %tobool53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), !dbg !5009
  %41 = load i32, i32* %astat, align 4, !dbg !5010
  %and55 = and i32 %41, 4096, !dbg !5011
  %tobool56 = icmp ne i32 %and55, 0, !dbg !5012
  %42 = zext i1 %tobool56 to i64, !dbg !5012
  %cond57 = select i1 %tobool56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), !dbg !5012
  %43 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !5013
  %bt878_mem58 = getelementptr inbounds %struct.bt878, %struct.bt878* %43, i32 0, i32 10, !dbg !5013
  %44 = load i8*, i8** %bt878_mem58, align 8, !dbg !5013
  %add.ptr59 = getelementptr i8, i8* %44, i64 288, !dbg !5013
  %call60 = call i32 @readl(i8* %add.ptr59) #6, !dbg !5013
  %call61 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i64 0, i64 0), i32 %36, i8* %cond51, i8* %cond54, i8* %cond57, i32 %call60) #5, !dbg !5014
  br label %if.end62, !dbg !5015

if.end62:                                         ; preds = %if.then47, %if.then45
  br label %if.end63, !dbg !5016

if.end63:                                         ; preds = %if.end62, %if.end42
  %45 = load i32, i32* %astat, align 4, !dbg !5017
  %and64 = and i32 %45, 2048, !dbg !5019
  %tobool65 = icmp ne i32 %and64, 0, !dbg !5019
  br i1 %tobool65, label %if.then66, label %if.end68, !dbg !5020

if.then66:                                        ; preds = %if.end63
  %46 = load i32, i32* %stat, align 4, !dbg !5021
  %and67 = and i32 %46, -268435456, !dbg !5023
  %shr = lshr i32 %and67, 28, !dbg !5024
  %47 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !5025
  %finished_block = getelementptr inbounds %struct.bt878, %struct.bt878* %47, i32 0, i32 11, !dbg !5026
  store volatile i32 %shr, i32* %finished_block, align 8, !dbg !5027
  %48 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !5028
  %tasklet = getelementptr inbounds %struct.bt878, %struct.bt878* %48, i32 0, i32 24, !dbg !5029
  call void @tasklet_schedule(%struct.tasklet_struct* %tasklet) #6, !dbg !5030
  br label %while.end, !dbg !5031

if.end68:                                         ; preds = %if.end63
  %49 = load i32, i32* %count, align 4, !dbg !5032
  %inc = add i32 %49, 1, !dbg !5032
  store i32 %inc, i32* %count, align 4, !dbg !5032
  %50 = load i32, i32* %count, align 4, !dbg !5033
  %cmp = icmp sgt i32 %50, 20, !dbg !5035
  br i1 %cmp, label %if.then69, label %if.end74, !dbg !5036

if.then69:                                        ; preds = %if.end68
  %51 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !5037
  %bt878_mem70 = getelementptr inbounds %struct.bt878, %struct.bt878* %51, i32 0, i32 10, !dbg !5037
  %52 = load i8*, i8** %bt878_mem70, align 8, !dbg !5037
  %add.ptr71 = getelementptr i8, i8* %52, i64 260, !dbg !5037
  call void @writel(i32 0, i8* %add.ptr71) #6, !dbg !5037
  %53 = load %struct.bt878*, %struct.bt878** %bt, align 8, !dbg !5039
  %nr72 = getelementptr inbounds %struct.bt878, %struct.bt878* %53, i32 0, i32 1, !dbg !5040
  %54 = load i32, i32* %nr72, align 8, !dbg !5040
  %call73 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.37, i64 0, i64 0), i32 %54) #5, !dbg !5041
  br label %while.end, !dbg !5042

if.end74:                                         ; preds = %if.end68
  br label %while.body, !dbg !4934, !llvm.loop !5043

while.end:                                        ; preds = %if.then69, %if.then66
  store i32 1, i32* %retval, align 4, !dbg !5045
  br label %return, !dbg !5045

return:                                           ; preds = %while.end, %if.then
  %55 = load i32, i32* %retval, align 4, !dbg !5046
  ret i32 %55, !dbg !5046
}

; Function Attrs: noredzone
declare dso_local void @pci_set_master(%struct.pci_dev*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci_set_drvdata(%struct.pci_dev* %pdev, i8* %data) #0 !dbg !5047 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5050, metadata !DIExpression()), !dbg !5051
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5052, metadata !DIExpression()), !dbg !5053
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5054
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !5055
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5056
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #6, !dbg !5057
  ret void, !dbg !5058
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bt878_mem_alloc(%struct.bt878* %bt) #0 !dbg !5059 {
entry:
  %retval = alloca i32, align 4
  %bt.addr = alloca %struct.bt878*, align 8
  store %struct.bt878* %bt, %struct.bt878** %bt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bt878** %bt.addr, metadata !5062, metadata !DIExpression()), !dbg !5063
  %0 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5064
  %buf_cpu = getelementptr inbounds %struct.bt878, %struct.bt878* %0, i32 0, i32 18, !dbg !5066
  %1 = load i8*, i8** %buf_cpu, align 8, !dbg !5066
  %tobool = icmp ne i8* %1, null, !dbg !5064
  br i1 %tobool, label %if.end6, label %if.then, !dbg !5067

if.then:                                          ; preds = %entry
  %2 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5068
  %buf_size = getelementptr inbounds %struct.bt878, %struct.bt878* %2, i32 0, i32 17, !dbg !5070
  store i32 131072, i32* %buf_size, align 8, !dbg !5071
  %3 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5072
  %dev = getelementptr inbounds %struct.bt878, %struct.bt878* %3, i32 0, i32 4, !dbg !5073
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5073
  %5 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5074
  %buf_size1 = getelementptr inbounds %struct.bt878, %struct.bt878* %5, i32 0, i32 17, !dbg !5075
  %6 = load i32, i32* %buf_size1, align 8, !dbg !5075
  %conv = zext i32 %6 to i64, !dbg !5074
  %7 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5076
  %buf_dma = getelementptr inbounds %struct.bt878, %struct.bt878* %7, i32 0, i32 19, !dbg !5077
  %call = call i8* @pci_zalloc_consistent(%struct.pci_dev* %4, i64 %conv, i64* %buf_dma) #6, !dbg !5078
  %8 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5079
  %buf_cpu2 = getelementptr inbounds %struct.bt878, %struct.bt878* %8, i32 0, i32 18, !dbg !5080
  store i8* %call, i8** %buf_cpu2, align 8, !dbg !5081
  %9 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5082
  %buf_cpu3 = getelementptr inbounds %struct.bt878, %struct.bt878* %9, i32 0, i32 18, !dbg !5084
  %10 = load i8*, i8** %buf_cpu3, align 8, !dbg !5084
  %tobool4 = icmp ne i8* %10, null, !dbg !5082
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !5085

if.then5:                                         ; preds = %if.then
  store i32 -12, i32* %retval, align 4, !dbg !5086
  br label %return, !dbg !5086

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !5087

if.end6:                                          ; preds = %if.end, %entry
  %11 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5088
  %risc_cpu = getelementptr inbounds %struct.bt878, %struct.bt878* %11, i32 0, i32 21, !dbg !5090
  %12 = load i32*, i32** %risc_cpu, align 8, !dbg !5090
  %tobool7 = icmp ne i32* %12, null, !dbg !5088
  br i1 %tobool7, label %if.end18, label %if.then8, !dbg !5091

if.then8:                                         ; preds = %if.end6
  %13 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5092
  %risc_size = getelementptr inbounds %struct.bt878, %struct.bt878* %13, i32 0, i32 20, !dbg !5094
  store i32 4096, i32* %risc_size, align 8, !dbg !5095
  %14 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5096
  %dev9 = getelementptr inbounds %struct.bt878, %struct.bt878* %14, i32 0, i32 4, !dbg !5097
  %15 = load %struct.pci_dev*, %struct.pci_dev** %dev9, align 8, !dbg !5097
  %16 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5098
  %risc_size10 = getelementptr inbounds %struct.bt878, %struct.bt878* %16, i32 0, i32 20, !dbg !5099
  %17 = load i32, i32* %risc_size10, align 8, !dbg !5099
  %conv11 = zext i32 %17 to i64, !dbg !5098
  %18 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5100
  %risc_dma = getelementptr inbounds %struct.bt878, %struct.bt878* %18, i32 0, i32 22, !dbg !5101
  %call12 = call i8* @pci_zalloc_consistent(%struct.pci_dev* %15, i64 %conv11, i64* %risc_dma) #6, !dbg !5102
  %19 = bitcast i8* %call12 to i32*, !dbg !5102
  %20 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5103
  %risc_cpu13 = getelementptr inbounds %struct.bt878, %struct.bt878* %20, i32 0, i32 21, !dbg !5104
  store i32* %19, i32** %risc_cpu13, align 8, !dbg !5105
  %21 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5106
  %risc_cpu14 = getelementptr inbounds %struct.bt878, %struct.bt878* %21, i32 0, i32 21, !dbg !5108
  %22 = load i32*, i32** %risc_cpu14, align 8, !dbg !5108
  %tobool15 = icmp ne i32* %22, null, !dbg !5106
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !5109

if.then16:                                        ; preds = %if.then8
  %23 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5110
  call void @bt878_mem_free(%struct.bt878* %23) #6, !dbg !5112
  store i32 -12, i32* %retval, align 4, !dbg !5113
  br label %return, !dbg !5113

if.end17:                                         ; preds = %if.then8
  br label %if.end18, !dbg !5114

if.end18:                                         ; preds = %if.end17, %if.end6
  store i32 0, i32* %retval, align 4, !dbg !5115
  br label %return, !dbg !5115

return:                                           ; preds = %if.end18, %if.then16, %if.then5
  %24 = load i32, i32* %retval, align 4, !dbg !5116
  ret i32 %24, !dbg !5116
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bt878_make_risc(%struct.bt878* %bt) #0 !dbg !5117 {
entry:
  %retval = alloca i32, align 4
  %bt.addr = alloca %struct.bt878*, align 8
  store %struct.bt878* %bt, %struct.bt878** %bt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bt878** %bt.addr, metadata !5118, metadata !DIExpression()), !dbg !5119
  %0 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5120
  %buf_size = getelementptr inbounds %struct.bt878, %struct.bt878* %0, i32 0, i32 17, !dbg !5121
  %1 = load i32, i32* %buf_size, align 8, !dbg !5121
  %shr = lshr i32 %1, 4, !dbg !5122
  %2 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5123
  %block_bytes = getelementptr inbounds %struct.bt878, %struct.bt878* %2, i32 0, i32 14, !dbg !5124
  store i32 %shr, i32* %block_bytes, align 4, !dbg !5125
  %3 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5126
  %block_count = getelementptr inbounds %struct.bt878, %struct.bt878* %3, i32 0, i32 13, !dbg !5127
  store i32 16, i32* %block_count, align 8, !dbg !5128
  %4 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5129
  %block_bytes1 = getelementptr inbounds %struct.bt878, %struct.bt878* %4, i32 0, i32 14, !dbg !5130
  %5 = load i32, i32* %block_bytes1, align 4, !dbg !5130
  %6 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5131
  %line_bytes = getelementptr inbounds %struct.bt878, %struct.bt878* %6, i32 0, i32 15, !dbg !5132
  store i32 %5, i32* %line_bytes, align 8, !dbg !5133
  %7 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5134
  %block_count2 = getelementptr inbounds %struct.bt878, %struct.bt878* %7, i32 0, i32 13, !dbg !5135
  %8 = load i32, i32* %block_count2, align 8, !dbg !5135
  %9 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5136
  %line_count = getelementptr inbounds %struct.bt878, %struct.bt878* %9, i32 0, i32 16, !dbg !5137
  store i32 %8, i32* %line_count, align 4, !dbg !5138
  br label %while.cond, !dbg !5139

while.cond:                                       ; preds = %while.body, %entry
  %10 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5140
  %line_bytes3 = getelementptr inbounds %struct.bt878, %struct.bt878* %10, i32 0, i32 15, !dbg !5141
  %11 = load i32, i32* %line_bytes3, align 8, !dbg !5141
  %cmp = icmp ugt i32 %11, 4095, !dbg !5142
  br i1 %cmp, label %while.body, label %while.end, !dbg !5139

while.body:                                       ; preds = %while.cond
  %12 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5143
  %line_bytes4 = getelementptr inbounds %struct.bt878, %struct.bt878* %12, i32 0, i32 15, !dbg !5145
  %13 = load i32, i32* %line_bytes4, align 8, !dbg !5146
  %shr5 = lshr i32 %13, 1, !dbg !5146
  store i32 %shr5, i32* %line_bytes4, align 8, !dbg !5146
  %14 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5147
  %line_count6 = getelementptr inbounds %struct.bt878, %struct.bt878* %14, i32 0, i32 16, !dbg !5148
  %15 = load i32, i32* %line_count6, align 4, !dbg !5149
  %shl = shl i32 %15, 1, !dbg !5149
  store i32 %shl, i32* %line_count6, align 4, !dbg !5149
  br label %while.cond, !dbg !5139, !llvm.loop !5150

while.end:                                        ; preds = %while.cond
  %16 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5152
  %line_count7 = getelementptr inbounds %struct.bt878, %struct.bt878* %16, i32 0, i32 16, !dbg !5154
  %17 = load i32, i32* %line_count7, align 4, !dbg !5154
  %cmp8 = icmp ugt i32 %17, 255, !dbg !5155
  br i1 %cmp8, label %if.then, label %if.end, !dbg !5156

if.then:                                          ; preds = %while.end
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i64 0, i64 0)) #5, !dbg !5157
  store i32 -22, i32* %retval, align 4, !dbg !5159
  br label %return, !dbg !5159

if.end:                                           ; preds = %while.end
  store i32 0, i32* %retval, align 4, !dbg !5160
  br label %return, !dbg !5160

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !5161
  ret i32 %18, !dbg !5161
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i8* @free_irq(i32, i8*) #3

; Function Attrs: noredzone
declare dso_local void @__release_region(%struct.resource*, i64, i64) #3

; Function Attrs: noredzone
declare dso_local void @pci_disable_device(%struct.pci_dev*) #3

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tasklet_schedule(%struct.tasklet_struct* %t) #0 !dbg !5162 {
entry:
  %t.addr = alloca %struct.tasklet_struct*, align 8
  store %struct.tasklet_struct* %t, %struct.tasklet_struct** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tasklet_struct** %t.addr, metadata !5163, metadata !DIExpression()), !dbg !5164
  %0 = load %struct.tasklet_struct*, %struct.tasklet_struct** %t.addr, align 8, !dbg !5165
  %state = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %0, i32 0, i32 1, !dbg !5167
  %call = call zeroext i1 @test_and_set_bit(i64 0, i64* %state) #6, !dbg !5168
  br i1 %call, label %if.end, label %if.then, !dbg !5169

if.then:                                          ; preds = %entry
  %1 = load %struct.tasklet_struct*, %struct.tasklet_struct** %t.addr, align 8, !dbg !5170
  call void @__tasklet_schedule(%struct.tasklet_struct* %1) #6, !dbg !5171
  br label %if.end, !dbg !5171

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5172
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_set_bit(i64 %nr, i64* %addr) #0 !dbg !5173 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5179, metadata !DIExpression()), !dbg !5182
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5184, metadata !DIExpression()), !dbg !5185
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !5186, metadata !DIExpression()), !dbg !5188
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5189, metadata !DIExpression()), !dbg !5194
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5196, metadata !DIExpression()), !dbg !5197
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5198, metadata !DIExpression()), !dbg !5199
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5200, metadata !DIExpression()), !dbg !5201
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5202
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5203
  %div = sdiv i64 %1, 64, !dbg !5203
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5204
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5202
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5205
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5206
  %conv.i = trunc i64 %4 to i32, !dbg !5206
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #8, !dbg !5207
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5208
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5208
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #8, !dbg !5208
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5209
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5210
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !5188
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !5188
  %11 = call i8 asm sideeffect " btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #7, !dbg !5188, !srcloc !5211
  store i8 %11, i8* %c.i, align 1, !dbg !5188
  %12 = load i8, i8* %c.i, align 1, !dbg !5188
  %tobool.i = trunc i8 %12 to i1, !dbg !5188
  %frombool.i = zext i1 %tobool.i to i8, !dbg !5188
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !5188
  %13 = load i8, i8* %tmp.i, align 1, !dbg !5188
  %tobool1.i = trunc i8 %13 to i1, !dbg !5188
  ret i1 %tobool1.i, !dbg !5212
}

; Function Attrs: noredzone
declare dso_local void @__tasklet_schedule(%struct.tasklet_struct*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5213 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5217, metadata !DIExpression()), !dbg !5218
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5219, metadata !DIExpression()), !dbg !5220
  ret i1 true, !dbg !5221
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5222 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5226, metadata !DIExpression()), !dbg !5227
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5228, metadata !DIExpression()), !dbg !5229
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5230, metadata !DIExpression()), !dbg !5231
  ret void, !dbg !5232
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !5233 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5236, metadata !DIExpression()), !dbg !5237
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5238, metadata !DIExpression()), !dbg !5239
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5240
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5241
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5242
  store i8* %0, i8** %driver_data, align 8, !dbg !5243
  ret void, !dbg !5244
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_zalloc_consistent(%struct.pci_dev* %hwdev, i64 %size, i64* %dma_handle) #0 !dbg !5245 {
entry:
  %hwdev.addr = alloca %struct.pci_dev*, align 8
  %size.addr = alloca i64, align 8
  %dma_handle.addr = alloca i64*, align 8
  store %struct.pci_dev* %hwdev, %struct.pci_dev** %hwdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %hwdev.addr, metadata !5250, metadata !DIExpression()), !dbg !5251
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5252, metadata !DIExpression()), !dbg !5253
  store i64* %dma_handle, i64** %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dma_handle.addr, metadata !5254, metadata !DIExpression()), !dbg !5255
  %0 = load %struct.pci_dev*, %struct.pci_dev** %hwdev.addr, align 8, !dbg !5256
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !5257
  %1 = load i64, i64* %size.addr, align 8, !dbg !5258
  %2 = load i64*, i64** %dma_handle.addr, align 8, !dbg !5259
  %call = call i8* @dma_alloc_coherent(%struct.device* %dev, i64 %1, i64* %2, i32 2592) #6, !dbg !5260
  ret i8* %call, !dbg !5261
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bt878_mem_free(%struct.bt878* %bt) #0 !dbg !5262 {
entry:
  %bt.addr = alloca %struct.bt878*, align 8
  store %struct.bt878* %bt, %struct.bt878** %bt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bt878** %bt.addr, metadata !5263, metadata !DIExpression()), !dbg !5264
  %0 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5265
  %buf_cpu = getelementptr inbounds %struct.bt878, %struct.bt878* %0, i32 0, i32 18, !dbg !5267
  %1 = load i8*, i8** %buf_cpu, align 8, !dbg !5267
  %tobool = icmp ne i8* %1, null, !dbg !5265
  br i1 %tobool, label %if.then, label %if.end, !dbg !5268

if.then:                                          ; preds = %entry
  %2 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5269
  %dev = getelementptr inbounds %struct.bt878, %struct.bt878* %2, i32 0, i32 4, !dbg !5271
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5271
  %4 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5272
  %buf_size = getelementptr inbounds %struct.bt878, %struct.bt878* %4, i32 0, i32 17, !dbg !5273
  %5 = load i32, i32* %buf_size, align 8, !dbg !5273
  %conv = zext i32 %5 to i64, !dbg !5272
  %6 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5274
  %buf_cpu1 = getelementptr inbounds %struct.bt878, %struct.bt878* %6, i32 0, i32 18, !dbg !5275
  %7 = load i8*, i8** %buf_cpu1, align 8, !dbg !5275
  %8 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5276
  %buf_dma = getelementptr inbounds %struct.bt878, %struct.bt878* %8, i32 0, i32 19, !dbg !5277
  %9 = load i64, i64* %buf_dma, align 8, !dbg !5277
  call void @pci_free_consistent(%struct.pci_dev* %3, i64 %conv, i8* %7, i64 %9) #6, !dbg !5278
  %10 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5279
  %buf_cpu2 = getelementptr inbounds %struct.bt878, %struct.bt878* %10, i32 0, i32 18, !dbg !5280
  store i8* null, i8** %buf_cpu2, align 8, !dbg !5281
  br label %if.end, !dbg !5282

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5283
  %risc_cpu = getelementptr inbounds %struct.bt878, %struct.bt878* %11, i32 0, i32 21, !dbg !5285
  %12 = load i32*, i32** %risc_cpu, align 8, !dbg !5285
  %tobool3 = icmp ne i32* %12, null, !dbg !5283
  br i1 %tobool3, label %if.then4, label %if.end9, !dbg !5286

if.then4:                                         ; preds = %if.end
  %13 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5287
  %dev5 = getelementptr inbounds %struct.bt878, %struct.bt878* %13, i32 0, i32 4, !dbg !5289
  %14 = load %struct.pci_dev*, %struct.pci_dev** %dev5, align 8, !dbg !5289
  %15 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5290
  %risc_size = getelementptr inbounds %struct.bt878, %struct.bt878* %15, i32 0, i32 20, !dbg !5291
  %16 = load i32, i32* %risc_size, align 8, !dbg !5291
  %conv6 = zext i32 %16 to i64, !dbg !5290
  %17 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5292
  %risc_cpu7 = getelementptr inbounds %struct.bt878, %struct.bt878* %17, i32 0, i32 21, !dbg !5293
  %18 = load i32*, i32** %risc_cpu7, align 8, !dbg !5293
  %19 = bitcast i32* %18 to i8*, !dbg !5292
  %20 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5294
  %risc_dma = getelementptr inbounds %struct.bt878, %struct.bt878* %20, i32 0, i32 22, !dbg !5295
  %21 = load i64, i64* %risc_dma, align 8, !dbg !5295
  call void @pci_free_consistent(%struct.pci_dev* %14, i64 %conv6, i8* %19, i64 %21) #6, !dbg !5296
  %22 = load %struct.bt878*, %struct.bt878** %bt.addr, align 8, !dbg !5297
  %risc_cpu8 = getelementptr inbounds %struct.bt878, %struct.bt878* %22, i32 0, i32 21, !dbg !5298
  store i32* null, i32** %risc_cpu8, align 8, !dbg !5299
  br label %if.end9, !dbg !5300

if.end9:                                          ; preds = %if.then4, %if.end
  ret void, !dbg !5301
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dma_alloc_coherent(%struct.device* %dev, i64 %size, i64* %dma_handle, i32 %gfp) #0 !dbg !5302 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %dma_handle.addr = alloca i64*, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5306, metadata !DIExpression()), !dbg !5307
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5308, metadata !DIExpression()), !dbg !5309
  store i64* %dma_handle, i64** %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dma_handle.addr, metadata !5310, metadata !DIExpression()), !dbg !5311
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !5312, metadata !DIExpression()), !dbg !5313
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5314
  %1 = load i64, i64* %size.addr, align 8, !dbg !5315
  %2 = load i64*, i64** %dma_handle.addr, align 8, !dbg !5316
  %3 = load i32, i32* %gfp.addr, align 4, !dbg !5317
  %4 = load i32, i32* %gfp.addr, align 4, !dbg !5318
  %and = and i32 %4, 8192, !dbg !5319
  %tobool = icmp ne i32 %and, 0, !dbg !5320
  %5 = zext i1 %tobool to i64, !dbg !5320
  %cond = select i1 %tobool, i64 256, i64 0, !dbg !5320
  %call = call i8* @dma_alloc_attrs(%struct.device* %0, i64 %1, i64* %2, i32 %3, i64 %cond) #6, !dbg !5321
  ret i8* %call, !dbg !5322
}

; Function Attrs: noredzone
declare dso_local i8* @dma_alloc_attrs(%struct.device*, i64, i64*, i32, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci_free_consistent(%struct.pci_dev* %hwdev, i64 %size, i8* %vaddr, i64 %dma_handle) #0 !dbg !5323 {
entry:
  %hwdev.addr = alloca %struct.pci_dev*, align 8
  %size.addr = alloca i64, align 8
  %vaddr.addr = alloca i8*, align 8
  %dma_handle.addr = alloca i64, align 8
  store %struct.pci_dev* %hwdev, %struct.pci_dev** %hwdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %hwdev.addr, metadata !5326, metadata !DIExpression()), !dbg !5327
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5328, metadata !DIExpression()), !dbg !5329
  store i8* %vaddr, i8** %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %vaddr.addr, metadata !5330, metadata !DIExpression()), !dbg !5331
  store i64 %dma_handle, i64* %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_handle.addr, metadata !5332, metadata !DIExpression()), !dbg !5333
  %0 = load %struct.pci_dev*, %struct.pci_dev** %hwdev.addr, align 8, !dbg !5334
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !5335
  %1 = load i64, i64* %size.addr, align 8, !dbg !5336
  %2 = load i8*, i8** %vaddr.addr, align 8, !dbg !5337
  %3 = load i64, i64* %dma_handle.addr, align 8, !dbg !5338
  call void @dma_free_coherent(%struct.device* %dev, i64 %1, i8* %2, i64 %3) #6, !dbg !5339
  ret void, !dbg !5340
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_free_coherent(%struct.device* %dev, i64 %size, i8* %cpu_addr, i64 %dma_handle) #0 !dbg !5341 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %cpu_addr.addr = alloca i8*, align 8
  %dma_handle.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5344, metadata !DIExpression()), !dbg !5345
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5346, metadata !DIExpression()), !dbg !5347
  store i8* %cpu_addr, i8** %cpu_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cpu_addr.addr, metadata !5348, metadata !DIExpression()), !dbg !5349
  store i64 %dma_handle, i64* %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_handle.addr, metadata !5350, metadata !DIExpression()), !dbg !5351
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5352
  %1 = load i64, i64* %size.addr, align 8, !dbg !5353
  %2 = load i8*, i8** %cpu_addr.addr, align 8, !dbg !5354
  %3 = load i64, i64* %dma_handle.addr, align 8, !dbg !5355
  call void @dma_free_attrs(%struct.device* %0, i64 %1, i8* %2, i64 %3, i64 0) #6, !dbg !5356
  ret void, !dbg !5357
}

; Function Attrs: noredzone
declare dso_local void @dma_free_attrs(%struct.device*, i64, i8*, i64, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_get_drvdata(%struct.pci_dev* %pdev) #0 !dbg !5358 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5361, metadata !DIExpression()), !dbg !5362
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5363
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !5364
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #6, !dbg !5365
  ret i8* %call, !dbg !5366
}

; Function Attrs: noredzone
declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #3

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !5367 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5370, metadata !DIExpression()), !dbg !5371
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5372
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5373
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5373
  ret i8* %1, !dbg !5374
}

; Function Attrs: noredzone
declare dso_local i32 @__pci_register_driver(%struct.pci_driver*, %struct.module*, i8*) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noredzone }
attributes #6 = { noredzone }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4428, !4429, !4430, !4431}
!llvm.ident = !{!4432}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_verbose", scope: !2, file: !3, line: 39, type: !4425, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !123, globals: !4316, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/pci/bt8xx/bt878.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !26, !34, !40, !47, !54, !60, !66, !72, !79, !87, !93, !107, !113, !118}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !12, line: 54, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !18, line: 296, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21, !22, !23, !24, !25}
!20 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!23 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!24 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!25 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !27, line: 9, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!30 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!31 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!32 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!33 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !35, line: 26, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !38, !39}
!37 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!39 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !41, line: 15, baseType: !7, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!42 = !{!43, !44, !45, !46}
!43 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!44 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!45 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!46 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !48, line: 59, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!49 = !{!50, !51, !52, !53}
!50 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!51 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!52 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!53 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !55, line: 546, baseType: !7, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!56 = !{!57, !58, !59}
!57 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!58 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!59 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !61, line: 16, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !64, !65}
!63 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!64 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !108, line: 11, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112}
!110 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !114, line: 651, baseType: !7, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!115 = !{!116, !117}
!116 = !DIEnumerator(name: "TASKLET_STATE_SCHED", value: 0, isUnsigned: true)
!117 = !DIEnumerator(name: "TASKLET_STATE_RUN", value: 1, isUnsigned: true)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !119, line: 10, baseType: !7, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!120 = !{!121, !122}
!121 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!123 = !{!124, !126, !128, !130, !131, !134, !510, !184}
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !125, line: 31, baseType: !126)
!125 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !127, line: 27, baseType: !7)
!127 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!133 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bt878", file: !136, line: 94, size: 1664, elements: !137)
!136 = !DIFile(filename: "drivers/media/pci/bt8xx/bt878.h", directory: "/home/lizy2001/genbc/linux")
!137 = !{!138, !176, !177, !178, !3997, !4271, !4272, !4273, !4274, !4275, !4276, !4279, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4289, !4290, !4291, !4293, !4294, !4295, !4315}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "gpio_lock", scope: !135, file: !136, line: 95, baseType: !139, size: 192)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !140, line: 53, size: 192, elements: !141)
!140 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!141 = !{!142, !154, !170}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !139, file: !140, line: 54, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !144, line: 13, baseType: !145)
!144 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !146, line: 175, baseType: !147)
!146 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 173, size: 64, elements: !148)
!148 = !{!149}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !147, file: !146, line: 174, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !151, line: 22, baseType: !152)
!151 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !127, line: 30, baseType: !153)
!153 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !139, file: !140, line: 55, baseType: !155, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !156, line: 83, baseType: !157)
!156 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !156, line: 71, elements: !158)
!158 = !{!159}
!159 = !DIDerivedType(tag: DW_TAG_member, scope: !157, file: !156, line: 72, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !157, file: !156, line: 72, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !160, file: !156, line: 73, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !156, line: 20, elements: !164)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !163, file: !156, line: 21, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !167, line: 25, baseType: !168)
!167 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !167, line: 25, elements: !169)
!169 = !{}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !139, file: !140, line: 59, baseType: !171, size: 128, offset: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !146, line: 178, size: 128, elements: !172)
!172 = !{!173, !175}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !171, file: !146, line: 179, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !171, file: !146, line: 179, baseType: !174, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !135, file: !136, line: 96, baseType: !7, size: 32, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "bttv_nr", scope: !135, file: !136, line: 97, baseType: !7, size: 32, offset: 224)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !135, file: !136, line: 98, baseType: !179, size: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !181, line: 695, size: 7552, elements: !182)
!181 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!182 = !{!183, !187, !188, !233, !234, !248, !3390, !3391, !3392, !3393, !3944, !3945, !3946, !3950, !3951, !3952, !3953, !3985, !3996}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !180, file: !181, line: 696, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !186, line: 76, flags: DIFlagFwdDecl)
!186 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!187 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !180, file: !181, line: 697, baseType: !7, size: 32, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !180, file: !181, line: 698, baseType: !189, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !181, line: 519, size: 320, elements: !192)
!192 = !{!193, !211, !212, !227, !228}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !191, file: !181, line: 529, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!197, !179, !198, !197}
!197 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !200, line: 69, size: 128, elements: !201)
!200 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!201 = !{!202, !205, !206, !207}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !199, file: !200, line: 70, baseType: !203, size: 16)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !127, line: 24, baseType: !204)
!204 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !199, file: !200, line: 71, baseType: !203, size: 16, offset: 16)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !199, file: !200, line: 84, baseType: !203, size: 16, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !199, file: !200, line: 85, baseType: !208, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !127, line: 21, baseType: !210)
!210 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !191, file: !181, line: 531, baseType: !194, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !191, file: !181, line: 533, baseType: !213, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!197, !179, !216, !204, !133, !217, !197, !218}
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !151, line: 19, baseType: !203)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !151, line: 17, baseType: !209)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !200, line: 135, size: 272, elements: !220)
!220 = !{!221, !222, !223}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !219, file: !200, line: 136, baseType: !209, size: 8)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !219, file: !200, line: 137, baseType: !203, size: 16)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !219, file: !200, line: 138, baseType: !224, size: 272)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 272, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 34)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !191, file: !181, line: 536, baseType: !213, size: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !191, file: !181, line: 541, baseType: !229, size: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!232, !179}
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !151, line: 21, baseType: !126)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !180, file: !181, line: 699, baseType: !130, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !180, file: !181, line: 702, baseType: !235, size: 64, offset: 256)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !181, line: 557, size: 192, elements: !238)
!238 = !{!239, !243, !247}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !237, file: !181, line: 558, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !179, !7}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !237, file: !181, line: 559, baseType: !244, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!197, !179, !7}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !237, file: !181, line: 560, baseType: !240, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !180, file: !181, line: 703, baseType: !249, size: 192, offset: 320)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !250, line: 30, size: 192, elements: !251)
!250 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!251 = !{!252, !254, !270}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !249, file: !250, line: 31, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !156, line: 29, baseType: !163)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !249, file: !250, line: 32, baseType: !255, size: 128)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !256, line: 125, size: 128, elements: !257)
!256 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!257 = !{!258, !269}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !255, file: !256, line: 126, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !256, line: 31, size: 64, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !259, file: !256, line: 32, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !256, line: 24, size: 192, align: 64, elements: !264)
!264 = !{!265, !267, !268}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !263, file: !256, line: 25, baseType: !266, size: 64)
!266 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !263, file: !256, line: 26, baseType: !262, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !263, file: !256, line: 27, baseType: !262, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !255, file: !256, line: 127, baseType: !262, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !249, file: !250, line: 33, baseType: !271, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !273, line: 640, size: 48640, elements: !274)
!273 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!274 = !{!275, !281, !284, !285, !295, !296, !297, !298, !299, !300, !301, !302, !306, !327, !338, !427, !428, !429, !440, !441, !443, !444, !2692, !2693, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2775, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2790, !2791, !2792, !2794, !2795, !2796, !2797, !2798, !2799, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2823, !2828, !2829, !2830, !2831, !2832, !2834, !2837, !2840, !2843, !2846, !2850, !2951, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2997, !2998, !2999, !3000, !3001, !3006, !3007, !3008, !3011, !3012, !3015, !3018, !3021, !3022, !3054, !3057, !3058, !3137, !3138, !3141, !3142, !3145, !3146, !3147, !3151, !3152, !3153, !3166, !3167, !3168, !3178, !3183, !3184, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !272, file: !273, line: 646, baseType: !276, size: 128)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !277, line: 56, size: 128, elements: !278)
!277 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!278 = !{!279, !280}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !276, file: !277, line: 57, baseType: !266, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !276, file: !277, line: 58, baseType: !232, size: 32, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !272, file: !273, line: 649, baseType: !282, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !283)
!283 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !272, file: !273, line: 657, baseType: !130, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !272, file: !273, line: 658, baseType: !286, size: 32, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !287, line: 113, baseType: !288)
!287 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !287, line: 111, size: 32, elements: !289)
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !288, file: !287, line: 112, baseType: !291, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !146, line: 168, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 166, size: 32, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !292, file: !146, line: 167, baseType: !197, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !272, file: !273, line: 660, baseType: !7, size: 32, offset: 288)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !272, file: !273, line: 661, baseType: !7, size: 32, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !272, file: !273, line: 684, baseType: !197, size: 32, offset: 352)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !272, file: !273, line: 686, baseType: !197, size: 32, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !272, file: !273, line: 687, baseType: !197, size: 32, offset: 416)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !272, file: !273, line: 688, baseType: !197, size: 32, offset: 448)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !272, file: !273, line: 689, baseType: !7, size: 32, offset: 480)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !272, file: !273, line: 691, baseType: !303, size: 64, offset: 512)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !273, line: 691, flags: DIFlagFwdDecl)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !272, file: !273, line: 692, baseType: !307, size: 832, offset: 576)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !273, line: 451, size: 832, elements: !308)
!308 = !{!309, !314, !315, !316, !317, !321, !322, !323, !324, !325}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !307, file: !273, line: 453, baseType: !310, size: 128)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !273, line: 325, size: 128, elements: !311)
!311 = !{!312, !313}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !310, file: !273, line: 326, baseType: !266, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !310, file: !273, line: 327, baseType: !232, size: 32, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !307, file: !273, line: 454, baseType: !263, size: 192, align: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !307, file: !273, line: 455, baseType: !171, size: 128, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !307, file: !273, line: 456, baseType: !7, size: 32, offset: 448)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !307, file: !273, line: 458, baseType: !318, size: 64, offset: 512)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !151, line: 23, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !127, line: 31, baseType: !320)
!320 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !307, file: !273, line: 459, baseType: !318, size: 64, offset: 576)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !307, file: !273, line: 460, baseType: !318, size: 64, offset: 640)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !307, file: !273, line: 461, baseType: !318, size: 64, offset: 704)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !307, file: !273, line: 463, baseType: !318, size: 64, offset: 768)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !307, file: !273, line: 465, baseType: !326, offset: 832)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !273, line: 415, elements: !169)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !272, file: !273, line: 693, baseType: !328, size: 384, offset: 1408)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !273, line: 489, size: 384, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !328, file: !273, line: 490, baseType: !171, size: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !328, file: !273, line: 491, baseType: !266, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !328, file: !273, line: 492, baseType: !266, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !328, file: !273, line: 493, baseType: !7, size: 32, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !328, file: !273, line: 494, baseType: !204, size: 16, offset: 288)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !328, file: !273, line: 495, baseType: !204, size: 16, offset: 304)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !328, file: !273, line: 497, baseType: !337, size: 64, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !272, file: !273, line: 697, baseType: !339, size: 1792, offset: 1792)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !273, line: 507, size: 1792, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !424, !425}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !339, file: !273, line: 508, baseType: !263, size: 192, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !339, file: !273, line: 515, baseType: !318, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !339, file: !273, line: 516, baseType: !318, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !339, file: !273, line: 517, baseType: !318, size: 64, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !339, file: !273, line: 518, baseType: !318, size: 64, offset: 384)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !339, file: !273, line: 519, baseType: !318, size: 64, offset: 448)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !339, file: !273, line: 526, baseType: !150, size: 64, offset: 512)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !339, file: !273, line: 527, baseType: !318, size: 64, offset: 576)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !339, file: !273, line: 528, baseType: !7, size: 32, offset: 640)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !339, file: !273, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !339, file: !273, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !339, file: !273, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !339, file: !273, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !339, file: !273, line: 563, baseType: !355, size: 512, offset: 704)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !356)
!356 = !{!357, !365, !366, !371, !420, !421, !422, !423}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !355, file: !6, line: 119, baseType: !358, size: 256)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !359, line: 9, size: 256, elements: !360)
!359 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!360 = !{!361, !362}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !358, file: !359, line: 10, baseType: !263, size: 192, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !358, file: !359, line: 11, baseType: !363, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !364, line: 29, baseType: !150)
!364 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !355, file: !6, line: 120, baseType: !363, size: 64, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !355, file: !6, line: 121, baseType: !367, size: 64, offset: 320)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!5, !370}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !355, file: !6, line: 122, baseType: !372, size: 64, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !374)
!374 = !{!375, !395, !396, !400, !410, !411, !415, !419}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !373, file: !6, line: 160, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !377, file: !6, line: 215, baseType: !253)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !377, file: !6, line: 216, baseType: !7, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !377, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !377, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !377, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !377, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !377, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !377, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !377, file: !6, line: 233, baseType: !363, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !377, file: !6, line: 234, baseType: !370, size: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !377, file: !6, line: 235, baseType: !363, size: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !377, file: !6, line: 236, baseType: !370, size: 64, offset: 320)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !377, file: !6, line: 237, baseType: !392, size: 4096, offset: 512)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 4096, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 8)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !373, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !373, file: !6, line: 162, baseType: !397, size: 32, offset: 96)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !146, line: 27, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !399, line: 96, baseType: !197)
!399 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!400 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !373, file: !6, line: 163, baseType: !401, size: 32, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !402, line: 276, baseType: !403)
!402 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !402, line: 276, size: 32, elements: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !403, file: !402, line: 276, baseType: !406, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !402, line: 70, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !402, line: 65, size: 32, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !407, file: !402, line: 66, baseType: !7, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !373, file: !6, line: 164, baseType: !370, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !373, file: !6, line: 165, baseType: !412, size: 128, offset: 256)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !359, line: 14, size: 128, elements: !413)
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !412, file: !359, line: 15, baseType: !255, size: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !373, file: !6, line: 166, baseType: !416, size: 64, offset: 384)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!363}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !373, file: !6, line: 167, baseType: !363, size: 64, offset: 448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !355, file: !6, line: 123, baseType: !217, size: 8, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !355, file: !6, line: 124, baseType: !217, size: 8, offset: 456)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !355, file: !6, line: 125, baseType: !217, size: 8, offset: 464)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !355, file: !6, line: 126, baseType: !217, size: 8, offset: 472)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !339, file: !273, line: 572, baseType: !355, size: 512, offset: 1216)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !339, file: !273, line: 580, baseType: !426, size: 64, offset: 1728)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !272, file: !273, line: 721, baseType: !7, size: 32, offset: 3584)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !272, file: !273, line: 722, baseType: !197, size: 32, offset: 3616)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !272, file: !273, line: 723, baseType: !430, size: 64, offset: 3648)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !433, line: 17, baseType: !434)
!433 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !433, line: 17, size: 64, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !434, file: !433, line: 17, baseType: !437, size: 64)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 64, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 1)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !272, file: !273, line: 724, baseType: !432, size: 64, offset: 3712)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !272, file: !273, line: 749, baseType: !442, offset: 3776)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !273, line: 290, elements: !169)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !272, file: !273, line: 751, baseType: !171, size: 128, offset: 3776)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !272, file: !273, line: 757, baseType: !445, size: 64, offset: 3904)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !447, line: 388, size: 7296, elements: !448)
!447 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!448 = !{!449, !2688}
!449 = !DIDerivedType(tag: DW_TAG_member, scope: !446, file: !447, line: 389, baseType: !450, size: 7296)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !446, file: !447, line: 389, size: 7296, elements: !451)
!451 = !{!452, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2611, !2617, !2620, !2659, !2660, !2672, !2673, !2676, !2677, !2678, !2681, !2682, !2683, !2686, !2687}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !450, file: !447, line: 390, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !447, line: 305, size: 1472, elements: !455)
!455 = !{!456, !457, !458, !459, !460, !461, !462, !463, !471, !472, !477, !478, !481, !2557, !2558, !2559, !2560, !2561}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !454, file: !447, line: 308, baseType: !266, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !454, file: !447, line: 309, baseType: !266, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !454, file: !447, line: 313, baseType: !453, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !454, file: !447, line: 313, baseType: !453, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !454, file: !447, line: 315, baseType: !263, size: 192, align: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !454, file: !447, line: 323, baseType: !266, size: 64, offset: 448)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !454, file: !447, line: 327, baseType: !445, size: 64, offset: 512)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !454, file: !447, line: 333, baseType: !464, size: 64, offset: 576)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !465, line: 284, baseType: !466)
!465 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !465, line: 284, size: 64, elements: !467)
!467 = !{!468}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !466, file: !465, line: 284, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !470, line: 19, baseType: !266)
!470 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!471 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !454, file: !447, line: 334, baseType: !266, size: 64, offset: 640)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !454, file: !447, line: 343, baseType: !473, size: 256, offset: 704)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !454, file: !447, line: 340, size: 256, elements: !474)
!474 = !{!475, !476}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !473, file: !447, line: 341, baseType: !263, size: 192, align: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !473, file: !447, line: 342, baseType: !266, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !454, file: !447, line: 351, baseType: !171, size: 128, offset: 960)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !454, file: !447, line: 353, baseType: !479, size: 64, offset: 1088)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !447, line: 353, flags: DIFlagFwdDecl)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !454, file: !447, line: 356, baseType: !482, size: 64, offset: 1152)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !55, line: 557, size: 832, elements: !485)
!485 = !{!486, !490, !491, !495, !499, !2531, !2535, !2539, !2543, !2544, !2545, !2549, !2553}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !484, file: !55, line: 558, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !453}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !484, file: !55, line: 559, baseType: !487, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !484, file: !55, line: 560, baseType: !492, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!197, !453, !266}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !484, file: !55, line: 561, baseType: !496, size: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!197, !453}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !484, file: !55, line: 562, baseType: !500, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !447, line: 682, baseType: !7)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !55, line: 508, size: 768, elements: !506)
!506 = !{!507, !508, !509, !511, !512, !513, !520, !527, !533, !2525, !2526, !2528, !2530}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !505, file: !55, line: 509, baseType: !453, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !505, file: !55, line: 510, baseType: !7, size: 32, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !505, file: !55, line: 511, baseType: !510, size: 32, offset: 96)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !146, line: 148, baseType: !7)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !505, file: !55, line: 512, baseType: !266, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !505, file: !55, line: 513, baseType: !266, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !505, file: !55, line: 514, baseType: !514, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !465, line: 385, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !465, line: 385, size: 64, elements: !517)
!517 = !{!518}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !516, file: !465, line: 385, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !470, line: 15, baseType: !266)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !505, file: !55, line: 516, baseType: !521, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !465, line: 359, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !465, line: 359, size: 64, elements: !524)
!524 = !{!525}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !523, file: !465, line: 359, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !470, line: 16, baseType: !266)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !505, file: !55, line: 519, baseType: !528, size: 64, offset: 384)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !470, line: 21, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !470, line: 21, size: 64, elements: !530)
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !529, file: !470, line: 21, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !470, line: 14, baseType: !266)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !505, file: !55, line: 521, baseType: !534, size: 64, offset: 448)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !447, line: 68, size: 512, align: 128, elements: !536)
!536 = !{!537, !538, !2517, !2524}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !535, file: !447, line: 69, baseType: !266, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, scope: !535, file: !447, line: 77, baseType: !539, size: 320, offset: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !535, file: !447, line: 77, size: 320, elements: !540)
!540 = !{!541, !2378, !2383, !2411, !2419, !2425, !2438, !2516}
!541 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !447, line: 78, baseType: !542, size: 320)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !539, file: !447, line: 78, size: 320, elements: !543)
!543 = !{!544, !545, !2376, !2377}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !542, file: !447, line: 84, baseType: !171, size: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !542, file: !447, line: 86, baseType: !546, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !18, line: 451, size: 1216, align: 64, elements: !548)
!548 = !{!549, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2371, !2372, !2373, !2374, !2375}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !547, file: !18, line: 452, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !18, line: 610, size: 4224, elements: !552)
!552 = !{!553, !555, !556, !564, !571, !572, !1887, !1888, !1889, !1890, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1931, !1939, !1940, !1941, !2265, !2266, !2267, !2268}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !551, file: !18, line: 611, baseType: !554, size: 16)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !146, line: 19, baseType: !204)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !551, file: !18, line: 612, baseType: !204, size: 16, offset: 16)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !551, file: !18, line: 613, baseType: !557, size: 32, offset: 32)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !558, line: 23, baseType: !559)
!558 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !558, line: 21, size: 32, elements: !560)
!560 = !{!561}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !559, file: !558, line: 22, baseType: !562, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !146, line: 32, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !399, line: 49, baseType: !7)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !551, file: !18, line: 614, baseType: !565, size: 32, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !558, line: 28, baseType: !566)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !558, line: 26, size: 32, elements: !567)
!567 = !{!568}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !566, file: !558, line: 27, baseType: !569, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !146, line: 33, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !399, line: 50, baseType: !7)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !551, file: !18, line: 615, baseType: !7, size: 32, offset: 96)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !551, file: !18, line: 622, baseType: !573, size: 64, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !18, line: 1864, size: 1536, align: 512, elements: !576)
!576 = !{!577, !1240, !1253, !1257, !1263, !1267, !1271, !1275, !1279, !1283, !1287, !1288, !1292, !1296, !1837, !1863, !1867, !1873, !1878, !1882, !1883}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !575, file: !18, line: 1865, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!581, !550, !581, !7}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !583, line: 89, size: 1536, elements: !584)
!583 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!584 = !{!585, !586, !591, !599, !600, !615, !616, !620, !632, !703, !1224, !1225, !1226, !1232, !1233, !1234}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !582, file: !583, line: 91, baseType: !7, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !582, file: !583, line: 92, baseType: !587, size: 32, offset: 32)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !402, line: 277, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !402, line: 277, size: 32, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !588, file: !402, line: 277, baseType: !406, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !582, file: !583, line: 93, baseType: !592, size: 128, offset: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !593, line: 38, size: 128, elements: !594)
!593 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!594 = !{!595, !597}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !592, file: !593, line: 39, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !592, file: !593, line: 39, baseType: !598, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !582, file: !583, line: 94, baseType: !581, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !582, file: !583, line: 95, baseType: !601, size: 128, offset: 256)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !583, line: 47, size: 128, elements: !602)
!602 = !{!603, !612}
!603 = !DIDerivedType(tag: DW_TAG_member, scope: !601, file: !583, line: 48, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !601, file: !583, line: 48, size: 64, elements: !605)
!605 = !{!606, !611}
!606 = !DIDerivedType(tag: DW_TAG_member, scope: !604, file: !583, line: 49, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !604, file: !583, line: 49, size: 64, elements: !608)
!608 = !{!609, !610}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !607, file: !583, line: 50, baseType: !232, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !607, file: !583, line: 50, baseType: !232, size: 32, offset: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !604, file: !583, line: 52, baseType: !318, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !601, file: !583, line: 54, baseType: !613, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !582, file: !583, line: 96, baseType: !550, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !582, file: !583, line: 98, baseType: !617, size: 256, offset: 448)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 256, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !582, file: !583, line: 101, baseType: !621, size: 32, offset: 704)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !622, line: 25, size: 32, elements: !623)
!622 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !622, line: 26, baseType: !625, size: 32)
!625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !622, line: 26, size: 32, elements: !626)
!626 = !{!627}
!627 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !622, line: 30, baseType: !628, size: 32)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !622, line: 30, size: 32, elements: !629)
!629 = !{!630, !631}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !628, file: !622, line: 31, baseType: !155)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !628, file: !622, line: 32, baseType: !197, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !582, file: !583, line: 102, baseType: !633, size: 64, offset: 768)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !635)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !583, line: 135, size: 1024, align: 512, elements: !636)
!636 = !{!637, !641, !642, !649, !655, !659, !663, !667, !668, !672, !677, !689, !697}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !635, file: !583, line: 136, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!197, !581, !7}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !635, file: !583, line: 137, baseType: !638, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !635, file: !583, line: 138, baseType: !643, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!197, !646, !648}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !582)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !635, file: !583, line: 139, baseType: !650, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!197, !646, !7, !131, !653}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !601)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !635, file: !583, line: 141, baseType: !656, size: 64, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!197, !646}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !635, file: !583, line: 142, baseType: !660, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!197, !581}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !635, file: !583, line: 143, baseType: !664, size: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !581}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !635, file: !583, line: 144, baseType: !664, size: 64, offset: 448)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !635, file: !583, line: 145, baseType: !669, size: 64, offset: 512)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !581, !550}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !635, file: !583, line: 146, baseType: !673, size: 64, offset: 576)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!676, !581, !676, !197}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !635, file: !583, line: 147, baseType: !678, size: 64, offset: 640)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!681, !683}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !583, line: 18, flags: DIFlagFwdDecl)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !685, line: 8, size: 128, elements: !686)
!685 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!686 = !{!687, !688}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !684, file: !685, line: 9, baseType: !681, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !684, file: !685, line: 10, baseType: !581, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !635, file: !583, line: 148, baseType: !690, size: 64, offset: 704)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!197, !693, !695}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !684)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !146, line: 30, baseType: !696)
!696 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !635, file: !583, line: 149, baseType: !698, size: 64, offset: 768)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!581, !581, !701}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !582, file: !583, line: 103, baseType: !704, size: 64, offset: 832)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !18, line: 1416, size: 9472, elements: !706)
!706 = !{!707, !708, !711, !712, !713, !716, !765, !847, !931, !1014, !1018, !1019, !1020, !1021, !1022, !1030, !1031, !1032, !1037, !1041, !1042, !1045, !1048, !1051, !1052, !1053, !1094, !1135, !1136, !1137, !1138, !1139, !1140, !1143, !1145, !1154, !1155, !1157, !1158, !1159, !1160, !1161, !1176, !1177, !1178, !1179, !1182, !1186, !1187, !1190, !1205, !1206, !1207, !1218, !1219, !1220, !1221, !1222, !1223}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !705, file: !18, line: 1417, baseType: !171, size: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !705, file: !18, line: 1418, baseType: !709, size: 32, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !146, line: 16, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !146, line: 13, baseType: !232)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !705, file: !18, line: 1419, baseType: !210, size: 8, offset: 160)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !705, file: !18, line: 1420, baseType: !266, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !705, file: !18, line: 1421, baseType: !714, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !146, line: 46, baseType: !715)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !399, line: 88, baseType: !153)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !705, file: !18, line: 1422, baseType: !717, size: 64, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !18, line: 2228, size: 576, elements: !719)
!719 = !{!720, !721, !722, !729, !733, !737, !741, !742, !743, !753, !756, !757, !758, !762, !763, !764}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !718, file: !18, line: 2229, baseType: !131, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !718, file: !18, line: 2230, baseType: !197, size: 32, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !718, file: !18, line: 2238, baseType: !723, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!197, !726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !728, line: 28, flags: DIFlagFwdDecl)
!728 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!729 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !718, file: !18, line: 2239, baseType: !730, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !18, line: 70, flags: DIFlagFwdDecl)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !718, file: !18, line: 2240, baseType: !734, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!581, !717, !197, !131, !130}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !718, file: !18, line: 2242, baseType: !738, size: 64, offset: 320)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !704}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !718, file: !18, line: 2243, baseType: !184, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !18, line: 2244, baseType: !717, size: 64, offset: 448)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !718, file: !18, line: 2245, baseType: !744, size: 64, offset: 512)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !146, line: 182, size: 64, elements: !745)
!745 = !{!746}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !744, file: !146, line: 183, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !146, line: 186, size: 128, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !748, file: !146, line: 187, baseType: !747, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !748, file: !146, line: 187, baseType: !752, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !718, file: !18, line: 2247, baseType: !754, offset: 576)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !755, line: 187, elements: !169)
!755 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!756 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !718, file: !18, line: 2248, baseType: !754, offset: 576)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !718, file: !18, line: 2249, baseType: !754, offset: 576)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !718, file: !18, line: 2250, baseType: !759, offset: 576)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !754, elements: !760)
!760 = !{!761}
!761 = !DISubrange(count: 3)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !718, file: !18, line: 2252, baseType: !754, offset: 576)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !718, file: !18, line: 2253, baseType: !754, offset: 576)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !718, file: !18, line: 2254, baseType: !754, offset: 576)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !705, file: !18, line: 1423, baseType: !766, size: 64, offset: 384)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !18, line: 1935, size: 1472, elements: !769)
!769 = !{!770, !774, !778, !779, !783, !789, !793, !794, !795, !799, !803, !804, !805, !806, !812, !817, !818, !824, !825, !826, !827, !831, !846}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !768, file: !18, line: 1936, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!550, !704}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !768, file: !18, line: 1937, baseType: !775, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !550}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !768, file: !18, line: 1938, baseType: !775, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !768, file: !18, line: 1940, baseType: !780, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !550, !197}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !768, file: !18, line: 1941, baseType: !784, size: 64, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!197, !550, !787}
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !55, line: 40, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !768, file: !18, line: 1942, baseType: !790, size: 64, offset: 320)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!197, !550}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !768, file: !18, line: 1943, baseType: !775, size: 64, offset: 384)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !768, file: !18, line: 1944, baseType: !738, size: 64, offset: 448)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !768, file: !18, line: 1945, baseType: !796, size: 64, offset: 512)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!197, !704, !197}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !768, file: !18, line: 1946, baseType: !800, size: 64, offset: 576)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!197, !704}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !768, file: !18, line: 1947, baseType: !800, size: 64, offset: 640)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !768, file: !18, line: 1948, baseType: !800, size: 64, offset: 704)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !768, file: !18, line: 1949, baseType: !800, size: 64, offset: 768)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !768, file: !18, line: 1950, baseType: !807, size: 64, offset: 832)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!197, !581, !810}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !18, line: 57, flags: DIFlagFwdDecl)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !768, file: !18, line: 1951, baseType: !813, size: 64, offset: 896)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!197, !704, !816, !676}
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !768, file: !18, line: 1952, baseType: !738, size: 64, offset: 960)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !768, file: !18, line: 1954, baseType: !819, size: 64, offset: 1024)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!197, !822, !581}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !465, line: 539, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !768, file: !18, line: 1955, baseType: !819, size: 64, offset: 1088)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !768, file: !18, line: 1956, baseType: !819, size: 64, offset: 1152)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !768, file: !18, line: 1957, baseType: !819, size: 64, offset: 1216)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !768, file: !18, line: 1963, baseType: !828, size: 64, offset: 1280)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!197, !704, !534, !510}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !768, file: !18, line: 1964, baseType: !832, size: 64, offset: 1344)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!283, !704, !835}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !837, line: 12, size: 256, elements: !838)
!837 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!838 = !{!839, !840, !841, !842, !843}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !836, file: !837, line: 13, baseType: !510, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !836, file: !837, line: 16, baseType: !197, size: 32, offset: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !836, file: !837, line: 23, baseType: !266, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !836, file: !837, line: 30, baseType: !266, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !836, file: !837, line: 33, baseType: !844, size: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !447, line: 27, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !768, file: !18, line: 1966, baseType: !832, size: 64, offset: 1408)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !705, file: !18, line: 1424, baseType: !848, size: 64, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !850)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !12, line: 322, size: 704, elements: !851)
!851 = !{!852, !900, !904, !908, !909, !910, !911, !912, !917, !922, !926}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !850, file: !12, line: 323, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!197, !856}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !12, line: 294, size: 1600, elements: !858)
!858 = !{!859, !860, !861, !862, !863, !864, !865, !866, !867, !883, !884, !885}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !857, file: !12, line: 295, baseType: !748, size: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !857, file: !12, line: 296, baseType: !171, size: 128, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !857, file: !12, line: 297, baseType: !171, size: 128, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !857, file: !12, line: 298, baseType: !171, size: 128, offset: 384)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !857, file: !12, line: 299, baseType: !139, size: 192, offset: 512)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !857, file: !12, line: 300, baseType: !155, offset: 704)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !857, file: !12, line: 301, baseType: !291, size: 32, offset: 704)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !857, file: !12, line: 302, baseType: !704, size: 64, offset: 768)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !857, file: !12, line: 303, baseType: !868, size: 64, offset: 832)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !12, line: 68, size: 64, elements: !869)
!869 = !{!870, !882}
!870 = !DIDerivedType(tag: DW_TAG_member, scope: !868, file: !12, line: 69, baseType: !871, size: 32)
!871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !868, file: !12, line: 69, size: 32, elements: !872)
!872 = !{!873, !874, !875}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !871, file: !12, line: 70, baseType: !557, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !871, file: !12, line: 71, baseType: !565, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !871, file: !12, line: 72, baseType: !876, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !877, line: 24, baseType: !878)
!877 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !877, line: 22, size: 32, elements: !879)
!879 = !{!880}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !878, file: !877, line: 23, baseType: !881, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !877, line: 20, baseType: !563)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !868, file: !12, line: 74, baseType: !11, size: 32, offset: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !857, file: !12, line: 304, baseType: !714, size: 64, offset: 896)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !857, file: !12, line: 305, baseType: !266, size: 64, offset: 960)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !857, file: !12, line: 306, baseType: !886, size: 576, offset: 1024)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !12, line: 205, size: 576, elements: !887)
!887 = !{!888, !890, !891, !892, !893, !894, !895, !896, !899}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !886, file: !12, line: 206, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !12, line: 66, baseType: !153)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !886, file: !12, line: 207, baseType: !889, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !886, file: !12, line: 208, baseType: !889, size: 64, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !886, file: !12, line: 209, baseType: !889, size: 64, offset: 192)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !886, file: !12, line: 210, baseType: !889, size: 64, offset: 256)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !886, file: !12, line: 211, baseType: !889, size: 64, offset: 320)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !886, file: !12, line: 212, baseType: !889, size: 64, offset: 384)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !886, file: !12, line: 213, baseType: !897, size: 64, offset: 448)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !898, line: 8, baseType: !152)
!898 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!899 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !886, file: !12, line: 214, baseType: !897, size: 64, offset: 512)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !850, file: !12, line: 324, baseType: !901, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!856, !704, !197}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !850, file: !12, line: 325, baseType: !905, size: 64, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !856}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !850, file: !12, line: 326, baseType: !853, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !850, file: !12, line: 327, baseType: !853, size: 64, offset: 256)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !850, file: !12, line: 328, baseType: !853, size: 64, offset: 320)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !850, file: !12, line: 329, baseType: !796, size: 64, offset: 384)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !850, file: !12, line: 332, baseType: !913, size: 64, offset: 448)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!916, !550}
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !850, file: !12, line: 333, baseType: !918, size: 64, offset: 512)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!197, !550, !921}
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !850, file: !12, line: 335, baseType: !923, size: 64, offset: 576)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!197, !550, !916}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !850, file: !12, line: 337, baseType: !927, size: 64, offset: 640)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!197, !704, !930}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !705, file: !18, line: 1425, baseType: !932, size: 64, offset: 512)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !934)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !12, line: 428, size: 704, elements: !935)
!935 = !{!936, !940, !941, !945, !946, !947, !962, !985, !989, !990, !1013}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !934, file: !12, line: 429, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!197, !704, !197, !197, !693}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !934, file: !12, line: 430, baseType: !796, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !934, file: !12, line: 431, baseType: !942, size: 64, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!197, !704, !7}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !934, file: !12, line: 432, baseType: !942, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !934, file: !12, line: 433, baseType: !796, size: 64, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !934, file: !12, line: 434, baseType: !948, size: 64, offset: 320)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!197, !704, !197, !951}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !12, line: 415, size: 256, elements: !953)
!953 = !{!954, !955, !956, !957, !958, !959, !960, !961}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !952, file: !12, line: 416, baseType: !197, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !952, file: !12, line: 417, baseType: !7, size: 32, offset: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !952, file: !12, line: 418, baseType: !7, size: 32, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !952, file: !12, line: 420, baseType: !7, size: 32, offset: 96)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !952, file: !12, line: 421, baseType: !7, size: 32, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !952, file: !12, line: 422, baseType: !7, size: 32, offset: 160)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !952, file: !12, line: 423, baseType: !7, size: 32, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !952, file: !12, line: 424, baseType: !7, size: 32, offset: 224)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !934, file: !12, line: 435, baseType: !963, size: 64, offset: 384)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!197, !704, !868, !966}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !12, line: 343, size: 960, elements: !968)
!968 = !{!969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !967, file: !12, line: 344, baseType: !197, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !967, file: !12, line: 345, baseType: !318, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !967, file: !12, line: 346, baseType: !318, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !967, file: !12, line: 347, baseType: !318, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !967, file: !12, line: 348, baseType: !318, size: 64, offset: 256)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !967, file: !12, line: 349, baseType: !318, size: 64, offset: 320)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !967, file: !12, line: 350, baseType: !318, size: 64, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !967, file: !12, line: 351, baseType: !150, size: 64, offset: 448)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !967, file: !12, line: 353, baseType: !150, size: 64, offset: 512)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !967, file: !12, line: 354, baseType: !197, size: 32, offset: 576)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !967, file: !12, line: 355, baseType: !197, size: 32, offset: 608)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !967, file: !12, line: 356, baseType: !318, size: 64, offset: 640)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !967, file: !12, line: 357, baseType: !318, size: 64, offset: 704)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !967, file: !12, line: 358, baseType: !318, size: 64, offset: 768)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !967, file: !12, line: 359, baseType: !150, size: 64, offset: 832)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !967, file: !12, line: 360, baseType: !197, size: 32, offset: 896)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !934, file: !12, line: 436, baseType: !986, size: 64, offset: 448)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!197, !704, !930, !966}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !934, file: !12, line: 438, baseType: !963, size: 64, offset: 512)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !934, file: !12, line: 439, baseType: !991, size: 64, offset: 576)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!197, !704, !994}
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !12, line: 409, size: 1408, elements: !996)
!996 = !{!997, !998}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !995, file: !12, line: 410, baseType: !7, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !995, file: !12, line: 411, baseType: !999, size: 1344, offset: 64)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1000, size: 1344, elements: !760)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !12, line: 395, size: 448, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1012}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1000, file: !12, line: 396, baseType: !7, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1000, file: !12, line: 397, baseType: !7, size: 32, offset: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1000, file: !12, line: 399, baseType: !7, size: 32, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1000, file: !12, line: 400, baseType: !7, size: 32, offset: 96)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1000, file: !12, line: 401, baseType: !7, size: 32, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1000, file: !12, line: 402, baseType: !7, size: 32, offset: 160)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1000, file: !12, line: 403, baseType: !7, size: 32, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1000, file: !12, line: 404, baseType: !320, size: 64, offset: 256)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1000, file: !12, line: 405, baseType: !1011, size: 64, offset: 320)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !146, line: 126, baseType: !318)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1000, file: !12, line: 406, baseType: !1011, size: 64, offset: 384)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !934, file: !12, line: 440, baseType: !942, size: 64, offset: 640)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !705, file: !18, line: 1426, baseType: !1015, size: 64, offset: 576)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1017)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !18, line: 49, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !705, file: !18, line: 1427, baseType: !266, size: 64, offset: 640)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !705, file: !18, line: 1428, baseType: !266, size: 64, offset: 704)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !705, file: !18, line: 1429, baseType: !266, size: 64, offset: 768)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !705, file: !18, line: 1430, baseType: !581, size: 64, offset: 832)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !705, file: !18, line: 1431, baseType: !1023, size: 256, offset: 896)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1024, line: 35, size: 256, elements: !1025)
!1024 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1025 = !{!1026, !1027, !1028, !1029}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1023, file: !1024, line: 36, baseType: !143, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1023, file: !1024, line: 42, baseType: !143, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1023, file: !1024, line: 46, baseType: !253, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1023, file: !1024, line: 47, baseType: !171, size: 128, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !705, file: !18, line: 1432, baseType: !197, size: 32, offset: 1152)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !705, file: !18, line: 1433, baseType: !291, size: 32, offset: 1184)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !705, file: !18, line: 1437, baseType: !1033, size: 64, offset: 1216)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1036)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !18, line: 1437, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !705, file: !18, line: 1449, baseType: !1038, size: 64, offset: 1280)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !593, line: 34, size: 64, elements: !1039)
!1039 = !{!1040}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1038, file: !593, line: 35, baseType: !596, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !705, file: !18, line: 1450, baseType: !171, size: 128, offset: 1344)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !705, file: !18, line: 1451, baseType: !1043, size: 64, offset: 1472)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !18, line: 699, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !705, file: !18, line: 1452, baseType: !1046, size: 64, offset: 1536)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !273, line: 40, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !705, file: !18, line: 1453, baseType: !1049, size: 64, offset: 1600)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !18, line: 1453, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !705, file: !18, line: 1454, baseType: !748, size: 128, offset: 1664)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !705, file: !18, line: 1455, baseType: !7, size: 32, offset: 1792)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !705, file: !18, line: 1456, baseType: !1054, size: 2432, offset: 1856)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !12, line: 518, size: 2432, elements: !1055)
!1055 = !{!1056, !1057, !1058, !1060, !1092}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1054, file: !12, line: 519, baseType: !7, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1054, file: !12, line: 520, baseType: !1023, size: 256, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1054, file: !12, line: 521, baseType: !1059, size: 192, offset: 320)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 192, elements: !760)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1054, file: !12, line: 522, baseType: !1061, size: 1728, offset: 512)
!1061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1062, size: 1728, elements: !760)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !12, line: 222, size: 576, elements: !1063)
!1063 = !{!1064, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1062, file: !12, line: 223, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !12, line: 443, size: 256, elements: !1067)
!1067 = !{!1068, !1069, !1082, !1083}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1066, file: !12, line: 444, baseType: !197, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1066, file: !12, line: 445, baseType: !1070, size: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1072)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !12, line: 310, size: 512, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1072, file: !12, line: 311, baseType: !796, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1072, file: !12, line: 312, baseType: !796, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1072, file: !12, line: 313, baseType: !796, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1072, file: !12, line: 314, baseType: !796, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1072, file: !12, line: 315, baseType: !853, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1072, file: !12, line: 316, baseType: !853, size: 64, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1072, file: !12, line: 317, baseType: !853, size: 64, offset: 384)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1072, file: !12, line: 318, baseType: !927, size: 64, offset: 448)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1066, file: !12, line: 446, baseType: !184, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1066, file: !12, line: 447, baseType: !1065, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1062, file: !12, line: 224, baseType: !197, size: 32, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1062, file: !12, line: 226, baseType: !171, size: 128, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1062, file: !12, line: 227, baseType: !266, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1062, file: !12, line: 228, baseType: !7, size: 32, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1062, file: !12, line: 229, baseType: !7, size: 32, offset: 352)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1062, file: !12, line: 230, baseType: !889, size: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1062, file: !12, line: 231, baseType: !889, size: 64, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1062, file: !12, line: 232, baseType: !130, size: 64, offset: 512)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1054, file: !12, line: 523, baseType: !1093, size: 192, offset: 2240)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1070, size: 192, elements: !760)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !705, file: !18, line: 1458, baseType: !1095, size: 2112, offset: 4288)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !18, line: 1410, size: 2112, elements: !1096)
!1096 = !{!1097, !1098, !1105}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1095, file: !18, line: 1411, baseType: !197, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1095, file: !18, line: 1412, baseType: !1099, size: 128, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1100, line: 40, baseType: !1101)
!1100 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1100, line: 36, size: 128, elements: !1102)
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1101, file: !1100, line: 37, baseType: !155)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1101, file: !1100, line: 38, baseType: !171, size: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1095, file: !18, line: 1413, baseType: !1106, size: 1920, offset: 192)
!1106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1107, size: 1920, elements: !760)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1108, line: 12, size: 640, elements: !1109)
!1108 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1109 = !{!1110, !1126, !1128, !1133, !1134}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1107, file: !1108, line: 13, baseType: !1111, size: 320)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1112, line: 17, size: 320, elements: !1113)
!1112 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1113 = !{!1114, !1115, !1116, !1117}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1111, file: !1112, line: 18, baseType: !197, size: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1111, file: !1112, line: 19, baseType: !197, size: 32, offset: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1111, file: !1112, line: 20, baseType: !1099, size: 128, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1111, file: !1112, line: 22, baseType: !1118, size: 128, align: 64, offset: 192)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !146, line: 216, size: 128, align: 64, elements: !1119)
!1119 = !{!1120, !1122}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1118, file: !146, line: 217, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1118, file: !146, line: 218, baseType: !1123, size: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null, !1121}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1107, file: !1108, line: 14, baseType: !1127, size: 64, offset: 320)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1107, file: !1108, line: 15, baseType: !1129, size: 64, offset: 384)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1130, line: 16, size: 64, elements: !1131)
!1130 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1131 = !{!1132}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1129, file: !1130, line: 17, baseType: !271, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1107, file: !1108, line: 16, baseType: !1099, size: 128, offset: 448)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1107, file: !1108, line: 17, baseType: !291, size: 32, offset: 576)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !705, file: !18, line: 1465, baseType: !130, size: 64, offset: 6400)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !705, file: !18, line: 1468, baseType: !232, size: 32, offset: 6464)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !705, file: !18, line: 1470, baseType: !897, size: 64, offset: 6528)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !705, file: !18, line: 1471, baseType: !897, size: 64, offset: 6592)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !705, file: !18, line: 1473, baseType: !126, size: 32, offset: 6656)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !705, file: !18, line: 1474, baseType: !1141, size: 64, offset: 6720)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !18, line: 603, flags: DIFlagFwdDecl)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !705, file: !18, line: 1477, baseType: !1144, size: 256, offset: 6784)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 256, elements: !618)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !705, file: !18, line: 1478, baseType: !1146, size: 128, offset: 7040)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1147, line: 18, baseType: !1148)
!1147 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1147, line: 16, size: 128, elements: !1149)
!1149 = !{!1150}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1148, file: !1147, line: 17, baseType: !1151, size: 128)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 128, elements: !1152)
!1152 = !{!1153}
!1153 = !DISubrange(count: 16)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !705, file: !18, line: 1480, baseType: !7, size: 32, offset: 7168)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !705, file: !18, line: 1481, baseType: !1156, size: 32, offset: 7200)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !146, line: 150, baseType: !7)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !705, file: !18, line: 1487, baseType: !139, size: 192, offset: 7232)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !705, file: !18, line: 1493, baseType: !131, size: 64, offset: 7424)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !705, file: !18, line: 1495, baseType: !633, size: 64, offset: 7488)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !705, file: !18, line: 1500, baseType: !197, size: 32, offset: 7552)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !705, file: !18, line: 1502, baseType: !1162, size: 448, offset: 7616)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !837, line: 60, size: 448, elements: !1163)
!1163 = !{!1164, !1169, !1170, !1171, !1172, !1173, !1174}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1162, file: !837, line: 61, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!266, !1168, !835}
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1162, file: !837, line: 63, baseType: !1165, size: 64, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1162, file: !837, line: 66, baseType: !283, size: 64, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1162, file: !837, line: 67, baseType: !197, size: 32, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1162, file: !837, line: 68, baseType: !7, size: 32, offset: 224)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1162, file: !837, line: 71, baseType: !171, size: 128, offset: 256)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1162, file: !837, line: 77, baseType: !1175, size: 64, offset: 384)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !705, file: !18, line: 1505, baseType: !143, size: 64, offset: 8064)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !705, file: !18, line: 1508, baseType: !143, size: 64, offset: 8128)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !705, file: !18, line: 1511, baseType: !197, size: 32, offset: 8192)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !705, file: !18, line: 1514, baseType: !1180, size: 32, offset: 8224)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1181, line: 8, baseType: !232)
!1181 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !705, file: !18, line: 1517, baseType: !1183, size: 64, offset: 8256)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1185, line: 18, flags: DIFlagFwdDecl)
!1185 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !705, file: !18, line: 1518, baseType: !744, size: 64, offset: 8320)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !705, file: !18, line: 1525, baseType: !1188, size: 64, offset: 8384)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !558, line: 18, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !705, file: !18, line: 1532, baseType: !1191, size: 64, offset: 8448)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1192, line: 52, size: 64, elements: !1193)
!1192 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1193 = !{!1194}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1191, file: !1192, line: 53, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1192, line: 40, size: 256, elements: !1197)
!1197 = !{!1198, !1199, !1204}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1196, file: !1192, line: 42, baseType: !155)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1196, file: !1192, line: 44, baseType: !1200, size: 192)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1192, line: 28, size: 192, elements: !1201)
!1201 = !{!1202, !1203}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1200, file: !1192, line: 29, baseType: !171, size: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1200, file: !1192, line: 31, baseType: !283, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1196, file: !1192, line: 49, baseType: !283, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !705, file: !18, line: 1533, baseType: !1191, size: 64, offset: 8512)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !705, file: !18, line: 1534, baseType: !1118, size: 128, align: 64, offset: 8576)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !705, file: !18, line: 1535, baseType: !1208, size: 256, offset: 8704)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1185, line: 102, size: 256, elements: !1209)
!1209 = !{!1210, !1211, !1212}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1208, file: !1185, line: 103, baseType: !143, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1208, file: !1185, line: 104, baseType: !171, size: 128, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1208, file: !1185, line: 105, baseType: !1213, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1185, line: 21, baseType: !1214)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{null, !1217}
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !705, file: !18, line: 1537, baseType: !139, size: 192, offset: 8960)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !705, file: !18, line: 1542, baseType: !197, size: 32, offset: 9152)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !705, file: !18, line: 1545, baseType: !155, offset: 9184)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !705, file: !18, line: 1546, baseType: !171, size: 128, offset: 9216)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !705, file: !18, line: 1548, baseType: !155, offset: 9344)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !705, file: !18, line: 1549, baseType: !171, size: 128, offset: 9344)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !582, file: !583, line: 104, baseType: !266, size: 64, offset: 896)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !582, file: !583, line: 105, baseType: !130, size: 64, offset: 960)
!1226 = !DIDerivedType(tag: DW_TAG_member, scope: !582, file: !583, line: 107, baseType: !1227, size: 128, offset: 1024)
!1227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !582, file: !583, line: 107, size: 128, elements: !1228)
!1228 = !{!1229, !1230}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !1227, file: !583, line: 108, baseType: !171, size: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !1227, file: !583, line: 109, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !582, file: !583, line: 111, baseType: !171, size: 128, offset: 1152)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !582, file: !583, line: 112, baseType: !171, size: 128, offset: 1280)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !582, file: !583, line: 120, baseType: !1235, size: 128, offset: 1408)
!1235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !582, file: !583, line: 116, size: 128, elements: !1236)
!1236 = !{!1237, !1238, !1239}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !1235, file: !583, line: 117, baseType: !748, size: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !1235, file: !583, line: 118, baseType: !592, size: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !1235, file: !583, line: 119, baseType: !1118, size: 128, align: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !575, file: !18, line: 1866, baseType: !1241, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!131, !581, !550, !1244}
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1246, line: 10, size: 128, elements: !1247)
!1246 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!1247 = !{!1248, !1252}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1245, file: !1246, line: 11, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{null, !130}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1245, file: !1246, line: 12, baseType: !130, size: 64, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !575, file: !18, line: 1867, baseType: !1254, size: 64, offset: 128)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!197, !550, !197}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !575, file: !18, line: 1868, baseType: !1258, size: 64, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!1261, !550, !197}
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !18, line: 581, flags: DIFlagFwdDecl)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !575, file: !18, line: 1870, baseType: !1264, size: 64, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!197, !581, !676, !197}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !575, file: !18, line: 1872, baseType: !1268, size: 64, offset: 320)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!197, !550, !581, !554, !695}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !575, file: !18, line: 1873, baseType: !1272, size: 64, offset: 384)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!197, !581, !550, !581}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !575, file: !18, line: 1874, baseType: !1276, size: 64, offset: 448)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!197, !550, !581}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !575, file: !18, line: 1875, baseType: !1280, size: 64, offset: 512)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!197, !550, !581, !131}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !575, file: !18, line: 1876, baseType: !1284, size: 64, offset: 576)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!197, !550, !581, !554}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !575, file: !18, line: 1877, baseType: !1276, size: 64, offset: 640)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !575, file: !18, line: 1878, baseType: !1289, size: 64, offset: 704)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!197, !550, !581, !554, !709}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !575, file: !18, line: 1879, baseType: !1293, size: 64, offset: 768)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!197, !550, !581, !550, !581, !7}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !575, file: !18, line: 1881, baseType: !1297, size: 64, offset: 832)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!197, !581, !1300}
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !18, line: 219, size: 640, elements: !1302)
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1308, !1313, !1314, !1315}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1301, file: !18, line: 220, baseType: !7, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1301, file: !18, line: 221, baseType: !554, size: 16, offset: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1301, file: !18, line: 222, baseType: !557, size: 32, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1301, file: !18, line: 223, baseType: !565, size: 32, offset: 96)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1301, file: !18, line: 224, baseType: !714, size: 64, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1301, file: !18, line: 225, baseType: !1309, size: 128, offset: 192)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !898, line: 13, size: 128, elements: !1310)
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1309, file: !898, line: 14, baseType: !897, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1309, file: !898, line: 15, baseType: !283, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1301, file: !18, line: 226, baseType: !1309, size: 128, offset: 320)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1301, file: !18, line: 227, baseType: !1309, size: 128, offset: 448)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1301, file: !18, line: 234, baseType: !1316, size: 64, offset: 576)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !18, line: 916, size: 1856, align: 32, elements: !1318)
!1318 = !{!1319, !1329, !1330, !1331, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1635, !1821, !1830, !1831, !1832, !1833, !1834, !1835, !1836}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !1317, file: !18, line: 920, baseType: !1320, size: 128)
!1320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1317, file: !18, line: 917, size: 128, elements: !1321)
!1321 = !{!1322, !1328}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !1320, file: !18, line: 918, baseType: !1323, size: 64)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1324, line: 58, size: 64, elements: !1325)
!1324 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!1325 = !{!1326}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1323, file: !1324, line: 59, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !1320, file: !18, line: 919, baseType: !1118, size: 128, align: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1317, file: !18, line: 921, baseType: !684, size: 128, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1317, file: !18, line: 922, baseType: !550, size: 64, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1317, file: !18, line: 923, baseType: !1332, size: 64, offset: 320)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1334)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !18, line: 1822, size: 2048, elements: !1335)
!1335 = !{!1336, !1337, !1341, !1352, !1356, !1382, !1383, !1387, !1400, !1401, !1416, !1420, !1421, !1425, !1426, !1430, !1435, !1436, !1440, !1444, !1553, !1557, !1561, !1565, !1566, !1572, !1576, !1581, !1585, !1589, !1593, !1597}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1334, file: !18, line: 1823, baseType: !184, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1334, file: !18, line: 1824, baseType: !1338, size: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!714, !1316, !714, !197}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1334, file: !18, line: 1825, baseType: !1342, size: 64, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!1345, !1316, !676, !1348, !1351}
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !146, line: 60, baseType: !1346)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !399, line: 73, baseType: !1347)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !399, line: 15, baseType: !283)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !146, line: 55, baseType: !1349)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !399, line: 72, baseType: !1350)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !399, line: 16, baseType: !266)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1334, file: !18, line: 1826, baseType: !1353, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!1345, !1316, !131, !1348, !1351}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1334, file: !18, line: 1827, baseType: !1357, size: 64, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!1345, !1360, !1380}
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !18, line: 320, size: 384, elements: !1362)
!1362 = !{!1363, !1364, !1365, !1369, !1370, !1371, !1372, !1373}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1361, file: !18, line: 321, baseType: !1316, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1361, file: !18, line: 326, baseType: !714, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1361, file: !18, line: 327, baseType: !1366, size: 64, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{null, !1360, !283, !283}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1361, file: !18, line: 328, baseType: !130, size: 64, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1361, file: !18, line: 329, baseType: !197, size: 32, offset: 256)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1361, file: !18, line: 330, baseType: !216, size: 16, offset: 288)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1361, file: !18, line: 331, baseType: !216, size: 16, offset: 304)
!1373 = !DIDerivedType(tag: DW_TAG_member, scope: !1361, file: !18, line: 332, baseType: !1374, size: 64, offset: 320)
!1374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1361, file: !18, line: 332, size: 64, elements: !1375)
!1375 = !{!1376, !1377}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1374, file: !18, line: 333, baseType: !7, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1374, file: !18, line: 334, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !18, line: 334, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !18, line: 64, flags: DIFlagFwdDecl)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1334, file: !18, line: 1828, baseType: !1357, size: 64, offset: 320)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1334, file: !18, line: 1829, baseType: !1384, size: 64, offset: 384)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!197, !1360, !695}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1334, file: !18, line: 1830, baseType: !1388, size: 64, offset: 448)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!197, !1316, !1391}
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !18, line: 1776, size: 128, elements: !1393)
!1393 = !{!1394, !1399}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1392, file: !18, line: 1777, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !18, line: 1773, baseType: !1396)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!197, !1391, !131, !197, !714, !318, !7}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1392, file: !18, line: 1778, baseType: !714, size: 64, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1334, file: !18, line: 1831, baseType: !1388, size: 64, offset: 512)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1334, file: !18, line: 1832, baseType: !1402, size: 64, offset: 576)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!1405, !1316, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !125, line: 52, baseType: !7)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1408, line: 43, size: 128, elements: !1409)
!1408 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!1409 = !{!1410, !1415}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1407, file: !1408, line: 44, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1408, line: 37, baseType: !1412)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{null, !1316, !1231, !1406}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1407, file: !1408, line: 45, baseType: !1405, size: 32, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1334, file: !18, line: 1833, baseType: !1417, size: 64, offset: 640)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!283, !1316, !7, !266}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1334, file: !18, line: 1834, baseType: !1417, size: 64, offset: 704)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1334, file: !18, line: 1835, baseType: !1422, size: 64, offset: 768)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!197, !1316, !453}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1334, file: !18, line: 1836, baseType: !266, size: 64, offset: 832)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1334, file: !18, line: 1837, baseType: !1427, size: 64, offset: 896)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!197, !550, !1316}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1334, file: !18, line: 1838, baseType: !1431, size: 64, offset: 960)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!197, !1316, !1434}
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !18, line: 1007, baseType: !130)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1334, file: !18, line: 1839, baseType: !1427, size: 64, offset: 1024)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1334, file: !18, line: 1840, baseType: !1437, size: 64, offset: 1088)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!197, !1316, !714, !714, !197}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1334, file: !18, line: 1841, baseType: !1441, size: 64, offset: 1152)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!197, !197, !1316, !197}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1334, file: !18, line: 1842, baseType: !1445, size: 64, offset: 1216)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!197, !1316, !197, !1448}
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !18, line: 1062, size: 1664, elements: !1450)
!1450 = !{!1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1482, !1483, !1484, !1497, !1529}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1449, file: !18, line: 1063, baseType: !1448, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1449, file: !18, line: 1064, baseType: !171, size: 128, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1449, file: !18, line: 1065, baseType: !748, size: 128, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1449, file: !18, line: 1066, baseType: !171, size: 128, offset: 320)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1449, file: !18, line: 1069, baseType: !171, size: 128, offset: 448)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1449, file: !18, line: 1072, baseType: !1434, size: 64, offset: 576)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1449, file: !18, line: 1073, baseType: !7, size: 32, offset: 640)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1449, file: !18, line: 1074, baseType: !210, size: 8, offset: 672)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1449, file: !18, line: 1075, baseType: !7, size: 32, offset: 704)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1449, file: !18, line: 1076, baseType: !197, size: 32, offset: 736)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1449, file: !18, line: 1077, baseType: !1099, size: 128, offset: 768)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1449, file: !18, line: 1078, baseType: !1316, size: 64, offset: 896)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1449, file: !18, line: 1079, baseType: !714, size: 64, offset: 960)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1449, file: !18, line: 1080, baseType: !714, size: 64, offset: 1024)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1449, file: !18, line: 1082, baseType: !1466, size: 64, offset: 1088)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !18, line: 1314, size: 320, elements: !1468)
!1468 = !{!1469, !1477, !1478, !1479, !1480, !1481}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1467, file: !18, line: 1315, baseType: !1470)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1471, line: 20, baseType: !1472)
!1471 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1471, line: 11, elements: !1473)
!1473 = !{!1474}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1472, file: !1471, line: 12, baseType: !1475)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !167, line: 33, baseType: !1476)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !167, line: 31, elements: !169)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1467, file: !18, line: 1316, baseType: !197, size: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1467, file: !18, line: 1317, baseType: !197, size: 32, offset: 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1467, file: !18, line: 1318, baseType: !1466, size: 64, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1467, file: !18, line: 1319, baseType: !1316, size: 64, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1467, file: !18, line: 1320, baseType: !1118, size: 128, align: 64, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1449, file: !18, line: 1084, baseType: !266, size: 64, offset: 1152)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1449, file: !18, line: 1085, baseType: !266, size: 64, offset: 1216)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1449, file: !18, line: 1087, baseType: !1485, size: 64, offset: 1280)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1487)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !18, line: 1011, size: 128, elements: !1488)
!1488 = !{!1489, !1493}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1487, file: !18, line: 1012, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{null, !1448, !1448}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1487, file: !18, line: 1013, baseType: !1494, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{null, !1448}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1449, file: !18, line: 1088, baseType: !1498, size: 64, offset: 1344)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1500)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !18, line: 1016, size: 512, elements: !1501)
!1501 = !{!1502, !1506, !1510, !1511, !1515, !1519, !1523, !1528}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1500, file: !18, line: 1017, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!1434, !1434}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1500, file: !18, line: 1018, baseType: !1507, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{null, !1434}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1500, file: !18, line: 1019, baseType: !1494, size: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1500, file: !18, line: 1020, baseType: !1512, size: 64, offset: 192)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!197, !1448, !197}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1500, file: !18, line: 1021, baseType: !1516, size: 64, offset: 256)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!695, !1448}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1500, file: !18, line: 1022, baseType: !1520, size: 64, offset: 320)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!197, !1448, !197, !174}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1500, file: !18, line: 1023, baseType: !1524, size: 64, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{null, !1448, !1527}
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1500, file: !18, line: 1024, baseType: !1516, size: 64, offset: 448)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1449, file: !18, line: 1097, baseType: !1530, size: 256, offset: 1408)
!1530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1449, file: !18, line: 1089, size: 256, elements: !1531)
!1531 = !{!1532, !1541, !1547}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1530, file: !18, line: 1090, baseType: !1533, size: 256)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1534, line: 10, size: 256, elements: !1535)
!1534 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1535 = !{!1536, !1537, !1540}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1533, file: !1534, line: 11, baseType: !232, size: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1533, file: !1534, line: 12, baseType: !1538, size: 64, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1534, line: 5, flags: DIFlagFwdDecl)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1533, file: !1534, line: 13, baseType: !171, size: 128, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1530, file: !18, line: 1091, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1534, line: 17, size: 64, elements: !1543)
!1543 = !{!1544}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1542, file: !1534, line: 18, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1534, line: 16, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1530, file: !18, line: 1096, baseType: !1548, size: 192)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1530, file: !18, line: 1092, size: 192, elements: !1549)
!1549 = !{!1550, !1551, !1552}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1548, file: !18, line: 1093, baseType: !171, size: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1548, file: !18, line: 1094, baseType: !197, size: 32, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1548, file: !18, line: 1095, baseType: !7, size: 32, offset: 160)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1334, file: !18, line: 1843, baseType: !1554, size: 64, offset: 1280)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!1345, !1316, !534, !197, !1348, !1351, !197}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1334, file: !18, line: 1844, baseType: !1558, size: 64, offset: 1344)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!266, !1316, !266, !266, !266, !266}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1334, file: !18, line: 1845, baseType: !1562, size: 64, offset: 1408)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!197, !197}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1334, file: !18, line: 1846, baseType: !1445, size: 64, offset: 1472)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1334, file: !18, line: 1847, baseType: !1567, size: 64, offset: 1536)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!1345, !1570, !1316, !1351, !1348, !7}
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !273, line: 53, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1334, file: !18, line: 1848, baseType: !1573, size: 64, offset: 1600)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!1345, !1316, !1351, !1570, !1348, !7}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1334, file: !18, line: 1849, baseType: !1577, size: 64, offset: 1664)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!197, !1316, !283, !1580, !1527}
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1334, file: !18, line: 1850, baseType: !1582, size: 64, offset: 1728)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!283, !1316, !197, !714, !714}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1334, file: !18, line: 1852, baseType: !1586, size: 64, offset: 1792)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{null, !822, !1316}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1334, file: !18, line: 1856, baseType: !1590, size: 64, offset: 1856)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!1345, !1316, !714, !1316, !714, !1348, !7}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1334, file: !18, line: 1858, baseType: !1594, size: 64, offset: 1920)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!714, !1316, !714, !1316, !714, !714, !7}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1334, file: !18, line: 1861, baseType: !1437, size: 64, offset: 1984)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1317, file: !18, line: 929, baseType: !155, offset: 384)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !1317, file: !18, line: 930, baseType: !17, size: 32, offset: 384)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1317, file: !18, line: 931, baseType: !143, size: 64, offset: 448)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1317, file: !18, line: 932, baseType: !7, size: 32, offset: 512)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1317, file: !18, line: 933, baseType: !1156, size: 32, offset: 544)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1317, file: !18, line: 934, baseType: !139, size: 192, offset: 576)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1317, file: !18, line: 935, baseType: !714, size: 64, offset: 768)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1317, file: !18, line: 936, baseType: !1606, size: 192, offset: 832)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !18, line: 885, size: 192, elements: !1607)
!1607 = !{!1608, !1609, !1631, !1632, !1633, !1634}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1606, file: !18, line: 886, baseType: !1470)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1606, file: !18, line: 887, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !27, line: 59, size: 768, elements: !1612)
!1612 = !{!1613, !1614, !1615, !1616, !1620, !1621, !1622, !1623}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1611, file: !27, line: 61, baseType: !286, size: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1611, file: !27, line: 62, baseType: !7, size: 32, offset: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1611, file: !27, line: 63, baseType: !155, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1611, file: !27, line: 65, baseType: !1617, size: 256, offset: 64)
!1617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !744, size: 256, elements: !1618)
!1618 = !{!1619}
!1619 = !DISubrange(count: 4)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1611, file: !27, line: 66, baseType: !744, size: 64, offset: 320)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1611, file: !27, line: 68, baseType: !1099, size: 128, offset: 384)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1611, file: !27, line: 69, baseType: !1118, size: 128, align: 64, offset: 512)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1611, file: !27, line: 70, baseType: !1624, size: 128, offset: 640)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1625, size: 128, elements: !438)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !27, line: 54, size: 128, elements: !1626)
!1626 = !{!1627, !1628}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1625, file: !27, line: 55, baseType: !197, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1625, file: !27, line: 56, baseType: !1629, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !27, line: 56, flags: DIFlagFwdDecl)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1606, file: !18, line: 888, baseType: !26, size: 32, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1606, file: !18, line: 889, baseType: !557, size: 32, offset: 96)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1606, file: !18, line: 889, baseType: !557, size: 32, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1606, file: !18, line: 890, baseType: !197, size: 32, offset: 160)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1317, file: !18, line: 937, baseType: !1636, size: 64, offset: 1024)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1638)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1639, line: 111, size: 1280, elements: !1640)
!1639 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1640 = !{!1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1660, !1661, !1662, !1663, !1664, !1665, !1776, !1777, !1778, !1779, !1805, !1806, !1816}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1638, file: !1639, line: 112, baseType: !291, size: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1638, file: !1639, line: 120, baseType: !557, size: 32, offset: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1638, file: !1639, line: 121, baseType: !565, size: 32, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1638, file: !1639, line: 122, baseType: !557, size: 32, offset: 96)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1638, file: !1639, line: 123, baseType: !565, size: 32, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1638, file: !1639, line: 124, baseType: !557, size: 32, offset: 160)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1638, file: !1639, line: 125, baseType: !565, size: 32, offset: 192)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1638, file: !1639, line: 126, baseType: !557, size: 32, offset: 224)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1638, file: !1639, line: 127, baseType: !565, size: 32, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1638, file: !1639, line: 128, baseType: !7, size: 32, offset: 288)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1638, file: !1639, line: 129, baseType: !1652, size: 64, offset: 320)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1653, line: 26, baseType: !1654)
!1653 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1653, line: 24, size: 64, elements: !1655)
!1655 = !{!1656}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1654, file: !1653, line: 25, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 64, elements: !1658)
!1658 = !{!1659}
!1659 = !DISubrange(count: 2)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1638, file: !1639, line: 130, baseType: !1652, size: 64, offset: 384)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1638, file: !1639, line: 131, baseType: !1652, size: 64, offset: 448)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1638, file: !1639, line: 132, baseType: !1652, size: 64, offset: 512)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1638, file: !1639, line: 133, baseType: !1652, size: 64, offset: 576)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1638, file: !1639, line: 135, baseType: !210, size: 8, offset: 640)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1638, file: !1639, line: 137, baseType: !1666, size: 64, offset: 704)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1668, line: 189, size: 1664, elements: !1669)
!1668 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1669 = !{!1670, !1671, !1676, !1681, !1682, !1685, !1686, !1691, !1692, !1693, !1694, !1697, !1698, !1699, !1701, !1702, !1740, !1761}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1667, file: !1668, line: 190, baseType: !286, size: 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1667, file: !1668, line: 191, baseType: !1672, size: 32, offset: 32)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1668, line: 28, baseType: !1673)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !146, line: 98, baseType: !1674)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !151, line: 20, baseType: !1675)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !127, line: 26, baseType: !197)
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1667, file: !1668, line: 192, baseType: !1677, size: 192, offset: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1667, file: !1668, line: 192, size: 192, elements: !1678)
!1678 = !{!1679, !1680}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1677, file: !1668, line: 193, baseType: !171, size: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1677, file: !1668, line: 194, baseType: !263, size: 192, align: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1667, file: !1668, line: 199, baseType: !1023, size: 256, offset: 256)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1667, file: !1668, line: 200, baseType: !1683, size: 64, offset: 512)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1668, line: 200, flags: DIFlagFwdDecl)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1667, file: !1668, line: 201, baseType: !130, size: 64, offset: 576)
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1667, file: !1668, line: 202, baseType: !1687, size: 64, offset: 640)
!1687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1667, file: !1668, line: 202, size: 64, elements: !1688)
!1688 = !{!1689, !1690}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1687, file: !1668, line: 203, baseType: !897, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1687, file: !1668, line: 204, baseType: !897, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1667, file: !1668, line: 206, baseType: !897, size: 64, offset: 704)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1667, file: !1668, line: 207, baseType: !557, size: 32, offset: 768)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1667, file: !1668, line: 208, baseType: !565, size: 32, offset: 800)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1667, file: !1668, line: 209, baseType: !1695, size: 32, offset: 832)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1668, line: 31, baseType: !1696)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !146, line: 104, baseType: !232)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1667, file: !1668, line: 210, baseType: !204, size: 16, offset: 864)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1667, file: !1668, line: 211, baseType: !204, size: 16, offset: 880)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1667, file: !1668, line: 215, baseType: !1700, size: 16, offset: 896)
!1700 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1667, file: !1668, line: 222, baseType: !266, size: 64, offset: 960)
!1702 = !DIDerivedType(tag: DW_TAG_member, scope: !1667, file: !1668, line: 239, baseType: !1703, size: 320, offset: 1024)
!1703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1667, file: !1668, line: 239, size: 320, elements: !1704)
!1704 = !{!1705, !1732}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1703, file: !1668, line: 240, baseType: !1706, size: 320)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1668, line: 108, size: 320, elements: !1707)
!1707 = !{!1708, !1709, !1721, !1724, !1731}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1706, file: !1668, line: 110, baseType: !266, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, scope: !1706, file: !1668, line: 111, baseType: !1710, size: 64, offset: 64)
!1710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1706, file: !1668, line: 111, size: 64, elements: !1711)
!1711 = !{!1712, !1720}
!1712 = !DIDerivedType(tag: DW_TAG_member, scope: !1710, file: !1668, line: 112, baseType: !1713, size: 64)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1710, file: !1668, line: 112, size: 64, elements: !1714)
!1714 = !{!1715, !1716}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1713, file: !1668, line: 114, baseType: !216, size: 16)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1713, file: !1668, line: 115, baseType: !1717, size: 48, offset: 16)
!1717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 48, elements: !1718)
!1718 = !{!1719}
!1719 = !DISubrange(count: 6)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1710, file: !1668, line: 121, baseType: !266, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1706, file: !1668, line: 123, baseType: !1722, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1668, line: 96, flags: DIFlagFwdDecl)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1706, file: !1668, line: 124, baseType: !1725, size: 64, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1668, line: 102, size: 192, elements: !1727)
!1727 = !{!1728, !1729, !1730}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1726, file: !1668, line: 103, baseType: !1118, size: 128, align: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1726, file: !1668, line: 104, baseType: !286, size: 32, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1726, file: !1668, line: 105, baseType: !695, size: 8, offset: 160)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1706, file: !1668, line: 125, baseType: !131, size: 64, offset: 256)
!1732 = !DIDerivedType(tag: DW_TAG_member, scope: !1703, file: !1668, line: 241, baseType: !1733, size: 320)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1703, file: !1668, line: 241, size: 320, elements: !1734)
!1734 = !{!1735, !1736, !1737, !1738, !1739}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1733, file: !1668, line: 242, baseType: !266, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1733, file: !1668, line: 243, baseType: !266, size: 64, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1733, file: !1668, line: 244, baseType: !1722, size: 64, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1733, file: !1668, line: 245, baseType: !1725, size: 64, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1733, file: !1668, line: 246, baseType: !676, size: 64, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_member, scope: !1667, file: !1668, line: 254, baseType: !1741, size: 256, offset: 1344)
!1741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1667, file: !1668, line: 254, size: 256, elements: !1742)
!1742 = !{!1743, !1749}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1741, file: !1668, line: 255, baseType: !1744, size: 256)
!1744 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1668, line: 128, size: 256, elements: !1745)
!1745 = !{!1746, !1747}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1744, file: !1668, line: 129, baseType: !130, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1744, file: !1668, line: 130, baseType: !1748, size: 256)
!1748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 256, elements: !1618)
!1749 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !1668, line: 256, baseType: !1750, size: 256)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1741, file: !1668, line: 256, size: 256, elements: !1751)
!1751 = !{!1752, !1753}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1750, file: !1668, line: 258, baseType: !171, size: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1750, file: !1668, line: 259, baseType: !1754, size: 128, offset: 128)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1755, line: 22, size: 128, elements: !1756)
!1755 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1756 = !{!1757, !1760}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1754, file: !1755, line: 23, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1755, line: 23, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1754, file: !1755, line: 24, baseType: !266, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1667, file: !1668, line: 274, baseType: !1762, size: 64, offset: 1600)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1668, line: 170, size: 192, elements: !1764)
!1764 = !{!1765, !1774, !1775}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1763, file: !1668, line: 171, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1668, line: 165, baseType: !1767)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!197, !1666, !1770, !1772, !1666}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1723)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1744)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1763, file: !1668, line: 172, baseType: !1666, size: 64, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1763, file: !1668, line: 173, baseType: !1722, size: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1638, file: !1639, line: 138, baseType: !1666, size: 64, offset: 768)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1638, file: !1639, line: 139, baseType: !1666, size: 64, offset: 832)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1638, file: !1639, line: 140, baseType: !1666, size: 64, offset: 896)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1638, file: !1639, line: 145, baseType: !1780, size: 64, offset: 960)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1782, line: 13, size: 896, elements: !1783)
!1782 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1783 = !{!1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1781, file: !1782, line: 14, baseType: !286, size: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1781, file: !1782, line: 15, baseType: !291, size: 32, offset: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1781, file: !1782, line: 16, baseType: !291, size: 32, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1781, file: !1782, line: 21, baseType: !143, size: 64, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1781, file: !1782, line: 27, baseType: !266, size: 64, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1781, file: !1782, line: 28, baseType: !266, size: 64, offset: 256)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1781, file: !1782, line: 29, baseType: !143, size: 64, offset: 320)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1781, file: !1782, line: 32, baseType: !748, size: 128, offset: 384)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1781, file: !1782, line: 33, baseType: !557, size: 32, offset: 512)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1781, file: !1782, line: 37, baseType: !143, size: 64, offset: 576)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1781, file: !1782, line: 44, baseType: !1795, size: 256, offset: 640)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1796, line: 15, size: 256, elements: !1797)
!1796 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1797 = !{!1798, !1799, !1800, !1801, !1802, !1803, !1804}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1795, file: !1796, line: 16, baseType: !253)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1795, file: !1796, line: 18, baseType: !197, size: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1795, file: !1796, line: 19, baseType: !197, size: 32, offset: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1795, file: !1796, line: 20, baseType: !197, size: 32, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1795, file: !1796, line: 21, baseType: !197, size: 32, offset: 96)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1795, file: !1796, line: 22, baseType: !266, size: 64, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1795, file: !1796, line: 23, baseType: !266, size: 64, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1638, file: !1639, line: 146, baseType: !1188, size: 64, offset: 1024)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1638, file: !1639, line: 147, baseType: !1807, size: 64, offset: 1088)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1639, line: 25, size: 64, elements: !1809)
!1809 = !{!1810, !1811, !1812}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1808, file: !1639, line: 26, baseType: !291, size: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1808, file: !1639, line: 27, baseType: !197, size: 32, offset: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1808, file: !1639, line: 28, baseType: !1813, offset: 64)
!1813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, elements: !1814)
!1814 = !{!1815}
!1815 = !DISubrange(count: 0)
!1816 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !1639, line: 149, baseType: !1817, size: 128, offset: 1152)
!1817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1638, file: !1639, line: 149, size: 128, elements: !1818)
!1818 = !{!1819, !1820}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1817, file: !1639, line: 150, baseType: !197, size: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1817, file: !1639, line: 151, baseType: !1118, size: 128, align: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1317, file: !18, line: 938, baseType: !1822, size: 256, offset: 1088)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !18, line: 896, size: 256, elements: !1823)
!1823 = !{!1824, !1825, !1826, !1827, !1828, !1829}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1822, file: !18, line: 897, baseType: !266, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1822, file: !18, line: 898, baseType: !7, size: 32, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1822, file: !18, line: 899, baseType: !7, size: 32, offset: 96)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1822, file: !18, line: 902, baseType: !7, size: 32, offset: 128)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1822, file: !18, line: 903, baseType: !7, size: 32, offset: 160)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1822, file: !18, line: 904, baseType: !714, size: 64, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1317, file: !18, line: 940, baseType: !318, size: 64, offset: 1344)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1317, file: !18, line: 945, baseType: !130, size: 64, offset: 1408)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !1317, file: !18, line: 949, baseType: !171, size: 128, offset: 1472)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !1317, file: !18, line: 950, baseType: !171, size: 128, offset: 1600)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1317, file: !18, line: 952, baseType: !546, size: 64, offset: 1728)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1317, file: !18, line: 953, baseType: !1180, size: 32, offset: 1792)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1317, file: !18, line: 954, baseType: !1180, size: 32, offset: 1824)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !575, file: !18, line: 1882, baseType: !1838, size: 64, offset: 896)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!197, !693, !1841, !232, !7}
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1843, line: 22, size: 1152, elements: !1844)
!1843 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!1844 = !{!1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1842, file: !1843, line: 23, baseType: !232, size: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1842, file: !1843, line: 24, baseType: !554, size: 16, offset: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1842, file: !1843, line: 25, baseType: !7, size: 32, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1842, file: !1843, line: 26, baseType: !1696, size: 32, offset: 96)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1842, file: !1843, line: 27, baseType: !318, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1842, file: !1843, line: 28, baseType: !318, size: 64, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1842, file: !1843, line: 37, baseType: !318, size: 64, offset: 256)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1842, file: !1843, line: 38, baseType: !709, size: 32, offset: 320)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1842, file: !1843, line: 39, baseType: !709, size: 32, offset: 352)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1842, file: !1843, line: 40, baseType: !557, size: 32, offset: 384)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1842, file: !1843, line: 41, baseType: !565, size: 32, offset: 416)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1842, file: !1843, line: 42, baseType: !714, size: 64, offset: 448)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1842, file: !1843, line: 43, baseType: !1309, size: 128, offset: 512)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1842, file: !1843, line: 44, baseType: !1309, size: 128, offset: 640)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1842, file: !1843, line: 45, baseType: !1309, size: 128, offset: 768)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1842, file: !1843, line: 46, baseType: !1309, size: 128, offset: 896)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1842, file: !1843, line: 47, baseType: !318, size: 64, offset: 1024)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1842, file: !1843, line: 48, baseType: !318, size: 64, offset: 1088)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !575, file: !18, line: 1883, baseType: !1864, size: 64, offset: 960)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!1345, !581, !676, !1348}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !575, file: !18, line: 1884, baseType: !1868, size: 64, offset: 1024)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!197, !550, !1871, !318, !318}
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !18, line: 50, flags: DIFlagFwdDecl)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !575, file: !18, line: 1886, baseType: !1874, size: 64, offset: 1088)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!197, !550, !1877, !197}
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !575, file: !18, line: 1887, baseType: !1879, size: 64, offset: 1152)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!197, !550, !581, !1316, !7, !554}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !575, file: !18, line: 1890, baseType: !1284, size: 64, offset: 1216)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !575, file: !18, line: 1891, baseType: !1884, size: 64, offset: 1280)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!197, !550, !1261, !197}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !551, file: !18, line: 623, baseType: !704, size: 64, offset: 192)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !551, file: !18, line: 624, baseType: !546, size: 64, offset: 256)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !551, file: !18, line: 631, baseType: !266, size: 64, offset: 320)
!1890 = !DIDerivedType(tag: DW_TAG_member, scope: !551, file: !18, line: 639, baseType: !1891, size: 32, offset: 384)
!1891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !551, file: !18, line: 639, size: 32, elements: !1892)
!1892 = !{!1893, !1895}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1891, file: !18, line: 640, baseType: !1894, size: 32)
!1894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1891, file: !18, line: 641, baseType: !7, size: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !551, file: !18, line: 643, baseType: !709, size: 32, offset: 416)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !551, file: !18, line: 644, baseType: !714, size: 64, offset: 448)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !551, file: !18, line: 645, baseType: !1309, size: 128, offset: 512)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !551, file: !18, line: 646, baseType: !1309, size: 128, offset: 640)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !551, file: !18, line: 647, baseType: !1309, size: 128, offset: 768)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !551, file: !18, line: 648, baseType: !155, offset: 896)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !551, file: !18, line: 649, baseType: !204, size: 16, offset: 896)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !551, file: !18, line: 650, baseType: !217, size: 8, offset: 912)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !551, file: !18, line: 651, baseType: !217, size: 8, offset: 920)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !551, file: !18, line: 652, baseType: !1011, size: 64, offset: 960)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !551, file: !18, line: 659, baseType: !266, size: 64, offset: 1024)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !551, file: !18, line: 660, baseType: !1023, size: 256, offset: 1088)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !551, file: !18, line: 662, baseType: !266, size: 64, offset: 1344)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !551, file: !18, line: 663, baseType: !266, size: 64, offset: 1408)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !551, file: !18, line: 665, baseType: !748, size: 128, offset: 1472)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !551, file: !18, line: 666, baseType: !171, size: 128, offset: 1600)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !551, file: !18, line: 675, baseType: !171, size: 128, offset: 1728)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !551, file: !18, line: 676, baseType: !171, size: 128, offset: 1856)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !551, file: !18, line: 677, baseType: !171, size: 128, offset: 1984)
!1915 = !DIDerivedType(tag: DW_TAG_member, scope: !551, file: !18, line: 678, baseType: !1916, size: 128, offset: 2112)
!1916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !551, file: !18, line: 678, size: 128, elements: !1917)
!1917 = !{!1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1916, file: !18, line: 679, baseType: !744, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1916, file: !18, line: 680, baseType: !1118, size: 128, align: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !551, file: !18, line: 682, baseType: !145, size: 64, offset: 2240)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !551, file: !18, line: 683, baseType: !145, size: 64, offset: 2304)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !551, file: !18, line: 684, baseType: !291, size: 32, offset: 2368)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !551, file: !18, line: 685, baseType: !291, size: 32, offset: 2400)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !551, file: !18, line: 686, baseType: !291, size: 32, offset: 2432)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !551, file: !18, line: 688, baseType: !291, size: 32, offset: 2464)
!1926 = !DIDerivedType(tag: DW_TAG_member, scope: !551, file: !18, line: 690, baseType: !1927, size: 64, offset: 2496)
!1927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !551, file: !18, line: 690, size: 64, elements: !1928)
!1928 = !{!1929, !1930}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1927, file: !18, line: 691, baseType: !1332, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1927, file: !18, line: 692, baseType: !775, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !551, file: !18, line: 694, baseType: !1932, size: 64, offset: 2560)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !18, line: 1100, size: 384, elements: !1934)
!1934 = !{!1935, !1936, !1937, !1938}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !1933, file: !18, line: 1101, baseType: !155)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !1933, file: !18, line: 1102, baseType: !171, size: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !1933, file: !18, line: 1103, baseType: !171, size: 128, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !1933, file: !18, line: 1104, baseType: !171, size: 128, offset: 256)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !551, file: !18, line: 695, baseType: !547, size: 1216, align: 64, offset: 2624)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !551, file: !18, line: 696, baseType: !171, size: 128, offset: 3840)
!1941 = !DIDerivedType(tag: DW_TAG_member, scope: !551, file: !18, line: 697, baseType: !1942, size: 64, offset: 3968)
!1942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !551, file: !18, line: 697, size: 64, elements: !1943)
!1943 = !{!1944, !1945, !1946, !2263, !2264}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !1942, file: !18, line: 698, baseType: !1570, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !1942, file: !18, line: 699, baseType: !1043, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !1942, file: !18, line: 700, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !1949, line: 14, size: 832, elements: !1950)
!1949 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!1950 = !{!1951, !2258, !2259, !2260, !2261, !2262}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1948, file: !1949, line: 15, baseType: !1952, size: 512)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1953, line: 64, size: 512, elements: !1954)
!1953 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!1954 = !{!1955, !1956, !1957, !1959, !2001, !2103, !2248, !2253, !2254, !2255, !2256, !2257}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1952, file: !1953, line: 65, baseType: !131, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1952, file: !1953, line: 66, baseType: !171, size: 128, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1952, file: !1953, line: 67, baseType: !1958, size: 64, offset: 192)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1952, file: !1953, line: 68, baseType: !1960, size: 64, offset: 256)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1953, line: 192, size: 704, elements: !1962)
!1962 = !{!1963, !1964, !1965, !1966}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1961, file: !1953, line: 193, baseType: !171, size: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1961, file: !1953, line: 194, baseType: !155, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1961, file: !1953, line: 195, baseType: !1952, size: 512, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1961, file: !1953, line: 196, baseType: !1967, size: 64, offset: 640)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1969)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1953, line: 156, size: 192, elements: !1970)
!1970 = !{!1971, !1976, !1981}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1969, file: !1953, line: 157, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1973)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!197, !1960, !1958}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1969, file: !1953, line: 158, baseType: !1977, size: 64, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1978)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!131, !1960, !1958}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1969, file: !1953, line: 159, baseType: !1982, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1983)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!197, !1960, !1958, !1986}
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1953, line: 148, size: 20736, elements: !1988)
!1988 = !{!1989, !1991, !1995, !1996, !2000}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1987, file: !1953, line: 149, baseType: !1990, size: 192)
!1990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 192, elements: !760)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1987, file: !1953, line: 150, baseType: !1992, size: 4096, offset: 192)
!1992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 4096, elements: !1993)
!1993 = !{!1994}
!1994 = !DISubrange(count: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1987, file: !1953, line: 151, baseType: !197, size: 32, offset: 4288)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1987, file: !1953, line: 152, baseType: !1997, size: 16384, offset: 4320)
!1997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 16384, elements: !1998)
!1998 = !{!1999}
!1999 = !DISubrange(count: 2048)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1987, file: !1953, line: 153, baseType: !197, size: 32, offset: 20704)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1952, file: !1953, line: 69, baseType: !2002, size: 64, offset: 320)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1953, line: 138, size: 448, elements: !2004)
!2004 = !{!2005, !2009, !2028, !2030, !2063, !2093, !2097}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2003, file: !1953, line: 139, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{null, !1958}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2003, file: !1953, line: 140, baseType: !2010, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2012)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2013, line: 230, size: 128, elements: !2014)
!2013 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2014 = !{!2015, !2024}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2012, file: !2013, line: 231, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!1345, !1958, !2019, !676}
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2013, line: 30, size: 128, elements: !2021)
!2021 = !{!2022, !2023}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2020, file: !2013, line: 31, baseType: !131, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2020, file: !2013, line: 32, baseType: !554, size: 16, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2012, file: !2013, line: 232, baseType: !2025, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!1345, !1958, !2019, !131, !1348}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2003, file: !1953, line: 141, baseType: !2029, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2003, file: !1953, line: 142, baseType: !2031, size: 64, offset: 192)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2034)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2013, line: 84, size: 320, elements: !2035)
!2035 = !{!2036, !2037, !2041, !2060, !2061}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2034, file: !2013, line: 85, baseType: !131, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2034, file: !2013, line: 86, baseType: !2038, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!554, !1958, !2019, !197}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2034, file: !2013, line: 88, baseType: !2042, size: 64, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!554, !1958, !2045, !197}
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2013, line: 168, size: 448, elements: !2047)
!2047 = !{!2048, !2049, !2050, !2051, !2055, !2056}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2046, file: !2013, line: 169, baseType: !2020, size: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2046, file: !2013, line: 170, baseType: !1348, size: 64, offset: 128)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2046, file: !2013, line: 171, baseType: !130, size: 64, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2046, file: !2013, line: 172, baseType: !2052, size: 64, offset: 256)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!1345, !1316, !1958, !2045, !676, !714, !1348}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2046, file: !2013, line: 174, baseType: !2052, size: 64, offset: 320)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2046, file: !2013, line: 176, baseType: !2057, size: 64, offset: 384)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!197, !1316, !1958, !2045, !453}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2034, file: !2013, line: 90, baseType: !2029, size: 64, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2034, file: !2013, line: 91, baseType: !2062, size: 64, offset: 256)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2003, file: !1953, line: 143, baseType: !2064, size: 64, offset: 256)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!2067, !1958}
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2069)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !35, line: 39, size: 384, elements: !2070)
!2070 = !{!2071, !2072, !2076, !2080, !2088, !2092}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2069, file: !35, line: 40, baseType: !34, size: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2069, file: !35, line: 41, baseType: !2073, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!695}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2069, file: !35, line: 42, baseType: !2077, size: 64, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!130}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2069, file: !35, line: 43, baseType: !2081, size: 64, offset: 192)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!2084, !2086}
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !35, line: 19, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2069, file: !35, line: 44, baseType: !2089, size: 64, offset: 256)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!2084}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2069, file: !35, line: 45, baseType: !1249, size: 64, offset: 320)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2003, file: !1953, line: 144, baseType: !2094, size: 64, offset: 320)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!2084, !1958}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2003, file: !1953, line: 145, baseType: !2098, size: 64, offset: 384)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{null, !1958, !2101, !2102}
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1952, file: !1953, line: 70, baseType: !2104, size: 64, offset: 384)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !728, line: 123, size: 1024, elements: !2106)
!2106 = !{!2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2241, !2242, !2243, !2244, !2245}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2105, file: !728, line: 124, baseType: !291, size: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2105, file: !728, line: 125, baseType: !291, size: 32, offset: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2105, file: !728, line: 135, baseType: !2104, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2105, file: !728, line: 136, baseType: !131, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2105, file: !728, line: 138, baseType: !263, size: 192, align: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2105, file: !728, line: 140, baseType: !2084, size: 64, offset: 384)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2105, file: !728, line: 141, baseType: !7, size: 32, offset: 448)
!2114 = !DIDerivedType(tag: DW_TAG_member, scope: !2105, file: !728, line: 142, baseType: !2115, size: 256, offset: 512)
!2115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2105, file: !728, line: 142, size: 256, elements: !2116)
!2116 = !{!2117, !2169, !2173}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2115, file: !728, line: 143, baseType: !2118, size: 192)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !728, line: 91, size: 192, elements: !2119)
!2119 = !{!2120, !2121, !2122}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2118, file: !728, line: 92, baseType: !266, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2118, file: !728, line: 94, baseType: !259, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2118, file: !728, line: 100, baseType: !2123, size: 64, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !728, line: 180, size: 704, elements: !2125)
!2125 = !{!2126, !2127, !2128, !2141, !2142, !2143, !2167, !2168}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2124, file: !728, line: 182, baseType: !2104, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2124, file: !728, line: 183, baseType: !7, size: 32, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2124, file: !728, line: 186, baseType: !2129, size: 192, offset: 128)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2130, line: 19, size: 192, elements: !2131)
!2130 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2131 = !{!2132, !2139, !2140}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2129, file: !2130, line: 20, baseType: !2133, size: 128)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2134, line: 292, size: 128, elements: !2135)
!2134 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!2135 = !{!2136, !2137, !2138}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2133, file: !2134, line: 293, baseType: !155)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2133, file: !2134, line: 295, baseType: !510, size: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2133, file: !2134, line: 296, baseType: !130, size: 64, offset: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2129, file: !2130, line: 21, baseType: !7, size: 32, offset: 128)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2129, file: !2130, line: 22, baseType: !7, size: 32, offset: 160)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2124, file: !728, line: 187, baseType: !232, size: 32, offset: 320)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2124, file: !728, line: 188, baseType: !232, size: 32, offset: 352)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2124, file: !728, line: 189, baseType: !2144, size: 64, offset: 384)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !728, line: 168, size: 320, elements: !2146)
!2146 = !{!2147, !2151, !2155, !2159, !2163}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2145, file: !728, line: 169, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!197, !822, !2123}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2145, file: !728, line: 171, baseType: !2152, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!197, !2104, !131, !554}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2145, file: !728, line: 173, baseType: !2156, size: 64, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!197, !2104}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2145, file: !728, line: 174, baseType: !2160, size: 64, offset: 192)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!197, !2104, !2104, !131}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2145, file: !728, line: 176, baseType: !2164, size: 64, offset: 256)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!197, !822, !2104, !2123}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2124, file: !728, line: 192, baseType: !171, size: 128, offset: 448)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2124, file: !728, line: 194, baseType: !1099, size: 128, offset: 576)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2115, file: !728, line: 144, baseType: !2170, size: 64)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !728, line: 103, size: 64, elements: !2171)
!2171 = !{!2172}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2170, file: !728, line: 104, baseType: !2104, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2115, file: !728, line: 145, baseType: !2174, size: 256)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !728, line: 107, size: 256, elements: !2175)
!2175 = !{!2176, !2236, !2239, !2240}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2174, file: !728, line: 108, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2179)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !728, line: 217, size: 768, elements: !2180)
!2180 = !{!2181, !2201, !2205, !2209, !2213, !2217, !2221, !2225, !2226, !2227, !2228, !2232}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2179, file: !728, line: 222, baseType: !2182, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!197, !2185}
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !728, line: 197, size: 1088, elements: !2187)
!2187 = !{!2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2186, file: !728, line: 199, baseType: !2104, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2186, file: !728, line: 200, baseType: !1316, size: 64, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2186, file: !728, line: 201, baseType: !822, size: 64, offset: 128)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2186, file: !728, line: 202, baseType: !130, size: 64, offset: 192)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2186, file: !728, line: 205, baseType: !139, size: 192, offset: 256)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2186, file: !728, line: 206, baseType: !139, size: 192, offset: 448)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2186, file: !728, line: 207, baseType: !197, size: 32, offset: 640)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2186, file: !728, line: 208, baseType: !171, size: 128, offset: 704)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2186, file: !728, line: 209, baseType: !676, size: 64, offset: 832)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2186, file: !728, line: 211, baseType: !1348, size: 64, offset: 896)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2186, file: !728, line: 212, baseType: !695, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2186, file: !728, line: 213, baseType: !695, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2186, file: !728, line: 214, baseType: !482, size: 64, offset: 1024)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2179, file: !728, line: 223, baseType: !2202, size: 64, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{null, !2185}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2179, file: !728, line: 236, baseType: !2206, size: 64, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!197, !822, !130}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2179, file: !728, line: 238, baseType: !2210, size: 64, offset: 192)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!130, !822, !1351}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2179, file: !728, line: 239, baseType: !2214, size: 64, offset: 256)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!130, !822, !130, !1351}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2179, file: !728, line: 240, baseType: !2218, size: 64, offset: 320)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{null, !822, !130}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2179, file: !728, line: 242, baseType: !2222, size: 64, offset: 384)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!1345, !2185, !676, !1348, !714}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2179, file: !728, line: 252, baseType: !1348, size: 64, offset: 448)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2179, file: !728, line: 259, baseType: !695, size: 8, offset: 512)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2179, file: !728, line: 260, baseType: !2222, size: 64, offset: 576)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2179, file: !728, line: 263, baseType: !2229, size: 64, offset: 640)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!1405, !2185, !1406}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2179, file: !728, line: 266, baseType: !2233, size: 64, offset: 704)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!197, !2185, !453}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2174, file: !728, line: 109, baseType: !2237, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !728, line: 31, flags: DIFlagFwdDecl)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2174, file: !728, line: 110, baseType: !714, size: 64, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2174, file: !728, line: 111, baseType: !2104, size: 64, offset: 192)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2105, file: !728, line: 148, baseType: !130, size: 64, offset: 768)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2105, file: !728, line: 154, baseType: !318, size: 64, offset: 832)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2105, file: !728, line: 156, baseType: !204, size: 16, offset: 896)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2105, file: !728, line: 157, baseType: !554, size: 16, offset: 912)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2105, file: !728, line: 158, baseType: !2246, size: 64, offset: 960)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !728, line: 32, flags: DIFlagFwdDecl)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1952, file: !1953, line: 71, baseType: !2249, size: 32, offset: 448)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2250, line: 19, size: 32, elements: !2251)
!2250 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2251 = !{!2252}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2249, file: !2250, line: 20, baseType: !286, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1952, file: !1953, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1952, file: !1953, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1952, file: !1953, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1952, file: !1953, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1952, file: !1953, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1948, file: !1949, line: 16, baseType: !184, size: 64, offset: 512)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1948, file: !1949, line: 17, baseType: !1332, size: 64, offset: 576)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1948, file: !1949, line: 18, baseType: !171, size: 128, offset: 640)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1948, file: !1949, line: 19, baseType: !709, size: 32, offset: 768)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1948, file: !1949, line: 20, baseType: !7, size: 32, offset: 800)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !1942, file: !18, line: 701, baseType: !676, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !1942, file: !18, line: 702, baseType: !7, size: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !551, file: !18, line: 705, baseType: !126, size: 32, offset: 4032)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !551, file: !18, line: 708, baseType: !126, size: 32, offset: 4064)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !551, file: !18, line: 709, baseType: !1141, size: 64, offset: 4096)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !551, file: !18, line: 720, baseType: !130, size: 64, offset: 4160)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !547, file: !18, line: 453, baseType: !2133, size: 128, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !547, file: !18, line: 454, baseType: !510, size: 32, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !547, file: !18, line: 455, baseType: !291, size: 32, offset: 224)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !547, file: !18, line: 460, baseType: !255, size: 128, offset: 256)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !547, file: !18, line: 461, baseType: !1023, size: 256, offset: 384)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !547, file: !18, line: 462, baseType: !266, size: 64, offset: 640)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !547, file: !18, line: 463, baseType: !266, size: 64, offset: 704)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !547, file: !18, line: 464, baseType: !266, size: 64, offset: 768)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !547, file: !18, line: 465, baseType: !2278, size: 64, offset: 832)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2280)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !18, line: 367, size: 1408, elements: !2281)
!2281 = !{!2282, !2286, !2290, !2294, !2298, !2302, !2308, !2313, !2317, !2322, !2326, !2330, !2334, !2335, !2339, !2345, !2346, !2347, !2351, !2356, !2360, !2367}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2280, file: !18, line: 368, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!197, !534, !787}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !2280, file: !18, line: 369, baseType: !2287, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!197, !1316, !534}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2280, file: !18, line: 372, baseType: !2291, size: 64, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!197, !546, !787}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !2280, file: !18, line: 375, baseType: !2295, size: 64, offset: 192)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!197, !534}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !2280, file: !18, line: 381, baseType: !2299, size: 64, offset: 256)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!197, !1316, !546, !174, !7}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2280, file: !18, line: 383, baseType: !2303, size: 64, offset: 320)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{null, !2306}
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !18, line: 290, flags: DIFlagFwdDecl)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2280, file: !18, line: 385, baseType: !2309, size: 64, offset: 384)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!197, !1316, !546, !714, !7, !7, !2312, !1527}
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2280, file: !18, line: 388, baseType: !2314, size: 64, offset: 448)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!197, !1316, !546, !714, !7, !7, !534, !130}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2280, file: !18, line: 393, baseType: !2318, size: 64, offset: 512)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!2321, !546, !2321}
!2321 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !146, line: 125, baseType: !318)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !2280, file: !18, line: 394, baseType: !2323, size: 64, offset: 576)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{null, !534, !7, !7}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !2280, file: !18, line: 395, baseType: !2327, size: 64, offset: 640)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!197, !534, !510}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !2280, file: !18, line: 396, baseType: !2331, size: 64, offset: 704)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{null, !534}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2280, file: !18, line: 397, baseType: !1357, size: 64, offset: 768)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !2280, file: !18, line: 402, baseType: !2336, size: 64, offset: 832)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!197, !546, !534, !534, !40}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !2280, file: !18, line: 404, baseType: !2340, size: 64, offset: 896)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!695, !534, !2343}
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !2344, line: 305, baseType: !7)
!2344 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !2280, file: !18, line: 405, baseType: !2331, size: 64, offset: 960)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !2280, file: !18, line: 406, baseType: !2295, size: 64, offset: 1024)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2280, file: !18, line: 407, baseType: !2348, size: 64, offset: 1088)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!197, !534, !266, !266}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2280, file: !18, line: 409, baseType: !2352, size: 64, offset: 1152)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{null, !534, !2355, !2355}
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2280, file: !18, line: 410, baseType: !2357, size: 64, offset: 1216)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!197, !546, !534}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2280, file: !18, line: 413, baseType: !2361, size: 64, offset: 1280)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!197, !2364, !1316, !2366}
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !18, line: 61, flags: DIFlagFwdDecl)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2280, file: !18, line: 415, baseType: !2368, size: 64, offset: 1344)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{null, !1316}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !547, file: !18, line: 466, baseType: !266, size: 64, offset: 896)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !547, file: !18, line: 467, baseType: !1180, size: 32, offset: 960)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !547, file: !18, line: 468, baseType: !155, offset: 992)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !547, file: !18, line: 469, baseType: !171, size: 128, offset: 1024)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !547, file: !18, line: 470, baseType: !130, size: 64, offset: 1152)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !542, file: !447, line: 87, baseType: !266, size: 64, offset: 192)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !542, file: !447, line: 94, baseType: !266, size: 64, offset: 256)
!2378 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !447, line: 96, baseType: !2379, size: 64)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !539, file: !447, line: 96, size: 64, elements: !2380)
!2380 = !{!2381}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2379, file: !447, line: 101, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !146, line: 143, baseType: !318)
!2383 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !447, line: 103, baseType: !2384, size: 320)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !539, file: !447, line: 103, size: 320, elements: !2385)
!2385 = !{!2386, !2396, !2399, !2400}
!2386 = !DIDerivedType(tag: DW_TAG_member, scope: !2384, file: !447, line: 104, baseType: !2387, size: 128)
!2387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2384, file: !447, line: 104, size: 128, elements: !2388)
!2388 = !{!2389, !2390}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !2387, file: !447, line: 105, baseType: !171, size: 128)
!2390 = !DIDerivedType(tag: DW_TAG_member, scope: !2387, file: !447, line: 106, baseType: !2391, size: 128)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2387, file: !447, line: 106, size: 128, elements: !2392)
!2392 = !{!2393, !2394, !2395}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2391, file: !447, line: 107, baseType: !534, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2391, file: !447, line: 109, baseType: !197, size: 32, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !2391, file: !447, line: 110, baseType: !197, size: 32, offset: 96)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !2384, file: !447, line: 117, baseType: !2397, size: 64, offset: 128)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !447, line: 117, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !2384, file: !447, line: 119, baseType: !130, size: 64, offset: 192)
!2400 = !DIDerivedType(tag: DW_TAG_member, scope: !2384, file: !447, line: 120, baseType: !2401, size: 64, offset: 256)
!2401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2384, file: !447, line: 120, size: 64, elements: !2402)
!2402 = !{!2403, !2404, !2405}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !2401, file: !447, line: 121, baseType: !130, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2401, file: !447, line: 122, baseType: !266, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, scope: !2401, file: !447, line: 123, baseType: !2406, size: 32)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2401, file: !447, line: 123, size: 32, elements: !2407)
!2407 = !{!2408, !2409, !2410}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !2406, file: !447, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2406, file: !447, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2406, file: !447, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2411 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !447, line: 130, baseType: !2412, size: 192)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !539, file: !447, line: 130, size: 192, elements: !2413)
!2413 = !{!2414, !2415, !2416, !2417, !2418}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2412, file: !447, line: 131, baseType: !266, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !2412, file: !447, line: 134, baseType: !210, size: 8, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !2412, file: !447, line: 135, baseType: !210, size: 8, offset: 72)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !2412, file: !447, line: 136, baseType: !291, size: 32, offset: 96)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !2412, file: !447, line: 137, baseType: !7, size: 32, offset: 128)
!2419 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !447, line: 139, baseType: !2420, size: 256)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !539, file: !447, line: 139, size: 256, elements: !2421)
!2421 = !{!2422, !2423, !2424}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !2420, file: !447, line: 140, baseType: !266, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !2420, file: !447, line: 141, baseType: !291, size: 32, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !2420, file: !447, line: 143, baseType: !171, size: 128, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !447, line: 145, baseType: !2426, size: 256)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !539, file: !447, line: 145, size: 256, elements: !2427)
!2427 = !{!2428, !2429, !2431, !2432, !2437}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !2426, file: !447, line: 146, baseType: !266, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !2426, file: !447, line: 147, baseType: !2430, size: 64, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !465, line: 509, baseType: !534)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !2426, file: !447, line: 148, baseType: !266, size: 64, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_member, scope: !2426, file: !447, line: 149, baseType: !2433, size: 64, offset: 192)
!2433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2426, file: !447, line: 149, size: 64, elements: !2434)
!2434 = !{!2435, !2436}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !2433, file: !447, line: 150, baseType: !445, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !2433, file: !447, line: 151, baseType: !291, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2426, file: !447, line: 156, baseType: !155, offset: 256)
!2438 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !447, line: 159, baseType: !2439, size: 128)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !539, file: !447, line: 159, size: 128, elements: !2440)
!2440 = !{!2441, !2515}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2439, file: !447, line: 161, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !48, line: 110, size: 1152, elements: !2444)
!2444 = !{!2445, !2455, !2476, !2477, !2488, !2489, !2490, !2502, !2503, !2504}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2443, file: !48, line: 111, baseType: !2446, size: 384)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !48, line: 19, size: 384, elements: !2447)
!2447 = !{!2448, !2450, !2451, !2452, !2453, !2454}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2446, file: !48, line: 20, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2446, file: !48, line: 21, baseType: !2449, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2446, file: !48, line: 22, baseType: !2449, size: 64, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2446, file: !48, line: 23, baseType: !266, size: 64, offset: 192)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2446, file: !48, line: 24, baseType: !266, size: 64, offset: 256)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2446, file: !48, line: 25, baseType: !266, size: 64, offset: 320)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2443, file: !48, line: 112, baseType: !2456, size: 64, offset: 384)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2458, line: 105, size: 128, elements: !2459)
!2458 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2459 = !{!2460, !2461}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2457, file: !2458, line: 110, baseType: !266, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2457, file: !2458, line: 118, baseType: !2462, size: 64, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2458, line: 95, size: 448, elements: !2464)
!2464 = !{!2465, !2466, !2471, !2472, !2473, !2474, !2475}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2463, file: !2458, line: 96, baseType: !143, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2463, file: !2458, line: 97, baseType: !2467, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2458, line: 60, baseType: !2469)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{null, !2456}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2463, file: !2458, line: 98, baseType: !2467, size: 64, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2463, file: !2458, line: 99, baseType: !695, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2463, file: !2458, line: 100, baseType: !695, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2463, file: !2458, line: 101, baseType: !1118, size: 128, align: 64, offset: 256)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2463, file: !2458, line: 102, baseType: !2456, size: 64, offset: 384)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2443, file: !48, line: 113, baseType: !2457, size: 128, offset: 448)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2443, file: !48, line: 114, baseType: !2478, size: 192, offset: 576)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2479, line: 26, size: 192, elements: !2480)
!2479 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2480 = !{!2481, !2482}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2478, file: !2479, line: 27, baseType: !7, size: 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2478, file: !2479, line: 28, baseType: !2483, size: 128, offset: 64)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2484, line: 43, size: 128, elements: !2485)
!2484 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2485 = !{!2486, !2487}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2483, file: !2484, line: 44, baseType: !253)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2483, file: !2484, line: 45, baseType: !171, size: 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2443, file: !48, line: 115, baseType: !47, size: 32, offset: 768)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2443, file: !48, line: 116, baseType: !7, size: 32, offset: 800)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2443, file: !48, line: 117, baseType: !2491, size: 64, offset: 832)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2493)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !48, line: 67, size: 256, elements: !2494)
!2494 = !{!2495, !2496, !2500, !2501}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2493, file: !48, line: 73, baseType: !2331, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2493, file: !48, line: 78, baseType: !2497, size: 64, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{null, !2442}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2493, file: !48, line: 83, baseType: !2497, size: 64, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2493, file: !48, line: 89, baseType: !500, size: 64, offset: 192)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2443, file: !48, line: 118, baseType: !130, size: 64, offset: 896)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2443, file: !48, line: 119, baseType: !197, size: 32, offset: 960)
!2504 = !DIDerivedType(tag: DW_TAG_member, scope: !2443, file: !48, line: 120, baseType: !2505, size: 128, offset: 1024)
!2505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2443, file: !48, line: 120, size: 128, elements: !2506)
!2506 = !{!2507, !2513}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2505, file: !48, line: 121, baseType: !2508, size: 128)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2509, line: 6, size: 128, elements: !2510)
!2509 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2510 = !{!2511, !2512}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2508, file: !2509, line: 7, baseType: !318, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2508, file: !2509, line: 8, baseType: !318, size: 64, offset: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2505, file: !48, line: 122, baseType: !2514)
!2514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2508, elements: !1814)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2439, file: !447, line: 162, baseType: !130, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !539, file: !447, line: 176, baseType: !1118, size: 128, align: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, scope: !535, file: !447, line: 179, baseType: !2518, size: 32, offset: 384)
!2518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !535, file: !447, line: 179, size: 32, elements: !2519)
!2519 = !{!2520, !2521, !2522, !2523}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2518, file: !447, line: 184, baseType: !291, size: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2518, file: !447, line: 192, baseType: !7, size: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2518, file: !447, line: 194, baseType: !7, size: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2518, file: !447, line: 195, baseType: !197, size: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !535, file: !447, line: 199, baseType: !291, size: 32, offset: 416)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !505, file: !55, line: 522, baseType: !534, size: 64, offset: 512)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !505, file: !55, line: 528, baseType: !2527, size: 64, offset: 576)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !505, file: !55, line: 532, baseType: !2529, size: 64, offset: 640)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !505, file: !55, line: 536, baseType: !2430, size: 64, offset: 704)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !484, file: !55, line: 563, baseType: !2532, size: 64, offset: 320)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!503, !504, !54}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !484, file: !55, line: 565, baseType: !2536, size: 64, offset: 384)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{null, !504, !266, !266}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !484, file: !55, line: 567, baseType: !2540, size: 64, offset: 448)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!266, !453}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !484, file: !55, line: 571, baseType: !500, size: 64, offset: 512)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !484, file: !55, line: 574, baseType: !500, size: 64, offset: 576)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !484, file: !55, line: 579, baseType: !2546, size: 64, offset: 640)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!197, !453, !266, !130, !197, !197}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !484, file: !55, line: 585, baseType: !2550, size: 64, offset: 704)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!131, !453}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !484, file: !55, line: 615, baseType: !2554, size: 64, offset: 768)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!534, !453, !266}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !454, file: !447, line: 359, baseType: !266, size: 64, offset: 1216)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !454, file: !447, line: 361, baseType: !1316, size: 64, offset: 1280)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !454, file: !447, line: 362, baseType: !130, size: 64, offset: 1344)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !454, file: !447, line: 365, baseType: !143, size: 64, offset: 1408)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !454, file: !447, line: 373, baseType: !2562, offset: 1472)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !447, line: 296, elements: !169)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !450, file: !447, line: 391, baseType: !259, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !450, file: !447, line: 392, baseType: !318, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !450, file: !447, line: 394, baseType: !1558, size: 64, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !450, file: !447, line: 398, baseType: !266, size: 64, offset: 256)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !450, file: !447, line: 399, baseType: !266, size: 64, offset: 320)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !450, file: !447, line: 405, baseType: !266, size: 64, offset: 384)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !450, file: !447, line: 406, baseType: !266, size: 64, offset: 448)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !450, file: !447, line: 407, baseType: !2571, size: 64, offset: 512)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !465, line: 286, baseType: !2573)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !465, line: 286, size: 64, elements: !2574)
!2574 = !{!2575}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2573, file: !465, line: 286, baseType: !2576, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !470, line: 18, baseType: !266)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !450, file: !447, line: 416, baseType: !291, size: 32, offset: 576)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !450, file: !447, line: 428, baseType: !291, size: 32, offset: 608)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !450, file: !447, line: 437, baseType: !291, size: 32, offset: 640)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !450, file: !447, line: 447, baseType: !291, size: 32, offset: 672)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !450, file: !447, line: 450, baseType: !143, size: 64, offset: 704)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !450, file: !447, line: 452, baseType: !197, size: 32, offset: 768)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !450, file: !447, line: 454, baseType: !155, offset: 800)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !450, file: !447, line: 457, baseType: !1023, size: 256, offset: 832)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !450, file: !447, line: 459, baseType: !171, size: 128, offset: 1088)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !450, file: !447, line: 466, baseType: !266, size: 64, offset: 1216)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !450, file: !447, line: 467, baseType: !266, size: 64, offset: 1280)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !450, file: !447, line: 469, baseType: !266, size: 64, offset: 1344)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !450, file: !447, line: 470, baseType: !266, size: 64, offset: 1408)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !450, file: !447, line: 471, baseType: !145, size: 64, offset: 1472)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !450, file: !447, line: 472, baseType: !266, size: 64, offset: 1536)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !450, file: !447, line: 473, baseType: !266, size: 64, offset: 1600)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !450, file: !447, line: 474, baseType: !266, size: 64, offset: 1664)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !450, file: !447, line: 475, baseType: !266, size: 64, offset: 1728)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !450, file: !447, line: 477, baseType: !155, offset: 1792)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !450, file: !447, line: 478, baseType: !266, size: 64, offset: 1792)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !450, file: !447, line: 478, baseType: !266, size: 64, offset: 1856)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !450, file: !447, line: 478, baseType: !266, size: 64, offset: 1920)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !450, file: !447, line: 478, baseType: !266, size: 64, offset: 1984)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !450, file: !447, line: 479, baseType: !266, size: 64, offset: 2048)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !450, file: !447, line: 479, baseType: !266, size: 64, offset: 2112)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !450, file: !447, line: 479, baseType: !266, size: 64, offset: 2176)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !450, file: !447, line: 480, baseType: !266, size: 64, offset: 2240)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !450, file: !447, line: 480, baseType: !266, size: 64, offset: 2304)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !450, file: !447, line: 480, baseType: !266, size: 64, offset: 2368)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !450, file: !447, line: 480, baseType: !266, size: 64, offset: 2432)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !450, file: !447, line: 482, baseType: !2608, size: 2816, offset: 2496)
!2608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 2816, elements: !2609)
!2609 = !{!2610}
!2610 = !DISubrange(count: 44)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !450, file: !447, line: 488, baseType: !2612, size: 256, offset: 5312)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2613, line: 60, size: 256, elements: !2614)
!2613 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2614 = !{!2615}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2612, file: !2613, line: 61, baseType: !2616, size: 256)
!2616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 256, elements: !1618)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !450, file: !447, line: 490, baseType: !2618, size: 64, offset: 5568)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !447, line: 490, flags: DIFlagFwdDecl)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !450, file: !447, line: 493, baseType: !2621, size: 896, offset: 5632)
!2621 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2622, line: 53, baseType: !2623)
!2622 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2622, line: 13, size: 896, elements: !2624)
!2624 = !{!2625, !2626, !2627, !2628, !2631, !2632, !2633, !2634, !2654, !2655, !2656}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2623, file: !2622, line: 18, baseType: !318, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2623, file: !2622, line: 28, baseType: !145, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2623, file: !2622, line: 31, baseType: !1023, size: 256, offset: 128)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2623, file: !2622, line: 32, baseType: !2629, size: 64, offset: 384)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2622, line: 32, flags: DIFlagFwdDecl)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2623, file: !2622, line: 37, baseType: !204, size: 16, offset: 448)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2623, file: !2622, line: 40, baseType: !139, size: 192, offset: 512)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2623, file: !2622, line: 41, baseType: !130, size: 64, offset: 704)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2623, file: !2622, line: 42, baseType: !2635, size: 64, offset: 768)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2637)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2638, line: 13, size: 896, elements: !2639)
!2638 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2639 = !{!2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2637, file: !2638, line: 14, baseType: !130, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2637, file: !2638, line: 15, baseType: !266, size: 64, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2637, file: !2638, line: 17, baseType: !266, size: 64, offset: 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2637, file: !2638, line: 17, baseType: !266, size: 64, offset: 192)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2637, file: !2638, line: 19, baseType: !283, size: 64, offset: 256)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2637, file: !2638, line: 21, baseType: !283, size: 64, offset: 320)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2637, file: !2638, line: 22, baseType: !283, size: 64, offset: 384)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2637, file: !2638, line: 23, baseType: !283, size: 64, offset: 448)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2637, file: !2638, line: 24, baseType: !283, size: 64, offset: 512)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2637, file: !2638, line: 25, baseType: !283, size: 64, offset: 576)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2637, file: !2638, line: 26, baseType: !283, size: 64, offset: 640)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2637, file: !2638, line: 27, baseType: !283, size: 64, offset: 704)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2637, file: !2638, line: 28, baseType: !283, size: 64, offset: 768)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2637, file: !2638, line: 29, baseType: !283, size: 64, offset: 832)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2623, file: !2622, line: 44, baseType: !291, size: 32, offset: 832)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2623, file: !2622, line: 50, baseType: !216, size: 16, offset: 864)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2623, file: !2622, line: 51, baseType: !2657, size: 16, offset: 880)
!2657 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !151, line: 18, baseType: !2658)
!2658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !127, line: 23, baseType: !1700)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !450, file: !447, line: 495, baseType: !266, size: 64, offset: 6528)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !450, file: !447, line: 497, baseType: !2661, size: 64, offset: 6592)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !447, line: 381, size: 384, elements: !2663)
!2663 = !{!2664, !2665, !2671}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2662, file: !447, line: 382, baseType: !291, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2662, file: !447, line: 383, baseType: !2666, size: 128, offset: 64)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !447, line: 376, size: 128, elements: !2667)
!2667 = !{!2668, !2669}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2666, file: !447, line: 377, baseType: !271, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2666, file: !447, line: 378, baseType: !2670, size: 64, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2662, file: !447, line: 384, baseType: !2478, size: 192, offset: 192)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !450, file: !447, line: 500, baseType: !155, offset: 6656)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !450, file: !447, line: 501, baseType: !2674, size: 64, offset: 6656)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !447, line: 387, flags: DIFlagFwdDecl)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !450, file: !447, line: 516, baseType: !1188, size: 64, offset: 6720)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !450, file: !447, line: 519, baseType: !1316, size: 64, offset: 6784)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !450, file: !447, line: 521, baseType: !2679, size: 64, offset: 6848)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !447, line: 521, flags: DIFlagFwdDecl)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !450, file: !447, line: 545, baseType: !291, size: 32, offset: 6912)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !450, file: !447, line: 548, baseType: !695, size: 8, offset: 6944)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !450, file: !447, line: 550, baseType: !2684, offset: 6952)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2685, line: 142, elements: !169)
!2685 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !450, file: !447, line: 554, baseType: !1208, size: 256, offset: 6976)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !450, file: !447, line: 557, baseType: !232, size: 32, offset: 7232)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !446, file: !447, line: 565, baseType: !2689, offset: 7296)
!2689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, elements: !2690)
!2690 = !{!2691}
!2691 = !DISubrange(count: -1)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !272, file: !273, line: 758, baseType: !445, size: 64, offset: 3968)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !272, file: !273, line: 761, baseType: !2694, size: 320, offset: 4032)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2613, line: 34, size: 320, elements: !2695)
!2695 = !{!2696, !2697}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2694, file: !2613, line: 35, baseType: !318, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2694, file: !2613, line: 36, baseType: !2698, size: 256, offset: 64)
!2698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 256, elements: !1618)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !272, file: !273, line: 766, baseType: !197, size: 32, offset: 4352)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !272, file: !273, line: 767, baseType: !197, size: 32, offset: 4384)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !272, file: !273, line: 768, baseType: !197, size: 32, offset: 4416)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !272, file: !273, line: 770, baseType: !197, size: 32, offset: 4448)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !272, file: !273, line: 772, baseType: !266, size: 64, offset: 4480)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !272, file: !273, line: 775, baseType: !7, size: 32, offset: 4544)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !272, file: !273, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !272, file: !273, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !272, file: !273, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !272, file: !273, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !272, file: !273, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !272, file: !273, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !272, file: !273, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !272, file: !273, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !272, file: !273, line: 831, baseType: !266, size: 64, offset: 4672)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !272, file: !273, line: 833, baseType: !2715, size: 384, offset: 4736)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !61, line: 25, size: 384, elements: !2716)
!2716 = !{!2717, !2722}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2715, file: !61, line: 26, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!283, !2721}
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, scope: !2715, file: !61, line: 27, baseType: !2723, size: 320, offset: 64)
!2723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2715, file: !61, line: 27, size: 320, elements: !2724)
!2724 = !{!2725, !2735, !2760}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2723, file: !61, line: 36, baseType: !2726, size: 320)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2723, file: !61, line: 29, size: 320, elements: !2727)
!2727 = !{!2728, !2730, !2731, !2732, !2733, !2734}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2726, file: !61, line: 30, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2726, file: !61, line: 31, baseType: !232, size: 32, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2726, file: !61, line: 32, baseType: !232, size: 32, offset: 96)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2726, file: !61, line: 33, baseType: !232, size: 32, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2726, file: !61, line: 34, baseType: !318, size: 64, offset: 192)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2726, file: !61, line: 35, baseType: !2729, size: 64, offset: 256)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2723, file: !61, line: 46, baseType: !2736, size: 192)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2723, file: !61, line: 38, size: 192, elements: !2737)
!2737 = !{!2738, !2739, !2740, !2759}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2736, file: !61, line: 39, baseType: !397, size: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2736, file: !61, line: 40, baseType: !60, size: 32, offset: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, scope: !2736, file: !61, line: 41, baseType: !2741, size: 64, offset: 64)
!2741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2736, file: !61, line: 41, size: 64, elements: !2742)
!2742 = !{!2743, !2751}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2741, file: !61, line: 42, baseType: !2744, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2746, line: 7, size: 128, elements: !2747)
!2746 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2747 = !{!2748, !2750}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2745, file: !2746, line: 8, baseType: !2749, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !399, line: 93, baseType: !153)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2745, file: !2746, line: 9, baseType: !153, size: 64, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2741, file: !61, line: 43, baseType: !2752, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2754, line: 7, size: 64, elements: !2755)
!2754 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2755 = !{!2756, !2758}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2753, file: !2754, line: 8, baseType: !2757, size: 32)
!2757 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2754, line: 5, baseType: !1674)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2753, file: !2754, line: 9, baseType: !1674, size: 32, offset: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2736, file: !61, line: 45, baseType: !318, size: 64, offset: 128)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2723, file: !61, line: 54, baseType: !2761, size: 256)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2723, file: !61, line: 48, size: 256, elements: !2762)
!2762 = !{!2763, !2771, !2772, !2773, !2774}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2761, file: !61, line: 49, baseType: !2764, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2766, line: 36, size: 64, elements: !2767)
!2766 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!2767 = !{!2768, !2769, !2770}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2765, file: !2766, line: 37, baseType: !197, size: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2765, file: !2766, line: 38, baseType: !1700, size: 16, offset: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2765, file: !2766, line: 39, baseType: !1700, size: 16, offset: 48)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2761, file: !61, line: 50, baseType: !197, size: 32, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2761, file: !61, line: 51, baseType: !197, size: 32, offset: 96)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2761, file: !61, line: 52, baseType: !266, size: 64, offset: 128)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2761, file: !61, line: 53, baseType: !266, size: 64, offset: 192)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !272, file: !273, line: 835, baseType: !2776, size: 32, offset: 5120)
!2776 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !146, line: 22, baseType: !2777)
!2777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !399, line: 28, baseType: !197)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !272, file: !273, line: 836, baseType: !2776, size: 32, offset: 5152)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !272, file: !273, line: 840, baseType: !266, size: 64, offset: 5184)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !272, file: !273, line: 849, baseType: !271, size: 64, offset: 5248)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !272, file: !273, line: 852, baseType: !271, size: 64, offset: 5312)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !272, file: !273, line: 857, baseType: !171, size: 128, offset: 5376)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !272, file: !273, line: 858, baseType: !171, size: 128, offset: 5504)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !272, file: !273, line: 859, baseType: !271, size: 64, offset: 5632)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !272, file: !273, line: 867, baseType: !171, size: 128, offset: 5696)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !272, file: !273, line: 868, baseType: !171, size: 128, offset: 5824)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !272, file: !273, line: 871, baseType: !1610, size: 64, offset: 5952)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !272, file: !273, line: 872, baseType: !2789, size: 512, offset: 6016)
!2789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !748, size: 512, elements: !1618)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !272, file: !273, line: 873, baseType: !171, size: 128, offset: 6528)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !272, file: !273, line: 874, baseType: !171, size: 128, offset: 6656)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !272, file: !273, line: 876, baseType: !2793, size: 64, offset: 6784)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !272, file: !273, line: 879, baseType: !816, size: 64, offset: 6848)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !272, file: !273, line: 882, baseType: !816, size: 64, offset: 6912)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !272, file: !273, line: 884, baseType: !318, size: 64, offset: 6976)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !272, file: !273, line: 885, baseType: !318, size: 64, offset: 7040)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !272, file: !273, line: 890, baseType: !318, size: 64, offset: 7104)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !272, file: !273, line: 891, baseType: !2800, size: 128, offset: 7168)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !273, line: 242, size: 128, elements: !2801)
!2801 = !{!2802, !2803, !2804}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2800, file: !273, line: 244, baseType: !318, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2800, file: !273, line: 245, baseType: !318, size: 64, offset: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2800, file: !273, line: 246, baseType: !253, offset: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !272, file: !273, line: 900, baseType: !266, size: 64, offset: 7296)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !272, file: !273, line: 901, baseType: !266, size: 64, offset: 7360)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !272, file: !273, line: 904, baseType: !318, size: 64, offset: 7424)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !272, file: !273, line: 907, baseType: !318, size: 64, offset: 7488)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !272, file: !273, line: 910, baseType: !266, size: 64, offset: 7552)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !272, file: !273, line: 911, baseType: !266, size: 64, offset: 7616)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !272, file: !273, line: 914, baseType: !2812, size: 640, offset: 7680)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2813, line: 123, size: 640, elements: !2814)
!2813 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2814 = !{!2815, !2821, !2822}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2812, file: !2813, line: 124, baseType: !2816, size: 576)
!2816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2817, size: 576, elements: !760)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2813, line: 108, size: 192, elements: !2818)
!2818 = !{!2819, !2820}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2817, file: !2813, line: 109, baseType: !318, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2817, file: !2813, line: 110, baseType: !412, size: 128, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2812, file: !2813, line: 125, baseType: !7, size: 32, offset: 576)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2812, file: !2813, line: 126, baseType: !7, size: 32, offset: 608)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !272, file: !273, line: 917, baseType: !2824, size: 192, offset: 8320)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2813, line: 134, size: 192, elements: !2825)
!2825 = !{!2826, !2827}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2824, file: !2813, line: 135, baseType: !1118, size: 128, align: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2824, file: !2813, line: 136, baseType: !7, size: 32, offset: 128)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !272, file: !273, line: 923, baseType: !1636, size: 64, offset: 8512)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !272, file: !273, line: 926, baseType: !1636, size: 64, offset: 8576)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !272, file: !273, line: 929, baseType: !1636, size: 64, offset: 8640)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !272, file: !273, line: 933, baseType: !1666, size: 64, offset: 8704)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !272, file: !273, line: 943, baseType: !2833, size: 128, offset: 8768)
!2833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 128, elements: !1152)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !272, file: !273, line: 945, baseType: !2835, size: 64, offset: 8896)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !273, line: 49, flags: DIFlagFwdDecl)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !272, file: !273, line: 956, baseType: !2838, size: 64, offset: 8960)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !273, line: 45, flags: DIFlagFwdDecl)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !272, file: !273, line: 959, baseType: !2841, size: 64, offset: 9024)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !273, line: 959, flags: DIFlagFwdDecl)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !272, file: !273, line: 962, baseType: !2844, size: 64, offset: 9088)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !273, line: 66, flags: DIFlagFwdDecl)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !272, file: !273, line: 966, baseType: !2847, size: 64, offset: 9152)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2849, line: 35, flags: DIFlagFwdDecl)
!2849 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !272, file: !273, line: 969, baseType: !2851, size: 64, offset: 9216)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2853, line: 82, size: 7296, elements: !2854)
!2853 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2854 = !{!2855, !2856, !2857, !2858, !2859, !2860, !2861, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2890, !2899, !2900, !2902, !2903, !2904, !2907, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2937, !2938, !2945, !2946, !2947, !2948, !2949, !2950}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2852, file: !2853, line: 83, baseType: !286, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2852, file: !2853, line: 84, baseType: !291, size: 32, offset: 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2852, file: !2853, line: 85, baseType: !197, size: 32, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2852, file: !2853, line: 86, baseType: !171, size: 128, offset: 128)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2852, file: !2853, line: 88, baseType: !1099, size: 128, offset: 256)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2852, file: !2853, line: 91, baseType: !271, size: 64, offset: 384)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2852, file: !2853, line: 94, baseType: !2862, size: 192, offset: 448)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2863, line: 30, size: 192, elements: !2864)
!2863 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2864 = !{!2865, !2866}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2862, file: !2863, line: 31, baseType: !171, size: 128)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2862, file: !2863, line: 32, baseType: !2867, size: 64, offset: 128)
!2867 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2868, line: 25, baseType: !2869)
!2868 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2868, line: 23, size: 64, elements: !2870)
!2870 = !{!2871}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2869, file: !2868, line: 24, baseType: !437, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2852, file: !2853, line: 97, baseType: !744, size: 64, offset: 640)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2852, file: !2853, line: 100, baseType: !197, size: 32, offset: 704)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2852, file: !2853, line: 106, baseType: !197, size: 32, offset: 736)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2852, file: !2853, line: 107, baseType: !271, size: 64, offset: 768)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2852, file: !2853, line: 110, baseType: !197, size: 32, offset: 832)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2852, file: !2853, line: 111, baseType: !7, size: 32, offset: 864)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2852, file: !2853, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2852, file: !2853, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2852, file: !2853, line: 128, baseType: !197, size: 32, offset: 928)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2852, file: !2853, line: 129, baseType: !171, size: 128, offset: 960)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2852, file: !2853, line: 132, baseType: !355, size: 512, offset: 1088)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2852, file: !2853, line: 133, baseType: !363, size: 64, offset: 1600)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2852, file: !2853, line: 140, baseType: !2885, size: 256, offset: 1664)
!2885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2886, size: 256, elements: !1658)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2853, line: 38, size: 128, elements: !2887)
!2887 = !{!2888, !2889}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2886, file: !2853, line: 39, baseType: !318, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2886, file: !2853, line: 40, baseType: !318, size: 64, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2852, file: !2853, line: 146, baseType: !2891, size: 192, offset: 1920)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2853, line: 66, size: 192, elements: !2892)
!2892 = !{!2893}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2891, file: !2853, line: 67, baseType: !2894, size: 192)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2853, line: 47, size: 192, elements: !2895)
!2895 = !{!2896, !2897, !2898}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2894, file: !2853, line: 48, baseType: !145, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2894, file: !2853, line: 49, baseType: !145, size: 64, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2894, file: !2853, line: 50, baseType: !145, size: 64, offset: 128)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2852, file: !2853, line: 150, baseType: !2812, size: 640, offset: 2112)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2852, file: !2853, line: 153, baseType: !2901, size: 256, offset: 2752)
!2901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1610, size: 256, elements: !1618)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2852, file: !2853, line: 159, baseType: !1610, size: 64, offset: 3008)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2852, file: !2853, line: 162, baseType: !197, size: 32, offset: 3072)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2852, file: !2853, line: 164, baseType: !2905, size: 64, offset: 3136)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2853, line: 164, flags: DIFlagFwdDecl)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2852, file: !2853, line: 175, baseType: !2908, size: 32, offset: 3200)
!2908 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !402, line: 805, baseType: !2909)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !402, line: 798, size: 32, elements: !2910)
!2910 = !{!2911, !2912}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2909, file: !402, line: 803, baseType: !587, size: 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2909, file: !402, line: 804, baseType: !155, offset: 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2852, file: !2853, line: 176, baseType: !318, size: 64, offset: 3264)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2852, file: !2853, line: 176, baseType: !318, size: 64, offset: 3328)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2852, file: !2853, line: 176, baseType: !318, size: 64, offset: 3392)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2852, file: !2853, line: 176, baseType: !318, size: 64, offset: 3456)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2852, file: !2853, line: 177, baseType: !318, size: 64, offset: 3520)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2852, file: !2853, line: 178, baseType: !318, size: 64, offset: 3584)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2852, file: !2853, line: 179, baseType: !2800, size: 128, offset: 3648)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2852, file: !2853, line: 180, baseType: !266, size: 64, offset: 3776)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2852, file: !2853, line: 180, baseType: !266, size: 64, offset: 3840)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2852, file: !2853, line: 180, baseType: !266, size: 64, offset: 3904)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2852, file: !2853, line: 180, baseType: !266, size: 64, offset: 3968)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2852, file: !2853, line: 181, baseType: !266, size: 64, offset: 4032)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2852, file: !2853, line: 181, baseType: !266, size: 64, offset: 4096)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2852, file: !2853, line: 181, baseType: !266, size: 64, offset: 4160)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2852, file: !2853, line: 181, baseType: !266, size: 64, offset: 4224)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2852, file: !2853, line: 182, baseType: !266, size: 64, offset: 4288)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2852, file: !2853, line: 182, baseType: !266, size: 64, offset: 4352)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2852, file: !2853, line: 182, baseType: !266, size: 64, offset: 4416)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2852, file: !2853, line: 182, baseType: !266, size: 64, offset: 4480)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2852, file: !2853, line: 183, baseType: !266, size: 64, offset: 4544)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2852, file: !2853, line: 183, baseType: !266, size: 64, offset: 4608)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2852, file: !2853, line: 184, baseType: !2935, offset: 4672)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2936, line: 12, elements: !169)
!2936 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2852, file: !2853, line: 192, baseType: !320, size: 64, offset: 4672)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2852, file: !2853, line: 203, baseType: !2939, size: 2048, offset: 4736)
!2939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2940, size: 2048, elements: !1152)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2941, line: 43, size: 128, elements: !2942)
!2941 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2942 = !{!2943, !2944}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2940, file: !2941, line: 44, baseType: !1350, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2940, file: !2941, line: 45, baseType: !1350, size: 64, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2852, file: !2853, line: 220, baseType: !695, size: 8, offset: 6784)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2852, file: !2853, line: 221, baseType: !1700, size: 16, offset: 6800)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2852, file: !2853, line: 222, baseType: !1700, size: 16, offset: 6816)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2852, file: !2853, line: 224, baseType: !445, size: 64, offset: 6848)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2852, file: !2853, line: 227, baseType: !139, size: 192, offset: 6912)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2852, file: !2853, line: 233, baseType: !139, size: 192, offset: 7104)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !272, file: !273, line: 970, baseType: !2952, size: 64, offset: 9280)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2853, line: 20, size: 16576, elements: !2954)
!2954 = !{!2955, !2956, !2957, !2958}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2953, file: !2853, line: 21, baseType: !155)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2953, file: !2853, line: 22, baseType: !286, size: 32)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2953, file: !2853, line: 23, baseType: !1099, size: 128, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2953, file: !2853, line: 24, baseType: !2959, size: 16384, offset: 192)
!2959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2960, size: 16384, elements: !1993)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2863, line: 49, size: 256, elements: !2961)
!2961 = !{!2962}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2960, file: !2863, line: 50, baseType: !2963, size: 256)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2863, line: 35, size: 256, elements: !2964)
!2964 = !{!2965, !2972, !2973, !2979}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2963, file: !2863, line: 37, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2967, line: 19, baseType: !2968)
!2967 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2967, line: 18, baseType: !2970)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{null, !197}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2963, file: !2863, line: 38, baseType: !266, size: 64, offset: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2963, file: !2863, line: 44, baseType: !2974, size: 64, offset: 128)
!2974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2967, line: 22, baseType: !2975)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2967, line: 21, baseType: !2977)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{null}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2963, file: !2863, line: 46, baseType: !2867, size: 64, offset: 192)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !272, file: !273, line: 971, baseType: !2867, size: 64, offset: 9344)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !272, file: !273, line: 972, baseType: !2867, size: 64, offset: 9408)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !272, file: !273, line: 974, baseType: !2867, size: 64, offset: 9472)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !272, file: !273, line: 975, baseType: !2862, size: 192, offset: 9536)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !272, file: !273, line: 976, baseType: !266, size: 64, offset: 9728)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !272, file: !273, line: 977, baseType: !1348, size: 64, offset: 9792)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !272, file: !273, line: 978, baseType: !7, size: 32, offset: 9856)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !272, file: !273, line: 980, baseType: !1121, size: 64, offset: 9920)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !272, file: !273, line: 989, baseType: !2989, size: 128, offset: 9984)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2990, line: 35, size: 128, elements: !2991)
!2990 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2991 = !{!2992, !2993, !2994}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2989, file: !2990, line: 36, baseType: !197, size: 32)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2989, file: !2990, line: 37, baseType: !291, size: 32, offset: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2989, file: !2990, line: 38, baseType: !2995, size: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2990, line: 23, flags: DIFlagFwdDecl)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !272, file: !273, line: 992, baseType: !318, size: 64, offset: 10112)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !272, file: !273, line: 993, baseType: !318, size: 64, offset: 10176)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !272, file: !273, line: 996, baseType: !155, offset: 10240)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !272, file: !273, line: 999, baseType: !253, offset: 10240)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !272, file: !273, line: 1001, baseType: !3002, size: 64, offset: 10240)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !273, line: 636, size: 64, elements: !3003)
!3003 = !{!3004}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3002, file: !273, line: 637, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !272, file: !273, line: 1005, baseType: !255, size: 128, offset: 10304)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !272, file: !273, line: 1007, baseType: !271, size: 64, offset: 10432)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !272, file: !273, line: 1009, baseType: !3009, size: 64, offset: 10496)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !273, line: 1009, flags: DIFlagFwdDecl)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !272, file: !273, line: 1043, baseType: !130, size: 64, offset: 10560)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !272, file: !273, line: 1046, baseType: !3013, size: 64, offset: 10624)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !273, line: 41, flags: DIFlagFwdDecl)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !272, file: !273, line: 1050, baseType: !3016, size: 64, offset: 10688)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !273, line: 42, flags: DIFlagFwdDecl)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !272, file: !273, line: 1054, baseType: !3019, size: 64, offset: 10752)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !273, line: 55, flags: DIFlagFwdDecl)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !272, file: !273, line: 1056, baseType: !1046, size: 64, offset: 10816)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !272, file: !273, line: 1058, baseType: !3023, size: 64, offset: 10880)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3025, line: 99, size: 704, elements: !3026)
!3025 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3026 = !{!3027, !3028, !3029, !3030, !3031, !3032, !3033, !3052, !3053}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3024, file: !3025, line: 100, baseType: !143, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3024, file: !3025, line: 101, baseType: !291, size: 32, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3024, file: !3025, line: 102, baseType: !291, size: 32, offset: 96)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3024, file: !3025, line: 105, baseType: !155, offset: 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3024, file: !3025, line: 107, baseType: !204, size: 16, offset: 128)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3024, file: !3025, line: 109, baseType: !2133, size: 128, offset: 192)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3024, file: !3025, line: 110, baseType: !3034, size: 64, offset: 320)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3025, line: 73, size: 448, elements: !3036)
!3036 = !{!3037, !3040, !3041, !3046, !3051}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3035, file: !3025, line: 74, baseType: !3038, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3025, line: 74, flags: DIFlagFwdDecl)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3035, file: !3025, line: 75, baseType: !3023, size: 64, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, scope: !3035, file: !3025, line: 83, baseType: !3042, size: 128, offset: 128)
!3042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3035, file: !3025, line: 83, size: 128, elements: !3043)
!3043 = !{!3044, !3045}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3042, file: !3025, line: 84, baseType: !171, size: 128)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3042, file: !3025, line: 85, baseType: !2397, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, scope: !3035, file: !3025, line: 87, baseType: !3047, size: 128, offset: 256)
!3047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3035, file: !3025, line: 87, size: 128, elements: !3048)
!3048 = !{!3049, !3050}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3047, file: !3025, line: 88, baseType: !748, size: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3047, file: !3025, line: 89, baseType: !1118, size: 128, align: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3035, file: !3025, line: 92, baseType: !7, size: 32, offset: 384)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3024, file: !3025, line: 111, baseType: !744, size: 64, offset: 384)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3024, file: !3025, line: 113, baseType: !1208, size: 256, offset: 448)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !272, file: !273, line: 1061, baseType: !3055, size: 64, offset: 10944)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !273, line: 43, flags: DIFlagFwdDecl)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !272, file: !273, line: 1064, baseType: !266, size: 64, offset: 11008)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !272, file: !273, line: 1065, baseType: !3059, size: 64, offset: 11072)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2863, line: 14, baseType: !3061)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2863, line: 12, size: 384, elements: !3062)
!3062 = !{!3063}
!3063 = !DIDerivedType(tag: DW_TAG_member, scope: !3061, file: !2863, line: 13, baseType: !3064, size: 384)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3061, file: !2863, line: 13, size: 384, elements: !3065)
!3065 = !{!3066, !3067, !3068, !3069}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3064, file: !2863, line: 13, baseType: !197, size: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3064, file: !2863, line: 13, baseType: !197, size: 32, offset: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3064, file: !2863, line: 13, baseType: !197, size: 32, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3064, file: !2863, line: 13, baseType: !3070, size: 256, offset: 128)
!3070 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3071, line: 32, size: 256, elements: !3072)
!3071 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3072 = !{!3073, !3078, !3091, !3097, !3106, !3126, !3131}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3070, file: !3071, line: 37, baseType: !3074, size: 64)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3070, file: !3071, line: 34, size: 64, elements: !3075)
!3075 = !{!3076, !3077}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3074, file: !3071, line: 35, baseType: !2777, size: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3074, file: !3071, line: 36, baseType: !563, size: 32, offset: 32)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3070, file: !3071, line: 45, baseType: !3079, size: 192)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3070, file: !3071, line: 40, size: 192, elements: !3080)
!3080 = !{!3081, !3083, !3084, !3090}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3079, file: !3071, line: 41, baseType: !3082, size: 32)
!3082 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !399, line: 95, baseType: !197)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3079, file: !3071, line: 42, baseType: !197, size: 32, offset: 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3079, file: !3071, line: 43, baseType: !3085, size: 64, offset: 64)
!3085 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3071, line: 11, baseType: !3086)
!3086 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3071, line: 8, size: 64, elements: !3087)
!3087 = !{!3088, !3089}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3086, file: !3071, line: 9, baseType: !197, size: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3086, file: !3071, line: 10, baseType: !130, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3079, file: !3071, line: 44, baseType: !197, size: 32, offset: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3070, file: !3071, line: 52, baseType: !3092, size: 128)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3070, file: !3071, line: 48, size: 128, elements: !3093)
!3093 = !{!3094, !3095, !3096}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3092, file: !3071, line: 49, baseType: !2777, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3092, file: !3071, line: 50, baseType: !563, size: 32, offset: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3092, file: !3071, line: 51, baseType: !3085, size: 64, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3070, file: !3071, line: 61, baseType: !3098, size: 256)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3070, file: !3071, line: 55, size: 256, elements: !3099)
!3099 = !{!3100, !3101, !3102, !3103, !3105}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3098, file: !3071, line: 56, baseType: !2777, size: 32)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3098, file: !3071, line: 57, baseType: !563, size: 32, offset: 32)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3098, file: !3071, line: 58, baseType: !197, size: 32, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3098, file: !3071, line: 59, baseType: !3104, size: 64, offset: 128)
!3104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !399, line: 94, baseType: !1347)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3098, file: !3071, line: 60, baseType: !3104, size: 64, offset: 192)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3070, file: !3071, line: 95, baseType: !3107, size: 256)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3070, file: !3071, line: 64, size: 256, elements: !3108)
!3108 = !{!3109, !3110}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3107, file: !3071, line: 65, baseType: !130, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, scope: !3107, file: !3071, line: 77, baseType: !3111, size: 192, offset: 64)
!3111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3107, file: !3071, line: 77, size: 192, elements: !3112)
!3112 = !{!3113, !3114, !3121}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3111, file: !3071, line: 82, baseType: !1700, size: 16)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3111, file: !3071, line: 88, baseType: !3115, size: 192)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3111, file: !3071, line: 84, size: 192, elements: !3116)
!3116 = !{!3117, !3119, !3120}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3115, file: !3071, line: 85, baseType: !3118, size: 64)
!3118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 64, elements: !393)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3115, file: !3071, line: 86, baseType: !130, size: 64, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3115, file: !3071, line: 87, baseType: !130, size: 64, offset: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3111, file: !3071, line: 93, baseType: !3122, size: 96)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3111, file: !3071, line: 90, size: 96, elements: !3123)
!3123 = !{!3124, !3125}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3122, file: !3071, line: 91, baseType: !3118, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3122, file: !3071, line: 92, baseType: !126, size: 32, offset: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3070, file: !3071, line: 101, baseType: !3127, size: 128)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3070, file: !3071, line: 98, size: 128, elements: !3128)
!3128 = !{!3129, !3130}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3127, file: !3071, line: 99, baseType: !283, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3127, file: !3071, line: 100, baseType: !197, size: 32, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3070, file: !3071, line: 108, baseType: !3132, size: 128)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3070, file: !3071, line: 104, size: 128, elements: !3133)
!3133 = !{!3134, !3135, !3136}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3132, file: !3071, line: 105, baseType: !130, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3132, file: !3071, line: 106, baseType: !197, size: 32, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3132, file: !3071, line: 107, baseType: !7, size: 32, offset: 96)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !272, file: !273, line: 1067, baseType: !2935, offset: 11136)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !272, file: !273, line: 1099, baseType: !3139, size: 64, offset: 11136)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !273, line: 56, flags: DIFlagFwdDecl)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !272, file: !273, line: 1103, baseType: !171, size: 128, offset: 11200)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !272, file: !273, line: 1104, baseType: !3143, size: 64, offset: 11328)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !273, line: 46, flags: DIFlagFwdDecl)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !272, file: !273, line: 1105, baseType: !139, size: 192, offset: 11392)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !272, file: !273, line: 1106, baseType: !7, size: 32, offset: 11584)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !272, file: !273, line: 1109, baseType: !3148, size: 128, offset: 11648)
!3148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3149, size: 128, elements: !1658)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !273, line: 51, flags: DIFlagFwdDecl)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !272, file: !273, line: 1110, baseType: !139, size: 192, offset: 11776)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !272, file: !273, line: 1111, baseType: !171, size: 128, offset: 11968)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !272, file: !273, line: 1173, baseType: !3154, size: 64, offset: 12096)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3156, line: 62, size: 256, align: 256, elements: !3157)
!3156 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3157 = !{!3158, !3159, !3160, !3165}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3155, file: !3156, line: 75, baseType: !126, size: 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3155, file: !3156, line: 90, baseType: !126, size: 32, offset: 32)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3155, file: !3156, line: 124, baseType: !3161, size: 64, offset: 64)
!3161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3155, file: !3156, line: 109, size: 64, elements: !3162)
!3162 = !{!3163, !3164}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3161, file: !3156, line: 110, baseType: !319, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3161, file: !3156, line: 112, baseType: !319, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3155, file: !3156, line: 144, baseType: !126, size: 32, offset: 128)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !272, file: !273, line: 1174, baseType: !232, size: 32, offset: 12160)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !272, file: !273, line: 1179, baseType: !266, size: 64, offset: 12224)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !272, file: !273, line: 1182, baseType: !3169, size: 128, offset: 12288)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2613, line: 76, size: 128, elements: !3170)
!3170 = !{!3171, !3176, !3177}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3169, file: !2613, line: 85, baseType: !3172, size: 64)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3173, line: 7, size: 64, elements: !3174)
!3173 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3174 = !{!3175}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3172, file: !3173, line: 12, baseType: !434, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3169, file: !2613, line: 88, baseType: !695, size: 8, offset: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3169, file: !2613, line: 95, baseType: !695, size: 8, offset: 72)
!3178 = !DIDerivedType(tag: DW_TAG_member, scope: !272, file: !273, line: 1184, baseType: !3179, size: 128, offset: 12416)
!3179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !272, file: !273, line: 1184, size: 128, elements: !3180)
!3180 = !{!3181, !3182}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3179, file: !273, line: 1185, baseType: !286, size: 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3179, file: !273, line: 1186, baseType: !1118, size: 128, align: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !272, file: !273, line: 1190, baseType: !1570, size: 64, offset: 12544)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !272, file: !273, line: 1192, baseType: !3185, size: 128, offset: 12608)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2613, line: 64, size: 128, elements: !3186)
!3186 = !{!3187, !3188, !3189}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3185, file: !2613, line: 65, baseType: !534, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3185, file: !2613, line: 67, baseType: !126, size: 32, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3185, file: !2613, line: 68, baseType: !126, size: 32, offset: 96)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !272, file: !273, line: 1206, baseType: !197, size: 32, offset: 12736)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !272, file: !273, line: 1207, baseType: !197, size: 32, offset: 12768)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !272, file: !273, line: 1209, baseType: !266, size: 64, offset: 12800)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !272, file: !273, line: 1219, baseType: !318, size: 64, offset: 12864)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !272, file: !273, line: 1220, baseType: !318, size: 64, offset: 12928)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !272, file: !273, line: 1317, baseType: !197, size: 32, offset: 12992)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !272, file: !273, line: 1319, baseType: !271, size: 64, offset: 13056)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !272, file: !273, line: 1322, baseType: !3198, size: 64, offset: 13120)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3200, line: 56, size: 512, elements: !3201)
!3200 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3207, !3208, !3210}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3199, file: !3200, line: 57, baseType: !3198, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3199, file: !3200, line: 58, baseType: !130, size: 64, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3199, file: !3200, line: 59, baseType: !266, size: 64, offset: 128)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3199, file: !3200, line: 60, baseType: !266, size: 64, offset: 192)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3199, file: !3200, line: 61, baseType: !2312, size: 64, offset: 256)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3199, file: !3200, line: 62, baseType: !7, size: 32, offset: 320)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3199, file: !3200, line: 63, baseType: !3209, size: 64, offset: 384)
!3209 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !146, line: 153, baseType: !318)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3199, file: !3200, line: 64, baseType: !2084, size: 64, offset: 448)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !272, file: !273, line: 1326, baseType: !286, size: 32, offset: 13184)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !272, file: !273, line: 1342, baseType: !130, size: 64, offset: 13248)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !272, file: !273, line: 1343, baseType: !319, size: 64, offset: 13312)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !272, file: !273, line: 1344, baseType: !318, size: 64, offset: 13376)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !272, file: !273, line: 1345, baseType: !319, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !272, file: !273, line: 1346, baseType: !319, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !272, file: !273, line: 1347, baseType: !319, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !272, file: !273, line: 1348, baseType: !1118, size: 128, align: 64, offset: 13504)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !272, file: !273, line: 1358, baseType: !3220, size: 34816, offset: 13824)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3221, line: 485, size: 34816, elements: !3222)
!3221 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3222 = !{!3223, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3252, !3253, !3254, !3255, !3256, !3257, !3260, !3261, !3262}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3220, file: !3221, line: 487, baseType: !3224, size: 192)
!3224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3225, size: 192, elements: !760)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3226, line: 16, size: 64, elements: !3227)
!3226 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3227 = !{!3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3225, file: !3226, line: 17, baseType: !216, size: 16)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3225, file: !3226, line: 18, baseType: !216, size: 16, offset: 16)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3225, file: !3226, line: 19, baseType: !216, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3225, file: !3226, line: 19, baseType: !216, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3225, file: !3226, line: 19, baseType: !216, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3225, file: !3226, line: 19, baseType: !216, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3225, file: !3226, line: 19, baseType: !216, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3225, file: !3226, line: 20, baseType: !216, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3225, file: !3226, line: 20, baseType: !216, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3225, file: !3226, line: 20, baseType: !216, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3225, file: !3226, line: 20, baseType: !216, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3225, file: !3226, line: 20, baseType: !216, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3225, file: !3226, line: 20, baseType: !216, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3220, file: !3221, line: 491, baseType: !266, size: 64, offset: 192)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3220, file: !3221, line: 495, baseType: !204, size: 16, offset: 256)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3220, file: !3221, line: 496, baseType: !204, size: 16, offset: 272)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3220, file: !3221, line: 497, baseType: !204, size: 16, offset: 288)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3220, file: !3221, line: 498, baseType: !204, size: 16, offset: 304)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3220, file: !3221, line: 502, baseType: !266, size: 64, offset: 320)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3220, file: !3221, line: 503, baseType: !266, size: 64, offset: 384)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3220, file: !3221, line: 514, baseType: !3249, size: 256, offset: 448)
!3249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3250, size: 256, elements: !1618)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3221, line: 483, flags: DIFlagFwdDecl)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3220, file: !3221, line: 516, baseType: !266, size: 64, offset: 704)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3220, file: !3221, line: 518, baseType: !266, size: 64, offset: 768)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3220, file: !3221, line: 520, baseType: !266, size: 64, offset: 832)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3220, file: !3221, line: 521, baseType: !266, size: 64, offset: 896)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3220, file: !3221, line: 522, baseType: !266, size: 64, offset: 960)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3220, file: !3221, line: 528, baseType: !3258, size: 64, offset: 1024)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3221, line: 10, flags: DIFlagFwdDecl)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3220, file: !3221, line: 535, baseType: !266, size: 64, offset: 1088)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3220, file: !3221, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3220, file: !3221, line: 540, baseType: !3263, size: 33280, offset: 1536)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3264, line: 317, size: 33280, elements: !3265)
!3264 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3265 = !{!3266, !3267, !3268}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3263, file: !3264, line: 330, baseType: !7, size: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3263, file: !3264, line: 337, baseType: !266, size: 64, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3263, file: !3264, line: 348, baseType: !3269, size: 32768, offset: 512)
!3269 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3264, line: 304, size: 32768, elements: !3270)
!3270 = !{!3271, !3286, !3323, !3373, !3386}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3269, file: !3264, line: 305, baseType: !3272, size: 896)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3264, line: 12, size: 896, elements: !3273)
!3273 = !{!3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3285}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3272, file: !3264, line: 13, baseType: !232, size: 32)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3272, file: !3264, line: 14, baseType: !232, size: 32, offset: 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3272, file: !3264, line: 15, baseType: !232, size: 32, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3272, file: !3264, line: 16, baseType: !232, size: 32, offset: 96)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3272, file: !3264, line: 17, baseType: !232, size: 32, offset: 128)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3272, file: !3264, line: 18, baseType: !232, size: 32, offset: 160)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3272, file: !3264, line: 19, baseType: !232, size: 32, offset: 192)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3272, file: !3264, line: 22, baseType: !3282, size: 640, offset: 224)
!3282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 640, elements: !3283)
!3283 = !{!3284}
!3284 = !DISubrange(count: 20)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3272, file: !3264, line: 25, baseType: !232, size: 32, offset: 864)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3269, file: !3264, line: 306, baseType: !3287, size: 4096, align: 128)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3264, line: 34, size: 4096, align: 128, elements: !3288)
!3288 = !{!3289, !3290, !3291, !3292, !3293, !3308, !3309, !3310, !3312, !3314, !3318}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3287, file: !3264, line: 35, baseType: !216, size: 16)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3287, file: !3264, line: 36, baseType: !216, size: 16, offset: 16)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3287, file: !3264, line: 37, baseType: !216, size: 16, offset: 32)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3287, file: !3264, line: 38, baseType: !216, size: 16, offset: 48)
!3293 = !DIDerivedType(tag: DW_TAG_member, scope: !3287, file: !3264, line: 39, baseType: !3294, size: 128, offset: 64)
!3294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3287, file: !3264, line: 39, size: 128, elements: !3295)
!3295 = !{!3296, !3301}
!3296 = !DIDerivedType(tag: DW_TAG_member, scope: !3294, file: !3264, line: 40, baseType: !3297, size: 128)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3294, file: !3264, line: 40, size: 128, elements: !3298)
!3298 = !{!3299, !3300}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3297, file: !3264, line: 41, baseType: !318, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3297, file: !3264, line: 42, baseType: !318, size: 64, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, scope: !3294, file: !3264, line: 44, baseType: !3302, size: 128)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3294, file: !3264, line: 44, size: 128, elements: !3303)
!3303 = !{!3304, !3305, !3306, !3307}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3302, file: !3264, line: 45, baseType: !232, size: 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3302, file: !3264, line: 46, baseType: !232, size: 32, offset: 32)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3302, file: !3264, line: 47, baseType: !232, size: 32, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3302, file: !3264, line: 48, baseType: !232, size: 32, offset: 96)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3287, file: !3264, line: 51, baseType: !232, size: 32, offset: 192)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3287, file: !3264, line: 52, baseType: !232, size: 32, offset: 224)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3287, file: !3264, line: 55, baseType: !3311, size: 1024, offset: 256)
!3311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 1024, elements: !618)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3287, file: !3264, line: 58, baseType: !3313, size: 2048, offset: 1280)
!3313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 2048, elements: !1993)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3287, file: !3264, line: 60, baseType: !3315, size: 384, offset: 3328)
!3315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 384, elements: !3316)
!3316 = !{!3317}
!3317 = !DISubrange(count: 12)
!3318 = !DIDerivedType(tag: DW_TAG_member, scope: !3287, file: !3264, line: 62, baseType: !3319, size: 384, offset: 3712)
!3319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3287, file: !3264, line: 62, size: 384, elements: !3320)
!3320 = !{!3321, !3322}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3319, file: !3264, line: 63, baseType: !3315, size: 384)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3319, file: !3264, line: 64, baseType: !3315, size: 384)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3269, file: !3264, line: 307, baseType: !3324, size: 1088)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3264, line: 79, size: 1088, elements: !3325)
!3325 = !{!3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3372}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3324, file: !3264, line: 80, baseType: !232, size: 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3324, file: !3264, line: 81, baseType: !232, size: 32, offset: 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3324, file: !3264, line: 82, baseType: !232, size: 32, offset: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3324, file: !3264, line: 83, baseType: !232, size: 32, offset: 96)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3324, file: !3264, line: 84, baseType: !232, size: 32, offset: 128)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3324, file: !3264, line: 85, baseType: !232, size: 32, offset: 160)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3324, file: !3264, line: 86, baseType: !232, size: 32, offset: 192)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3324, file: !3264, line: 88, baseType: !3282, size: 640, offset: 224)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3324, file: !3264, line: 89, baseType: !217, size: 8, offset: 864)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3324, file: !3264, line: 90, baseType: !217, size: 8, offset: 872)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3324, file: !3264, line: 91, baseType: !217, size: 8, offset: 880)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3324, file: !3264, line: 92, baseType: !217, size: 8, offset: 888)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3324, file: !3264, line: 93, baseType: !217, size: 8, offset: 896)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3324, file: !3264, line: 94, baseType: !217, size: 8, offset: 904)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3324, file: !3264, line: 95, baseType: !3341, size: 64, offset: 960)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3343, line: 11, size: 128, elements: !3344)
!3343 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3344 = !{!3345, !3346}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3342, file: !3343, line: 12, baseType: !283, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3342, file: !3343, line: 13, baseType: !3347, size: 64, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3349, line: 56, size: 1344, elements: !3350)
!3349 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3350 = !{!3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3348, file: !3349, line: 61, baseType: !266, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3348, file: !3349, line: 62, baseType: !266, size: 64, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3348, file: !3349, line: 63, baseType: !266, size: 64, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3348, file: !3349, line: 64, baseType: !266, size: 64, offset: 192)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3348, file: !3349, line: 65, baseType: !266, size: 64, offset: 256)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3348, file: !3349, line: 66, baseType: !266, size: 64, offset: 320)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3348, file: !3349, line: 68, baseType: !266, size: 64, offset: 384)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3348, file: !3349, line: 69, baseType: !266, size: 64, offset: 448)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3348, file: !3349, line: 70, baseType: !266, size: 64, offset: 512)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3348, file: !3349, line: 71, baseType: !266, size: 64, offset: 576)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3348, file: !3349, line: 72, baseType: !266, size: 64, offset: 640)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3348, file: !3349, line: 73, baseType: !266, size: 64, offset: 704)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3348, file: !3349, line: 74, baseType: !266, size: 64, offset: 768)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3348, file: !3349, line: 75, baseType: !266, size: 64, offset: 832)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3348, file: !3349, line: 76, baseType: !266, size: 64, offset: 896)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3348, file: !3349, line: 81, baseType: !266, size: 64, offset: 960)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3348, file: !3349, line: 83, baseType: !266, size: 64, offset: 1024)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3348, file: !3349, line: 84, baseType: !266, size: 64, offset: 1088)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3348, file: !3349, line: 85, baseType: !266, size: 64, offset: 1152)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3348, file: !3349, line: 86, baseType: !266, size: 64, offset: 1216)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3348, file: !3349, line: 87, baseType: !266, size: 64, offset: 1280)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3324, file: !3264, line: 96, baseType: !232, size: 32, offset: 1024)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3269, file: !3264, line: 308, baseType: !3374, size: 4608, align: 512)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3264, line: 289, size: 4608, align: 512, elements: !3375)
!3375 = !{!3376, !3377, !3384}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3374, file: !3264, line: 290, baseType: !3287, size: 4096, align: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3374, file: !3264, line: 291, baseType: !3378, size: 512, offset: 4096)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3264, line: 268, size: 512, elements: !3379)
!3379 = !{!3380, !3381, !3382}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3378, file: !3264, line: 269, baseType: !318, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3378, file: !3264, line: 270, baseType: !318, size: 64, offset: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3378, file: !3264, line: 271, baseType: !3383, size: 384, offset: 128)
!3383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 384, elements: !1718)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3374, file: !3264, line: 292, baseType: !3385, offset: 4608)
!3385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, elements: !1814)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3269, file: !3264, line: 309, baseType: !3387, size: 32768)
!3387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 32768, elements: !3388)
!3388 = !{!3389}
!3389 = !DISubrange(count: 4096)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !180, file: !181, line: 704, baseType: !249, size: 192, offset: 512)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !180, file: !181, line: 706, baseType: !197, size: 32, offset: 704)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !180, file: !181, line: 707, baseType: !197, size: 32, offset: 736)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !180, file: !181, line: 708, baseType: !3394, size: 5568, offset: 768)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !3395)
!3395 = !{!3396, !3397, !3399, !3402, !3403, !3454, !3545, !3546, !3547, !3548, !3549, !3558, !3663, !3676, !3871, !3872, !3876, !3878, !3879, !3880, !3884, !3890, !3891, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3932, !3933, !3934, !3937, !3940, !3941, !3942, !3943}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3394, file: !73, line: 462, baseType: !1952, size: 512)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3394, file: !73, line: 463, baseType: !3398, size: 64, offset: 512)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3394, file: !73, line: 465, baseType: !3400, size: 64, offset: 576)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3394, file: !73, line: 467, baseType: !131, size: 64, offset: 640)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3394, file: !73, line: 468, baseType: !3404, size: 64, offset: 704)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3406)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3407)
!3407 = !{!3408, !3409, !3410, !3414, !3419, !3423}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3406, file: !73, line: 88, baseType: !131, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3406, file: !73, line: 89, baseType: !2031, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3406, file: !73, line: 90, baseType: !3411, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!197, !3398, !1986}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3406, file: !73, line: 91, baseType: !3415, size: 64, offset: 192)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!676, !3398, !3418, !2101, !2102}
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3406, file: !73, line: 93, baseType: !3420, size: 64, offset: 256)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{null, !3398}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3406, file: !73, line: 95, baseType: !3424, size: 64, offset: 320)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3426)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3427)
!3427 = !{!3428, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3426, file: !80, line: 279, baseType: !3429, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!197, !3398}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3426, file: !80, line: 280, baseType: !3420, size: 64, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3426, file: !80, line: 281, baseType: !3429, size: 64, offset: 128)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3426, file: !80, line: 282, baseType: !3429, size: 64, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3426, file: !80, line: 283, baseType: !3429, size: 64, offset: 256)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3426, file: !80, line: 284, baseType: !3429, size: 64, offset: 320)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3426, file: !80, line: 285, baseType: !3429, size: 64, offset: 384)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3426, file: !80, line: 286, baseType: !3429, size: 64, offset: 448)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3426, file: !80, line: 287, baseType: !3429, size: 64, offset: 512)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3426, file: !80, line: 288, baseType: !3429, size: 64, offset: 576)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3426, file: !80, line: 289, baseType: !3429, size: 64, offset: 640)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3426, file: !80, line: 290, baseType: !3429, size: 64, offset: 704)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3426, file: !80, line: 291, baseType: !3429, size: 64, offset: 768)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3426, file: !80, line: 292, baseType: !3429, size: 64, offset: 832)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3426, file: !80, line: 293, baseType: !3429, size: 64, offset: 896)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3426, file: !80, line: 294, baseType: !3429, size: 64, offset: 960)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3426, file: !80, line: 295, baseType: !3429, size: 64, offset: 1024)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3426, file: !80, line: 296, baseType: !3429, size: 64, offset: 1088)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3426, file: !80, line: 297, baseType: !3429, size: 64, offset: 1152)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3426, file: !80, line: 298, baseType: !3429, size: 64, offset: 1216)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3426, file: !80, line: 299, baseType: !3429, size: 64, offset: 1280)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3426, file: !80, line: 300, baseType: !3429, size: 64, offset: 1344)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3426, file: !80, line: 301, baseType: !3429, size: 64, offset: 1408)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3394, file: !73, line: 470, baseType: !3455, size: 64, offset: 768)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3457, line: 82, size: 1408, elements: !3458)
!3457 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3458 = !{!3459, !3460, !3461, !3462, !3463, !3464, !3465, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3540, !3543, !3544}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3456, file: !3457, line: 83, baseType: !131, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3456, file: !3457, line: 84, baseType: !131, size: 64, offset: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3456, file: !3457, line: 85, baseType: !3398, size: 64, offset: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3456, file: !3457, line: 86, baseType: !2031, size: 64, offset: 192)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3456, file: !3457, line: 87, baseType: !2031, size: 64, offset: 256)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3456, file: !3457, line: 88, baseType: !2031, size: 64, offset: 320)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3456, file: !3457, line: 90, baseType: !3466, size: 64, offset: 384)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!197, !3398, !3469}
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3471)
!3471 = !{!3472, !3473, !3474, !3475, !3476, !3477, !3478, !3491, !3504, !3505, !3506, !3507, !3508, !3516, !3517, !3518, !3519, !3520, !3521}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3470, file: !67, line: 96, baseType: !131, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3470, file: !67, line: 97, baseType: !3455, size: 64, offset: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3470, file: !67, line: 99, baseType: !184, size: 64, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3470, file: !67, line: 100, baseType: !131, size: 64, offset: 192)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3470, file: !67, line: 102, baseType: !695, size: 8, offset: 256)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3470, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3470, file: !67, line: 105, baseType: !3479, size: 64, offset: 320)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3481)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3482, line: 262, size: 1600, elements: !3483)
!3482 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3483 = !{!3484, !3485, !3486, !3490}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3481, file: !3482, line: 263, baseType: !1144, size: 256)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3481, file: !3482, line: 264, baseType: !1144, size: 256, offset: 256)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3481, file: !3482, line: 265, baseType: !3487, size: 1024, offset: 512)
!3487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 1024, elements: !3488)
!3488 = !{!3489}
!3489 = !DISubrange(count: 128)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3481, file: !3482, line: 266, baseType: !2084, size: 64, offset: 1536)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3470, file: !67, line: 106, baseType: !3492, size: 64, offset: 384)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3494)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3482, line: 210, size: 256, elements: !3495)
!3495 = !{!3496, !3500, !3502, !3503}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3494, file: !3482, line: 211, baseType: !3497, size: 72)
!3497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 72, elements: !3498)
!3498 = !{!3499}
!3499 = !DISubrange(count: 9)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3494, file: !3482, line: 212, baseType: !3501, size: 64, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3482, line: 14, baseType: !266)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3494, file: !3482, line: 213, baseType: !126, size: 32, offset: 192)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3494, file: !3482, line: 214, baseType: !126, size: 32, offset: 224)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3470, file: !67, line: 108, baseType: !3429, size: 64, offset: 448)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3470, file: !67, line: 109, baseType: !3420, size: 64, offset: 512)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3470, file: !67, line: 110, baseType: !3429, size: 64, offset: 576)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3470, file: !67, line: 111, baseType: !3420, size: 64, offset: 640)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3470, file: !67, line: 112, baseType: !3509, size: 64, offset: 704)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!197, !3398, !3512}
!3512 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3513)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3514)
!3514 = !{!3515}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3513, file: !80, line: 51, baseType: !197, size: 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3470, file: !67, line: 113, baseType: !3429, size: 64, offset: 768)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3470, file: !67, line: 114, baseType: !2031, size: 64, offset: 832)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3470, file: !67, line: 115, baseType: !2031, size: 64, offset: 896)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3470, file: !67, line: 117, baseType: !3424, size: 64, offset: 960)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3470, file: !67, line: 118, baseType: !3420, size: 64, offset: 1024)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3470, file: !67, line: 120, baseType: !3522, size: 64, offset: 1088)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3456, file: !3457, line: 91, baseType: !3411, size: 64, offset: 448)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3456, file: !3457, line: 92, baseType: !3429, size: 64, offset: 512)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3456, file: !3457, line: 93, baseType: !3420, size: 64, offset: 576)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3456, file: !3457, line: 94, baseType: !3429, size: 64, offset: 640)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3456, file: !3457, line: 95, baseType: !3420, size: 64, offset: 704)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3456, file: !3457, line: 97, baseType: !3429, size: 64, offset: 768)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3456, file: !3457, line: 98, baseType: !3429, size: 64, offset: 832)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3456, file: !3457, line: 100, baseType: !3509, size: 64, offset: 896)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3456, file: !3457, line: 101, baseType: !3429, size: 64, offset: 960)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3456, file: !3457, line: 103, baseType: !3429, size: 64, offset: 1024)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3456, file: !3457, line: 105, baseType: !3429, size: 64, offset: 1088)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3456, file: !3457, line: 107, baseType: !3424, size: 64, offset: 1152)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3456, file: !3457, line: 109, baseType: !3537, size: 64, offset: 1216)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3539)
!3539 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3457, line: 109, flags: DIFlagFwdDecl)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3456, file: !3457, line: 111, baseType: !3541, size: 64, offset: 1280)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3457, line: 111, flags: DIFlagFwdDecl)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3456, file: !3457, line: 112, baseType: !754, offset: 1344)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3456, file: !3457, line: 114, baseType: !695, size: 8, offset: 1344)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3394, file: !73, line: 471, baseType: !3469, size: 64, offset: 832)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3394, file: !73, line: 473, baseType: !130, size: 64, offset: 896)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3394, file: !73, line: 475, baseType: !130, size: 64, offset: 960)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3394, file: !73, line: 480, baseType: !139, size: 192, offset: 1024)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3394, file: !73, line: 484, baseType: !3550, size: 576, offset: 1216)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3551)
!3551 = !{!3552, !3553, !3554, !3555, !3556, !3557}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3550, file: !73, line: 362, baseType: !171, size: 128)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3550, file: !73, line: 363, baseType: !171, size: 128, offset: 128)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3550, file: !73, line: 364, baseType: !171, size: 128, offset: 256)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3550, file: !73, line: 365, baseType: !171, size: 128, offset: 384)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3550, file: !73, line: 366, baseType: !695, size: 8, offset: 512)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3550, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3394, file: !73, line: 485, baseType: !3559, size: 2304, offset: 1792)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3560)
!3560 = !{!3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3656, !3660}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3559, file: !80, line: 566, baseType: !3512, size: 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3559, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3559, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3559, file: !80, line: 569, baseType: !695, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3559, file: !80, line: 570, baseType: !695, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3559, file: !80, line: 571, baseType: !695, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3559, file: !80, line: 572, baseType: !695, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3559, file: !80, line: 573, baseType: !695, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3559, file: !80, line: 574, baseType: !695, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3559, file: !80, line: 575, baseType: !695, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3559, file: !80, line: 576, baseType: !695, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3559, file: !80, line: 577, baseType: !232, size: 32, offset: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3559, file: !80, line: 578, baseType: !155, offset: 96)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3559, file: !80, line: 580, baseType: !171, size: 128, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3559, file: !80, line: 581, baseType: !2478, size: 192, offset: 256)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3559, file: !80, line: 582, baseType: !3577, size: 64, offset: 448)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3579, line: 43, size: 1472, elements: !3580)
!3579 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3580 = !{!3581, !3582, !3583, !3584, !3585, !3588, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3578, file: !3579, line: 44, baseType: !131, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3578, file: !3579, line: 45, baseType: !197, size: 32, offset: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3578, file: !3579, line: 46, baseType: !171, size: 128, offset: 128)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3578, file: !3579, line: 47, baseType: !155, offset: 256)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3578, file: !3579, line: 48, baseType: !3586, size: 64, offset: 256)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3578, file: !3579, line: 49, baseType: !3589, size: 320, offset: 320)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3590, line: 11, size: 320, elements: !3591)
!3590 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3591 = !{!3592, !3593, !3594, !3599}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3589, file: !3590, line: 16, baseType: !748, size: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3589, file: !3590, line: 17, baseType: !266, size: 64, offset: 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3589, file: !3590, line: 18, baseType: !3595, size: 64, offset: 192)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{null, !3598}
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3589, file: !3590, line: 19, baseType: !232, size: 32, offset: 256)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3578, file: !3579, line: 50, baseType: !266, size: 64, offset: 640)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3578, file: !3579, line: 51, baseType: !363, size: 64, offset: 704)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3578, file: !3579, line: 52, baseType: !363, size: 64, offset: 768)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3578, file: !3579, line: 53, baseType: !363, size: 64, offset: 832)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3578, file: !3579, line: 54, baseType: !363, size: 64, offset: 896)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3578, file: !3579, line: 55, baseType: !363, size: 64, offset: 960)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3578, file: !3579, line: 56, baseType: !266, size: 64, offset: 1024)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3578, file: !3579, line: 57, baseType: !266, size: 64, offset: 1088)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3578, file: !3579, line: 58, baseType: !266, size: 64, offset: 1152)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3578, file: !3579, line: 59, baseType: !266, size: 64, offset: 1216)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3578, file: !3579, line: 60, baseType: !266, size: 64, offset: 1280)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3578, file: !3579, line: 61, baseType: !3398, size: 64, offset: 1344)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3578, file: !3579, line: 62, baseType: !695, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3578, file: !3579, line: 63, baseType: !695, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3559, file: !80, line: 583, baseType: !695, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3559, file: !80, line: 584, baseType: !695, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3559, file: !80, line: 585, baseType: !695, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3559, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3559, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3559, file: !80, line: 592, baseType: !355, size: 512, offset: 576)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3559, file: !80, line: 593, baseType: !318, size: 64, offset: 1088)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3559, file: !80, line: 594, baseType: !1208, size: 256, offset: 1152)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3559, file: !80, line: 595, baseType: !1099, size: 128, offset: 1408)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3559, file: !80, line: 596, baseType: !3586, size: 64, offset: 1536)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3559, file: !80, line: 597, baseType: !291, size: 32, offset: 1600)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3559, file: !80, line: 598, baseType: !291, size: 32, offset: 1632)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3559, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3559, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3559, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3559, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3559, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3559, file: !80, line: 604, baseType: !695, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3559, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3559, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3559, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3559, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3559, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3559, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3559, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3559, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3559, file: !80, line: 613, baseType: !197, size: 32, offset: 1792)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3559, file: !80, line: 614, baseType: !197, size: 32, offset: 1824)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3559, file: !80, line: 615, baseType: !318, size: 64, offset: 1856)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3559, file: !80, line: 616, baseType: !318, size: 64, offset: 1920)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3559, file: !80, line: 617, baseType: !318, size: 64, offset: 1984)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3559, file: !80, line: 618, baseType: !318, size: 64, offset: 2048)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3559, file: !80, line: 620, baseType: !3647, size: 64, offset: 2112)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3649)
!3649 = !{!3650, !3651, !3652, !3653}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3648, file: !80, line: 537, baseType: !155)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3648, file: !80, line: 538, baseType: !7, size: 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3648, file: !80, line: 540, baseType: !171, size: 128, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3648, file: !80, line: 543, baseType: !3654, size: 64, offset: 192)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3559, file: !80, line: 621, baseType: !3657, size: 64, offset: 2176)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{null, !3398, !1674}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3559, file: !80, line: 622, baseType: !3661, size: 64, offset: 2240)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3394, file: !73, line: 486, baseType: !3664, size: 64, offset: 4096)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3666)
!3666 = !{!3667, !3668, !3669, !3673, !3674, !3675}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3665, file: !80, line: 643, baseType: !3426, size: 1472)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3665, file: !80, line: 644, baseType: !3429, size: 64, offset: 1472)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3665, file: !80, line: 645, baseType: !3670, size: 64, offset: 1536)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{null, !3398, !695}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3665, file: !80, line: 646, baseType: !3429, size: 64, offset: 1600)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3665, file: !80, line: 647, baseType: !3420, size: 64, offset: 1664)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3665, file: !80, line: 648, baseType: !3420, size: 64, offset: 1728)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3394, file: !73, line: 493, baseType: !3677, size: 64, offset: 4160)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3679)
!3679 = !{!3680, !3681, !3682, !3855, !3856, !3857, !3858, !3859, !3860, !3863, !3864, !3865, !3866, !3867, !3868, !3869}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3678, file: !94, line: 163, baseType: !171, size: 128)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3678, file: !94, line: 164, baseType: !131, size: 64, offset: 128)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3678, file: !94, line: 165, baseType: !3683, size: 64, offset: 192)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3685)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3686)
!3686 = !{!3687, !3805, !3816, !3821, !3825, !3832, !3836, !3840, !3847, !3851}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3685, file: !94, line: 106, baseType: !3688, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!197, !3677, !3691, !93}
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3693, line: 51, size: 1344, elements: !3694)
!3693 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3694 = !{!3695, !3696, !3698, !3699, !3789, !3798, !3799, !3800, !3801, !3802, !3803, !3804}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3692, file: !3693, line: 52, baseType: !131, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3692, file: !3693, line: 53, baseType: !3697, size: 32, offset: 64)
!3697 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3693, line: 28, baseType: !232)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3692, file: !3693, line: 54, baseType: !131, size: 64, offset: 128)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3692, file: !3693, line: 55, baseType: !3700, size: 192, offset: 192)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3701, line: 17, size: 192, elements: !3702)
!3701 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3702 = !{!3703, !3705, !3788}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3700, file: !3701, line: 18, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3700, file: !3701, line: 19, baseType: !3706, size: 64, offset: 64)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3708)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3701, line: 110, size: 1152, elements: !3709)
!3709 = !{!3710, !3714, !3718, !3724, !3730, !3734, !3738, !3743, !3747, !3748, !3752, !3756, !3760, !3771, !3772, !3773, !3774, !3784}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3708, file: !3701, line: 111, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!3704, !3704}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3708, file: !3701, line: 112, baseType: !3715, size: 64, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{null, !3704}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3708, file: !3701, line: 113, baseType: !3719, size: 64, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!695, !3722}
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3700)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3708, file: !3701, line: 114, baseType: !3725, size: 64, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!2084, !3722, !3728}
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3394)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3708, file: !3701, line: 116, baseType: !3731, size: 64, offset: 256)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!695, !3722, !131}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3708, file: !3701, line: 118, baseType: !3735, size: 64, offset: 320)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!197, !3722, !131, !7, !130, !1348}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3708, file: !3701, line: 123, baseType: !3739, size: 64, offset: 384)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!197, !3722, !131, !3742, !1348}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3708, file: !3701, line: 126, baseType: !3744, size: 64, offset: 448)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!131, !3722}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3708, file: !3701, line: 127, baseType: !3744, size: 64, offset: 512)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3708, file: !3701, line: 128, baseType: !3749, size: 64, offset: 576)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!3704, !3722}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3708, file: !3701, line: 130, baseType: !3753, size: 64, offset: 640)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!3704, !3722, !3704}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3708, file: !3701, line: 133, baseType: !3757, size: 64, offset: 704)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!3704, !3722, !131}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3708, file: !3701, line: 135, baseType: !3761, size: 64, offset: 768)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!197, !3722, !131, !131, !7, !7, !3764}
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3701, line: 43, size: 640, elements: !3766)
!3766 = !{!3767, !3768, !3769}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3765, file: !3701, line: 44, baseType: !3704, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3765, file: !3701, line: 45, baseType: !7, size: 32, offset: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3765, file: !3701, line: 46, baseType: !3770, size: 512, offset: 128)
!3770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 512, elements: !393)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3708, file: !3701, line: 140, baseType: !3753, size: 64, offset: 832)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3708, file: !3701, line: 143, baseType: !3749, size: 64, offset: 896)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3708, file: !3701, line: 145, baseType: !3711, size: 64, offset: 960)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3708, file: !3701, line: 146, baseType: !3775, size: 64, offset: 1024)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!197, !3722, !3778}
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3701, line: 29, size: 128, elements: !3780)
!3780 = !{!3781, !3782, !3783}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3779, file: !3701, line: 30, baseType: !7, size: 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3779, file: !3701, line: 31, baseType: !7, size: 32, offset: 32)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3779, file: !3701, line: 32, baseType: !3722, size: 64, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3708, file: !3701, line: 148, baseType: !3785, size: 64, offset: 1088)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!197, !3722, !3398}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3700, file: !3701, line: 20, baseType: !3398, size: 64, offset: 128)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3692, file: !3693, line: 57, baseType: !3790, size: 64, offset: 384)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3693, line: 31, size: 704, elements: !3792)
!3792 = !{!3793, !3794, !3795, !3796, !3797}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3791, file: !3693, line: 32, baseType: !676, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3791, file: !3693, line: 33, baseType: !197, size: 32, offset: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3791, file: !3693, line: 34, baseType: !130, size: 64, offset: 128)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3791, file: !3693, line: 35, baseType: !3790, size: 64, offset: 192)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3791, file: !3693, line: 43, baseType: !2046, size: 448, offset: 256)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3692, file: !3693, line: 58, baseType: !3790, size: 64, offset: 448)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3692, file: !3693, line: 59, baseType: !3691, size: 64, offset: 512)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3692, file: !3693, line: 60, baseType: !3691, size: 64, offset: 576)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3692, file: !3693, line: 61, baseType: !3691, size: 64, offset: 640)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3692, file: !3693, line: 63, baseType: !1952, size: 512, offset: 704)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3692, file: !3693, line: 65, baseType: !266, size: 64, offset: 1216)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3692, file: !3693, line: 66, baseType: !130, size: 64, offset: 1280)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3685, file: !94, line: 108, baseType: !3806, size: 64, offset: 64)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!197, !3677, !3809, !93}
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3811)
!3811 = !{!3812, !3813, !3814}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3810, file: !94, line: 64, baseType: !3704, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3810, file: !94, line: 65, baseType: !197, size: 32, offset: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3810, file: !94, line: 66, baseType: !3815, size: 512, offset: 96)
!3815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 512, elements: !1152)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3685, file: !94, line: 110, baseType: !3817, size: 64, offset: 128)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!197, !3677, !7, !3820}
!3820 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !146, line: 164, baseType: !266)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3685, file: !94, line: 111, baseType: !3822, size: 64, offset: 192)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{null, !3677, !7}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3685, file: !94, line: 112, baseType: !3826, size: 64, offset: 256)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!197, !3677, !3691, !3829, !7, !3831, !1127}
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3685, file: !94, line: 117, baseType: !3833, size: 64, offset: 320)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!197, !3677, !7, !7, !130}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3685, file: !94, line: 119, baseType: !3837, size: 64, offset: 384)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{null, !3677, !7, !7}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3685, file: !94, line: 121, baseType: !3841, size: 64, offset: 448)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!197, !3677, !3844, !695}
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3846, line: 11, flags: DIFlagFwdDecl)
!3846 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3685, file: !94, line: 122, baseType: !3848, size: 64, offset: 512)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{null, !3677, !3844}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3685, file: !94, line: 123, baseType: !3852, size: 64, offset: 576)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!197, !3677, !3809, !3831, !1127}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3678, file: !94, line: 166, baseType: !130, size: 64, offset: 256)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3678, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3678, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3678, file: !94, line: 171, baseType: !3704, size: 64, offset: 384)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3678, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3678, file: !94, line: 173, baseType: !3861, size: 64, offset: 512)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3678, file: !94, line: 175, baseType: !3677, size: 64, offset: 576)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3678, file: !94, line: 182, baseType: !3820, size: 64, offset: 640)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3678, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3678, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3678, file: !94, line: 185, baseType: !2133, size: 128, offset: 768)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3678, file: !94, line: 186, baseType: !139, size: 192, offset: 896)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3678, file: !94, line: 187, baseType: !3870, offset: 1088)
!3870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2690)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3394, file: !73, line: 499, baseType: !171, size: 128, offset: 4224)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3394, file: !73, line: 502, baseType: !3873, size: 64, offset: 4352)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3875)
!3875 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3394, file: !73, line: 504, baseType: !3877, size: 64, offset: 4416)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3394, file: !73, line: 505, baseType: !318, size: 64, offset: 4480)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3394, file: !73, line: 510, baseType: !318, size: 64, offset: 4544)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3394, file: !73, line: 511, baseType: !3881, size: 64, offset: 4608)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3883)
!3883 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3394, file: !73, line: 513, baseType: !3885, size: 64, offset: 4672)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3887)
!3887 = !{!3888, !3889}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3886, file: !73, line: 293, baseType: !7, size: 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3886, file: !73, line: 294, baseType: !266, size: 64, offset: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3394, file: !73, line: 515, baseType: !171, size: 128, offset: 4736)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3394, file: !73, line: 526, baseType: !3892, offset: 4864)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3893, line: 5, elements: !169)
!3893 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3394, file: !73, line: 528, baseType: !3691, size: 64, offset: 4864)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3394, file: !73, line: 529, baseType: !3704, size: 64, offset: 4928)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3394, file: !73, line: 534, baseType: !709, size: 32, offset: 4992)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3394, file: !73, line: 535, baseType: !232, size: 32, offset: 5024)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3394, file: !73, line: 537, baseType: !155, offset: 5056)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3394, file: !73, line: 538, baseType: !171, size: 128, offset: 5056)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3394, file: !73, line: 540, baseType: !3901, size: 64, offset: 5184)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3903, line: 54, size: 960, elements: !3904)
!3903 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3904 = !{!3905, !3906, !3907, !3908, !3909, !3910, !3911, !3915, !3919, !3920, !3921, !3922, !3926, !3930, !3931}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3902, file: !3903, line: 55, baseType: !131, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3902, file: !3903, line: 56, baseType: !184, size: 64, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3902, file: !3903, line: 58, baseType: !2031, size: 64, offset: 128)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3902, file: !3903, line: 59, baseType: !2031, size: 64, offset: 192)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3902, file: !3903, line: 60, baseType: !1958, size: 64, offset: 256)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3902, file: !3903, line: 62, baseType: !3411, size: 64, offset: 320)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3902, file: !3903, line: 63, baseType: !3912, size: 64, offset: 384)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!676, !3398, !3418}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3902, file: !3903, line: 65, baseType: !3916, size: 64, offset: 448)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{null, !3901}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3902, file: !3903, line: 66, baseType: !3420, size: 64, offset: 512)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3902, file: !3903, line: 68, baseType: !3429, size: 64, offset: 576)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3902, file: !3903, line: 70, baseType: !2067, size: 64, offset: 640)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3902, file: !3903, line: 71, baseType: !3923, size: 64, offset: 704)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!2084, !3398}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3902, file: !3903, line: 73, baseType: !3927, size: 64, offset: 768)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{null, !3398, !2101, !2102}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3902, file: !3903, line: 75, baseType: !3424, size: 64, offset: 832)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3902, file: !3903, line: 77, baseType: !3541, size: 64, offset: 896)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3394, file: !73, line: 541, baseType: !2031, size: 64, offset: 5248)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3394, file: !73, line: 543, baseType: !3420, size: 64, offset: 5312)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3394, file: !73, line: 544, baseType: !3935, size: 64, offset: 5376)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3394, file: !73, line: 545, baseType: !3938, size: 64, offset: 5440)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3394, file: !73, line: 547, baseType: !695, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3394, file: !73, line: 548, baseType: !695, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3394, file: !73, line: 549, baseType: !695, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3394, file: !73, line: 550, baseType: !695, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !180, file: !181, line: 709, baseType: !266, size: 64, offset: 6336)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !180, file: !181, line: 713, baseType: !197, size: 32, offset: 6400)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !180, file: !181, line: 714, baseType: !3947, size: 384, offset: 6432)
!3947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 384, elements: !3948)
!3948 = !{!3949}
!3949 = !DISubrange(count: 48)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !180, file: !181, line: 715, baseType: !2478, size: 192, offset: 6848)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !180, file: !181, line: 717, baseType: !139, size: 192, offset: 7040)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !180, file: !181, line: 718, baseType: !171, size: 128, offset: 7232)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !180, file: !181, line: 720, baseType: !3954, size: 64, offset: 7360)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !181, line: 618, size: 832, elements: !3956)
!3956 = !{!3957, !3961, !3962, !3966, !3967, !3968, !3969, !3973, !3974, !3977, !3978, !3981, !3984}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !3955, file: !181, line: 619, baseType: !3958, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!197, !179}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !3955, file: !181, line: 621, baseType: !3958, size: 64, offset: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !3955, file: !181, line: 622, baseType: !3963, size: 64, offset: 128)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{null, !179, !197}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !3955, file: !181, line: 623, baseType: !3958, size: 64, offset: 192)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !3955, file: !181, line: 624, baseType: !3963, size: 64, offset: 256)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !3955, file: !181, line: 625, baseType: !3958, size: 64, offset: 320)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !3955, file: !181, line: 627, baseType: !3970, size: 64, offset: 384)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{null, !179}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !3955, file: !181, line: 628, baseType: !3970, size: 64, offset: 448)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !3955, file: !181, line: 631, baseType: !3975, size: 64, offset: 512)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !181, line: 631, flags: DIFlagFwdDecl)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !3955, file: !181, line: 632, baseType: !3975, size: 64, offset: 576)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !3955, file: !181, line: 633, baseType: !3979, size: 64, offset: 640)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !181, line: 633, flags: DIFlagFwdDecl)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !3955, file: !181, line: 634, baseType: !3982, size: 64, offset: 704)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !181, line: 634, flags: DIFlagFwdDecl)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !3955, file: !181, line: 635, baseType: !3982, size: 64, offset: 768)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !180, file: !181, line: 721, baseType: !3986, size: 64, offset: 7424)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3988)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !181, line: 664, size: 192, elements: !3989)
!3989 = !{!3990, !3991, !3992, !3993, !3994, !3995}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3988, file: !181, line: 665, baseType: !318, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !3988, file: !181, line: 666, baseType: !197, size: 32, offset: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3988, file: !181, line: 667, baseType: !216, size: 16, offset: 96)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !3988, file: !181, line: 668, baseType: !216, size: 16, offset: 112)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !3988, file: !181, line: 669, baseType: !216, size: 16, offset: 128)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !3988, file: !181, line: 670, baseType: !216, size: 16, offset: 144)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !180, file: !181, line: 723, baseType: !3677, size: 64, offset: 7488)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !135, file: !136, line: 99, baseType: !3998, size: 64, offset: 320)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4000, line: 309, size: 19264, elements: !4001)
!4000 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4001 = !{!4002, !4003, !4074, !4075, !4076, !4077, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4169, !4170, !4171, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4245, !4246, !4247, !4248, !4249, !4250, !4252, !4253, !4254, !4257, !4264, !4265, !4266, !4267, !4268, !4269, !4270}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !3999, file: !4000, line: 310, baseType: !171, size: 128)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3999, file: !4000, line: 311, baseType: !4004, size: 64, offset: 128)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4000, line: 605, size: 8064, elements: !4006)
!4006 = !{!4007, !4008, !4009, !4010, !4011, !4012, !4013, !4028, !4029, !4030, !4054, !4057, !4058, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4069, !4070, !4071, !4072, !4073}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4005, file: !4000, line: 606, baseType: !171, size: 128)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4005, file: !4000, line: 607, baseType: !4004, size: 64, offset: 128)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4005, file: !4000, line: 608, baseType: !171, size: 128, offset: 192)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4005, file: !4000, line: 609, baseType: !171, size: 128, offset: 320)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4005, file: !4000, line: 610, baseType: !3998, size: 64, offset: 448)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4005, file: !4000, line: 611, baseType: !171, size: 128, offset: 512)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4005, file: !4000, line: 613, baseType: !4014, size: 256, offset: 640)
!4014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4015, size: 256, elements: !1618)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4017, line: 20, size: 512, elements: !4018)
!4017 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4018 = !{!4019, !4021, !4022, !4023, !4024, !4025, !4026, !4027}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4016, file: !4017, line: 21, baseType: !4020, size: 64)
!4020 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !146, line: 158, baseType: !3209)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4016, file: !4017, line: 22, baseType: !4020, size: 64, offset: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4016, file: !4017, line: 23, baseType: !131, size: 64, offset: 128)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4016, file: !4017, line: 24, baseType: !266, size: 64, offset: 192)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4016, file: !4017, line: 25, baseType: !266, size: 64, offset: 256)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4016, file: !4017, line: 26, baseType: !4015, size: 64, offset: 320)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4016, file: !4017, line: 26, baseType: !4015, size: 64, offset: 384)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4016, file: !4017, line: 26, baseType: !4015, size: 64, offset: 448)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4005, file: !4000, line: 614, baseType: !171, size: 128, offset: 896)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4005, file: !4000, line: 615, baseType: !4016, size: 512, offset: 1024)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4005, file: !4000, line: 617, baseType: !4031, size: 64, offset: 1536)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4000, line: 731, size: 320, elements: !4033)
!4033 = !{!4034, !4038, !4042, !4046, !4050}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4032, file: !4000, line: 732, baseType: !4035, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!197, !4004}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4032, file: !4000, line: 733, baseType: !4039, size: 64, offset: 64)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{null, !4004}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4032, file: !4000, line: 734, baseType: !4043, size: 64, offset: 128)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!130, !4004, !7, !197}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4032, file: !4000, line: 735, baseType: !4047, size: 64, offset: 192)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!197, !4004, !7, !197, !197, !2729}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4032, file: !4000, line: 736, baseType: !4051, size: 64, offset: 256)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!197, !4004, !7, !197, !197, !232}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4005, file: !4000, line: 618, baseType: !4055, size: 64, offset: 1600)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4000, line: 537, flags: DIFlagFwdDecl)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4005, file: !4000, line: 619, baseType: !130, size: 64, offset: 1664)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4005, file: !4000, line: 620, baseType: !4059, size: 64, offset: 1728)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !114, line: 123, flags: DIFlagFwdDecl)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4005, file: !4000, line: 622, baseType: !210, size: 8, offset: 1792)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4005, file: !4000, line: 623, baseType: !210, size: 8, offset: 1800)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4005, file: !4000, line: 624, baseType: !210, size: 8, offset: 1808)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4005, file: !4000, line: 625, baseType: !210, size: 8, offset: 1816)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4005, file: !4000, line: 630, baseType: !3947, size: 384, offset: 1824)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4005, file: !4000, line: 632, baseType: !204, size: 16, offset: 2208)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4005, file: !4000, line: 633, baseType: !4068, size: 16, offset: 2224)
!4068 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4000, line: 237, baseType: !204)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4005, file: !4000, line: 634, baseType: !3398, size: 64, offset: 2240)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4005, file: !4000, line: 635, baseType: !3394, size: 5568, offset: 2304)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4005, file: !4000, line: 636, baseType: !2045, size: 64, offset: 7872)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4005, file: !4000, line: 637, baseType: !2045, size: 64, offset: 7936)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4005, file: !4000, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !3999, file: !4000, line: 312, baseType: !4004, size: 64, offset: 192)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !3999, file: !4000, line: 314, baseType: !130, size: 64, offset: 256)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !3999, file: !4000, line: 315, baseType: !4059, size: 64, offset: 320)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !3999, file: !4000, line: 316, baseType: !4078, size: 64, offset: 384)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4000, line: 69, size: 832, elements: !4080)
!4080 = !{!4081, !4082, !4083, !4086, !4087}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4079, file: !4000, line: 70, baseType: !4004, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4079, file: !4000, line: 71, baseType: !171, size: 128, offset: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4079, file: !4000, line: 72, baseType: !4084, size: 64, offset: 192)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4000, line: 72, flags: DIFlagFwdDecl)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4079, file: !4000, line: 73, baseType: !210, size: 8, offset: 256)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4079, file: !4000, line: 74, baseType: !1952, size: 512, offset: 320)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !3999, file: !4000, line: 318, baseType: !7, size: 32, offset: 448)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3999, file: !4000, line: 319, baseType: !204, size: 16, offset: 480)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3999, file: !4000, line: 320, baseType: !204, size: 16, offset: 496)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !3999, file: !4000, line: 321, baseType: !204, size: 16, offset: 512)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !3999, file: !4000, line: 322, baseType: !204, size: 16, offset: 528)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3999, file: !4000, line: 323, baseType: !7, size: 32, offset: 544)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !3999, file: !4000, line: 324, baseType: !217, size: 8, offset: 576)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !3999, file: !4000, line: 325, baseType: !217, size: 8, offset: 584)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !3999, file: !4000, line: 330, baseType: !217, size: 8, offset: 592)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !3999, file: !4000, line: 331, baseType: !217, size: 8, offset: 600)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !3999, file: !4000, line: 332, baseType: !217, size: 8, offset: 608)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !3999, file: !4000, line: 333, baseType: !217, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !3999, file: !4000, line: 334, baseType: !217, size: 8, offset: 624)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !3999, file: !4000, line: 335, baseType: !217, size: 8, offset: 632)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !3999, file: !4000, line: 336, baseType: !216, size: 16, offset: 640)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !3999, file: !4000, line: 337, baseType: !3831, size: 64, offset: 704)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3999, file: !4000, line: 339, baseType: !4105, size: 64, offset: 768)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4000, line: 858, size: 2048, elements: !4107)
!4107 = !{!4108, !4109, !4110, !4122, !4126, !4130, !4134, !4138, !4139, !4143, !4162, !4163, !4164}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4106, file: !4000, line: 859, baseType: !171, size: 128)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4106, file: !4000, line: 860, baseType: !131, size: 64, offset: 128)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4106, file: !4000, line: 861, baseType: !4111, size: 64, offset: 192)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4113)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3482, line: 38, size: 256, elements: !4114)
!4114 = !{!4115, !4116, !4117, !4118, !4119, !4120, !4121}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4113, file: !3482, line: 39, baseType: !126, size: 32)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4113, file: !3482, line: 39, baseType: !126, size: 32, offset: 32)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4113, file: !3482, line: 40, baseType: !126, size: 32, offset: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4113, file: !3482, line: 40, baseType: !126, size: 32, offset: 96)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4113, file: !3482, line: 41, baseType: !126, size: 32, offset: 128)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4113, file: !3482, line: 41, baseType: !126, size: 32, offset: 160)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4113, file: !3482, line: 42, baseType: !3501, size: 64, offset: 192)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4106, file: !4000, line: 862, baseType: !4123, size: 64, offset: 256)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!197, !3998, !4111}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4106, file: !4000, line: 863, baseType: !4127, size: 64, offset: 320)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{null, !3998}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4106, file: !4000, line: 864, baseType: !4131, size: 64, offset: 384)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!197, !3998, !3512}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4106, file: !4000, line: 865, baseType: !4135, size: 64, offset: 448)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!197, !3998}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4106, file: !4000, line: 866, baseType: !4127, size: 64, offset: 512)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4106, file: !4000, line: 867, baseType: !4140, size: 64, offset: 576)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!197, !3998, !197}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4106, file: !4000, line: 868, baseType: !4144, size: 64, offset: 640)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4146)
!4146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4000, line: 795, size: 384, elements: !4147)
!4147 = !{!4148, !4154, !4158, !4159, !4160, !4161}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4146, file: !4000, line: 797, baseType: !4149, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!4152, !3998, !4153}
!4152 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4000, line: 772, baseType: !7)
!4153 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4000, line: 180, baseType: !7)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4146, file: !4000, line: 801, baseType: !4155, size: 64, offset: 64)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!4152, !3998}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4146, file: !4000, line: 804, baseType: !4155, size: 64, offset: 128)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4146, file: !4000, line: 807, baseType: !4127, size: 64, offset: 192)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4146, file: !4000, line: 808, baseType: !4127, size: 64, offset: 256)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4146, file: !4000, line: 811, baseType: !4127, size: 64, offset: 320)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4106, file: !4000, line: 869, baseType: !2031, size: 64, offset: 704)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4106, file: !4000, line: 870, baseType: !3470, size: 1152, offset: 768)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4106, file: !4000, line: 871, baseType: !4165, size: 128, offset: 1920)
!4165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4000, line: 759, size: 128, elements: !4166)
!4166 = !{!4167, !4168}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4165, file: !4000, line: 760, baseType: !155)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4165, file: !4000, line: 761, baseType: !171, size: 128)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3999, file: !4000, line: 340, baseType: !318, size: 64, offset: 832)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3999, file: !4000, line: 346, baseType: !3886, size: 128, offset: 896)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !3999, file: !4000, line: 348, baseType: !4172, size: 32, offset: 1024)
!4172 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4000, line: 155, baseType: !197)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !3999, file: !4000, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !3999, file: !4000, line: 352, baseType: !217, size: 8, offset: 1064)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !3999, file: !4000, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !3999, file: !4000, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !3999, file: !4000, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !3999, file: !4000, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !3999, file: !4000, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !3999, file: !4000, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !3999, file: !4000, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !3999, file: !4000, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !3999, file: !4000, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !3999, file: !4000, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !3999, file: !4000, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !3999, file: !4000, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !3999, file: !4000, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !3999, file: !4000, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !3999, file: !4000, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !3999, file: !4000, line: 376, baseType: !7, size: 32, offset: 1120)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !3999, file: !4000, line: 377, baseType: !7, size: 32, offset: 1152)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !3999, file: !4000, line: 380, baseType: !4193, size: 64, offset: 1216)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4000, line: 303, flags: DIFlagFwdDecl)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !3999, file: !4000, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !3999, file: !4000, line: 383, baseType: !197, size: 32, offset: 1312)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !3999, file: !4000, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !3999, file: !4000, line: 387, baseType: !4153, size: 32, offset: 1376)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3999, file: !4000, line: 388, baseType: !3394, size: 5568, offset: 1408)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !3999, file: !4000, line: 390, baseType: !197, size: 32, offset: 6976)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3999, file: !4000, line: 396, baseType: !7, size: 32, offset: 7008)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !3999, file: !4000, line: 397, baseType: !4203, size: 8704, offset: 7040)
!4203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4016, size: 8704, elements: !4204)
!4204 = !{!4205}
!4205 = !DISubrange(count: 17)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !3999, file: !4000, line: 399, baseType: !695, size: 8, offset: 15744)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !3999, file: !4000, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !3999, file: !4000, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !3999, file: !4000, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !3999, file: !4000, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !3999, file: !4000, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !3999, file: !4000, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !3999, file: !4000, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !3999, file: !4000, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !3999, file: !4000, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !3999, file: !4000, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !3999, file: !4000, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !3999, file: !4000, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !3999, file: !4000, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !3999, file: !4000, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !3999, file: !4000, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !3999, file: !4000, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !3999, file: !4000, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !3999, file: !4000, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !3999, file: !4000, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !3999, file: !4000, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !3999, file: !4000, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !3999, file: !4000, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !3999, file: !4000, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !3999, file: !4000, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !3999, file: !4000, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !3999, file: !4000, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !3999, file: !4000, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !3999, file: !4000, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !3999, file: !4000, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !3999, file: !4000, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !3999, file: !4000, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !3999, file: !4000, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !3999, file: !4000, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !3999, file: !4000, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !3999, file: !4000, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !3999, file: !4000, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !3999, file: !4000, line: 450, baseType: !4244, size: 16, offset: 15792)
!4244 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4000, line: 206, baseType: !204)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !3999, file: !4000, line: 451, baseType: !291, size: 32, offset: 15808)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !3999, file: !4000, line: 453, baseType: !3815, size: 512, offset: 15840)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !3999, file: !4000, line: 454, baseType: !744, size: 64, offset: 16384)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !3999, file: !4000, line: 455, baseType: !2045, size: 64, offset: 16448)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !3999, file: !4000, line: 456, baseType: !197, size: 32, offset: 16512)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !3999, file: !4000, line: 457, baseType: !4251, size: 1088, offset: 16576)
!4251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2045, size: 1088, elements: !4204)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !3999, file: !4000, line: 458, baseType: !4251, size: 1088, offset: 17664)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !3999, file: !4000, line: 469, baseType: !2031, size: 64, offset: 18752)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !3999, file: !4000, line: 471, baseType: !4255, size: 64, offset: 18816)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4000, line: 304, flags: DIFlagFwdDecl)
!4257 = !DIDerivedType(tag: DW_TAG_member, scope: !3999, file: !4000, line: 478, baseType: !4258, size: 64, offset: 18880)
!4258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3999, file: !4000, line: 478, size: 64, elements: !4259)
!4259 = !{!4260, !4263}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4258, file: !4000, line: 479, baseType: !4261, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4000, line: 305, flags: DIFlagFwdDecl)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4258, file: !4000, line: 480, baseType: !3998, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !3999, file: !4000, line: 482, baseType: !216, size: 16, offset: 18944)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !3999, file: !4000, line: 483, baseType: !217, size: 8, offset: 18960)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !3999, file: !4000, line: 497, baseType: !216, size: 16, offset: 18976)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !3999, file: !4000, line: 498, baseType: !3209, size: 64, offset: 19008)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !3999, file: !4000, line: 499, baseType: !1348, size: 64, offset: 19072)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !3999, file: !4000, line: 500, baseType: !676, size: 64, offset: 19136)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !3999, file: !4000, line: 502, baseType: !266, size: 64, offset: 19200)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !135, file: !136, line: 100, baseType: !7, size: 32, offset: 384)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "TS_Size", scope: !135, file: !136, line: 101, baseType: !7, size: 32, offset: 416)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !135, file: !136, line: 102, baseType: !210, size: 8, offset: 448)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !135, file: !136, line: 103, baseType: !7, size: 32, offset: 480)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "bt878_adr", scope: !135, file: !136, line: 104, baseType: !266, size: 64, offset: 512)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "bt878_mem", scope: !135, file: !136, line: 105, baseType: !4277, size: 64, offset: 576)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "finished_block", scope: !135, file: !136, line: 107, baseType: !4280, size: 32, offset: 640)
!4280 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !232)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "last_block", scope: !135, file: !136, line: 108, baseType: !4280, size: 32, offset: 672)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !135, file: !136, line: 109, baseType: !232, size: 32, offset: 704)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "block_bytes", scope: !135, file: !136, line: 110, baseType: !232, size: 32, offset: 736)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "line_bytes", scope: !135, file: !136, line: 111, baseType: !232, size: 32, offset: 768)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "line_count", scope: !135, file: !136, line: 112, baseType: !232, size: 32, offset: 800)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !135, file: !136, line: 114, baseType: !232, size: 32, offset: 832)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "buf_cpu", scope: !135, file: !136, line: 115, baseType: !4288, size: 64, offset: 896)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "buf_dma", scope: !135, file: !136, line: 116, baseType: !2382, size: 64, offset: 960)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "risc_size", scope: !135, file: !136, line: 118, baseType: !232, size: 32, offset: 1024)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "risc_cpu", scope: !135, file: !136, line: 119, baseType: !4292, size: 64, offset: 1088)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "risc_dma", scope: !135, file: !136, line: 120, baseType: !2382, size: 64, offset: 1152)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "risc_pos", scope: !135, file: !136, line: 121, baseType: !232, size: 32, offset: 1216)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "tasklet", scope: !135, file: !136, line: 123, baseType: !4296, size: 320, offset: 1280)
!4296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tasklet_struct", file: !114, line: 609, size: 320, elements: !4297)
!4297 = !{!4298, !4300, !4301, !4302, !4303, !4314}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4296, file: !114, line: 611, baseType: !4299, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4296, file: !114, line: 612, baseType: !266, size: 64, offset: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4296, file: !114, line: 613, baseType: !291, size: 32, offset: 128)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "use_callback", scope: !4296, file: !114, line: 614, baseType: !695, size: 8, offset: 160)
!4303 = !DIDerivedType(tag: DW_TAG_member, scope: !4296, file: !114, line: 615, baseType: !4304, size: 64, offset: 192)
!4304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4296, file: !114, line: 615, size: 64, elements: !4305)
!4305 = !{!4306, !4310}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4304, file: !114, line: 616, baseType: !4307, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{null, !266}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4304, file: !114, line: 617, baseType: !4311, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{null, !4299}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4296, file: !114, line: 619, baseType: !266, size: 64, offset: 256)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !135, file: !136, line: 124, baseType: !197, size: 32, offset: 1600)
!4316 = !{!4317, !4369, !4374, !4377, !4379, !4384, !4389, !4391, !4396, !4401, !4406, !4408, !4410, !0, !4413, !4415, !4418, !4420}
!4317 = !DIGlobalVariableExpression(var: !4318, expr: !DIExpression())
!4318 = distinct !DIGlobalVariable(name: "__param_verbose", scope: !2, file: !3, line: 39, type: !4319, isLocal: true, isDefinition: true, align: 64)
!4319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4320)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4321, line: 69, size: 320, elements: !4322)
!4321 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!4322 = !{!4323, !4324, !4325, !4341, !4343, !4347, !4348}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4320, file: !4321, line: 70, baseType: !131, size: 64)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4320, file: !4321, line: 71, baseType: !184, size: 64, offset: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4320, file: !4321, line: 72, baseType: !4326, size: 64, offset: 128)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4328)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4321, line: 47, size: 256, elements: !4329)
!4329 = !{!4330, !4331, !4336, !4340}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4328, file: !4321, line: 49, baseType: !7, size: 32)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4328, file: !4321, line: 51, baseType: !4332, size: 64, offset: 64)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!197, !131, !4335}
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4328, file: !4321, line: 53, baseType: !4337, size: 64, offset: 128)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{!197, !676, !4335}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4328, file: !4321, line: 55, baseType: !1249, size: 64, offset: 192)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4320, file: !4321, line: 73, baseType: !4342, size: 16, offset: 192)
!4342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4320, file: !4321, line: 74, baseType: !4344, size: 8, offset: 208)
!4344 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !151, line: 16, baseType: !4345)
!4345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !127, line: 20, baseType: !4346)
!4346 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4320, file: !4321, line: 75, baseType: !217, size: 8, offset: 216)
!4348 = !DIDerivedType(tag: DW_TAG_member, scope: !4320, file: !4321, line: 76, baseType: !4349, size: 64, offset: 256)
!4349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4320, file: !4321, line: 76, size: 64, elements: !4350)
!4350 = !{!4351, !4352, !4359}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4349, file: !4321, line: 77, baseType: !130, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4349, file: !4321, line: 78, baseType: !4353, size: 64)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4355)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4321, line: 86, size: 128, elements: !4356)
!4356 = !{!4357, !4358}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4355, file: !4321, line: 87, baseType: !7, size: 32)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4355, file: !4321, line: 88, baseType: !676, size: 64, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4349, file: !4321, line: 79, baseType: !4360, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4362)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4321, line: 92, size: 256, elements: !4363)
!4363 = !{!4364, !4365, !4366, !4367, !4368}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4362, file: !4321, line: 94, baseType: !7, size: 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4362, file: !4321, line: 95, baseType: !7, size: 32, offset: 32)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4362, file: !4321, line: 96, baseType: !1127, size: 64, offset: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4362, file: !4321, line: 97, baseType: !4326, size: 64, offset: 128)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4362, file: !4321, line: 98, baseType: !130, size: 64, offset: 192)
!4369 = !DIGlobalVariableExpression(var: !4370, expr: !DIExpression())
!4370 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_verbosetype262", scope: !2, file: !3, line: 39, type: !4371, isLocal: true, isDefinition: true, align: 8)
!4371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 216, elements: !4372)
!4372 = !{!4373}
!4373 = !DISubrange(count: 27)
!4374 = !DIGlobalVariableExpression(var: !4375, expr: !DIExpression())
!4375 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_verbose263", scope: !2, file: !3, line: 40, type: !4376, isLocal: true, isDefinition: true, align: 8)
!4376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 512, elements: !1993)
!4377 = !DIGlobalVariableExpression(var: !4378, expr: !DIExpression())
!4378 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 42, type: !4319, isLocal: true, isDefinition: true, align: 64)
!4379 = !DIGlobalVariableExpression(var: !4380, expr: !DIExpression())
!4380 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype264", scope: !2, file: !3, line: 42, type: !4381, isLocal: true, isDefinition: true, align: 8)
!4381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 200, elements: !4382)
!4382 = !{!4383}
!4383 = !DISubrange(count: 25)
!4384 = !DIGlobalVariableExpression(var: !4385, expr: !DIExpression())
!4385 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug265", scope: !2, file: !3, line: 43, type: !4386, isLocal: true, isDefinition: true, align: 8)
!4386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 480, elements: !4387)
!4387 = !{!4388}
!4388 = !DISubrange(count: 60)
!4389 = !DIGlobalVariableExpression(var: !4390, expr: !DIExpression())
!4390 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_bt878_init_module266", scope: !2, file: !3, line: 559, type: !130, isLocal: true, isDefinition: true)
!4391 = !DIGlobalVariableExpression(var: !4392, expr: !DIExpression())
!4392 = distinct !DIGlobalVariable(name: "__exitcall_bt878_cleanup_module", scope: !2, file: !3, line: 560, type: !4393, isLocal: true, isDefinition: true)
!4393 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4394, line: 117, baseType: !4395)
!4394 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!4396 = !DIGlobalVariableExpression(var: !4397, expr: !DIExpression())
!4397 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file267", scope: !2, file: !3, line: 562, type: !4398, isLocal: true, isDefinition: true, align: 8)
!4398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 328, elements: !4399)
!4399 = !{!4400}
!4400 = !DISubrange(count: 41)
!4401 = !DIGlobalVariableExpression(var: !4402, expr: !DIExpression())
!4402 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license268", scope: !2, file: !3, line: 562, type: !4403, isLocal: true, isDefinition: true, align: 8)
!4403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 144, elements: !4404)
!4404 = !{!4405}
!4405 = !DISubrange(count: 18)
!4406 = !DIGlobalVariableExpression(var: !4407, expr: !DIExpression())
!4407 = distinct !DIGlobalVariable(name: "bt878_debug", scope: !2, file: !3, line: 37, type: !7, isLocal: true, isDefinition: true)
!4408 = !DIGlobalVariableExpression(var: !4409, expr: !DIExpression())
!4409 = distinct !DIGlobalVariable(name: "bt878_num", scope: !2, file: !3, line: 45, type: !197, isLocal: false, isDefinition: true)
!4410 = !DIGlobalVariableExpression(var: !4411, expr: !DIExpression())
!4411 = distinct !DIGlobalVariable(name: "bt878", scope: !2, file: !3, line: 46, type: !4412, isLocal: false, isDefinition: true)
!4412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 6656, elements: !1618)
!4413 = !DIGlobalVariableExpression(var: !4414, expr: !DIExpression())
!4414 = distinct !DIGlobalVariable(name: "bt878_verbose", scope: !2, file: !3, line: 36, type: !7, isLocal: true, isDefinition: true)
!4415 = !DIGlobalVariableExpression(var: !4416, expr: !DIExpression())
!4416 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 42, type: !4417, isLocal: true, isDefinition: true)
!4417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 96, elements: !3316)
!4418 = !DIGlobalVariableExpression(var: !4419, expr: !DIExpression())
!4419 = distinct !DIGlobalVariable(name: "bt878_pci_driver", scope: !2, file: !3, line: 531, type: !4106, isLocal: true, isDefinition: true)
!4420 = !DIGlobalVariableExpression(var: !4421, expr: !DIExpression())
!4421 = distinct !DIGlobalVariable(name: "bt878_pci_tbl", scope: !2, file: !3, line: 369, type: !4422, isLocal: true, isDefinition: true)
!4422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4112, size: 3328, elements: !4423)
!4423 = !{!4424}
!4424 = !DISubrange(count: 13)
!4425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 112, elements: !4426)
!4426 = !{!4427}
!4427 = !DISubrange(count: 14)
!4428 = !{i32 7, !"Dwarf Version", i32 4}
!4429 = !{i32 2, !"Debug Info Version", i32 3}
!4430 = !{i32 1, !"wchar_size", i32 2}
!4431 = !{i32 1, !"Code Model", i32 2}
!4432 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4433 = distinct !DISubprogram(name: "bt878_start", scope: !3, file: !3, line: 185, type: !4434, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !169)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{null, !134, !232, !232, !232}
!4436 = !DILocalVariable(name: "bt", arg: 1, scope: !4433, file: !3, line: 185, type: !134)
!4437 = !DILocation(line: 185, column: 32, scope: !4433)
!4438 = !DILocalVariable(name: "controlreg", arg: 2, scope: !4433, file: !3, line: 185, type: !232)
!4439 = !DILocation(line: 185, column: 40, scope: !4433)
!4440 = !DILocalVariable(name: "op_sync_orin", arg: 3, scope: !4433, file: !3, line: 185, type: !232)
!4441 = !DILocation(line: 185, column: 56, scope: !4433)
!4442 = !DILocalVariable(name: "irq_err_ignore", arg: 4, scope: !4433, file: !3, line: 186, type: !232)
!4443 = !DILocation(line: 186, column: 7, scope: !4433)
!4444 = !DILocalVariable(name: "int_mask", scope: !4433, file: !3, line: 188, type: !232)
!4445 = !DILocation(line: 188, column: 6, scope: !4433)
!4446 = !DILocation(line: 190, column: 2, scope: !4433)
!4447 = !DILocation(line: 190, column: 2, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4449, file: !3, line: 190, column: 2)
!4449 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 190, column: 2)
!4450 = !DILocation(line: 190, column: 2, scope: !4449)
!4451 = !DILocation(line: 194, column: 21, scope: !4433)
!4452 = !DILocation(line: 194, column: 25, scope: !4433)
!4453 = !DILocation(line: 194, column: 2, scope: !4433)
!4454 = !DILocation(line: 195, column: 13, scope: !4433)
!4455 = !DILocation(line: 196, column: 13, scope: !4433)
!4456 = !DILocation(line: 198, column: 2, scope: !4433)
!4457 = !DILocation(line: 207, column: 11, scope: !4433)
!4458 = !DILocation(line: 213, column: 15, scope: !4433)
!4459 = !DILocation(line: 213, column: 14, scope: !4433)
!4460 = !DILocation(line: 213, column: 11, scope: !4433)
!4461 = !DILocation(line: 215, column: 2, scope: !4433)
!4462 = !DILocation(line: 216, column: 2, scope: !4433)
!4463 = !DILocation(line: 217, column: 1, scope: !4433)
!4464 = distinct !DISubprogram(name: "bt878_risc_program", scope: !3, file: !3, line: 143, type: !4465, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{null, !134, !232}
!4467 = !DILocalVariable(name: "bt", arg: 1, scope: !4464, file: !3, line: 143, type: !134)
!4468 = !DILocation(line: 143, column: 46, scope: !4464)
!4469 = !DILocalVariable(name: "op_sync_orin", arg: 2, scope: !4464, file: !3, line: 143, type: !232)
!4470 = !DILocation(line: 143, column: 54, scope: !4464)
!4471 = !DILocalVariable(name: "buf_pos", scope: !4464, file: !3, line: 145, type: !232)
!4472 = !DILocation(line: 145, column: 6, scope: !4464)
!4473 = !DILocalVariable(name: "line", scope: !4464, file: !3, line: 146, type: !232)
!4474 = !DILocation(line: 146, column: 6, scope: !4464)
!4475 = !DILocation(line: 148, column: 2, scope: !4464)
!4476 = !DILocation(line: 149, column: 2, scope: !4464)
!4477 = !DILocation(line: 150, column: 2, scope: !4464)
!4478 = !DILocation(line: 152, column: 2, scope: !4464)
!4479 = !DILocation(line: 152, column: 2, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4481, file: !3, line: 152, column: 2)
!4481 = distinct !DILexicalBlock(scope: !4464, file: !3, line: 152, column: 2)
!4482 = !DILocation(line: 152, column: 2, scope: !4481)
!4483 = !DILocation(line: 154, column: 12, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4464, file: !3, line: 154, column: 2)
!4485 = !DILocation(line: 154, column: 7, scope: !4484)
!4486 = !DILocation(line: 154, column: 17, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 154, column: 2)
!4488 = !DILocation(line: 154, column: 24, scope: !4487)
!4489 = !DILocation(line: 154, column: 28, scope: !4487)
!4490 = !DILocation(line: 154, column: 22, scope: !4487)
!4491 = !DILocation(line: 154, column: 2, scope: !4484)
!4492 = !DILocation(line: 156, column: 9, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 156, column: 7)
!4494 = distinct !DILexicalBlock(scope: !4487, file: !3, line: 154, column: 48)
!4495 = !DILocation(line: 156, column: 19, scope: !4493)
!4496 = !DILocation(line: 156, column: 23, scope: !4493)
!4497 = !DILocation(line: 156, column: 17, scope: !4493)
!4498 = !DILocation(line: 156, column: 7, scope: !4494)
!4499 = !DILocation(line: 157, column: 4, scope: !4493)
!4500 = !DILocation(line: 166, column: 4, scope: !4493)
!4501 = !DILocation(line: 168, column: 3, scope: !4494)
!4502 = !DILocation(line: 169, column: 14, scope: !4494)
!4503 = !DILocation(line: 169, column: 18, scope: !4494)
!4504 = !DILocation(line: 169, column: 11, scope: !4494)
!4505 = !DILocation(line: 170, column: 2, scope: !4494)
!4506 = !DILocation(line: 154, column: 44, scope: !4487)
!4507 = !DILocation(line: 154, column: 2, scope: !4487)
!4508 = distinct !{!4508, !4491, !4509}
!4509 = !DILocation(line: 170, column: 2, scope: !4484)
!4510 = !DILocation(line: 172, column: 2, scope: !4464)
!4511 = !DILocation(line: 173, column: 2, scope: !4464)
!4512 = !DILocation(line: 175, column: 2, scope: !4464)
!4513 = !DILocation(line: 176, column: 2, scope: !4464)
!4514 = !DILocation(line: 178, column: 2, scope: !4464)
!4515 = !DILocation(line: 179, column: 1, scope: !4464)
!4516 = distinct !DISubprogram(name: "writel", scope: !4517, file: !4517, line: 67, type: !4518, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!4517 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4518 = !DISubroutineType(types: !4519)
!4519 = !{null, !7, !4277}
!4520 = !DILocalVariable(name: "val", arg: 1, scope: !4516, file: !4517, line: 67, type: !7)
!4521 = !DILocation(line: 67, column: 1, scope: !4516)
!4522 = !DILocalVariable(name: "addr", arg: 2, scope: !4516, file: !4517, line: 67, type: !4277)
!4523 = !{i32 -2143419851}
!4524 = distinct !DISubprogram(name: "bt878_stop", scope: !3, file: !3, line: 219, type: !4525, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !169)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{null, !134}
!4527 = !DILocalVariable(name: "bt", arg: 1, scope: !4524, file: !3, line: 219, type: !134)
!4528 = !DILocation(line: 219, column: 31, scope: !4524)
!4529 = !DILocalVariable(name: "stat", scope: !4524, file: !3, line: 221, type: !232)
!4530 = !DILocation(line: 221, column: 6, scope: !4524)
!4531 = !DILocalVariable(name: "i", scope: !4524, file: !3, line: 222, type: !197)
!4532 = !DILocation(line: 222, column: 6, scope: !4524)
!4533 = !DILocation(line: 224, column: 2, scope: !4524)
!4534 = !DILocation(line: 224, column: 2, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 224, column: 2)
!4536 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 224, column: 2)
!4537 = !DILocation(line: 224, column: 2, scope: !4536)
!4538 = !DILocation(line: 226, column: 2, scope: !4524)
!4539 = !DILocation(line: 227, column: 2, scope: !4524)
!4540 = !DILocation(line: 229, column: 2, scope: !4524)
!4541 = !DILocation(line: 230, column: 10, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 229, column: 5)
!4543 = !DILocation(line: 230, column: 8, scope: !4542)
!4544 = !DILocation(line: 231, column: 9, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4542, file: !3, line: 231, column: 7)
!4546 = !DILocation(line: 231, column: 14, scope: !4545)
!4547 = !DILocation(line: 231, column: 7, scope: !4542)
!4548 = !DILocation(line: 232, column: 4, scope: !4545)
!4549 = !DILocation(line: 233, column: 4, scope: !4542)
!4550 = !DILocation(line: 234, column: 2, scope: !4542)
!4551 = !DILocation(line: 234, column: 11, scope: !4524)
!4552 = !DILocation(line: 234, column: 13, scope: !4524)
!4553 = distinct !{!4553, !4540, !4554}
!4554 = !DILocation(line: 234, column: 18, scope: !4524)
!4555 = !DILocation(line: 236, column: 2, scope: !4524)
!4556 = !DILocation(line: 236, column: 2, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 236, column: 2)
!4558 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 236, column: 2)
!4559 = !DILocation(line: 236, column: 2, scope: !4558)
!4560 = !DILocation(line: 238, column: 1, scope: !4524)
!4561 = distinct !DISubprogram(name: "readl", scope: !4517, file: !4517, line: 59, type: !4562, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!7, !4564}
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4278)
!4566 = !DILocalVariable(name: "addr", arg: 1, scope: !4561, file: !4517, line: 59, type: !4564)
!4567 = !DILocation(line: 59, column: 1, scope: !4561)
!4568 = !DILocalVariable(name: "ret", scope: !4561, file: !4517, line: 59, type: !7)
!4569 = !{i32 -2143422244}
!4570 = distinct !DISubprogram(name: "bt878_device_control", scope: !3, file: !3, line: 319, type: !4571, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !169)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!197, !134, !7, !4573}
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "dst_gpio_packet", file: !4575, line: 22, size: 64, elements: !4576)
!4575 = !DIFile(filename: "drivers/media/pci/bt8xx/dst_priv.h", directory: "/home/lizy2001/genbc/linux")
!4576 = !{!4577, !4582, !4587, !4591}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "enb", scope: !4574, file: !4575, line: 23, baseType: !4578, size: 64)
!4578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dst_gpio_enable", file: !4575, line: 8, size: 64, elements: !4579)
!4579 = !{!4580, !4581}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4578, file: !4575, line: 9, baseType: !232, size: 32)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4578, file: !4575, line: 10, baseType: !232, size: 32, offset: 32)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "outp", scope: !4574, file: !4575, line: 24, baseType: !4583, size: 64)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dst_gpio_output", file: !4575, line: 13, size: 64, elements: !4584)
!4584 = !{!4585, !4586}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4583, file: !4575, line: 14, baseType: !232, size: 32)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "highvals", scope: !4583, file: !4575, line: 15, baseType: !232, size: 32, offset: 32)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "rd", scope: !4574, file: !4575, line: 25, baseType: !4588, size: 64)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dst_gpio_read", file: !4575, line: 18, size: 64, elements: !4589)
!4589 = !{!4590}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4588, file: !4575, line: 19, baseType: !266, size: 64)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "psize", scope: !4574, file: !4575, line: 26, baseType: !197, size: 32)
!4592 = !DILocalVariable(name: "bt", arg: 1, scope: !4570, file: !3, line: 319, type: !134)
!4593 = !DILocation(line: 319, column: 36, scope: !4570)
!4594 = !DILocalVariable(name: "cmd", arg: 2, scope: !4570, file: !3, line: 319, type: !7)
!4595 = !DILocation(line: 319, column: 53, scope: !4570)
!4596 = !DILocalVariable(name: "mp", arg: 3, scope: !4570, file: !3, line: 319, type: !4573)
!4597 = !DILocation(line: 319, column: 81, scope: !4570)
!4598 = !DILocalVariable(name: "retval", scope: !4570, file: !3, line: 321, type: !197)
!4599 = !DILocation(line: 321, column: 6, scope: !4570)
!4600 = !DILocation(line: 323, column: 9, scope: !4570)
!4601 = !DILocation(line: 324, column: 32, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 324, column: 6)
!4603 = !DILocation(line: 324, column: 36, scope: !4602)
!4604 = !DILocation(line: 324, column: 6, scope: !4602)
!4605 = !DILocation(line: 324, column: 6, scope: !4570)
!4606 = !DILocation(line: 325, column: 3, scope: !4602)
!4607 = !DILocation(line: 327, column: 10, scope: !4570)
!4608 = !DILocation(line: 327, column: 2, scope: !4570)
!4609 = !DILocation(line: 330, column: 29, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 327, column: 15)
!4611 = !DILocation(line: 330, column: 33, scope: !4610)
!4612 = !DILocation(line: 331, column: 5, scope: !4610)
!4613 = !DILocation(line: 331, column: 9, scope: !4610)
!4614 = !DILocation(line: 331, column: 13, scope: !4610)
!4615 = !DILocation(line: 332, column: 5, scope: !4610)
!4616 = !DILocation(line: 332, column: 9, scope: !4610)
!4617 = !DILocation(line: 332, column: 13, scope: !4610)
!4618 = !DILocation(line: 330, column: 12, scope: !4610)
!4619 = !DILocation(line: 330, column: 10, scope: !4610)
!4620 = !DILocation(line: 333, column: 3, scope: !4610)
!4621 = !DILocation(line: 336, column: 28, scope: !4610)
!4622 = !DILocation(line: 336, column: 32, scope: !4610)
!4623 = !DILocation(line: 337, column: 5, scope: !4610)
!4624 = !DILocation(line: 337, column: 9, scope: !4610)
!4625 = !DILocation(line: 337, column: 14, scope: !4610)
!4626 = !DILocation(line: 338, column: 5, scope: !4610)
!4627 = !DILocation(line: 338, column: 9, scope: !4610)
!4628 = !DILocation(line: 338, column: 14, scope: !4610)
!4629 = !DILocation(line: 336, column: 12, scope: !4610)
!4630 = !DILocation(line: 336, column: 10, scope: !4610)
!4631 = !DILocation(line: 340, column: 3, scope: !4610)
!4632 = !DILocation(line: 343, column: 28, scope: !4610)
!4633 = !DILocation(line: 343, column: 32, scope: !4610)
!4634 = !DILocation(line: 343, column: 42, scope: !4610)
!4635 = !DILocation(line: 343, column: 46, scope: !4610)
!4636 = !DILocation(line: 343, column: 49, scope: !4610)
!4637 = !DILocation(line: 343, column: 13, scope: !4610)
!4638 = !DILocation(line: 343, column: 10, scope: !4610)
!4639 = !DILocation(line: 345, column: 3, scope: !4610)
!4640 = !DILocation(line: 348, column: 17, scope: !4610)
!4641 = !DILocation(line: 348, column: 21, scope: !4610)
!4642 = !DILocation(line: 348, column: 3, scope: !4610)
!4643 = !DILocation(line: 348, column: 7, scope: !4610)
!4644 = !DILocation(line: 348, column: 15, scope: !4610)
!4645 = !DILocation(line: 349, column: 3, scope: !4610)
!4646 = !DILocation(line: 352, column: 10, scope: !4610)
!4647 = !DILocation(line: 353, column: 3, scope: !4610)
!4648 = !DILocation(line: 355, column: 16, scope: !4570)
!4649 = !DILocation(line: 355, column: 20, scope: !4570)
!4650 = !DILocation(line: 355, column: 2, scope: !4570)
!4651 = !DILocation(line: 356, column: 9, scope: !4570)
!4652 = !DILocation(line: 356, column: 2, scope: !4570)
!4653 = !DILocation(line: 357, column: 1, scope: !4570)
!4654 = distinct !DISubprogram(name: "bt878_cleanup_module", scope: !3, file: !3, line: 554, type: !2977, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!4655 = !DILocation(line: 556, column: 2, scope: !4654)
!4656 = !DILocation(line: 557, column: 1, scope: !4654)
!4657 = distinct !DISubprogram(name: "bt878_init_module", scope: !3, file: !3, line: 542, type: !4658, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!197}
!4660 = !DILocation(line: 544, column: 12, scope: !4657)
!4661 = !DILocation(line: 546, column: 2, scope: !4657)
!4662 = !DILocation(line: 551, column: 9, scope: !4657)
!4663 = !DILocation(line: 551, column: 2, scope: !4657)
!4664 = distinct !DISubprogram(name: "bt878_probe", scope: !3, file: !3, line: 397, type: !4124, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!4665 = !DILocalVariable(name: "dev", arg: 1, scope: !4664, file: !3, line: 397, type: !3998)
!4666 = !DILocation(line: 397, column: 40, scope: !4664)
!4667 = !DILocalVariable(name: "pci_id", arg: 2, scope: !4664, file: !3, line: 397, type: !4111)
!4668 = !DILocation(line: 397, column: 73, scope: !4664)
!4669 = !DILocalVariable(name: "result", scope: !4664, file: !3, line: 399, type: !197)
!4670 = !DILocation(line: 399, column: 6, scope: !4664)
!4671 = !DILocalVariable(name: "lat", scope: !4664, file: !3, line: 400, type: !210)
!4672 = !DILocation(line: 400, column: 16, scope: !4664)
!4673 = !DILocalVariable(name: "bt", scope: !4664, file: !3, line: 401, type: !134)
!4674 = !DILocation(line: 401, column: 16, scope: !4664)
!4675 = !DILocalVariable(name: "cardid", scope: !4664, file: !3, line: 402, type: !7)
!4676 = !DILocation(line: 402, column: 15, scope: !4664)
!4677 = !DILocation(line: 405, column: 9, scope: !4664)
!4678 = !DILocation(line: 404, column: 2, scope: !4664)
!4679 = !DILocation(line: 406, column: 6, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 406, column: 6)
!4681 = !DILocation(line: 406, column: 16, scope: !4680)
!4682 = !DILocation(line: 406, column: 6, scope: !4664)
!4683 = !DILocation(line: 407, column: 3, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4680, file: !3, line: 406, column: 30)
!4685 = !DILocation(line: 408, column: 3, scope: !4684)
!4686 = !DILocation(line: 410, column: 24, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 410, column: 6)
!4688 = !DILocation(line: 410, column: 6, scope: !4687)
!4689 = !DILocation(line: 410, column: 6, scope: !4664)
!4690 = !DILocation(line: 411, column: 3, scope: !4687)
!4691 = !DILocation(line: 413, column: 11, scope: !4664)
!4692 = !DILocation(line: 413, column: 16, scope: !4664)
!4693 = !DILocation(line: 413, column: 33, scope: !4664)
!4694 = !DILocation(line: 413, column: 9, scope: !4664)
!4695 = !DILocation(line: 414, column: 12, scope: !4664)
!4696 = !DILocation(line: 414, column: 17, scope: !4664)
!4697 = !DILocation(line: 414, column: 9, scope: !4664)
!4698 = !DILocation(line: 417, column: 15, scope: !4664)
!4699 = !DILocation(line: 417, column: 33, scope: !4664)
!4700 = !DILocation(line: 417, column: 23, scope: !4664)
!4701 = !DILocation(line: 416, column: 2, scope: !4664)
!4702 = !DILocation(line: 419, column: 14, scope: !4664)
!4703 = !DILocation(line: 419, column: 8, scope: !4664)
!4704 = !DILocation(line: 419, column: 5, scope: !4664)
!4705 = !DILocation(line: 420, column: 12, scope: !4664)
!4706 = !DILocation(line: 420, column: 2, scope: !4664)
!4707 = !DILocation(line: 420, column: 6, scope: !4664)
!4708 = !DILocation(line: 420, column: 10, scope: !4664)
!4709 = !DILocation(line: 421, column: 11, scope: !4664)
!4710 = !DILocation(line: 421, column: 2, scope: !4664)
!4711 = !DILocation(line: 421, column: 6, scope: !4664)
!4712 = !DILocation(line: 421, column: 9, scope: !4664)
!4713 = !DILocation(line: 422, column: 2, scope: !4664)
!4714 = !DILocation(line: 422, column: 6, scope: !4664)
!4715 = !DILocation(line: 422, column: 15, scope: !4664)
!4716 = !DILocation(line: 424, column: 11, scope: !4664)
!4717 = !DILocation(line: 424, column: 16, scope: !4664)
!4718 = !DILocation(line: 424, column: 2, scope: !4664)
!4719 = !DILocation(line: 424, column: 6, scope: !4664)
!4720 = !DILocation(line: 424, column: 9, scope: !4664)
!4721 = !DILocation(line: 425, column: 12, scope: !4664)
!4722 = !DILocation(line: 425, column: 17, scope: !4664)
!4723 = !DILocation(line: 425, column: 2, scope: !4664)
!4724 = !DILocation(line: 425, column: 6, scope: !4664)
!4725 = !DILocation(line: 425, column: 10, scope: !4664)
!4726 = !DILocation(line: 426, column: 18, scope: !4664)
!4727 = !DILocation(line: 426, column: 2, scope: !4664)
!4728 = !DILocation(line: 426, column: 6, scope: !4664)
!4729 = !DILocation(line: 426, column: 16, scope: !4664)
!4730 = !DILocation(line: 427, column: 7, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 427, column: 6)
!4732 = !DILocation(line: 427, column: 6, scope: !4664)
!4733 = !DILocation(line: 429, column: 10, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 428, column: 41)
!4735 = !DILocation(line: 430, column: 3, scope: !4734)
!4736 = !DILocation(line: 433, column: 17, scope: !4664)
!4737 = !DILocation(line: 433, column: 22, scope: !4664)
!4738 = !DILocation(line: 433, column: 2, scope: !4664)
!4739 = !DILocation(line: 433, column: 6, scope: !4664)
!4740 = !DILocation(line: 433, column: 15, scope: !4664)
!4741 = !DILocation(line: 434, column: 23, scope: !4664)
!4742 = !DILocation(line: 434, column: 2, scope: !4664)
!4743 = !DILocation(line: 438, column: 9, scope: !4664)
!4744 = !DILocation(line: 438, column: 20, scope: !4664)
!4745 = !DILocation(line: 438, column: 24, scope: !4664)
!4746 = !DILocation(line: 438, column: 28, scope: !4664)
!4747 = !DILocation(line: 438, column: 32, scope: !4664)
!4748 = !DILocation(line: 438, column: 42, scope: !4664)
!4749 = !DILocation(line: 438, column: 47, scope: !4664)
!4750 = !DILocation(line: 438, column: 52, scope: !4664)
!4751 = !DILocation(line: 439, column: 9, scope: !4664)
!4752 = !DILocation(line: 439, column: 31, scope: !4664)
!4753 = !DILocation(line: 437, column: 2, scope: !4664)
!4754 = !DILocation(line: 441, column: 9, scope: !4664)
!4755 = !DILocation(line: 441, column: 13, scope: !4664)
!4756 = !DILocation(line: 441, column: 18, scope: !4664)
!4757 = !DILocation(line: 441, column: 23, scope: !4664)
!4758 = !DILocation(line: 441, column: 27, scope: !4664)
!4759 = !DILocation(line: 440, column: 2, scope: !4664)
!4760 = !DILocation(line: 446, column: 26, scope: !4664)
!4761 = !DILocation(line: 446, column: 30, scope: !4664)
!4762 = !DILocation(line: 446, column: 18, scope: !4664)
!4763 = !DILocation(line: 446, column: 2, scope: !4664)
!4764 = !DILocation(line: 446, column: 6, scope: !4664)
!4765 = !DILocation(line: 446, column: 16, scope: !4664)
!4766 = !DILocation(line: 450, column: 2, scope: !4664)
!4767 = !DILocation(line: 452, column: 23, scope: !4664)
!4768 = !DILocation(line: 452, column: 27, scope: !4664)
!4769 = !DILocation(line: 453, column: 40, scope: !4664)
!4770 = !DILocation(line: 453, column: 31, scope: !4664)
!4771 = !DILocation(line: 452, column: 11, scope: !4664)
!4772 = !DILocation(line: 452, column: 9, scope: !4664)
!4773 = !DILocation(line: 454, column: 6, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 454, column: 6)
!4775 = !DILocation(line: 454, column: 13, scope: !4774)
!4776 = !DILocation(line: 454, column: 6, scope: !4664)
!4777 = !DILocation(line: 456, column: 10, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 454, column: 25)
!4779 = !DILocation(line: 455, column: 3, scope: !4778)
!4780 = !DILocation(line: 457, column: 3, scope: !4778)
!4781 = !DILocation(line: 459, column: 6, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 459, column: 6)
!4783 = !DILocation(line: 459, column: 13, scope: !4782)
!4784 = !DILocation(line: 459, column: 6, scope: !4664)
!4785 = !DILocation(line: 462, column: 10, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4782, file: !3, line: 459, column: 24)
!4787 = !DILocation(line: 462, column: 21, scope: !4786)
!4788 = !DILocation(line: 462, column: 25, scope: !4786)
!4789 = !DILocation(line: 460, column: 3, scope: !4786)
!4790 = !DILocation(line: 463, column: 3, scope: !4786)
!4791 = !DILocation(line: 465, column: 6, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 465, column: 6)
!4793 = !DILocation(line: 465, column: 13, scope: !4792)
!4794 = !DILocation(line: 465, column: 6, scope: !4664)
!4795 = !DILocation(line: 466, column: 3, scope: !4792)
!4796 = !DILocation(line: 468, column: 17, scope: !4664)
!4797 = !DILocation(line: 468, column: 2, scope: !4664)
!4798 = !DILocation(line: 469, column: 18, scope: !4664)
!4799 = !DILocation(line: 469, column: 23, scope: !4664)
!4800 = !DILocation(line: 469, column: 2, scope: !4664)
!4801 = !DILocation(line: 471, column: 32, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 471, column: 6)
!4803 = !DILocation(line: 471, column: 16, scope: !4802)
!4804 = !DILocation(line: 471, column: 14, scope: !4802)
!4805 = !DILocation(line: 471, column: 6, scope: !4664)
!4806 = !DILocation(line: 472, column: 3, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 471, column: 38)
!4808 = !DILocation(line: 473, column: 3, scope: !4807)
!4809 = !DILocation(line: 476, column: 18, scope: !4664)
!4810 = !DILocation(line: 476, column: 2, scope: !4664)
!4811 = !DILocation(line: 477, column: 2, scope: !4664)
!4812 = !DILocation(line: 478, column: 11, scope: !4664)
!4813 = !DILocation(line: 480, column: 2, scope: !4664)
!4814 = !DILabel(scope: !4664, name: "fail2", file: !3, line: 482)
!4815 = !DILocation(line: 482, column: 7, scope: !4664)
!4816 = !DILocation(line: 483, column: 11, scope: !4664)
!4817 = !DILocation(line: 483, column: 15, scope: !4664)
!4818 = !DILocation(line: 483, column: 20, scope: !4664)
!4819 = !DILocation(line: 483, column: 2, scope: !4664)
!4820 = !DILabel(scope: !4664, name: "fail1", file: !3, line: 484)
!4821 = !DILocation(line: 484, column: 7, scope: !4664)
!4822 = !DILocation(line: 485, column: 2, scope: !4664)
!4823 = !DILabel(scope: !4664, name: "fail0", file: !3, line: 487)
!4824 = !DILocation(line: 487, column: 7, scope: !4664)
!4825 = !DILocation(line: 488, column: 21, scope: !4664)
!4826 = !DILocation(line: 488, column: 2, scope: !4664)
!4827 = !DILocation(line: 489, column: 9, scope: !4664)
!4828 = !DILocation(line: 489, column: 2, scope: !4664)
!4829 = !DILocation(line: 490, column: 1, scope: !4664)
!4830 = distinct !DISubprogram(name: "bt878_remove", scope: !3, file: !3, line: 492, type: !4128, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!4831 = !DILocalVariable(name: "pci_dev", arg: 1, scope: !4830, file: !3, line: 492, type: !3998)
!4832 = !DILocation(line: 492, column: 42, scope: !4830)
!4833 = !DILocalVariable(name: "command", scope: !4830, file: !3, line: 494, type: !217)
!4834 = !DILocation(line: 494, column: 5, scope: !4830)
!4835 = !DILocalVariable(name: "bt", scope: !4830, file: !3, line: 495, type: !134)
!4836 = !DILocation(line: 495, column: 16, scope: !4830)
!4837 = !DILocation(line: 495, column: 37, scope: !4830)
!4838 = !DILocation(line: 495, column: 21, scope: !4830)
!4839 = !DILocation(line: 497, column: 6, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4830, file: !3, line: 497, column: 6)
!4841 = !DILocation(line: 497, column: 6, scope: !4830)
!4842 = !DILocation(line: 498, column: 46, scope: !4840)
!4843 = !DILocation(line: 498, column: 50, scope: !4840)
!4844 = !DILocation(line: 498, column: 3, scope: !4840)
!4845 = !DILocation(line: 501, column: 2, scope: !4830)
!4846 = !DILocation(line: 504, column: 2, scope: !4830)
!4847 = !DILocation(line: 505, column: 2, scope: !4830)
!4848 = !DILocation(line: 508, column: 23, scope: !4830)
!4849 = !DILocation(line: 508, column: 27, scope: !4830)
!4850 = !DILocation(line: 508, column: 2, scope: !4830)
!4851 = !DILocation(line: 510, column: 10, scope: !4830)
!4852 = !DILocation(line: 511, column: 24, scope: !4830)
!4853 = !DILocation(line: 511, column: 28, scope: !4830)
!4854 = !DILocation(line: 511, column: 46, scope: !4830)
!4855 = !DILocation(line: 511, column: 2, scope: !4830)
!4856 = !DILocation(line: 513, column: 11, scope: !4830)
!4857 = !DILocation(line: 513, column: 15, scope: !4830)
!4858 = !DILocation(line: 513, column: 20, scope: !4830)
!4859 = !DILocation(line: 513, column: 2, scope: !4830)
!4860 = !DILocation(line: 514, column: 42, scope: !4830)
!4861 = !DILocation(line: 514, column: 46, scope: !4830)
!4862 = !DILocation(line: 514, column: 2, scope: !4830)
!4863 = !DILocation(line: 515, column: 6, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4830, file: !3, line: 515, column: 6)
!4865 = !DILocation(line: 515, column: 10, scope: !4864)
!4866 = !DILocation(line: 515, column: 6, scope: !4830)
!4867 = !DILocation(line: 516, column: 11, scope: !4864)
!4868 = !DILocation(line: 516, column: 15, scope: !4864)
!4869 = !DILocation(line: 516, column: 3, scope: !4864)
!4870 = !DILocation(line: 518, column: 2, scope: !4830)
!4871 = !DILocation(line: 524, column: 2, scope: !4830)
!4872 = !DILocation(line: 524, column: 6, scope: !4830)
!4873 = !DILocation(line: 524, column: 15, scope: !4830)
!4874 = !DILocation(line: 525, column: 17, scope: !4830)
!4875 = !DILocation(line: 525, column: 2, scope: !4830)
!4876 = !DILocation(line: 527, column: 21, scope: !4830)
!4877 = !DILocation(line: 527, column: 2, scope: !4830)
!4878 = !DILocation(line: 528, column: 2, scope: !4830)
!4879 = distinct !DISubprogram(name: "card_name", scope: !3, file: !3, line: 388, type: !4880, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!131, !4111}
!4882 = !DILocalVariable(name: "id", arg: 1, scope: !4879, file: !3, line: 388, type: !4111)
!4883 = !DILocation(line: 388, column: 59, scope: !4879)
!4884 = !DILocation(line: 390, column: 9, scope: !4879)
!4885 = !DILocation(line: 390, column: 13, scope: !4879)
!4886 = !DILocation(line: 390, column: 41, scope: !4879)
!4887 = !DILocation(line: 390, column: 45, scope: !4879)
!4888 = !DILocation(line: 390, column: 27, scope: !4879)
!4889 = !DILocation(line: 390, column: 2, scope: !4879)
!4890 = distinct !DISubprogram(name: "request_irq", scope: !114, file: !114, line: 157, type: !4891, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!4891 = !DISubroutineType(types: !4892)
!4892 = !{!197, !7, !4893, !266, !131, !130}
!4893 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !114, line: 92, baseType: !4894)
!4894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4895, size: 64)
!4895 = !DISubroutineType(types: !4896)
!4896 = !{!4897, !197, !130}
!4897 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !108, line: 17, baseType: !107)
!4898 = !DILocalVariable(name: "irq", arg: 1, scope: !4890, file: !114, line: 157, type: !7)
!4899 = !DILocation(line: 157, column: 26, scope: !4890)
!4900 = !DILocalVariable(name: "handler", arg: 2, scope: !4890, file: !114, line: 157, type: !4893)
!4901 = !DILocation(line: 157, column: 45, scope: !4890)
!4902 = !DILocalVariable(name: "flags", arg: 3, scope: !4890, file: !114, line: 157, type: !266)
!4903 = !DILocation(line: 157, column: 68, scope: !4890)
!4904 = !DILocalVariable(name: "name", arg: 4, scope: !4890, file: !114, line: 158, type: !131)
!4905 = !DILocation(line: 158, column: 18, scope: !4890)
!4906 = !DILocalVariable(name: "dev", arg: 5, scope: !4890, file: !114, line: 158, type: !130)
!4907 = !DILocation(line: 158, column: 30, scope: !4890)
!4908 = !DILocation(line: 160, column: 30, scope: !4890)
!4909 = !DILocation(line: 160, column: 35, scope: !4890)
!4910 = !DILocation(line: 160, column: 50, scope: !4890)
!4911 = !DILocation(line: 160, column: 57, scope: !4890)
!4912 = !DILocation(line: 160, column: 63, scope: !4890)
!4913 = !DILocation(line: 160, column: 9, scope: !4890)
!4914 = !DILocation(line: 160, column: 2, scope: !4890)
!4915 = distinct !DISubprogram(name: "bt878_irq", scope: !3, file: !3, line: 247, type: !4895, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!4916 = !DILocalVariable(name: "irq", arg: 1, scope: !4915, file: !3, line: 247, type: !197)
!4917 = !DILocation(line: 247, column: 34, scope: !4915)
!4918 = !DILocalVariable(name: "dev_id", arg: 2, scope: !4915, file: !3, line: 247, type: !130)
!4919 = !DILocation(line: 247, column: 45, scope: !4915)
!4920 = !DILocalVariable(name: "stat", scope: !4915, file: !3, line: 249, type: !232)
!4921 = !DILocation(line: 249, column: 6, scope: !4915)
!4922 = !DILocalVariable(name: "astat", scope: !4915, file: !3, line: 249, type: !232)
!4923 = !DILocation(line: 249, column: 12, scope: !4915)
!4924 = !DILocalVariable(name: "mask", scope: !4915, file: !3, line: 249, type: !232)
!4925 = !DILocation(line: 249, column: 19, scope: !4915)
!4926 = !DILocalVariable(name: "count", scope: !4915, file: !3, line: 250, type: !197)
!4927 = !DILocation(line: 250, column: 6, scope: !4915)
!4928 = !DILocalVariable(name: "bt", scope: !4915, file: !3, line: 251, type: !134)
!4929 = !DILocation(line: 251, column: 16, scope: !4915)
!4930 = !DILocation(line: 253, column: 24, scope: !4915)
!4931 = !DILocation(line: 253, column: 7, scope: !4915)
!4932 = !DILocation(line: 253, column: 5, scope: !4915)
!4933 = !DILocation(line: 255, column: 8, scope: !4915)
!4934 = !DILocation(line: 256, column: 2, scope: !4915)
!4935 = !DILocation(line: 257, column: 10, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 256, column: 12)
!4937 = !DILocation(line: 257, column: 8, scope: !4936)
!4938 = !DILocation(line: 258, column: 10, scope: !4936)
!4939 = !DILocation(line: 258, column: 8, scope: !4936)
!4940 = !DILocation(line: 259, column: 18, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 259, column: 7)
!4942 = !DILocation(line: 259, column: 25, scope: !4941)
!4943 = !DILocation(line: 259, column: 23, scope: !4941)
!4944 = !DILocation(line: 259, column: 15, scope: !4941)
!4945 = !DILocation(line: 259, column: 7, scope: !4936)
!4946 = !DILocation(line: 260, column: 4, scope: !4941)
!4947 = !DILocation(line: 262, column: 3, scope: !4936)
!4948 = !DILocation(line: 265, column: 7, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 265, column: 7)
!4950 = !DILocation(line: 265, column: 13, scope: !4949)
!4951 = !DILocation(line: 265, column: 7, scope: !4936)
!4952 = !DILocation(line: 266, column: 8, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 266, column: 8)
!4954 = distinct !DILexicalBlock(scope: !4949, file: !3, line: 265, column: 46)
!4955 = !DILocation(line: 266, column: 8, scope: !4954)
!4956 = !DILocation(line: 269, column: 12, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 266, column: 23)
!4958 = !DILocation(line: 269, column: 16, scope: !4957)
!4959 = !DILocation(line: 270, column: 13, scope: !4957)
!4960 = !DILocation(line: 270, column: 19, scope: !4957)
!4961 = !DILocation(line: 270, column: 12, scope: !4957)
!4962 = !DILocation(line: 272, column: 13, scope: !4957)
!4963 = !DILocation(line: 272, column: 19, scope: !4957)
!4964 = !DILocation(line: 272, column: 12, scope: !4957)
!4965 = !DILocation(line: 273, column: 16, scope: !4957)
!4966 = !DILocation(line: 267, column: 5, scope: !4957)
!4967 = !DILocation(line: 274, column: 4, scope: !4957)
!4968 = !DILocation(line: 275, column: 3, scope: !4954)
!4969 = !DILocation(line: 276, column: 7, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 276, column: 7)
!4971 = !DILocation(line: 276, column: 13, scope: !4970)
!4972 = !DILocation(line: 276, column: 7, scope: !4936)
!4973 = !DILocation(line: 277, column: 8, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4975, file: !3, line: 277, column: 8)
!4975 = distinct !DILexicalBlock(scope: !4970, file: !3, line: 276, column: 63)
!4976 = !DILocation(line: 277, column: 8, scope: !4975)
!4977 = !DILocation(line: 280, column: 10, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 277, column: 23)
!4979 = !DILocation(line: 280, column: 14, scope: !4978)
!4980 = !DILocation(line: 281, column: 11, scope: !4978)
!4981 = !DILocation(line: 281, column: 17, scope: !4978)
!4982 = !DILocation(line: 281, column: 10, scope: !4978)
!4983 = !DILocation(line: 283, column: 11, scope: !4978)
!4984 = !DILocation(line: 283, column: 17, scope: !4978)
!4985 = !DILocation(line: 283, column: 10, scope: !4978)
!4986 = !DILocation(line: 285, column: 11, scope: !4978)
!4987 = !DILocation(line: 285, column: 17, scope: !4978)
!4988 = !DILocation(line: 285, column: 10, scope: !4978)
!4989 = !DILocation(line: 286, column: 14, scope: !4978)
!4990 = !DILocation(line: 278, column: 5, scope: !4978)
!4991 = !DILocation(line: 287, column: 4, scope: !4978)
!4992 = !DILocation(line: 288, column: 3, scope: !4975)
!4993 = !DILocation(line: 289, column: 7, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 289, column: 7)
!4995 = !DILocation(line: 289, column: 13, scope: !4994)
!4996 = !DILocation(line: 289, column: 7, scope: !4936)
!4997 = !DILocation(line: 290, column: 8, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4999, file: !3, line: 290, column: 8)
!4999 = distinct !DILexicalBlock(scope: !4994, file: !3, line: 289, column: 59)
!5000 = !DILocation(line: 290, column: 8, scope: !4999)
!5001 = !DILocation(line: 293, column: 10, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4998, file: !3, line: 290, column: 23)
!5003 = !DILocation(line: 293, column: 14, scope: !5002)
!5004 = !DILocation(line: 294, column: 11, scope: !5002)
!5005 = !DILocation(line: 294, column: 17, scope: !5002)
!5006 = !DILocation(line: 294, column: 10, scope: !5002)
!5007 = !DILocation(line: 295, column: 11, scope: !5002)
!5008 = !DILocation(line: 295, column: 17, scope: !5002)
!5009 = !DILocation(line: 295, column: 10, scope: !5002)
!5010 = !DILocation(line: 297, column: 11, scope: !5002)
!5011 = !DILocation(line: 297, column: 17, scope: !5002)
!5012 = !DILocation(line: 297, column: 10, scope: !5002)
!5013 = !DILocation(line: 298, column: 10, scope: !5002)
!5014 = !DILocation(line: 291, column: 5, scope: !5002)
!5015 = !DILocation(line: 299, column: 4, scope: !5002)
!5016 = !DILocation(line: 300, column: 3, scope: !4999)
!5017 = !DILocation(line: 301, column: 7, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 301, column: 7)
!5019 = !DILocation(line: 301, column: 13, scope: !5018)
!5020 = !DILocation(line: 301, column: 7, scope: !4936)
!5021 = !DILocation(line: 302, column: 26, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 301, column: 29)
!5023 = !DILocation(line: 302, column: 31, scope: !5022)
!5024 = !DILocation(line: 302, column: 47, scope: !5022)
!5025 = !DILocation(line: 302, column: 4, scope: !5022)
!5026 = !DILocation(line: 302, column: 8, scope: !5022)
!5027 = !DILocation(line: 302, column: 23, scope: !5022)
!5028 = !DILocation(line: 303, column: 22, scope: !5022)
!5029 = !DILocation(line: 303, column: 26, scope: !5022)
!5030 = !DILocation(line: 303, column: 4, scope: !5022)
!5031 = !DILocation(line: 304, column: 4, scope: !5022)
!5032 = !DILocation(line: 306, column: 8, scope: !4936)
!5033 = !DILocation(line: 307, column: 7, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 307, column: 7)
!5035 = !DILocation(line: 307, column: 13, scope: !5034)
!5036 = !DILocation(line: 307, column: 7, scope: !4936)
!5037 = !DILocation(line: 308, column: 4, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !5034, file: !3, line: 307, column: 19)
!5039 = !DILocation(line: 311, column: 11, scope: !5038)
!5040 = !DILocation(line: 311, column: 15, scope: !5038)
!5041 = !DILocation(line: 309, column: 4, scope: !5038)
!5042 = !DILocation(line: 312, column: 4, scope: !5038)
!5043 = distinct !{!5043, !4934, !5044}
!5044 = !DILocation(line: 314, column: 2, scope: !4915)
!5045 = !DILocation(line: 315, column: 2, scope: !4915)
!5046 = !DILocation(line: 316, column: 1, scope: !4915)
!5047 = distinct !DISubprogram(name: "pci_set_drvdata", scope: !4000, file: !4000, line: 1870, type: !5048, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!5048 = !DISubroutineType(types: !5049)
!5049 = !{null, !3998, !130}
!5050 = !DILocalVariable(name: "pdev", arg: 1, scope: !5047, file: !4000, line: 1870, type: !3998)
!5051 = !DILocation(line: 1870, column: 52, scope: !5047)
!5052 = !DILocalVariable(name: "data", arg: 2, scope: !5047, file: !4000, line: 1870, type: !130)
!5053 = !DILocation(line: 1870, column: 64, scope: !5047)
!5054 = !DILocation(line: 1872, column: 19, scope: !5047)
!5055 = !DILocation(line: 1872, column: 25, scope: !5047)
!5056 = !DILocation(line: 1872, column: 30, scope: !5047)
!5057 = !DILocation(line: 1872, column: 2, scope: !5047)
!5058 = !DILocation(line: 1873, column: 1, scope: !5047)
!5059 = distinct !DISubprogram(name: "bt878_mem_alloc", scope: !3, file: !3, line: 82, type: !5060, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!197, !134}
!5062 = !DILocalVariable(name: "bt", arg: 1, scope: !5059, file: !3, line: 82, type: !134)
!5063 = !DILocation(line: 82, column: 42, scope: !5059)
!5064 = !DILocation(line: 84, column: 7, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 84, column: 6)
!5066 = !DILocation(line: 84, column: 11, scope: !5065)
!5067 = !DILocation(line: 84, column: 6, scope: !5059)
!5068 = !DILocation(line: 85, column: 3, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5065, file: !3, line: 84, column: 20)
!5070 = !DILocation(line: 85, column: 7, scope: !5069)
!5071 = !DILocation(line: 85, column: 16, scope: !5069)
!5072 = !DILocation(line: 87, column: 39, scope: !5069)
!5073 = !DILocation(line: 87, column: 43, scope: !5069)
!5074 = !DILocation(line: 87, column: 48, scope: !5069)
!5075 = !DILocation(line: 87, column: 52, scope: !5069)
!5076 = !DILocation(line: 88, column: 12, scope: !5069)
!5077 = !DILocation(line: 88, column: 16, scope: !5069)
!5078 = !DILocation(line: 87, column: 17, scope: !5069)
!5079 = !DILocation(line: 87, column: 3, scope: !5069)
!5080 = !DILocation(line: 87, column: 7, scope: !5069)
!5081 = !DILocation(line: 87, column: 15, scope: !5069)
!5082 = !DILocation(line: 89, column: 8, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 89, column: 7)
!5084 = !DILocation(line: 89, column: 12, scope: !5083)
!5085 = !DILocation(line: 89, column: 7, scope: !5069)
!5086 = !DILocation(line: 90, column: 4, scope: !5083)
!5087 = !DILocation(line: 91, column: 2, scope: !5069)
!5088 = !DILocation(line: 93, column: 7, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 93, column: 6)
!5090 = !DILocation(line: 93, column: 11, scope: !5089)
!5091 = !DILocation(line: 93, column: 6, scope: !5059)
!5092 = !DILocation(line: 94, column: 3, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 93, column: 21)
!5094 = !DILocation(line: 94, column: 7, scope: !5093)
!5095 = !DILocation(line: 94, column: 17, scope: !5093)
!5096 = !DILocation(line: 95, column: 40, scope: !5093)
!5097 = !DILocation(line: 95, column: 44, scope: !5093)
!5098 = !DILocation(line: 95, column: 49, scope: !5093)
!5099 = !DILocation(line: 95, column: 53, scope: !5093)
!5100 = !DILocation(line: 96, column: 13, scope: !5093)
!5101 = !DILocation(line: 96, column: 17, scope: !5093)
!5102 = !DILocation(line: 95, column: 18, scope: !5093)
!5103 = !DILocation(line: 95, column: 3, scope: !5093)
!5104 = !DILocation(line: 95, column: 7, scope: !5093)
!5105 = !DILocation(line: 95, column: 16, scope: !5093)
!5106 = !DILocation(line: 97, column: 8, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5093, file: !3, line: 97, column: 7)
!5108 = !DILocation(line: 97, column: 12, scope: !5107)
!5109 = !DILocation(line: 97, column: 7, scope: !5093)
!5110 = !DILocation(line: 98, column: 19, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5107, file: !3, line: 97, column: 22)
!5112 = !DILocation(line: 98, column: 4, scope: !5111)
!5113 = !DILocation(line: 99, column: 4, scope: !5111)
!5114 = !DILocation(line: 101, column: 2, scope: !5093)
!5115 = !DILocation(line: 103, column: 2, scope: !5059)
!5116 = !DILocation(line: 104, column: 1, scope: !5059)
!5117 = distinct !DISubprogram(name: "bt878_make_risc", scope: !3, file: !3, line: 123, type: !5060, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!5118 = !DILocalVariable(name: "bt", arg: 1, scope: !5117, file: !3, line: 123, type: !134)
!5119 = !DILocation(line: 123, column: 42, scope: !5117)
!5120 = !DILocation(line: 125, column: 20, scope: !5117)
!5121 = !DILocation(line: 125, column: 24, scope: !5117)
!5122 = !DILocation(line: 125, column: 33, scope: !5117)
!5123 = !DILocation(line: 125, column: 2, scope: !5117)
!5124 = !DILocation(line: 125, column: 6, scope: !5117)
!5125 = !DILocation(line: 125, column: 18, scope: !5117)
!5126 = !DILocation(line: 126, column: 2, scope: !5117)
!5127 = !DILocation(line: 126, column: 6, scope: !5117)
!5128 = !DILocation(line: 126, column: 18, scope: !5117)
!5129 = !DILocation(line: 127, column: 19, scope: !5117)
!5130 = !DILocation(line: 127, column: 23, scope: !5117)
!5131 = !DILocation(line: 127, column: 2, scope: !5117)
!5132 = !DILocation(line: 127, column: 6, scope: !5117)
!5133 = !DILocation(line: 127, column: 17, scope: !5117)
!5134 = !DILocation(line: 128, column: 19, scope: !5117)
!5135 = !DILocation(line: 128, column: 23, scope: !5117)
!5136 = !DILocation(line: 128, column: 2, scope: !5117)
!5137 = !DILocation(line: 128, column: 6, scope: !5117)
!5138 = !DILocation(line: 128, column: 17, scope: !5117)
!5139 = !DILocation(line: 130, column: 2, scope: !5117)
!5140 = !DILocation(line: 130, column: 9, scope: !5117)
!5141 = !DILocation(line: 130, column: 13, scope: !5117)
!5142 = !DILocation(line: 130, column: 24, scope: !5117)
!5143 = !DILocation(line: 131, column: 3, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 130, column: 32)
!5145 = !DILocation(line: 131, column: 7, scope: !5144)
!5146 = !DILocation(line: 131, column: 18, scope: !5144)
!5147 = !DILocation(line: 132, column: 3, scope: !5144)
!5148 = !DILocation(line: 132, column: 7, scope: !5144)
!5149 = !DILocation(line: 132, column: 18, scope: !5144)
!5150 = distinct !{!5150, !5139, !5151}
!5151 = !DILocation(line: 133, column: 2, scope: !5117)
!5152 = !DILocation(line: 135, column: 6, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 135, column: 6)
!5154 = !DILocation(line: 135, column: 10, scope: !5153)
!5155 = !DILocation(line: 135, column: 21, scope: !5153)
!5156 = !DILocation(line: 135, column: 6, scope: !5117)
!5157 = !DILocation(line: 136, column: 3, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 135, column: 28)
!5159 = !DILocation(line: 137, column: 3, scope: !5158)
!5160 = !DILocation(line: 139, column: 2, scope: !5117)
!5161 = !DILocation(line: 140, column: 1, scope: !5117)
!5162 = distinct !DISubprogram(name: "tasklet_schedule", scope: !114, file: !114, line: 681, type: !4312, scopeLine: 682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!5163 = !DILocalVariable(name: "t", arg: 1, scope: !5162, file: !114, line: 681, type: !4299)
!5164 = !DILocation(line: 681, column: 60, scope: !5162)
!5165 = !DILocation(line: 683, column: 46, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5162, file: !114, line: 683, column: 6)
!5167 = !DILocation(line: 683, column: 49, scope: !5166)
!5168 = !DILocation(line: 683, column: 7, scope: !5166)
!5169 = !DILocation(line: 683, column: 6, scope: !5162)
!5170 = !DILocation(line: 684, column: 22, scope: !5166)
!5171 = !DILocation(line: 684, column: 3, scope: !5166)
!5172 = !DILocation(line: 685, column: 1, scope: !5162)
!5173 = distinct !DISubprogram(name: "test_and_set_bit", scope: !5174, file: !5174, line: 68, type: !5175, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!5174 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5175 = !DISubroutineType(types: !5176)
!5176 = !{!695, !283, !5177}
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !266)
!5179 = !DILocalVariable(name: "nr", arg: 1, scope: !5180, file: !5181, line: 136, type: !283)
!5180 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !5181, file: !5181, line: 136, type: !5175, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!5181 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5182 = !DILocation(line: 136, column: 28, scope: !5180, inlinedAt: !5183)
!5183 = distinct !DILocation(line: 71, column: 9, scope: !5173)
!5184 = !DILocalVariable(name: "addr", arg: 2, scope: !5180, file: !5181, line: 136, type: !5177)
!5185 = !DILocation(line: 136, column: 56, scope: !5180, inlinedAt: !5183)
!5186 = !DILocalVariable(name: "c", scope: !5187, file: !5181, line: 138, type: !695)
!5187 = distinct !DILexicalBlock(scope: !5180, file: !5181, line: 138, column: 9)
!5188 = !DILocation(line: 138, column: 9, scope: !5187, inlinedAt: !5183)
!5189 = !DILocalVariable(name: "v", arg: 1, scope: !5190, file: !5191, line: 99, type: !4564)
!5190 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5191, file: !5191, line: 99, type: !5192, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!5191 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5192 = !DISubroutineType(types: !5193)
!5193 = !{null, !4564, !1348}
!5194 = !DILocation(line: 99, column: 79, scope: !5190, inlinedAt: !5195)
!5195 = distinct !DILocation(line: 70, column: 2, scope: !5173)
!5196 = !DILocalVariable(name: "size", arg: 2, scope: !5190, file: !5191, line: 99, type: !1348)
!5197 = !DILocation(line: 99, column: 89, scope: !5190, inlinedAt: !5195)
!5198 = !DILocalVariable(name: "nr", arg: 1, scope: !5173, file: !5174, line: 68, type: !283)
!5199 = !DILocation(line: 68, column: 42, scope: !5173)
!5200 = !DILocalVariable(name: "addr", arg: 2, scope: !5173, file: !5174, line: 68, type: !5177)
!5201 = !DILocation(line: 68, column: 70, scope: !5173)
!5202 = !DILocation(line: 70, column: 31, scope: !5173)
!5203 = !DILocation(line: 70, column: 38, scope: !5173)
!5204 = !DILocation(line: 70, column: 36, scope: !5173)
!5205 = !DILocation(line: 101, column: 20, scope: !5190, inlinedAt: !5195)
!5206 = !DILocation(line: 101, column: 23, scope: !5190, inlinedAt: !5195)
!5207 = !DILocation(line: 101, column: 2, scope: !5190, inlinedAt: !5195)
!5208 = !DILocation(line: 102, column: 2, scope: !5190, inlinedAt: !5195)
!5209 = !DILocation(line: 71, column: 31, scope: !5173)
!5210 = !DILocation(line: 71, column: 35, scope: !5173)
!5211 = !{i32 -2147136770, i32 -2147136674}
!5212 = !DILocation(line: 71, column: 2, scope: !5173)
!5213 = distinct !DISubprogram(name: "kasan_check_write", scope: !5214, file: !5214, line: 38, type: !5215, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!5214 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5215 = !DISubroutineType(types: !5216)
!5216 = !{!695, !4564, !7}
!5217 = !DILocalVariable(name: "p", arg: 1, scope: !5213, file: !5214, line: 38, type: !4564)
!5218 = !DILocation(line: 38, column: 59, scope: !5213)
!5219 = !DILocalVariable(name: "size", arg: 2, scope: !5213, file: !5214, line: 38, type: !7)
!5220 = !DILocation(line: 38, column: 75, scope: !5213)
!5221 = !DILocation(line: 40, column: 2, scope: !5213)
!5222 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5223, file: !5223, line: 178, type: !5224, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!5223 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5224 = !DISubroutineType(types: !5225)
!5225 = !{null, !4564, !1348, !197}
!5226 = !DILocalVariable(name: "ptr", arg: 1, scope: !5222, file: !5223, line: 178, type: !4564)
!5227 = !DILocation(line: 178, column: 60, scope: !5222)
!5228 = !DILocalVariable(name: "size", arg: 2, scope: !5222, file: !5223, line: 178, type: !1348)
!5229 = !DILocation(line: 178, column: 72, scope: !5222)
!5230 = !DILocalVariable(name: "type", arg: 3, scope: !5222, file: !5223, line: 179, type: !197)
!5231 = !DILocation(line: 179, column: 15, scope: !5222)
!5232 = !DILocation(line: 179, column: 23, scope: !5222)
!5233 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !5234, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!5234 = !DISubroutineType(types: !5235)
!5235 = !{null, !3398, !130}
!5236 = !DILocalVariable(name: "dev", arg: 1, scope: !5233, file: !73, line: 660, type: !3398)
!5237 = !DILocation(line: 660, column: 51, scope: !5233)
!5238 = !DILocalVariable(name: "data", arg: 2, scope: !5233, file: !73, line: 660, type: !130)
!5239 = !DILocation(line: 660, column: 62, scope: !5233)
!5240 = !DILocation(line: 662, column: 21, scope: !5233)
!5241 = !DILocation(line: 662, column: 2, scope: !5233)
!5242 = !DILocation(line: 662, column: 7, scope: !5233)
!5243 = !DILocation(line: 662, column: 19, scope: !5233)
!5244 = !DILocation(line: 663, column: 1, scope: !5233)
!5245 = distinct !DISubprogram(name: "pci_zalloc_consistent", scope: !5246, file: !5246, line: 24, type: !5247, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!5246 = !DIFile(filename: "./include/linux/pci-dma-compat.h", directory: "/home/lizy2001/genbc/linux")
!5247 = !DISubroutineType(types: !5248)
!5248 = !{!130, !3998, !1348, !5249}
!5249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!5250 = !DILocalVariable(name: "hwdev", arg: 1, scope: !5245, file: !5246, line: 24, type: !3998)
!5251 = !DILocation(line: 24, column: 39, scope: !5245)
!5252 = !DILocalVariable(name: "size", arg: 2, scope: !5245, file: !5246, line: 24, type: !1348)
!5253 = !DILocation(line: 24, column: 53, scope: !5245)
!5254 = !DILocalVariable(name: "dma_handle", arg: 3, scope: !5245, file: !5246, line: 25, type: !5249)
!5255 = !DILocation(line: 25, column: 21, scope: !5245)
!5256 = !DILocation(line: 27, column: 29, scope: !5245)
!5257 = !DILocation(line: 27, column: 36, scope: !5245)
!5258 = !DILocation(line: 27, column: 41, scope: !5245)
!5259 = !DILocation(line: 27, column: 47, scope: !5245)
!5260 = !DILocation(line: 27, column: 9, scope: !5245)
!5261 = !DILocation(line: 27, column: 2, scope: !5245)
!5262 = distinct !DISubprogram(name: "bt878_mem_free", scope: !3, file: !3, line: 67, type: !4525, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!5263 = !DILocalVariable(name: "bt", arg: 1, scope: !5262, file: !3, line: 67, type: !134)
!5264 = !DILocation(line: 67, column: 42, scope: !5262)
!5265 = !DILocation(line: 69, column: 6, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 69, column: 6)
!5267 = !DILocation(line: 69, column: 10, scope: !5266)
!5268 = !DILocation(line: 69, column: 6, scope: !5262)
!5269 = !DILocation(line: 70, column: 23, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5266, file: !3, line: 69, column: 19)
!5271 = !DILocation(line: 70, column: 27, scope: !5270)
!5272 = !DILocation(line: 70, column: 32, scope: !5270)
!5273 = !DILocation(line: 70, column: 36, scope: !5270)
!5274 = !DILocation(line: 70, column: 46, scope: !5270)
!5275 = !DILocation(line: 70, column: 50, scope: !5270)
!5276 = !DILocation(line: 71, column: 9, scope: !5270)
!5277 = !DILocation(line: 71, column: 13, scope: !5270)
!5278 = !DILocation(line: 70, column: 3, scope: !5270)
!5279 = !DILocation(line: 72, column: 3, scope: !5270)
!5280 = !DILocation(line: 72, column: 7, scope: !5270)
!5281 = !DILocation(line: 72, column: 15, scope: !5270)
!5282 = !DILocation(line: 73, column: 2, scope: !5270)
!5283 = !DILocation(line: 75, column: 6, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 75, column: 6)
!5285 = !DILocation(line: 75, column: 10, scope: !5284)
!5286 = !DILocation(line: 75, column: 6, scope: !5262)
!5287 = !DILocation(line: 76, column: 23, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5284, file: !3, line: 75, column: 20)
!5289 = !DILocation(line: 76, column: 27, scope: !5288)
!5290 = !DILocation(line: 76, column: 32, scope: !5288)
!5291 = !DILocation(line: 76, column: 36, scope: !5288)
!5292 = !DILocation(line: 76, column: 47, scope: !5288)
!5293 = !DILocation(line: 76, column: 51, scope: !5288)
!5294 = !DILocation(line: 77, column: 9, scope: !5288)
!5295 = !DILocation(line: 77, column: 13, scope: !5288)
!5296 = !DILocation(line: 76, column: 3, scope: !5288)
!5297 = !DILocation(line: 78, column: 3, scope: !5288)
!5298 = !DILocation(line: 78, column: 7, scope: !5288)
!5299 = !DILocation(line: 78, column: 16, scope: !5288)
!5300 = !DILocation(line: 79, column: 2, scope: !5288)
!5301 = !DILocation(line: 80, column: 1, scope: !5262)
!5302 = distinct !DISubprogram(name: "dma_alloc_coherent", scope: !5303, file: !5303, line: 392, type: !5304, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!5303 = !DIFile(filename: "./include/linux/dma-mapping.h", directory: "/home/lizy2001/genbc/linux")
!5304 = !DISubroutineType(types: !5305)
!5305 = !{!130, !3398, !1348, !5249, !510}
!5306 = !DILocalVariable(name: "dev", arg: 1, scope: !5302, file: !5303, line: 392, type: !3398)
!5307 = !DILocation(line: 392, column: 55, scope: !5302)
!5308 = !DILocalVariable(name: "size", arg: 2, scope: !5302, file: !5303, line: 392, type: !1348)
!5309 = !DILocation(line: 392, column: 67, scope: !5302)
!5310 = !DILocalVariable(name: "dma_handle", arg: 3, scope: !5302, file: !5303, line: 393, type: !5249)
!5311 = !DILocation(line: 393, column: 15, scope: !5302)
!5312 = !DILocalVariable(name: "gfp", arg: 4, scope: !5302, file: !5303, line: 393, type: !510)
!5313 = !DILocation(line: 393, column: 33, scope: !5302)
!5314 = !DILocation(line: 396, column: 25, scope: !5302)
!5315 = !DILocation(line: 396, column: 30, scope: !5302)
!5316 = !DILocation(line: 396, column: 36, scope: !5302)
!5317 = !DILocation(line: 396, column: 48, scope: !5302)
!5318 = !DILocation(line: 397, column: 5, scope: !5302)
!5319 = !DILocation(line: 397, column: 9, scope: !5302)
!5320 = !DILocation(line: 397, column: 4, scope: !5302)
!5321 = !DILocation(line: 396, column: 9, scope: !5302)
!5322 = !DILocation(line: 396, column: 2, scope: !5302)
!5323 = distinct !DISubprogram(name: "pci_free_consistent", scope: !5246, file: !5246, line: 31, type: !5324, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!5324 = !DISubroutineType(types: !5325)
!5325 = !{null, !3998, !1348, !130, !2382}
!5326 = !DILocalVariable(name: "hwdev", arg: 1, scope: !5323, file: !5246, line: 31, type: !3998)
!5327 = !DILocation(line: 31, column: 37, scope: !5323)
!5328 = !DILocalVariable(name: "size", arg: 2, scope: !5323, file: !5246, line: 31, type: !1348)
!5329 = !DILocation(line: 31, column: 51, scope: !5323)
!5330 = !DILocalVariable(name: "vaddr", arg: 3, scope: !5323, file: !5246, line: 32, type: !130)
!5331 = !DILocation(line: 32, column: 13, scope: !5323)
!5332 = !DILocalVariable(name: "dma_handle", arg: 4, scope: !5323, file: !5246, line: 32, type: !2382)
!5333 = !DILocation(line: 32, column: 31, scope: !5323)
!5334 = !DILocation(line: 34, column: 21, scope: !5323)
!5335 = !DILocation(line: 34, column: 28, scope: !5323)
!5336 = !DILocation(line: 34, column: 33, scope: !5323)
!5337 = !DILocation(line: 34, column: 39, scope: !5323)
!5338 = !DILocation(line: 34, column: 46, scope: !5323)
!5339 = !DILocation(line: 34, column: 2, scope: !5323)
!5340 = !DILocation(line: 35, column: 1, scope: !5323)
!5341 = distinct !DISubprogram(name: "dma_free_coherent", scope: !5303, file: !5303, line: 400, type: !5342, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!5342 = !DISubroutineType(types: !5343)
!5343 = !{null, !3398, !1348, !130, !2382}
!5344 = !DILocalVariable(name: "dev", arg: 1, scope: !5341, file: !5303, line: 400, type: !3398)
!5345 = !DILocation(line: 400, column: 53, scope: !5341)
!5346 = !DILocalVariable(name: "size", arg: 2, scope: !5341, file: !5303, line: 400, type: !1348)
!5347 = !DILocation(line: 400, column: 65, scope: !5341)
!5348 = !DILocalVariable(name: "cpu_addr", arg: 3, scope: !5341, file: !5303, line: 401, type: !130)
!5349 = !DILocation(line: 401, column: 9, scope: !5341)
!5350 = !DILocalVariable(name: "dma_handle", arg: 4, scope: !5341, file: !5303, line: 401, type: !2382)
!5351 = !DILocation(line: 401, column: 30, scope: !5341)
!5352 = !DILocation(line: 403, column: 24, scope: !5341)
!5353 = !DILocation(line: 403, column: 29, scope: !5341)
!5354 = !DILocation(line: 403, column: 35, scope: !5341)
!5355 = !DILocation(line: 403, column: 45, scope: !5341)
!5356 = !DILocation(line: 403, column: 9, scope: !5341)
!5357 = !DILocation(line: 403, column: 2, scope: !5341)
!5358 = distinct !DISubprogram(name: "pci_get_drvdata", scope: !4000, file: !4000, line: 1865, type: !5359, scopeLine: 1866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!5359 = !DISubroutineType(types: !5360)
!5360 = !{!130, !3998}
!5361 = !DILocalVariable(name: "pdev", arg: 1, scope: !5358, file: !4000, line: 1865, type: !3998)
!5362 = !DILocation(line: 1865, column: 53, scope: !5358)
!5363 = !DILocation(line: 1867, column: 26, scope: !5358)
!5364 = !DILocation(line: 1867, column: 32, scope: !5358)
!5365 = !DILocation(line: 1867, column: 9, scope: !5358)
!5366 = !DILocation(line: 1867, column: 2, scope: !5358)
!5367 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !5368, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !169)
!5368 = !DISubroutineType(types: !5369)
!5369 = !{!130, !3728}
!5370 = !DILocalVariable(name: "dev", arg: 1, scope: !5367, file: !73, line: 655, type: !3728)
!5371 = !DILocation(line: 655, column: 58, scope: !5367)
!5372 = !DILocation(line: 657, column: 9, scope: !5367)
!5373 = !DILocation(line: 657, column: 14, scope: !5367)
!5374 = !DILocation(line: 657, column: 2, scope: !5367)
