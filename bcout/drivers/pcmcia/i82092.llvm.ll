; ModuleID = '../bcout/drivers/pcmcia/i82092.llvm.bc'
source_filename = "drivers/pcmcia/i82092.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_i82092aa_module_init6:\09\09\09"
module asm ".long\09i82092aa_module_init - .\09\09\09"
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
%struct.socket_info = type { i32, i32, i32, %struct.pcmcia_socket, %struct.pci_dev* }
%struct.pcmcia_socket = type { %struct.module*, %struct.socket_state_t, i32, i32, i16, i16, %struct.pccard_mem_map, i8*, [2 x %struct.io_window_t], [4 x %struct.pccard_mem_map], %struct.list_head, i64, i8*, %struct.list_head, %struct.completion, i32, i32, i32, i32, i32, i32, %struct.pci_dev*, i8, %struct.pccard_operations*, %struct.pccard_resource_ops*, i8*, void (%struct.pcmcia_socket*, i32)*, i32 (%struct.pcmcia_socket*, i32)*, void (%struct.pcmcia_socket*, %struct.pci_bus*)*, %struct.task_struct*, %struct.completion, i32, i32, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.pcmcia_callback*, %struct.list_head, i8, i8, %struct.atomic_t, i32, %struct.device, i8*, i32 }
%struct.socket_state_t = type { i32, i32, i8, i8, i8 }
%struct.pccard_mem_map = type { i8, i8, i16, i64, i32, %struct.resource* }
%struct.io_window_t = type { i32, i32, %struct.resource* }
%struct.pccard_operations = type { i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, %struct.socket_state_t*)*, i32 (%struct.pcmcia_socket*, %struct.pccard_io_map*)*, i32 (%struct.pcmcia_socket*, %struct.pccard_mem_map*)* }
%struct.pccard_io_map = type { i8, i8, i16, i64, i64 }
%struct.pccard_resource_ops = type opaque
%struct.pcmcia_callback = type opaque
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
%struct.pci_bus_region = type { i64, i64 }

@__UNIQUE_ID_file234 = internal constant [34 x i8] c"i82092.file=drivers/pcmcia/i82092\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_license235 = internal constant [19 x i8] c"i82092.license=GPL\00", section ".modinfo", align 1, !dbg !4133
@__UNIQUE_ID___addressable_i82092aa_module_init240 = internal global i8* bitcast (i32 ()* @i82092aa_module_init to i8*), section ".discard.addressable", align 8, !dbg !4138
@__exitcall_i82092aa_module_exit = internal global void ()* @i82092aa_module_exit, section ".exitcall.exit", align 8, !dbg !4140
@i82092aa_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([2 x %struct.pci_device_id], [2 x %struct.pci_device_id]* @i82092aa_pci_ids, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @i82092aa_pci_probe, void (%struct.pci_dev*)* @i82092aa_pci_remove, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !4145
@.str = private unnamed_addr constant [7 x i8] c"i82092\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"i82092aa\00", align 1
@i82092aa_pci_ids = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 4641, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4147
@socket_count = internal global i32 0, align 4, !dbg !4150
@.str.2 = private unnamed_addr constant [45 x i8] c"Oops, you did something we didn't think of.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"configured as a %d socket device.\0A\00", align 1
@ioport_resource = external dso_local global %struct.resource, align 8
@sockets = internal global [4 x %struct.socket_info] zeroinitializer, align 16, !dbg !4152
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to register IRQ %d, aborting\0A\00", align 1
@i82092aa_operations = internal global %struct.pccard_operations { i32 (%struct.pcmcia_socket*)* @i82092aa_init, i32 (%struct.pcmcia_socket*)* null, i32 (%struct.pcmcia_socket*, i32*)* @i82092aa_get_status, i32 (%struct.pcmcia_socket*, %struct.socket_state_t*)* @i82092aa_set_socket, i32 (%struct.pcmcia_socket*, %struct.pccard_io_map*)* @i82092aa_set_io_map, i32 (%struct.pcmcia_socket*, %struct.pccard_mem_map*)* @i82092aa_set_mem_map }, align 8, !dbg !4157
@pccard_nonstatic_ops = external dso_local global %struct.pccard_resource_ops, align 1
@port_lock = internal global %struct.spinlock undef, align 1, !dbg !4155
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.5 = private unnamed_addr constant [45 x i8] c"\013i82092aa: infinite eventloop in interrupt\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Card detected in socket %i!\0A\00", align 1
@__const.i82092aa_init.io = private unnamed_addr constant %struct.pccard_io_map { i8 0, i8 0, i16 0, i64 0, i64 1 }, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"Auto power\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Power Enabled\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"setting voltage to Vcc to 5V on socket %i\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"%s called with invalid VCC power value: %i\00", align 1
@__func__.i82092aa_set_socket = private unnamed_addr constant [20 x i8] c"i82092aa_set_socket\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"not setting Vpp on socket %i\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"setting Vpp to 5.0 for socket %i\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"setting Vpp to 12.0\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"%s called with invalid VPP power value: %i\00", align 1
@.str.15 = private unnamed_addr constant [64 x i8] c"invalid mem map for socket %i: %llx to %llx with a start of %x\0A\00", align 1
@cycle_time = internal global i32 120, align 4, !dbg !4159
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__UNIQUE_ID_file234, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license235, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_i82092aa_module_init240 to i8*), i8* bitcast (void ()** @__exitcall_i82092aa_module_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i82092aa_module_init() #0 !dbg !4170 {
entry:
  %call = call i32 @__pci_register_driver(%struct.pci_driver* @i82092aa_pci_driver, %struct.module* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #7, !dbg !4173
  ret i32 %call, !dbg !4174
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i82092aa_module_exit() #0 !dbg !4175 {
entry:
  call void @pci_unregister_driver(%struct.pci_driver* @i82092aa_pci_driver) #7, !dbg !4176
  %0 = load i32, i32* getelementptr inbounds ([4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 0, i32 2), align 8, !dbg !4177
  %cmp = icmp ugt i32 %0, 0, !dbg !4179
  br i1 %cmp, label %if.then, label %if.end, !dbg !4180

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds ([4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 0, i32 2), align 8, !dbg !4181
  %conv = zext i32 %1 to i64, !dbg !4181
  call void @__release_region(%struct.resource* @ioport_resource, i64 %conv, i64 2) #7, !dbg !4181
  br label %if.end, !dbg !4181

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4182
}

; Function Attrs: noredzone
declare dso_local i32 @__pci_register_driver(%struct.pci_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i82092aa_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #0 !dbg !4183 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  %configbyte = alloca i8, align 1
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4184, metadata !DIExpression()), !dbg !4185
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !4186, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.declare(metadata i8* %configbyte, metadata !4188, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4190, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4192, metadata !DIExpression()), !dbg !4193
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4194
  %call = call i32 @pci_enable_device(%struct.pci_dev* %0) #7, !dbg !4195
  store i32 %call, i32* %ret, align 4, !dbg !4196
  %1 = load i32, i32* %ret, align 4, !dbg !4197
  %tobool = icmp ne i32 %1, 0, !dbg !4197
  br i1 %tobool, label %if.then, label %if.end, !dbg !4199

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !4200
  store i32 %2, i32* %retval, align 4, !dbg !4201
  br label %return, !dbg !4201

if.end:                                           ; preds = %entry
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4202
  %call1 = call i32 @pci_read_config_byte(%struct.pci_dev* %3, i32 64, i8* %configbyte) #7, !dbg !4203
  %4 = load i8, i8* %configbyte, align 1, !dbg !4204
  %conv = zext i8 %4 to i32, !dbg !4204
  %and = and i32 %conv, 6, !dbg !4205
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 4, label %sw.bb3
    i32 6, label %sw.bb3
  ], !dbg !4206

sw.bb:                                            ; preds = %if.end
  store i32 2, i32* @socket_count, align 4, !dbg !4207
  br label %sw.epilog, !dbg !4209

sw.bb2:                                           ; preds = %if.end
  store i32 1, i32* @socket_count, align 4, !dbg !4210
  br label %sw.epilog, !dbg !4211

sw.bb3:                                           ; preds = %if.end, %if.end
  store i32 4, i32* @socket_count, align 4, !dbg !4212
  br label %sw.epilog, !dbg !4213

sw.default:                                       ; preds = %if.end
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4214
  %dev4 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 41, !dbg !4214
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !4214
  store i32 -5, i32* %ret, align 4, !dbg !4215
  br label %err_out_disable, !dbg !4216

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4217
  %dev5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 41, !dbg !4217
  %7 = load i32, i32* @socket_count, align 4, !dbg !4217
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %7) #8, !dbg !4217
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4218
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 44, !dbg !4218
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !4218
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !4218
  %9 = load i64, i64* %start, align 8, !dbg !4218
  %call6 = call %struct.resource* @__request_region(%struct.resource* @ioport_resource, i64 %9, i64 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0) #7, !dbg !4218
  %tobool7 = icmp ne %struct.resource* %call6, null, !dbg !4218
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4220

if.then8:                                         ; preds = %sw.epilog
  store i32 -16, i32* %ret, align 4, !dbg !4221
  br label %err_out_disable, !dbg !4223

if.end9:                                          ; preds = %sw.epilog
  store i32 0, i32* %i, align 4, !dbg !4224
  br label %for.cond, !dbg !4226

for.cond:                                         ; preds = %for.inc, %if.end9
  %10 = load i32, i32* %i, align 4, !dbg !4227
  %11 = load i32, i32* @socket_count, align 4, !dbg !4229
  %cmp = icmp slt i32 %10, %11, !dbg !4230
  br i1 %cmp, label %for.body, label %for.end, !dbg !4231

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !dbg !4232
  %idxprom = sext i32 %12 to i64, !dbg !4234
  %arrayidx11 = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom, !dbg !4234
  %card_state = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx11, i32 0, i32 1, !dbg !4235
  store i32 1, i32* %card_state, align 4, !dbg !4236
  %13 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4237
  %resource12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 44, !dbg !4237
  %arrayidx13 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource12, i64 0, i64 0, !dbg !4237
  %start14 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx13, i32 0, i32 0, !dbg !4237
  %14 = load i64, i64* %start14, align 8, !dbg !4237
  %conv15 = trunc i64 %14 to i32, !dbg !4237
  %15 = load i32, i32* %i, align 4, !dbg !4238
  %idxprom16 = sext i32 %15 to i64, !dbg !4239
  %arrayidx17 = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom16, !dbg !4239
  %io_base = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx17, i32 0, i32 2, !dbg !4240
  store i32 %conv15, i32* %io_base, align 8, !dbg !4241
  %16 = load i32, i32* %i, align 4, !dbg !4242
  %idxprom18 = sext i32 %16 to i64, !dbg !4243
  %arrayidx19 = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom18, !dbg !4243
  %socket = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx19, i32 0, i32 3, !dbg !4244
  %features = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %socket, i32 0, i32 16, !dbg !4245
  %17 = load i32, i32* %features, align 4, !dbg !4246
  %or = or i32 %17, 16384, !dbg !4246
  store i32 %or, i32* %features, align 4, !dbg !4246
  %18 = load i32, i32* %i, align 4, !dbg !4247
  %idxprom20 = sext i32 %18 to i64, !dbg !4248
  %arrayidx21 = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom20, !dbg !4248
  %socket22 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx21, i32 0, i32 3, !dbg !4249
  %map_size = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %socket22, i32 0, i32 18, !dbg !4250
  store i32 4096, i32* %map_size, align 4, !dbg !4251
  %19 = load i32, i32* %i, align 4, !dbg !4252
  %idxprom23 = sext i32 %19 to i64, !dbg !4253
  %arrayidx24 = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom23, !dbg !4253
  %socket25 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx24, i32 0, i32 3, !dbg !4254
  %irq_mask = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %socket25, i32 0, i32 17, !dbg !4255
  store i32 0, i32* %irq_mask, align 8, !dbg !4256
  %20 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4257
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 43, !dbg !4258
  %21 = load i32, i32* %irq, align 4, !dbg !4258
  %22 = load i32, i32* %i, align 4, !dbg !4259
  %idxprom26 = sext i32 %22 to i64, !dbg !4260
  %arrayidx27 = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom26, !dbg !4260
  %socket28 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx27, i32 0, i32 3, !dbg !4261
  %pci_irq = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %socket28, i32 0, i32 20, !dbg !4262
  store i32 %21, i32* %pci_irq, align 4, !dbg !4263
  %23 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4264
  %24 = load i32, i32* %i, align 4, !dbg !4265
  %idxprom29 = sext i32 %24 to i64, !dbg !4266
  %arrayidx30 = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom29, !dbg !4266
  %socket31 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx30, i32 0, i32 3, !dbg !4267
  %cb_dev = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %socket31, i32 0, i32 21, !dbg !4268
  store %struct.pci_dev* %23, %struct.pci_dev** %cb_dev, align 8, !dbg !4269
  %25 = load i32, i32* %i, align 4, !dbg !4270
  %idxprom32 = sext i32 %25 to i64, !dbg !4271
  %arrayidx33 = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom32, !dbg !4271
  %socket34 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx33, i32 0, i32 3, !dbg !4272
  %owner = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %socket34, i32 0, i32 0, !dbg !4273
  store %struct.module* null, %struct.module** %owner, align 8, !dbg !4274
  %26 = load i32, i32* %i, align 4, !dbg !4275
  %27 = load i32, i32* %i, align 4, !dbg !4276
  %idxprom35 = sext i32 %27 to i64, !dbg !4277
  %arrayidx36 = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom35, !dbg !4277
  %number = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx36, i32 0, i32 0, !dbg !4278
  store i32 %26, i32* %number, align 8, !dbg !4279
  %28 = load i32, i32* %i, align 4, !dbg !4280
  %call37 = call i32 @card_present(i32 %28) #7, !dbg !4282
  %tobool38 = icmp ne i32 %call37, 0, !dbg !4282
  br i1 %tobool38, label %if.then39, label %if.else, !dbg !4283

if.then39:                                        ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !dbg !4284
  %idxprom40 = sext i32 %29 to i64, !dbg !4286
  %arrayidx41 = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom40, !dbg !4286
  %card_state42 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx41, i32 0, i32 1, !dbg !4287
  store i32 3, i32* %card_state42, align 4, !dbg !4288
  br label %if.end43, !dbg !4289

if.else:                                          ; preds = %for.body
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then39
  br label %for.inc, !dbg !4290

for.inc:                                          ; preds = %if.end43
  %30 = load i32, i32* %i, align 4, !dbg !4291
  %inc = add i32 %30, 1, !dbg !4291
  store i32 %inc, i32* %i, align 4, !dbg !4291
  br label %for.cond, !dbg !4292, !llvm.loop !4293

for.end:                                          ; preds = %for.cond
  store i8 -1, i8* %configbyte, align 1, !dbg !4295
  %31 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4296
  %32 = load i8, i8* %configbyte, align 1, !dbg !4297
  %call44 = call i32 @pci_write_config_byte(%struct.pci_dev* %31, i32 80, i8 zeroext %32) #7, !dbg !4298
  %33 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4299
  %irq45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 43, !dbg !4300
  %34 = load i32, i32* %irq45, align 4, !dbg !4300
  %call46 = call i32 @request_irq(i32 %34, i32 (i32, i8*)* @i82092aa_interrupt, i64 128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* bitcast (i32 (i32, i8*)* @i82092aa_interrupt to i8*)) #7, !dbg !4301
  store i32 %call46, i32* %ret, align 4, !dbg !4302
  %35 = load i32, i32* %ret, align 4, !dbg !4303
  %tobool47 = icmp ne i32 %35, 0, !dbg !4303
  br i1 %tobool47, label %if.then48, label %if.end51, !dbg !4305

if.then48:                                        ; preds = %for.end
  %36 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4306
  %dev49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 41, !dbg !4306
  %37 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4306
  %irq50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 43, !dbg !4306
  %38 = load i32, i32* %irq50, align 4, !dbg !4306
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %38) #8, !dbg !4306
  br label %err_out_free_res, !dbg !4308

if.end51:                                         ; preds = %for.end
  store i32 0, i32* %i, align 4, !dbg !4309
  br label %for.cond52, !dbg !4311

for.cond52:                                       ; preds = %for.inc74, %if.end51
  %39 = load i32, i32* %i, align 4, !dbg !4312
  %40 = load i32, i32* @socket_count, align 4, !dbg !4314
  %cmp53 = icmp slt i32 %39, %40, !dbg !4315
  br i1 %cmp53, label %for.body55, label %for.end76, !dbg !4316

for.body55:                                       ; preds = %for.cond52
  %41 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4317
  %dev56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 41, !dbg !4319
  %42 = load i32, i32* %i, align 4, !dbg !4320
  %idxprom57 = sext i32 %42 to i64, !dbg !4321
  %arrayidx58 = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom57, !dbg !4321
  %socket59 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx58, i32 0, i32 3, !dbg !4322
  %dev60 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %socket59, i32 0, i32 42, !dbg !4323
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev60, i32 0, i32 1, !dbg !4324
  store %struct.device* %dev56, %struct.device** %parent, align 8, !dbg !4325
  %43 = load i32, i32* %i, align 4, !dbg !4326
  %idxprom61 = sext i32 %43 to i64, !dbg !4327
  %arrayidx62 = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom61, !dbg !4327
  %socket63 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx62, i32 0, i32 3, !dbg !4328
  %ops = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %socket63, i32 0, i32 23, !dbg !4329
  store %struct.pccard_operations* @i82092aa_operations, %struct.pccard_operations** %ops, align 8, !dbg !4330
  %44 = load i32, i32* %i, align 4, !dbg !4331
  %idxprom64 = sext i32 %44 to i64, !dbg !4332
  %arrayidx65 = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom64, !dbg !4332
  %socket66 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx65, i32 0, i32 3, !dbg !4333
  %resource_ops = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %socket66, i32 0, i32 24, !dbg !4334
  store %struct.pccard_resource_ops* @pccard_nonstatic_ops, %struct.pccard_resource_ops** %resource_ops, align 8, !dbg !4335
  %45 = load i32, i32* %i, align 4, !dbg !4336
  %idxprom67 = sext i32 %45 to i64, !dbg !4337
  %arrayidx68 = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom67, !dbg !4337
  %socket69 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx68, i32 0, i32 3, !dbg !4338
  %call70 = call i32 @pcmcia_register_socket(%struct.pcmcia_socket* %socket69) #7, !dbg !4339
  store i32 %call70, i32* %ret, align 4, !dbg !4340
  %46 = load i32, i32* %ret, align 4, !dbg !4341
  %tobool71 = icmp ne i32 %46, 0, !dbg !4341
  br i1 %tobool71, label %if.then72, label %if.end73, !dbg !4343

if.then72:                                        ; preds = %for.body55
  br label %err_out_free_sockets, !dbg !4344

if.end73:                                         ; preds = %for.body55
  br label %for.inc74, !dbg !4345

for.inc74:                                        ; preds = %if.end73
  %47 = load i32, i32* %i, align 4, !dbg !4346
  %inc75 = add i32 %47, 1, !dbg !4346
  store i32 %inc75, i32* %i, align 4, !dbg !4346
  br label %for.cond52, !dbg !4347, !llvm.loop !4348

for.end76:                                        ; preds = %for.cond52
  store i32 0, i32* %retval, align 4, !dbg !4350
  br label %return, !dbg !4350

err_out_free_sockets:                             ; preds = %if.then72
  call void @llvm.dbg.label(metadata !4351), !dbg !4352
  %48 = load i32, i32* %i, align 4, !dbg !4353
  %tobool77 = icmp ne i32 %48, 0, !dbg !4353
  br i1 %tobool77, label %if.then78, label %if.end89, !dbg !4355

if.then78:                                        ; preds = %err_out_free_sockets
  %49 = load i32, i32* %i, align 4, !dbg !4356
  %dec = add i32 %49, -1, !dbg !4356
  store i32 %dec, i32* %i, align 4, !dbg !4356
  br label %for.cond79, !dbg !4359

for.cond79:                                       ; preds = %for.inc86, %if.then78
  %50 = load i32, i32* %i, align 4, !dbg !4360
  %cmp80 = icmp sge i32 %50, 0, !dbg !4362
  br i1 %cmp80, label %for.body82, label %for.end88, !dbg !4363

for.body82:                                       ; preds = %for.cond79
  %51 = load i32, i32* %i, align 4, !dbg !4364
  %idxprom83 = sext i32 %51 to i64, !dbg !4365
  %arrayidx84 = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom83, !dbg !4365
  %socket85 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx84, i32 0, i32 3, !dbg !4366
  call void @pcmcia_unregister_socket(%struct.pcmcia_socket* %socket85) #7, !dbg !4367
  br label %for.inc86, !dbg !4367

for.inc86:                                        ; preds = %for.body82
  %52 = load i32, i32* %i, align 4, !dbg !4368
  %dec87 = add i32 %52, -1, !dbg !4368
  store i32 %dec87, i32* %i, align 4, !dbg !4368
  br label %for.cond79, !dbg !4369, !llvm.loop !4370

for.end88:                                        ; preds = %for.cond79
  br label %if.end89, !dbg !4372

if.end89:                                         ; preds = %for.end88, %err_out_free_sockets
  %53 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4373
  %irq90 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 43, !dbg !4374
  %54 = load i32, i32* %irq90, align 4, !dbg !4374
  %call91 = call i8* @free_irq(i32 %54, i8* bitcast (i32 (i32, i8*)* @i82092aa_interrupt to i8*)) #7, !dbg !4375
  br label %err_out_free_res, !dbg !4375

err_out_free_res:                                 ; preds = %if.end89, %if.then48
  call void @llvm.dbg.label(metadata !4376), !dbg !4377
  %55 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4378
  %resource92 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 44, !dbg !4378
  %arrayidx93 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource92, i64 0, i64 0, !dbg !4378
  %start94 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx93, i32 0, i32 0, !dbg !4378
  %56 = load i64, i64* %start94, align 8, !dbg !4378
  call void @__release_region(%struct.resource* @ioport_resource, i64 %56, i64 2) #7, !dbg !4378
  br label %err_out_disable, !dbg !4378

err_out_disable:                                  ; preds = %err_out_free_res, %if.then8, %sw.default
  call void @llvm.dbg.label(metadata !4379), !dbg !4380
  %57 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4381
  call void @pci_disable_device(%struct.pci_dev* %57) #7, !dbg !4382
  %58 = load i32, i32* %ret, align 4, !dbg !4383
  store i32 %58, i32* %retval, align 4, !dbg !4384
  br label %return, !dbg !4384

return:                                           ; preds = %err_out_disable, %for.end76, %if.then
  %59 = load i32, i32* %retval, align 4, !dbg !4385
  ret i32 %59, !dbg !4385
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i82092aa_pci_remove(%struct.pci_dev* %dev) #0 !dbg !4386 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %i = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4387, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4389, metadata !DIExpression()), !dbg !4390
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4391
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 43, !dbg !4392
  %1 = load i32, i32* %irq, align 4, !dbg !4392
  %call = call i8* @free_irq(i32 %1, i8* bitcast (i32 (i32, i8*)* @i82092aa_interrupt to i8*)) #7, !dbg !4393
  store i32 0, i32* %i, align 4, !dbg !4394
  br label %for.cond, !dbg !4396

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !4397
  %3 = load i32, i32* @socket_count, align 4, !dbg !4399
  %cmp = icmp slt i32 %2, %3, !dbg !4400
  br i1 %cmp, label %for.body, label %for.end, !dbg !4401

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !4402
  %idxprom = sext i32 %4 to i64, !dbg !4403
  %arrayidx = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom, !dbg !4403
  %socket = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx, i32 0, i32 3, !dbg !4404
  call void @pcmcia_unregister_socket(%struct.pcmcia_socket* %socket) #7, !dbg !4405
  br label %for.inc, !dbg !4405

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !4406
  %inc = add i32 %5, 1, !dbg !4406
  store i32 %inc, i32* %i, align 4, !dbg !4406
  br label %for.cond, !dbg !4407, !llvm.loop !4408

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4410
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local %struct.resource* @__request_region(%struct.resource*, i64, i64, i8*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @card_present(i32 %socketno) #0 !dbg !4411 {
entry:
  %retval = alloca i32, align 4
  %socketno.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store i32 %socketno, i32* %socketno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %socketno.addr, metadata !4412, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4414, metadata !DIExpression()), !dbg !4415
  %0 = load i32, i32* %socketno.addr, align 4, !dbg !4416
  %cmp = icmp slt i32 %0, 0, !dbg !4418
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4419

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %socketno.addr, align 4, !dbg !4420
  %cmp1 = icmp sge i32 %1, 4, !dbg !4421
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4422

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !4423
  br label %return, !dbg !4423

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %socketno.addr, align 4, !dbg !4424
  %idxprom = sext i32 %2 to i64, !dbg !4426
  %arrayidx = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom, !dbg !4426
  %io_base = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx, i32 0, i32 2, !dbg !4427
  %3 = load i32, i32* %io_base, align 8, !dbg !4427
  %cmp2 = icmp eq i32 %3, 0, !dbg !4428
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !4429

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4430
  br label %return, !dbg !4430

if.end4:                                          ; preds = %if.end
  %4 = load i32, i32* %socketno.addr, align 4, !dbg !4431
  %call = call zeroext i8 @indirect_read(i32 %4, i16 zeroext 1) #7, !dbg !4432
  %conv = zext i8 %call to i32, !dbg !4432
  store i32 %conv, i32* %val, align 4, !dbg !4433
  %5 = load i32, i32* %val, align 4, !dbg !4434
  %and = and i32 %5, 12, !dbg !4436
  %cmp5 = icmp eq i32 %and, 12, !dbg !4437
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !4438

if.then7:                                         ; preds = %if.end4
  store i32 1, i32* %retval, align 4, !dbg !4439
  br label %return, !dbg !4439

if.end8:                                          ; preds = %if.end4
  store i32 0, i32* %retval, align 4, !dbg !4440
  br label %return, !dbg !4440

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4441
  ret i32 %6, !dbg !4441
}

; Function Attrs: noredzone
declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #0 !dbg !4442 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4450, metadata !DIExpression()), !dbg !4451
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !4452, metadata !DIExpression()), !dbg !4453
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4454, metadata !DIExpression()), !dbg !4455
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4456, metadata !DIExpression()), !dbg !4457
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !4458, metadata !DIExpression()), !dbg !4459
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4460
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !4461
  %2 = load i64, i64* %flags.addr, align 8, !dbg !4462
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4463
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !4464
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #7, !dbg !4465
  ret i32 %call, !dbg !4466
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i82092aa_interrupt(i32 %irq, i8* %dev) #0 !dbg !4467 {
entry:
  %irq.addr = alloca i32, align 4
  %dev.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %loopcount = alloca i32, align 4
  %handled = alloca i32, align 4
  %events = alloca i32, align 4
  %active = alloca i32, align 4
  %csc = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4468, metadata !DIExpression()), !dbg !4469
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !4470, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4472, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.declare(metadata i32* %loopcount, metadata !4474, metadata !DIExpression()), !dbg !4475
  store i32 0, i32* %loopcount, align 4, !dbg !4475
  call void @llvm.dbg.declare(metadata i32* %handled, metadata !4476, metadata !DIExpression()), !dbg !4477
  store i32 0, i32* %handled, align 4, !dbg !4477
  call void @llvm.dbg.declare(metadata i32* %events, metadata !4478, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.declare(metadata i32* %active, metadata !4480, metadata !DIExpression()), !dbg !4481
  store i32 0, i32* %active, align 4, !dbg !4481
  br label %while.body, !dbg !4482

while.body:                                       ; preds = %entry, %if.end52
  %0 = load i32, i32* %loopcount, align 4, !dbg !4483
  %inc = add i32 %0, 1, !dbg !4483
  store i32 %inc, i32* %loopcount, align 4, !dbg !4483
  %1 = load i32, i32* %loopcount, align 4, !dbg !4485
  %cmp = icmp sgt i32 %1, 20, !dbg !4487
  br i1 %cmp, label %if.then, label %if.end, !dbg !4488

if.then:                                          ; preds = %while.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !4489
  br label %while.end, !dbg !4491

if.end:                                           ; preds = %while.body
  store i32 0, i32* %active, align 4, !dbg !4492
  store i32 0, i32* %i, align 4, !dbg !4493
  br label %for.cond, !dbg !4495

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !dbg !4496
  %3 = load i32, i32* @socket_count, align 4, !dbg !4498
  %cmp1 = icmp slt i32 %2, %3, !dbg !4499
  br i1 %cmp1, label %for.body, label %for.end, !dbg !4500

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %csc, metadata !4501, metadata !DIExpression()), !dbg !4503
  %4 = load i32, i32* %i, align 4, !dbg !4504
  %idxprom = sext i32 %4 to i64, !dbg !4506
  %arrayidx = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom, !dbg !4506
  %card_state = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx, i32 0, i32 1, !dbg !4507
  %5 = load i32, i32* %card_state, align 4, !dbg !4507
  %cmp2 = icmp eq i32 %5, 0, !dbg !4508
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !4509

if.then3:                                         ; preds = %for.body
  br label %for.inc, !dbg !4510

if.end4:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !4511
  %call5 = call zeroext i8 @indirect_read(i32 %6, i16 zeroext 4) #7, !dbg !4512
  %conv = zext i8 %call5 to i32, !dbg !4512
  store i32 %conv, i32* %csc, align 4, !dbg !4513
  %7 = load i32, i32* %csc, align 4, !dbg !4514
  %cmp6 = icmp eq i32 %7, 0, !dbg !4516
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !4517

if.then8:                                         ; preds = %if.end4
  br label %for.inc, !dbg !4518

if.end9:                                          ; preds = %if.end4
  store i32 1, i32* %handled, align 4, !dbg !4519
  store i32 0, i32* %events, align 4, !dbg !4520
  %8 = load i32, i32* %csc, align 4, !dbg !4521
  %and = and i32 %8, 8, !dbg !4523
  %tobool = icmp ne i32 %and, 0, !dbg !4523
  br i1 %tobool, label %if.then10, label %if.end15, !dbg !4524

if.then10:                                        ; preds = %if.end9
  %9 = load i32, i32* %events, align 4, !dbg !4525
  %or = or i32 %9, 128, !dbg !4525
  store i32 %or, i32* %events, align 4, !dbg !4525
  %10 = load i32, i32* %i, align 4, !dbg !4527
  %idxprom11 = sext i32 %10 to i64, !dbg !4527
  %arrayidx12 = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom11, !dbg !4527
  %dev13 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx12, i32 0, i32 4, !dbg !4527
  %11 = load %struct.pci_dev*, %struct.pci_dev** %dev13, align 8, !dbg !4527
  %dev14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 41, !dbg !4527
  %12 = load i32, i32* %i, align 4, !dbg !4527
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %12) #8, !dbg !4527
  br label %if.end15, !dbg !4528

if.end15:                                         ; preds = %if.then10, %if.end9
  %13 = load i32, i32* %i, align 4, !dbg !4529
  %call16 = call zeroext i8 @indirect_read(i32 %13, i16 zeroext 3) #7, !dbg !4531
  %conv17 = zext i8 %call16 to i32, !dbg !4531
  %and18 = and i32 %conv17, 32, !dbg !4532
  %tobool19 = icmp ne i32 %and18, 0, !dbg !4532
  br i1 %tobool19, label %if.then20, label %if.else, !dbg !4533

if.then20:                                        ; preds = %if.end15
  %14 = load i32, i32* %csc, align 4, !dbg !4534
  %and21 = and i32 %14, 1, !dbg !4537
  %tobool22 = icmp ne i32 %and21, 0, !dbg !4537
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !4538

if.then23:                                        ; preds = %if.then20
  %15 = load i32, i32* %events, align 4, !dbg !4539
  %or24 = or i32 %15, 1024, !dbg !4539
  store i32 %or24, i32* %events, align 4, !dbg !4539
  br label %if.end25, !dbg !4540

if.end25:                                         ; preds = %if.then23, %if.then20
  br label %if.end41, !dbg !4541

if.else:                                          ; preds = %if.end15
  %16 = load i32, i32* %csc, align 4, !dbg !4542
  %and26 = and i32 %16, 1, !dbg !4545
  %tobool27 = icmp ne i32 %and26, 0, !dbg !4545
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !4546

if.then28:                                        ; preds = %if.else
  %17 = load i32, i32* %events, align 4, !dbg !4547
  %or29 = or i32 %17, 16, !dbg !4547
  store i32 %or29, i32* %events, align 4, !dbg !4547
  br label %if.end30, !dbg !4548

if.end30:                                         ; preds = %if.then28, %if.else
  %18 = load i32, i32* %csc, align 4, !dbg !4549
  %and31 = and i32 %18, 2, !dbg !4551
  %tobool32 = icmp ne i32 %and31, 0, !dbg !4551
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !4552

if.then33:                                        ; preds = %if.end30
  %19 = load i32, i32* %events, align 4, !dbg !4553
  %or34 = or i32 %19, 32, !dbg !4553
  store i32 %or34, i32* %events, align 4, !dbg !4553
  br label %if.end35, !dbg !4554

if.end35:                                         ; preds = %if.then33, %if.end30
  %20 = load i32, i32* %csc, align 4, !dbg !4555
  %and36 = and i32 %20, 4, !dbg !4557
  %tobool37 = icmp ne i32 %and36, 0, !dbg !4557
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !4558

if.then38:                                        ; preds = %if.end35
  %21 = load i32, i32* %events, align 4, !dbg !4559
  %or39 = or i32 %21, 64, !dbg !4559
  store i32 %or39, i32* %events, align 4, !dbg !4559
  br label %if.end40, !dbg !4560

if.end40:                                         ; preds = %if.then38, %if.end35
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end25
  %22 = load i32, i32* %events, align 4, !dbg !4561
  %tobool42 = icmp ne i32 %22, 0, !dbg !4561
  br i1 %tobool42, label %if.then43, label %if.end46, !dbg !4563

if.then43:                                        ; preds = %if.end41
  %23 = load i32, i32* %i, align 4, !dbg !4564
  %idxprom44 = sext i32 %23 to i64, !dbg !4565
  %arrayidx45 = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom44, !dbg !4565
  %socket = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx45, i32 0, i32 3, !dbg !4566
  %24 = load i32, i32* %events, align 4, !dbg !4567
  call void @pcmcia_parse_events(%struct.pcmcia_socket* %socket, i32 %24) #7, !dbg !4568
  br label %if.end46, !dbg !4568

if.end46:                                         ; preds = %if.then43, %if.end41
  %25 = load i32, i32* %events, align 4, !dbg !4569
  %26 = load i32, i32* %active, align 4, !dbg !4570
  %or47 = or i32 %26, %25, !dbg !4570
  store i32 %or47, i32* %active, align 4, !dbg !4570
  br label %for.inc, !dbg !4571

for.inc:                                          ; preds = %if.end46, %if.then8, %if.then3
  %27 = load i32, i32* %i, align 4, !dbg !4572
  %inc48 = add i32 %27, 1, !dbg !4572
  store i32 %inc48, i32* %i, align 4, !dbg !4572
  br label %for.cond, !dbg !4573, !llvm.loop !4574

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %active, align 4, !dbg !4576
  %cmp49 = icmp eq i32 %28, 0, !dbg !4578
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !4579

if.then51:                                        ; preds = %for.end
  br label %while.end, !dbg !4580

if.end52:                                         ; preds = %for.end
  br label %while.body, !dbg !4482, !llvm.loop !4581

while.end:                                        ; preds = %if.then51, %if.then
  %29 = load i32, i32* %handled, align 4, !dbg !4583
  %tobool53 = icmp ne i32 %29, 0, !dbg !4583
  %30 = zext i1 %tobool53 to i64, !dbg !4583
  %cond = select i1 %tobool53, i32 1, i32 0, !dbg !4583
  ret i32 %cond, !dbg !4584
}

; Function Attrs: noredzone
declare dso_local i32 @pcmcia_register_socket(%struct.pcmcia_socket*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone
declare dso_local void @pcmcia_unregister_socket(%struct.pcmcia_socket*) #1

; Function Attrs: noredzone
declare dso_local i8* @free_irq(i32, i8*) #1

; Function Attrs: noredzone
declare dso_local void @__release_region(%struct.resource*, i64, i64) #1

; Function Attrs: noredzone
declare dso_local void @pci_disable_device(%struct.pci_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @indirect_read(i32 %socket, i16 zeroext %reg) #0 !dbg !4585 {
entry:
  %lock.addr.i27 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i27, metadata !4588, metadata !DIExpression()), !dbg !4593
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4595, metadata !DIExpression()), !dbg !4596
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4597, metadata !DIExpression()), !dbg !4602
  %socket.addr = alloca i32, align 4
  %reg.addr = alloca i16, align 2
  %port = alloca i16, align 2
  %val = alloca i8, align 1
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store i32 %socket, i32* %socket.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %socket.addr, metadata !4609, metadata !DIExpression()), !dbg !4610
  store i16 %reg, i16* %reg.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %reg.addr, metadata !4611, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.declare(metadata i16* %port, metadata !4613, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.declare(metadata i8* %val, metadata !4615, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4617, metadata !DIExpression()), !dbg !4618
  br label %do.body, !dbg !4619

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4620

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4621, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4624, metadata !DIExpression()), !dbg !4623
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4623
  %conv = zext i1 %cmp to i32, !dbg !4623
  store i32 1, i32* %tmp, align 4, !dbg !4623
  %0 = load i32, i32* %tmp, align 4, !dbg !4623
  br label %do.body2, !dbg !4625

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4626

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4627

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4629, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4633, metadata !DIExpression()), !dbg !4632
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4632
  %conv8 = zext i1 %cmp7 to i32, !dbg !4632
  store i32 1, i32* %tmp9, align 4, !dbg !4632
  %1 = load i32, i32* %tmp9, align 4, !dbg !4632
  %call = call i64 @arch_local_irq_save() #7, !dbg !4634
  store i64 %call, i64* %flags, align 8, !dbg !4634
  br label %do.end, !dbg !4634

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4627

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4626

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4635, !srcloc !4636
  br label %do.body12, !dbg !4635

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @port_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4637
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !4638
  %rlock.i = bitcast %union.anon.3* %3 to %struct.raw_spinlock*, !dbg !4638
  br label %do.end14, !dbg !4639

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4635

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4626

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4625

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4620

do.end18:                                         ; preds = %do.end17
  %4 = load i32, i32* %socket.addr, align 4, !dbg !4640
  %mul = mul i32 %4, 64, !dbg !4641
  %5 = load i16, i16* %reg.addr, align 2, !dbg !4642
  %conv19 = zext i16 %5 to i32, !dbg !4642
  %add = add i32 %conv19, %mul, !dbg !4642
  %conv20 = trunc i32 %add to i16, !dbg !4642
  store i16 %conv20, i16* %reg.addr, align 2, !dbg !4642
  %6 = load i32, i32* %socket.addr, align 4, !dbg !4643
  %idxprom = sext i32 %6 to i64, !dbg !4644
  %arrayidx = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom, !dbg !4644
  %io_base = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx, i32 0, i32 2, !dbg !4645
  %7 = load i32, i32* %io_base, align 8, !dbg !4645
  %conv21 = trunc i32 %7 to i16, !dbg !4644
  store i16 %conv21, i16* %port, align 2, !dbg !4646
  %8 = load i16, i16* %reg.addr, align 2, !dbg !4647
  %conv22 = trunc i16 %8 to i8, !dbg !4647
  %9 = load i16, i16* %port, align 2, !dbg !4648
  %conv23 = zext i16 %9 to i32, !dbg !4648
  call void @outb(i8 zeroext %conv22, i32 %conv23) #7, !dbg !4649
  %10 = load i16, i16* %port, align 2, !dbg !4650
  %conv24 = zext i16 %10 to i32, !dbg !4650
  %add25 = add i32 %conv24, 1, !dbg !4651
  %call26 = call zeroext i8 @inb(i32 %add25) #7, !dbg !4652
  store i8 %call26, i8* %val, align 1, !dbg !4653
  %11 = load i64, i64* %flags, align 8, !dbg !4654
  store %struct.spinlock* @port_lock, %struct.spinlock** %lock.addr.i27, align 8
  store i64 %11, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !217, metadata !4655, metadata !DIExpression()) #5, !dbg !4658
  call void @llvm.dbg.declare(metadata !217, metadata !4659, metadata !DIExpression()) #5, !dbg !4658
  store i32 1, i32* %tmp.i, align 4, !dbg !4658
  %12 = load i32, i32* %tmp.i, align 4, !dbg !4658
  call void @llvm.dbg.declare(metadata !217, metadata !4660, metadata !DIExpression()) #5, !dbg !4665
  call void @llvm.dbg.declare(metadata !217, metadata !4666, metadata !DIExpression()) #5, !dbg !4665
  store i32 1, i32* %tmp8.i, align 4, !dbg !4665
  %13 = load i32, i32* %tmp8.i, align 4, !dbg !4665
  %14 = load i64, i64* %flags.addr.i, align 8, !dbg !4667
  call void @arch_local_irq_restore(i64 %14) #9, !dbg !4667
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4668, !srcloc !4670
  %15 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i27, align 8, !dbg !4671
  %16 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %15, i32 0, i32 0, !dbg !4671
  %rlock.i28 = bitcast %union.anon.3* %16 to %struct.raw_spinlock*, !dbg !4671
  %17 = load i8, i8* %val, align 1, !dbg !4673
  ret i8 %17, !dbg !4674
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !4675 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !4679, metadata !DIExpression()), !dbg !4680
  %call = call i64 @arch_local_save_flags() #7, !dbg !4681
  store i64 %call, i64* %f, align 8, !dbg !4682
  call void @arch_local_irq_disable() #7, !dbg !4683
  %0 = load i64, i64* %f, align 8, !dbg !4684
  ret i64 %0, !dbg !4685
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb(i8 zeroext %value, i32 %port) #0 !dbg !4686 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !4690, metadata !DIExpression()), !dbg !4691
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4692, metadata !DIExpression()), !dbg !4691
  %0 = load i8, i8* %value.addr, align 1, !dbg !4691
  %1 = load i32, i32* %port.addr, align 4, !dbg !4691
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i32 %1) #5, !dbg !4691, !srcloc !4693
  ret void, !dbg !4691
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb(i32 %port) #0 !dbg !4694 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4697, metadata !DIExpression()), !dbg !4698
  call void @llvm.dbg.declare(metadata i8* %value, metadata !4699, metadata !DIExpression()), !dbg !4698
  %0 = load i32, i32* %port.addr, align 4, !dbg !4698
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #5, !dbg !4698, !srcloc !4700
  store i8 %1, i8* %value, align 1, !dbg !4698
  %2 = load i8, i8* %value, align 1, !dbg !4698
  ret i8 %2, !dbg !4698
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !4701 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !4702, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4705, metadata !DIExpression()), !dbg !4704
  %0 = load i64, i64* %__edi, align 8, !dbg !4704
  store i64 %0, i64* %__edi, align 8, !dbg !4704
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4706, metadata !DIExpression()), !dbg !4704
  %1 = load i64, i64* %__esi, align 8, !dbg !4704
  store i64 %1, i64* %__esi, align 8, !dbg !4704
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4707, metadata !DIExpression()), !dbg !4704
  %2 = load i64, i64* %__edx, align 8, !dbg !4704
  store i64 %2, i64* %__edx, align 8, !dbg !4704
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4708, metadata !DIExpression()), !dbg !4704
  %3 = load i64, i64* %__ecx, align 8, !dbg !4704
  store i64 %3, i64* %__ecx, align 8, !dbg !4704
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4709, metadata !DIExpression()), !dbg !4704
  %4 = load i64, i64* %__eax, align 8, !dbg !4704
  store i64 %4, i64* %__eax, align 8, !dbg !4704
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !4704
  %6 = call i64 @llvm.read_register.i64(metadata !4164), !dbg !4710
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !4710, !srcloc !4713
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4710
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4710
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4710
  call void @llvm.write_register.i64(metadata !4164, i64 %asmresult1), !dbg !4710
  %8 = load i64, i64* %__eax, align 8, !dbg !4710
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !4714, metadata !DIExpression()), !dbg !4716
  store i64 -1, i64* %__mask, align 8, !dbg !4716
  %9 = load i64, i64* %__mask, align 8, !dbg !4716
  store i64 %9, i64* %tmp, align 8, !dbg !4716
  %10 = load i64, i64* %tmp, align 8, !dbg !4716
  %and = and i64 %8, %10, !dbg !4710
  store i64 %and, i64* %__ret, align 8, !dbg !4710
  %11 = load i64, i64* %__ret, align 8, !dbg !4704
  store i64 %11, i64* %tmp2, align 8, !dbg !4717
  %12 = load i64, i64* %tmp2, align 8, !dbg !4704
  ret i64 %12, !dbg !4718
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !4719 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4720, metadata !DIExpression()), !dbg !4722
  %0 = load i64, i64* %__edi, align 8, !dbg !4722
  store i64 %0, i64* %__edi, align 8, !dbg !4722
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4723, metadata !DIExpression()), !dbg !4722
  %1 = load i64, i64* %__esi, align 8, !dbg !4722
  store i64 %1, i64* %__esi, align 8, !dbg !4722
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4724, metadata !DIExpression()), !dbg !4722
  %2 = load i64, i64* %__edx, align 8, !dbg !4722
  store i64 %2, i64* %__edx, align 8, !dbg !4722
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4725, metadata !DIExpression()), !dbg !4722
  %3 = load i64, i64* %__ecx, align 8, !dbg !4722
  store i64 %3, i64* %__ecx, align 8, !dbg !4722
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4726, metadata !DIExpression()), !dbg !4722
  %4 = load i64, i64* %__eax, align 8, !dbg !4722
  store i64 %4, i64* %__eax, align 8, !dbg !4722
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !4722
  %6 = call i64 @llvm.read_register.i64(metadata !4164), !dbg !4722
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #5, !dbg !4722, !srcloc !4727
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4722
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4722
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4722
  call void @llvm.write_register.i64(metadata !4164, i64 %asmresult1), !dbg !4722
  ret void, !dbg !4728
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !4729 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !4732, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4734, metadata !DIExpression()), !dbg !4736
  %0 = load i64, i64* %__edi, align 8, !dbg !4736
  store i64 %0, i64* %__edi, align 8, !dbg !4736
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4737, metadata !DIExpression()), !dbg !4736
  %1 = load i64, i64* %__esi, align 8, !dbg !4736
  store i64 %1, i64* %__esi, align 8, !dbg !4736
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4738, metadata !DIExpression()), !dbg !4736
  %2 = load i64, i64* %__edx, align 8, !dbg !4736
  store i64 %2, i64* %__edx, align 8, !dbg !4736
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4739, metadata !DIExpression()), !dbg !4736
  %3 = load i64, i64* %__ecx, align 8, !dbg !4736
  store i64 %3, i64* %__ecx, align 8, !dbg !4736
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4740, metadata !DIExpression()), !dbg !4736
  %4 = load i64, i64* %__eax, align 8, !dbg !4736
  store i64 %4, i64* %__eax, align 8, !dbg !4736
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !4736
  %6 = call i64 @llvm.read_register.i64(metadata !4164), !dbg !4736
  %7 = load i64, i64* %f.addr, align 8, !dbg !4736
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #5, !dbg !4736, !srcloc !4741
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !4736
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !4736
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4736
  call void @llvm.write_register.i64(metadata !4164, i64 %asmresult1), !dbg !4736
  ret void, !dbg !4742
}

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local void @pcmcia_parse_events(%struct.pcmcia_socket*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i82092aa_init(%struct.pcmcia_socket* %sock) #0 !dbg !4743 {
entry:
  %sock.addr = alloca %struct.pcmcia_socket*, align 8
  %i = alloca i32, align 4
  %res = alloca %struct.resource, align 8
  %io = alloca %struct.pccard_io_map, align 8
  %mem = alloca %struct.pccard_mem_map, align 8
  store %struct.pcmcia_socket* %sock, %struct.pcmcia_socket** %sock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %sock.addr, metadata !4744, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4746, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.declare(metadata %struct.resource* %res, metadata !4748, metadata !DIExpression()), !dbg !4749
  %0 = bitcast %struct.resource* %res to i8*, !dbg !4749
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 64, i1 false), !dbg !4749
  %1 = bitcast i8* %0 to %struct.resource*, !dbg !4749
  %2 = getelementptr inbounds %struct.resource, %struct.resource* %1, i32 0, i32 1, !dbg !4749
  store i64 4095, i64* %2, align 8, !dbg !4749
  call void @llvm.dbg.declare(metadata %struct.pccard_io_map* %io, metadata !4750, metadata !DIExpression()), !dbg !4752
  %3 = bitcast %struct.pccard_io_map* %io to i8*, !dbg !4752
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 getelementptr inbounds (%struct.pccard_io_map, %struct.pccard_io_map* @__const.i82092aa_init.io, i32 0, i32 0), i64 24, i1 false), !dbg !4752
  call void @llvm.dbg.declare(metadata %struct.pccard_mem_map* %mem, metadata !4753, metadata !DIExpression()), !dbg !4754
  %4 = bitcast %struct.pccard_mem_map* %mem to i8*, !dbg !4754
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 32, i1 false), !dbg !4754
  %res1 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %mem, i32 0, i32 5, !dbg !4755
  store %struct.resource* %res, %struct.resource** %res1, align 8, !dbg !4755
  store i32 0, i32* %i, align 4, !dbg !4756
  br label %for.cond, !dbg !4758

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !4759
  %cmp = icmp slt i32 %5, 2, !dbg !4761
  br i1 %cmp, label %for.body, label %for.end, !dbg !4762

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !4763
  %conv = trunc i32 %6 to i8, !dbg !4763
  %map = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %io, i32 0, i32 0, !dbg !4765
  store i8 %conv, i8* %map, align 8, !dbg !4766
  %7 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %sock.addr, align 8, !dbg !4767
  %call = call i32 @i82092aa_set_io_map(%struct.pcmcia_socket* %7, %struct.pccard_io_map* %io) #7, !dbg !4768
  br label %for.inc, !dbg !4769

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !4770
  %inc = add i32 %8, 1, !dbg !4770
  store i32 %inc, i32* %i, align 4, !dbg !4770
  br label %for.cond, !dbg !4771, !llvm.loop !4772

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !4774
  br label %for.cond2, !dbg !4776

for.cond2:                                        ; preds = %for.inc9, %for.end
  %9 = load i32, i32* %i, align 4, !dbg !4777
  %cmp3 = icmp slt i32 %9, 5, !dbg !4779
  br i1 %cmp3, label %for.body5, label %for.end11, !dbg !4780

for.body5:                                        ; preds = %for.cond2
  %10 = load i32, i32* %i, align 4, !dbg !4781
  %conv6 = trunc i32 %10 to i8, !dbg !4781
  %map7 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %mem, i32 0, i32 0, !dbg !4783
  store i8 %conv6, i8* %map7, align 8, !dbg !4784
  %11 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %sock.addr, align 8, !dbg !4785
  %call8 = call i32 @i82092aa_set_mem_map(%struct.pcmcia_socket* %11, %struct.pccard_mem_map* %mem) #7, !dbg !4786
  br label %for.inc9, !dbg !4787

for.inc9:                                         ; preds = %for.body5
  %12 = load i32, i32* %i, align 4, !dbg !4788
  %inc10 = add i32 %12, 1, !dbg !4788
  store i32 %inc10, i32* %i, align 4, !dbg !4788
  br label %for.cond2, !dbg !4789, !llvm.loop !4790

for.end11:                                        ; preds = %for.cond2
  ret i32 0, !dbg !4792
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i82092aa_get_status(%struct.pcmcia_socket* %socket, i32* %value) #0 !dbg !4793 {
entry:
  %socket.addr = alloca %struct.pcmcia_socket*, align 8
  %value.addr = alloca i32*, align 8
  %sock = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.socket_info*, align 8
  %status = alloca i32, align 4
  store %struct.pcmcia_socket* %socket, %struct.pcmcia_socket** %socket.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %socket.addr, metadata !4794, metadata !DIExpression()), !dbg !4795
  store i32* %value, i32** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %value.addr, metadata !4796, metadata !DIExpression()), !dbg !4797
  call void @llvm.dbg.declare(metadata i32* %sock, metadata !4798, metadata !DIExpression()), !dbg !4799
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4800, metadata !DIExpression()), !dbg !4802
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4802
  %1 = bitcast %struct.pcmcia_socket* %0 to i8*, !dbg !4802
  store i8* %1, i8** %__mptr, align 8, !dbg !4802
  br label %do.body, !dbg !4802

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4803

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4802
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !4802
  %3 = bitcast i8* %add.ptr to %struct.socket_info*, !dbg !4802
  store %struct.socket_info* %3, %struct.socket_info** %tmp, align 8, !dbg !4803
  %4 = load %struct.socket_info*, %struct.socket_info** %tmp, align 8, !dbg !4802
  %number = getelementptr inbounds %struct.socket_info, %struct.socket_info* %4, i32 0, i32 0, !dbg !4805
  %5 = load i32, i32* %number, align 8, !dbg !4805
  store i32 %5, i32* %sock, align 4, !dbg !4799
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4806, metadata !DIExpression()), !dbg !4807
  %6 = load i32, i32* %sock, align 4, !dbg !4808
  %call = call zeroext i8 @indirect_read(i32 %6, i16 zeroext 1) #7, !dbg !4809
  %conv = zext i8 %call to i32, !dbg !4809
  store i32 %conv, i32* %status, align 4, !dbg !4810
  %7 = load i32*, i32** %value.addr, align 8, !dbg !4811
  store i32 0, i32* %7, align 4, !dbg !4812
  %8 = load i32, i32* %status, align 4, !dbg !4813
  %and = and i32 %8, 12, !dbg !4815
  %cmp = icmp eq i32 %and, 12, !dbg !4816
  br i1 %cmp, label %if.then, label %if.end, !dbg !4817

if.then:                                          ; preds = %do.end
  %9 = load i32*, i32** %value.addr, align 8, !dbg !4818
  %10 = load i32, i32* %9, align 4, !dbg !4819
  %or = or i32 %10, 128, !dbg !4819
  store i32 %or, i32* %9, align 4, !dbg !4819
  br label %if.end, !dbg !4820

if.end:                                           ; preds = %if.then, %do.end
  %11 = load i32, i32* %sock, align 4, !dbg !4821
  %call2 = call zeroext i8 @indirect_read(i32 %11, i16 zeroext 3) #7, !dbg !4823
  %conv3 = zext i8 %call2 to i32, !dbg !4823
  %and4 = and i32 %conv3, 32, !dbg !4824
  %tobool = icmp ne i32 %and4, 0, !dbg !4824
  br i1 %tobool, label %if.then5, label %if.else, !dbg !4825

if.then5:                                         ; preds = %if.end
  %12 = load i32, i32* %status, align 4, !dbg !4826
  %and6 = and i32 %12, 1, !dbg !4829
  %tobool7 = icmp ne i32 %and6, 0, !dbg !4829
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !4830

if.then8:                                         ; preds = %if.then5
  %13 = load i32*, i32** %value.addr, align 8, !dbg !4831
  %14 = load i32, i32* %13, align 4, !dbg !4832
  %or9 = or i32 %14, 1024, !dbg !4832
  store i32 %or9, i32* %13, align 4, !dbg !4832
  br label %if.end10, !dbg !4833

if.end10:                                         ; preds = %if.then8, %if.then5
  br label %if.end21, !dbg !4834

if.else:                                          ; preds = %if.end
  %15 = load i32, i32* %status, align 4, !dbg !4835
  %and11 = and i32 %15, 1, !dbg !4838
  %tobool12 = icmp ne i32 %and11, 0, !dbg !4838
  br i1 %tobool12, label %if.end15, label %if.then13, !dbg !4839

if.then13:                                        ; preds = %if.else
  %16 = load i32*, i32** %value.addr, align 8, !dbg !4840
  %17 = load i32, i32* %16, align 4, !dbg !4841
  %or14 = or i32 %17, 16, !dbg !4841
  store i32 %or14, i32* %16, align 4, !dbg !4841
  br label %if.end15, !dbg !4842

if.end15:                                         ; preds = %if.then13, %if.else
  %18 = load i32, i32* %status, align 4, !dbg !4843
  %and16 = and i32 %18, 2, !dbg !4845
  %tobool17 = icmp ne i32 %and16, 0, !dbg !4845
  br i1 %tobool17, label %if.end20, label %if.then18, !dbg !4846

if.then18:                                        ; preds = %if.end15
  %19 = load i32*, i32** %value.addr, align 8, !dbg !4847
  %20 = load i32, i32* %19, align 4, !dbg !4848
  %or19 = or i32 %20, 32, !dbg !4848
  store i32 %or19, i32* %19, align 4, !dbg !4848
  br label %if.end20, !dbg !4849

if.end20:                                         ; preds = %if.then18, %if.end15
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end10
  %21 = load i32, i32* %status, align 4, !dbg !4850
  %and22 = and i32 %21, 16, !dbg !4852
  %tobool23 = icmp ne i32 %and22, 0, !dbg !4852
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !4853

if.then24:                                        ; preds = %if.end21
  %22 = load i32*, i32** %value.addr, align 8, !dbg !4854
  %23 = load i32, i32* %22, align 4, !dbg !4855
  %or25 = or i32 %23, 1, !dbg !4855
  store i32 %or25, i32* %22, align 4, !dbg !4855
  br label %if.end26, !dbg !4856

if.end26:                                         ; preds = %if.then24, %if.end21
  %24 = load i32, i32* %status, align 4, !dbg !4857
  %and27 = and i32 %24, 32, !dbg !4859
  %tobool28 = icmp ne i32 %and27, 0, !dbg !4859
  br i1 %tobool28, label %if.then29, label %if.end31, !dbg !4860

if.then29:                                        ; preds = %if.end26
  %25 = load i32*, i32** %value.addr, align 8, !dbg !4861
  %26 = load i32, i32* %25, align 4, !dbg !4862
  %or30 = or i32 %26, 64, !dbg !4862
  store i32 %or30, i32* %25, align 4, !dbg !4862
  br label %if.end31, !dbg !4863

if.end31:                                         ; preds = %if.then29, %if.end26
  %27 = load i32, i32* %status, align 4, !dbg !4864
  %and32 = and i32 %27, 64, !dbg !4866
  %tobool33 = icmp ne i32 %and32, 0, !dbg !4866
  br i1 %tobool33, label %if.then34, label %if.end36, !dbg !4867

if.then34:                                        ; preds = %if.end31
  %28 = load i32*, i32** %value.addr, align 8, !dbg !4868
  %29 = load i32, i32* %28, align 4, !dbg !4869
  %or35 = or i32 %29, 256, !dbg !4869
  store i32 %or35, i32* %28, align 4, !dbg !4869
  br label %if.end36, !dbg !4870

if.end36:                                         ; preds = %if.then34, %if.end31
  ret i32 0, !dbg !4871
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i82092aa_set_socket(%struct.pcmcia_socket* %socket, %struct.socket_state_t* %state) #0 !dbg !4872 {
entry:
  %retval = alloca i32, align 4
  %socket.addr = alloca %struct.pcmcia_socket*, align 8
  %state.addr = alloca %struct.socket_state_t*, align 8
  %sock_info = alloca %struct.socket_info*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.socket_info*, align 8
  %sock = alloca i32, align 4
  %reg = alloca i8, align 1
  store %struct.pcmcia_socket* %socket, %struct.pcmcia_socket** %socket.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %socket.addr, metadata !4873, metadata !DIExpression()), !dbg !4874
  store %struct.socket_state_t* %state, %struct.socket_state_t** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.socket_state_t** %state.addr, metadata !4875, metadata !DIExpression()), !dbg !4876
  call void @llvm.dbg.declare(metadata %struct.socket_info** %sock_info, metadata !4877, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4879, metadata !DIExpression()), !dbg !4881
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4881
  %1 = bitcast %struct.pcmcia_socket* %0 to i8*, !dbg !4881
  store i8* %1, i8** %__mptr, align 8, !dbg !4881
  br label %do.body, !dbg !4881

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4882

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4881
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !4881
  %3 = bitcast i8* %add.ptr to %struct.socket_info*, !dbg !4881
  store %struct.socket_info* %3, %struct.socket_info** %tmp, align 8, !dbg !4882
  %4 = load %struct.socket_info*, %struct.socket_info** %tmp, align 8, !dbg !4881
  store %struct.socket_info* %4, %struct.socket_info** %sock_info, align 8, !dbg !4878
  call void @llvm.dbg.declare(metadata i32* %sock, metadata !4884, metadata !DIExpression()), !dbg !4885
  %5 = load %struct.socket_info*, %struct.socket_info** %sock_info, align 8, !dbg !4886
  %number = getelementptr inbounds %struct.socket_info, %struct.socket_info* %5, i32 0, i32 0, !dbg !4887
  %6 = load i32, i32* %number, align 8, !dbg !4887
  store i32 %6, i32* %sock, align 4, !dbg !4885
  call void @llvm.dbg.declare(metadata i8* %reg, metadata !4888, metadata !DIExpression()), !dbg !4889
  %7 = load i32, i32* %sock, align 4, !dbg !4890
  call void @set_bridge_state(i32 %7) #7, !dbg !4891
  store i8 0, i8* %reg, align 1, !dbg !4892
  %8 = load %struct.socket_state_t*, %struct.socket_state_t** %state.addr, align 8, !dbg !4893
  %flags = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %8, i32 0, i32 0, !dbg !4895
  %9 = load i32, i32* %flags, align 4, !dbg !4895
  %and = and i32 %9, 64, !dbg !4896
  %tobool = icmp ne i32 %and, 0, !dbg !4896
  br i1 %tobool, label %if.end, label %if.then, !dbg !4897

if.then:                                          ; preds = %do.end
  %10 = load i8, i8* %reg, align 1, !dbg !4898
  %conv = zext i8 %10 to i32, !dbg !4898
  %or = or i32 %conv, 64, !dbg !4899
  %conv1 = trunc i32 %or to i8, !dbg !4898
  store i8 %conv1, i8* %reg, align 1, !dbg !4900
  br label %if.end, !dbg !4901

if.end:                                           ; preds = %if.then, %do.end
  %11 = load %struct.socket_state_t*, %struct.socket_state_t** %state.addr, align 8, !dbg !4902
  %flags2 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %11, i32 0, i32 0, !dbg !4904
  %12 = load i32, i32* %flags2, align 4, !dbg !4904
  %and3 = and i32 %12, 32, !dbg !4905
  %tobool4 = icmp ne i32 %and3, 0, !dbg !4905
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !4906

if.then5:                                         ; preds = %if.end
  %13 = load i8, i8* %reg, align 1, !dbg !4907
  %conv6 = zext i8 %13 to i32, !dbg !4907
  %or7 = or i32 %conv6, 32, !dbg !4908
  %conv8 = trunc i32 %or7 to i8, !dbg !4907
  store i8 %conv8, i8* %reg, align 1, !dbg !4909
  br label %if.end9, !dbg !4910

if.end9:                                          ; preds = %if.then5, %if.end
  %14 = load i32, i32* %sock, align 4, !dbg !4911
  %15 = load i8, i8* %reg, align 1, !dbg !4912
  call void @indirect_write(i32 %14, i16 zeroext 3, i8 zeroext %15) #7, !dbg !4913
  store i8 64, i8* %reg, align 1, !dbg !4914
  %16 = load %struct.socket_state_t*, %struct.socket_state_t** %state.addr, align 8, !dbg !4915
  %flags10 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %16, i32 0, i32 0, !dbg !4917
  %17 = load i32, i32* %flags10, align 4, !dbg !4917
  %and11 = and i32 %17, 16, !dbg !4918
  %tobool12 = icmp ne i32 %and11, 0, !dbg !4918
  br i1 %tobool12, label %if.then13, label %if.end18, !dbg !4919

if.then13:                                        ; preds = %if.end9
  %18 = load %struct.socket_info*, %struct.socket_info** %sock_info, align 8, !dbg !4920
  %dev = getelementptr inbounds %struct.socket_info, %struct.socket_info* %18, i32 0, i32 4, !dbg !4920
  %19 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4920
  %dev14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 41, !dbg !4920
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !4920
  %20 = load i8, i8* %reg, align 1, !dbg !4922
  %conv15 = zext i8 %20 to i32, !dbg !4922
  %or16 = or i32 %conv15, 32, !dbg !4922
  %conv17 = trunc i32 %or16 to i8, !dbg !4922
  store i8 %conv17, i8* %reg, align 1, !dbg !4922
  br label %if.end18, !dbg !4923

if.end18:                                         ; preds = %if.then13, %if.end9
  %21 = load %struct.socket_state_t*, %struct.socket_state_t** %state.addr, align 8, !dbg !4924
  %flags19 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %21, i32 0, i32 0, !dbg !4926
  %22 = load i32, i32* %flags19, align 4, !dbg !4926
  %and20 = and i32 %22, 512, !dbg !4927
  %tobool21 = icmp ne i32 %and20, 0, !dbg !4927
  br i1 %tobool21, label %if.then22, label %if.end28, !dbg !4928

if.then22:                                        ; preds = %if.end18
  %23 = load %struct.socket_info*, %struct.socket_info** %sock_info, align 8, !dbg !4929
  %dev23 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %23, i32 0, i32 4, !dbg !4929
  %24 = load %struct.pci_dev*, %struct.pci_dev** %dev23, align 8, !dbg !4929
  %dev24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 41, !dbg !4929
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !4929
  %25 = load i8, i8* %reg, align 1, !dbg !4931
  %conv25 = zext i8 %25 to i32, !dbg !4931
  %or26 = or i32 %conv25, 128, !dbg !4931
  %conv27 = trunc i32 %or26 to i8, !dbg !4931
  store i8 %conv27, i8* %reg, align 1, !dbg !4931
  br label %if.end28, !dbg !4932

if.end28:                                         ; preds = %if.then22, %if.end18
  %26 = load %struct.socket_state_t*, %struct.socket_state_t** %state.addr, align 8, !dbg !4933
  %Vcc = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %26, i32 0, i32 2, !dbg !4934
  %27 = load i8, i8* %Vcc, align 4, !dbg !4934
  %conv29 = zext i8 %27 to i32, !dbg !4933
  switch i32 %conv29, label %sw.default [
    i32 0, label %sw.bb
    i32 50, label %sw.bb30
  ], !dbg !4935

sw.bb:                                            ; preds = %if.end28
  br label %sw.epilog, !dbg !4936

sw.bb30:                                          ; preds = %if.end28
  %28 = load %struct.socket_info*, %struct.socket_info** %sock_info, align 8, !dbg !4938
  %dev31 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %28, i32 0, i32 4, !dbg !4938
  %29 = load %struct.pci_dev*, %struct.pci_dev** %dev31, align 8, !dbg !4938
  %dev32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 41, !dbg !4938
  %30 = load i32, i32* %sock, align 4, !dbg !4938
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %30) #8, !dbg !4938
  %31 = load i8, i8* %reg, align 1, !dbg !4939
  %conv33 = zext i8 %31 to i32, !dbg !4939
  %or34 = or i32 %conv33, 16, !dbg !4939
  %conv35 = trunc i32 %or34 to i8, !dbg !4939
  store i8 %conv35, i8* %reg, align 1, !dbg !4939
  br label %sw.epilog, !dbg !4940

sw.default:                                       ; preds = %if.end28
  %32 = load %struct.socket_info*, %struct.socket_info** %sock_info, align 8, !dbg !4941
  %dev36 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %32, i32 0, i32 4, !dbg !4941
  %33 = load %struct.pci_dev*, %struct.pci_dev** %dev36, align 8, !dbg !4941
  %dev37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 41, !dbg !4941
  %34 = load %struct.socket_state_t*, %struct.socket_state_t** %state.addr, align 8, !dbg !4941
  %Vcc38 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %34, i32 0, i32 2, !dbg !4941
  %35 = load i8, i8* %Vcc38, align 4, !dbg !4941
  %conv39 = zext i8 %35 to i32, !dbg !4941
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.i82092aa_set_socket, i64 0, i64 0), i32 %conv39) #8, !dbg !4941
  store i32 -22, i32* %retval, align 4, !dbg !4942
  br label %return, !dbg !4942

sw.epilog:                                        ; preds = %sw.bb30, %sw.bb
  %36 = load %struct.socket_state_t*, %struct.socket_state_t** %state.addr, align 8, !dbg !4943
  %Vpp = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %36, i32 0, i32 3, !dbg !4944
  %37 = load i8, i8* %Vpp, align 1, !dbg !4944
  %conv40 = zext i8 %37 to i32, !dbg !4943
  switch i32 %conv40, label %sw.default56 [
    i32 0, label %sw.bb41
    i32 50, label %sw.bb44
    i32 120, label %sw.bb50
  ], !dbg !4945

sw.bb41:                                          ; preds = %sw.epilog
  %38 = load %struct.socket_info*, %struct.socket_info** %sock_info, align 8, !dbg !4946
  %dev42 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %38, i32 0, i32 4, !dbg !4946
  %39 = load %struct.pci_dev*, %struct.pci_dev** %dev42, align 8, !dbg !4946
  %dev43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 41, !dbg !4946
  %40 = load i32, i32* %sock, align 4, !dbg !4946
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %40) #8, !dbg !4946
  br label %sw.epilog61, !dbg !4948

sw.bb44:                                          ; preds = %sw.epilog
  %41 = load %struct.socket_info*, %struct.socket_info** %sock_info, align 8, !dbg !4949
  %dev45 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %41, i32 0, i32 4, !dbg !4949
  %42 = load %struct.pci_dev*, %struct.pci_dev** %dev45, align 8, !dbg !4949
  %dev46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 41, !dbg !4949
  %43 = load i32, i32* %sock, align 4, !dbg !4949
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 %43) #8, !dbg !4949
  %44 = load i8, i8* %reg, align 1, !dbg !4950
  %conv47 = zext i8 %44 to i32, !dbg !4950
  %or48 = or i32 %conv47, 5, !dbg !4950
  %conv49 = trunc i32 %or48 to i8, !dbg !4950
  store i8 %conv49, i8* %reg, align 1, !dbg !4950
  br label %sw.epilog61, !dbg !4951

sw.bb50:                                          ; preds = %sw.epilog
  %45 = load %struct.socket_info*, %struct.socket_info** %sock_info, align 8, !dbg !4952
  %dev51 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %45, i32 0, i32 4, !dbg !4952
  %46 = load %struct.pci_dev*, %struct.pci_dev** %dev51, align 8, !dbg !4952
  %dev52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 41, !dbg !4952
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !4952
  %47 = load i8, i8* %reg, align 1, !dbg !4953
  %conv53 = zext i8 %47 to i32, !dbg !4953
  %or54 = or i32 %conv53, 10, !dbg !4953
  %conv55 = trunc i32 %or54 to i8, !dbg !4953
  store i8 %conv55, i8* %reg, align 1, !dbg !4953
  br label %sw.epilog61, !dbg !4954

sw.default56:                                     ; preds = %sw.epilog
  %48 = load %struct.socket_info*, %struct.socket_info** %sock_info, align 8, !dbg !4955
  %dev57 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %48, i32 0, i32 4, !dbg !4955
  %49 = load %struct.pci_dev*, %struct.pci_dev** %dev57, align 8, !dbg !4955
  %dev58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 41, !dbg !4955
  %50 = load %struct.socket_state_t*, %struct.socket_state_t** %state.addr, align 8, !dbg !4955
  %Vcc59 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %50, i32 0, i32 2, !dbg !4955
  %51 = load i8, i8* %Vcc59, align 4, !dbg !4955
  %conv60 = zext i8 %51 to i32, !dbg !4955
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.i82092aa_set_socket, i64 0, i64 0), i32 %conv60) #8, !dbg !4955
  store i32 -22, i32* %retval, align 4, !dbg !4956
  br label %return, !dbg !4956

sw.epilog61:                                      ; preds = %sw.bb50, %sw.bb44, %sw.bb41
  %52 = load i8, i8* %reg, align 1, !dbg !4957
  %conv62 = zext i8 %52 to i32, !dbg !4957
  %53 = load i32, i32* %sock, align 4, !dbg !4959
  %call = call zeroext i8 @indirect_read(i32 %53, i16 zeroext 2) #7, !dbg !4960
  %conv63 = zext i8 %call to i32, !dbg !4960
  %cmp = icmp ne i32 %conv62, %conv63, !dbg !4961
  br i1 %cmp, label %if.then65, label %if.end66, !dbg !4962

if.then65:                                        ; preds = %sw.epilog61
  %54 = load i32, i32* %sock, align 4, !dbg !4963
  %55 = load i8, i8* %reg, align 1, !dbg !4964
  call void @indirect_write(i32 %54, i16 zeroext 2, i8 zeroext %55) #7, !dbg !4965
  br label %if.end66, !dbg !4965

if.end66:                                         ; preds = %if.then65, %sw.epilog61
  store i8 0, i8* %reg, align 1, !dbg !4966
  %56 = load %struct.socket_state_t*, %struct.socket_state_t** %state.addr, align 8, !dbg !4967
  %csc_mask = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %56, i32 0, i32 1, !dbg !4969
  %57 = load i32, i32* %csc_mask, align 4, !dbg !4969
  %and67 = and i32 %57, 128, !dbg !4970
  %tobool68 = icmp ne i32 %and67, 0, !dbg !4970
  br i1 %tobool68, label %if.then69, label %if.end73, !dbg !4971

if.then69:                                        ; preds = %if.end66
  %58 = load i8, i8* %reg, align 1, !dbg !4972
  %conv70 = zext i8 %58 to i32, !dbg !4972
  %or71 = or i32 %conv70, 8, !dbg !4972
  %conv72 = trunc i32 %or71 to i8, !dbg !4972
  store i8 %conv72, i8* %reg, align 1, !dbg !4972
  br label %if.end73, !dbg !4973

if.end73:                                         ; preds = %if.then69, %if.end66
  %59 = load %struct.socket_state_t*, %struct.socket_state_t** %state.addr, align 8, !dbg !4974
  %flags74 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %59, i32 0, i32 0, !dbg !4976
  %60 = load i32, i32* %flags74, align 4, !dbg !4976
  %and75 = and i32 %60, 32, !dbg !4977
  %tobool76 = icmp ne i32 %and75, 0, !dbg !4977
  br i1 %tobool76, label %if.then77, label %if.else, !dbg !4978

if.then77:                                        ; preds = %if.end73
  %61 = load %struct.socket_state_t*, %struct.socket_state_t** %state.addr, align 8, !dbg !4979
  %csc_mask78 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %61, i32 0, i32 1, !dbg !4982
  %62 = load i32, i32* %csc_mask78, align 4, !dbg !4982
  %and79 = and i32 %62, 1024, !dbg !4983
  %tobool80 = icmp ne i32 %and79, 0, !dbg !4983
  br i1 %tobool80, label %if.then81, label %if.end85, !dbg !4984

if.then81:                                        ; preds = %if.then77
  %63 = load i8, i8* %reg, align 1, !dbg !4985
  %conv82 = zext i8 %63 to i32, !dbg !4985
  %or83 = or i32 %conv82, 1, !dbg !4985
  %conv84 = trunc i32 %or83 to i8, !dbg !4985
  store i8 %conv84, i8* %reg, align 1, !dbg !4985
  br label %if.end85, !dbg !4986

if.end85:                                         ; preds = %if.then81, %if.then77
  br label %if.end110, !dbg !4987

if.else:                                          ; preds = %if.end73
  %64 = load %struct.socket_state_t*, %struct.socket_state_t** %state.addr, align 8, !dbg !4988
  %csc_mask86 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %64, i32 0, i32 1, !dbg !4991
  %65 = load i32, i32* %csc_mask86, align 4, !dbg !4991
  %and87 = and i32 %65, 16, !dbg !4992
  %tobool88 = icmp ne i32 %and87, 0, !dbg !4992
  br i1 %tobool88, label %if.then89, label %if.end93, !dbg !4993

if.then89:                                        ; preds = %if.else
  %66 = load i8, i8* %reg, align 1, !dbg !4994
  %conv90 = zext i8 %66 to i32, !dbg !4994
  %or91 = or i32 %conv90, 1, !dbg !4994
  %conv92 = trunc i32 %or91 to i8, !dbg !4994
  store i8 %conv92, i8* %reg, align 1, !dbg !4994
  br label %if.end93, !dbg !4995

if.end93:                                         ; preds = %if.then89, %if.else
  %67 = load %struct.socket_state_t*, %struct.socket_state_t** %state.addr, align 8, !dbg !4996
  %csc_mask94 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %67, i32 0, i32 1, !dbg !4998
  %68 = load i32, i32* %csc_mask94, align 4, !dbg !4998
  %and95 = and i32 %68, 32, !dbg !4999
  %tobool96 = icmp ne i32 %and95, 0, !dbg !4999
  br i1 %tobool96, label %if.then97, label %if.end101, !dbg !5000

if.then97:                                        ; preds = %if.end93
  %69 = load i8, i8* %reg, align 1, !dbg !5001
  %conv98 = zext i8 %69 to i32, !dbg !5001
  %or99 = or i32 %conv98, 2, !dbg !5001
  %conv100 = trunc i32 %or99 to i8, !dbg !5001
  store i8 %conv100, i8* %reg, align 1, !dbg !5001
  br label %if.end101, !dbg !5002

if.end101:                                        ; preds = %if.then97, %if.end93
  %70 = load %struct.socket_state_t*, %struct.socket_state_t** %state.addr, align 8, !dbg !5003
  %csc_mask102 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %70, i32 0, i32 1, !dbg !5005
  %71 = load i32, i32* %csc_mask102, align 4, !dbg !5005
  %and103 = and i32 %71, 64, !dbg !5006
  %tobool104 = icmp ne i32 %and103, 0, !dbg !5006
  br i1 %tobool104, label %if.then105, label %if.end109, !dbg !5007

if.then105:                                       ; preds = %if.end101
  %72 = load i8, i8* %reg, align 1, !dbg !5008
  %conv106 = zext i8 %72 to i32, !dbg !5008
  %or107 = or i32 %conv106, 4, !dbg !5008
  %conv108 = trunc i32 %or107 to i8, !dbg !5008
  store i8 %conv108, i8* %reg, align 1, !dbg !5008
  br label %if.end109, !dbg !5009

if.end109:                                        ; preds = %if.then105, %if.end101
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.end85
  %73 = load i32, i32* %sock, align 4, !dbg !5010
  %74 = load i8, i8* %reg, align 1, !dbg !5011
  call void @indirect_write(i32 %73, i16 zeroext 5, i8 zeroext %74) #7, !dbg !5012
  %75 = load i32, i32* %sock, align 4, !dbg !5013
  %call111 = call zeroext i8 @indirect_read(i32 %75, i16 zeroext 4) #7, !dbg !5014
  store i32 0, i32* %retval, align 4, !dbg !5015
  br label %return, !dbg !5015

return:                                           ; preds = %if.end110, %sw.default56, %sw.default
  %76 = load i32, i32* %retval, align 4, !dbg !5016
  ret i32 %76, !dbg !5016
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i82092aa_set_io_map(%struct.pcmcia_socket* %socket, %struct.pccard_io_map* %io) #0 !dbg !5017 {
entry:
  %retval = alloca i32, align 4
  %socket.addr = alloca %struct.pcmcia_socket*, align 8
  %io.addr = alloca %struct.pccard_io_map*, align 8
  %sock_info = alloca %struct.socket_info*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.socket_info*, align 8
  %sock = alloca i32, align 4
  %map = alloca i8, align 1
  %ioctl = alloca i8, align 1
  store %struct.pcmcia_socket* %socket, %struct.pcmcia_socket** %socket.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %socket.addr, metadata !5018, metadata !DIExpression()), !dbg !5019
  store %struct.pccard_io_map* %io, %struct.pccard_io_map** %io.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pccard_io_map** %io.addr, metadata !5020, metadata !DIExpression()), !dbg !5021
  call void @llvm.dbg.declare(metadata %struct.socket_info** %sock_info, metadata !5022, metadata !DIExpression()), !dbg !5023
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5024, metadata !DIExpression()), !dbg !5026
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !5026
  %1 = bitcast %struct.pcmcia_socket* %0 to i8*, !dbg !5026
  store i8* %1, i8** %__mptr, align 8, !dbg !5026
  br label %do.body, !dbg !5026

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5027

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5026
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !5026
  %3 = bitcast i8* %add.ptr to %struct.socket_info*, !dbg !5026
  store %struct.socket_info* %3, %struct.socket_info** %tmp, align 8, !dbg !5027
  %4 = load %struct.socket_info*, %struct.socket_info** %tmp, align 8, !dbg !5026
  store %struct.socket_info* %4, %struct.socket_info** %sock_info, align 8, !dbg !5023
  call void @llvm.dbg.declare(metadata i32* %sock, metadata !5029, metadata !DIExpression()), !dbg !5030
  %5 = load %struct.socket_info*, %struct.socket_info** %sock_info, align 8, !dbg !5031
  %number = getelementptr inbounds %struct.socket_info, %struct.socket_info* %5, i32 0, i32 0, !dbg !5032
  %6 = load i32, i32* %number, align 8, !dbg !5032
  store i32 %6, i32* %sock, align 4, !dbg !5030
  call void @llvm.dbg.declare(metadata i8* %map, metadata !5033, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.declare(metadata i8* %ioctl, metadata !5035, metadata !DIExpression()), !dbg !5036
  %7 = load %struct.pccard_io_map*, %struct.pccard_io_map** %io.addr, align 8, !dbg !5037
  %map1 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %7, i32 0, i32 0, !dbg !5038
  %8 = load i8, i8* %map1, align 8, !dbg !5038
  store i8 %8, i8* %map, align 1, !dbg !5039
  %9 = load i8, i8* %map, align 1, !dbg !5040
  %conv = zext i8 %9 to i32, !dbg !5040
  %cmp = icmp sgt i32 %conv, 1, !dbg !5042
  br i1 %cmp, label %if.then, label %if.end, !dbg !5043

if.then:                                          ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !5044
  br label %return, !dbg !5044

if.end:                                           ; preds = %do.end
  %10 = load %struct.pccard_io_map*, %struct.pccard_io_map** %io.addr, align 8, !dbg !5045
  %start = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %10, i32 0, i32 3, !dbg !5047
  %11 = load i64, i64* %start, align 8, !dbg !5047
  %cmp3 = icmp ugt i64 %11, 65535, !dbg !5048
  br i1 %cmp3, label %if.then12, label %lor.lhs.false, !dbg !5049

lor.lhs.false:                                    ; preds = %if.end
  %12 = load %struct.pccard_io_map*, %struct.pccard_io_map** %io.addr, align 8, !dbg !5050
  %stop = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %12, i32 0, i32 4, !dbg !5051
  %13 = load i64, i64* %stop, align 8, !dbg !5051
  %cmp5 = icmp ugt i64 %13, 65535, !dbg !5052
  br i1 %cmp5, label %if.then12, label %lor.lhs.false7, !dbg !5053

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %14 = load %struct.pccard_io_map*, %struct.pccard_io_map** %io.addr, align 8, !dbg !5054
  %stop8 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %14, i32 0, i32 4, !dbg !5055
  %15 = load i64, i64* %stop8, align 8, !dbg !5055
  %16 = load %struct.pccard_io_map*, %struct.pccard_io_map** %io.addr, align 8, !dbg !5056
  %start9 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %16, i32 0, i32 3, !dbg !5057
  %17 = load i64, i64* %start9, align 8, !dbg !5057
  %cmp10 = icmp ult i64 %15, %17, !dbg !5058
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !5059

if.then12:                                        ; preds = %lor.lhs.false7, %lor.lhs.false, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5060
  br label %return, !dbg !5060

if.end13:                                         ; preds = %lor.lhs.false7
  %18 = load i32, i32* %sock, align 4, !dbg !5061
  %call = call zeroext i8 @indirect_read(i32 %18, i16 zeroext 6) #7, !dbg !5063
  %conv14 = zext i8 %call to i32, !dbg !5063
  %19 = load i8, i8* %map, align 1, !dbg !5064
  %conv15 = zext i8 %19 to i32, !dbg !5064
  %shl = shl i32 64, %conv15, !dbg !5064
  %and = and i32 %conv14, %shl, !dbg !5065
  %tobool = icmp ne i32 %and, 0, !dbg !5065
  br i1 %tobool, label %if.then16, label %if.end20, !dbg !5066

if.then16:                                        ; preds = %if.end13
  %20 = load i32, i32* %sock, align 4, !dbg !5067
  %21 = load i8, i8* %map, align 1, !dbg !5068
  %conv17 = zext i8 %21 to i32, !dbg !5068
  %shl18 = shl i32 64, %conv17, !dbg !5068
  %conv19 = trunc i32 %shl18 to i8, !dbg !5068
  call void @indirect_resetbit(i32 %20, i16 zeroext 6, i8 zeroext %conv19) #7, !dbg !5069
  br label %if.end20, !dbg !5069

if.end20:                                         ; preds = %if.then16, %if.end13
  %22 = load i32, i32* %sock, align 4, !dbg !5070
  %23 = load i8, i8* %map, align 1, !dbg !5071
  %conv21 = zext i8 %23 to i32, !dbg !5071
  %shl22 = shl i32 %conv21, 2, !dbg !5071
  %add = add i32 8, %shl22, !dbg !5071
  %add23 = add i32 %add, 0, !dbg !5072
  %conv24 = trunc i32 %add23 to i16, !dbg !5071
  %24 = load %struct.pccard_io_map*, %struct.pccard_io_map** %io.addr, align 8, !dbg !5073
  %start25 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %24, i32 0, i32 3, !dbg !5074
  %25 = load i64, i64* %start25, align 8, !dbg !5074
  %conv26 = trunc i64 %25 to i16, !dbg !5073
  call void @indirect_write16(i32 %22, i16 zeroext %conv24, i16 zeroext %conv26) #7, !dbg !5075
  %26 = load i32, i32* %sock, align 4, !dbg !5076
  %27 = load i8, i8* %map, align 1, !dbg !5077
  %conv27 = zext i8 %27 to i32, !dbg !5077
  %shl28 = shl i32 %conv27, 2, !dbg !5077
  %add29 = add i32 8, %shl28, !dbg !5077
  %add30 = add i32 %add29, 2, !dbg !5078
  %conv31 = trunc i32 %add30 to i16, !dbg !5077
  %28 = load %struct.pccard_io_map*, %struct.pccard_io_map** %io.addr, align 8, !dbg !5079
  %stop32 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %28, i32 0, i32 4, !dbg !5080
  %29 = load i64, i64* %stop32, align 8, !dbg !5080
  %conv33 = trunc i64 %29 to i16, !dbg !5079
  call void @indirect_write16(i32 %26, i16 zeroext %conv31, i16 zeroext %conv33) #7, !dbg !5081
  %30 = load i32, i32* %sock, align 4, !dbg !5082
  %call34 = call zeroext i8 @indirect_read(i32 %30, i16 zeroext 7) #7, !dbg !5083
  %conv35 = zext i8 %call34 to i32, !dbg !5083
  %31 = load i8, i8* %map, align 1, !dbg !5084
  %conv36 = zext i8 %31 to i32, !dbg !5084
  %shl37 = shl i32 %conv36, 2, !dbg !5084
  %shl38 = shl i32 15, %shl37, !dbg !5084
  %neg = xor i32 %shl38, -1, !dbg !5085
  %and39 = and i32 %conv35, %neg, !dbg !5086
  %conv40 = trunc i32 %and39 to i8, !dbg !5083
  store i8 %conv40, i8* %ioctl, align 1, !dbg !5087
  %32 = load %struct.pccard_io_map*, %struct.pccard_io_map** %io.addr, align 8, !dbg !5088
  %flags = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %32, i32 0, i32 1, !dbg !5090
  %33 = load i8, i8* %flags, align 1, !dbg !5090
  %conv41 = zext i8 %33 to i32, !dbg !5088
  %and42 = and i32 %conv41, 6, !dbg !5091
  %tobool43 = icmp ne i32 %and42, 0, !dbg !5091
  br i1 %tobool43, label %if.then44, label %if.end50, !dbg !5092

if.then44:                                        ; preds = %if.end20
  %34 = load i8, i8* %map, align 1, !dbg !5093
  %conv45 = zext i8 %34 to i32, !dbg !5093
  %shl46 = shl i32 %conv45, 2, !dbg !5093
  %shl47 = shl i32 1, %shl46, !dbg !5093
  %35 = load i8, i8* %ioctl, align 1, !dbg !5094
  %conv48 = zext i8 %35 to i32, !dbg !5094
  %or = or i32 %conv48, %shl47, !dbg !5094
  %conv49 = trunc i32 %or to i8, !dbg !5094
  store i8 %conv49, i8* %ioctl, align 1, !dbg !5094
  br label %if.end50, !dbg !5095

if.end50:                                         ; preds = %if.then44, %if.end20
  %36 = load i32, i32* %sock, align 4, !dbg !5096
  %37 = load i8, i8* %ioctl, align 1, !dbg !5097
  call void @indirect_write(i32 %36, i16 zeroext 7, i8 zeroext %37) #7, !dbg !5098
  %38 = load %struct.pccard_io_map*, %struct.pccard_io_map** %io.addr, align 8, !dbg !5099
  %flags51 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %38, i32 0, i32 1, !dbg !5101
  %39 = load i8, i8* %flags51, align 1, !dbg !5101
  %conv52 = zext i8 %39 to i32, !dbg !5099
  %and53 = and i32 %conv52, 1, !dbg !5102
  %tobool54 = icmp ne i32 %and53, 0, !dbg !5102
  br i1 %tobool54, label %if.then55, label %if.end59, !dbg !5103

if.then55:                                        ; preds = %if.end50
  %40 = load i32, i32* %sock, align 4, !dbg !5104
  %41 = load i8, i8* %map, align 1, !dbg !5105
  %conv56 = zext i8 %41 to i32, !dbg !5105
  %shl57 = shl i32 64, %conv56, !dbg !5105
  %conv58 = trunc i32 %shl57 to i8, !dbg !5105
  call void @indirect_setbit(i32 %40, i16 zeroext 6, i8 zeroext %conv58) #7, !dbg !5106
  br label %if.end59, !dbg !5106

if.end59:                                         ; preds = %if.then55, %if.end50
  store i32 0, i32* %retval, align 4, !dbg !5107
  br label %return, !dbg !5107

return:                                           ; preds = %if.end59, %if.then12, %if.then
  %42 = load i32, i32* %retval, align 4, !dbg !5108
  ret i32 %42, !dbg !5108
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i82092aa_set_mem_map(%struct.pcmcia_socket* %socket, %struct.pccard_mem_map* %mem) #0 !dbg !5109 {
entry:
  %retval = alloca i32, align 4
  %socket.addr = alloca %struct.pcmcia_socket*, align 8
  %mem.addr = alloca %struct.pccard_mem_map*, align 8
  %sock_info = alloca %struct.socket_info*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.socket_info*, align 8
  %sock = alloca i32, align 4
  %region = alloca %struct.pci_bus_region, align 8
  %base = alloca i16, align 2
  %i = alloca i16, align 2
  %map = alloca i8, align 1
  store %struct.pcmcia_socket* %socket, %struct.pcmcia_socket** %socket.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %socket.addr, metadata !5110, metadata !DIExpression()), !dbg !5111
  store %struct.pccard_mem_map* %mem, %struct.pccard_mem_map** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pccard_mem_map** %mem.addr, metadata !5112, metadata !DIExpression()), !dbg !5113
  call void @llvm.dbg.declare(metadata %struct.socket_info** %sock_info, metadata !5114, metadata !DIExpression()), !dbg !5115
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5116, metadata !DIExpression()), !dbg !5118
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !5118
  %1 = bitcast %struct.pcmcia_socket* %0 to i8*, !dbg !5118
  store i8* %1, i8** %__mptr, align 8, !dbg !5118
  br label %do.body, !dbg !5118

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5119

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5118
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !5118
  %3 = bitcast i8* %add.ptr to %struct.socket_info*, !dbg !5118
  store %struct.socket_info* %3, %struct.socket_info** %tmp, align 8, !dbg !5119
  %4 = load %struct.socket_info*, %struct.socket_info** %tmp, align 8, !dbg !5118
  store %struct.socket_info* %4, %struct.socket_info** %sock_info, align 8, !dbg !5115
  call void @llvm.dbg.declare(metadata i32* %sock, metadata !5121, metadata !DIExpression()), !dbg !5122
  %5 = load %struct.socket_info*, %struct.socket_info** %sock_info, align 8, !dbg !5123
  %number = getelementptr inbounds %struct.socket_info, %struct.socket_info* %5, i32 0, i32 0, !dbg !5124
  %6 = load i32, i32* %number, align 8, !dbg !5124
  store i32 %6, i32* %sock, align 4, !dbg !5122
  call void @llvm.dbg.declare(metadata %struct.pci_bus_region* %region, metadata !5125, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.declare(metadata i16* %base, metadata !5132, metadata !DIExpression()), !dbg !5133
  call void @llvm.dbg.declare(metadata i16* %i, metadata !5134, metadata !DIExpression()), !dbg !5135
  call void @llvm.dbg.declare(metadata i8* %map, metadata !5136, metadata !DIExpression()), !dbg !5137
  %7 = load %struct.socket_info*, %struct.socket_info** %sock_info, align 8, !dbg !5138
  %dev = getelementptr inbounds %struct.socket_info, %struct.socket_info* %7, i32 0, i32 4, !dbg !5139
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5139
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 1, !dbg !5140
  %9 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !5140
  %10 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %mem.addr, align 8, !dbg !5141
  %res = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %10, i32 0, i32 5, !dbg !5142
  %11 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5142
  call void @pcibios_resource_to_bus(%struct.pci_bus* %9, %struct.pci_bus_region* %region, %struct.resource* %11) #7, !dbg !5143
  %12 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %mem.addr, align 8, !dbg !5144
  %map1 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %12, i32 0, i32 0, !dbg !5145
  %13 = load i8, i8* %map1, align 8, !dbg !5145
  store i8 %13, i8* %map, align 1, !dbg !5146
  %14 = load i8, i8* %map, align 1, !dbg !5147
  %conv = zext i8 %14 to i32, !dbg !5147
  %cmp = icmp sgt i32 %conv, 4, !dbg !5149
  br i1 %cmp, label %if.then, label %if.end, !dbg !5150

if.then:                                          ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !5151
  br label %return, !dbg !5151

if.end:                                           ; preds = %do.end
  %15 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %mem.addr, align 8, !dbg !5152
  %card_start = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %15, i32 0, i32 4, !dbg !5154
  %16 = load i32, i32* %card_start, align 8, !dbg !5154
  %cmp3 = icmp ugt i32 %16, 67108863, !dbg !5155
  br i1 %cmp3, label %if.then11, label %lor.lhs.false, !dbg !5156

lor.lhs.false:                                    ; preds = %if.end
  %start = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %region, i32 0, i32 0, !dbg !5157
  %17 = load i64, i64* %start, align 8, !dbg !5157
  %end = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %region, i32 0, i32 1, !dbg !5158
  %18 = load i64, i64* %end, align 8, !dbg !5158
  %cmp5 = icmp ugt i64 %17, %18, !dbg !5159
  br i1 %cmp5, label %if.then11, label %lor.lhs.false7, !dbg !5160

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %19 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %mem.addr, align 8, !dbg !5161
  %speed = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %19, i32 0, i32 2, !dbg !5162
  %20 = load i16, i16* %speed, align 2, !dbg !5162
  %conv8 = zext i16 %20 to i32, !dbg !5161
  %cmp9 = icmp sgt i32 %conv8, 1000, !dbg !5163
  br i1 %cmp9, label %if.then11, label %if.end17, !dbg !5164

if.then11:                                        ; preds = %lor.lhs.false7, %lor.lhs.false, %if.end
  %21 = load %struct.socket_info*, %struct.socket_info** %sock_info, align 8, !dbg !5165
  %dev12 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %21, i32 0, i32 4, !dbg !5165
  %22 = load %struct.pci_dev*, %struct.pci_dev** %dev12, align 8, !dbg !5165
  %dev13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 41, !dbg !5165
  %23 = load i32, i32* %sock, align 4, !dbg !5165
  %start14 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %region, i32 0, i32 0, !dbg !5165
  %24 = load i64, i64* %start14, align 8, !dbg !5165
  %end15 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %region, i32 0, i32 1, !dbg !5165
  %25 = load i64, i64* %end15, align 8, !dbg !5165
  %26 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %mem.addr, align 8, !dbg !5165
  %card_start16 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %26, i32 0, i32 4, !dbg !5165
  %27 = load i32, i32* %card_start16, align 8, !dbg !5165
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev13, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.15, i64 0, i64 0), i32 %23, i64 %24, i64 %25, i32 %27) #8, !dbg !5165
  store i32 -22, i32* %retval, align 4, !dbg !5167
  br label %return, !dbg !5167

if.end17:                                         ; preds = %lor.lhs.false7
  %28 = load i32, i32* %sock, align 4, !dbg !5168
  %call = call zeroext i8 @indirect_read(i32 %28, i16 zeroext 6) #7, !dbg !5170
  %conv18 = zext i8 %call to i32, !dbg !5170
  %29 = load i8, i8* %map, align 1, !dbg !5171
  %conv19 = zext i8 %29 to i32, !dbg !5171
  %shl = shl i32 1, %conv19, !dbg !5171
  %and = and i32 %conv18, %shl, !dbg !5172
  %tobool = icmp ne i32 %and, 0, !dbg !5172
  br i1 %tobool, label %if.then20, label %if.end24, !dbg !5173

if.then20:                                        ; preds = %if.end17
  %30 = load i32, i32* %sock, align 4, !dbg !5174
  %31 = load i8, i8* %map, align 1, !dbg !5175
  %conv21 = zext i8 %31 to i32, !dbg !5175
  %shl22 = shl i32 1, %conv21, !dbg !5175
  %conv23 = trunc i32 %shl22 to i8, !dbg !5175
  call void @indirect_resetbit(i32 %30, i16 zeroext 6, i8 zeroext %conv23) #7, !dbg !5176
  br label %if.end24, !dbg !5176

if.end24:                                         ; preds = %if.then20, %if.end17
  %32 = load i8, i8* %map, align 1, !dbg !5177
  %conv25 = zext i8 %32 to i32, !dbg !5177
  %shl26 = shl i32 %conv25, 3, !dbg !5177
  %add = add i32 16, %shl26, !dbg !5177
  %conv27 = trunc i32 %add to i16, !dbg !5177
  store i16 %conv27, i16* %base, align 2, !dbg !5178
  %start28 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %region, i32 0, i32 0, !dbg !5179
  %33 = load i64, i64* %start28, align 8, !dbg !5179
  %shr = lshr i64 %33, 12, !dbg !5180
  %and29 = and i64 %shr, 4095, !dbg !5181
  %conv30 = trunc i64 %and29 to i16, !dbg !5182
  store i16 %conv30, i16* %i, align 2, !dbg !5183
  %34 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %mem.addr, align 8, !dbg !5184
  %flags = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %34, i32 0, i32 1, !dbg !5186
  %35 = load i8, i8* %flags, align 1, !dbg !5186
  %conv31 = zext i8 %35 to i32, !dbg !5184
  %and32 = and i32 %conv31, 2, !dbg !5187
  %tobool33 = icmp ne i32 %and32, 0, !dbg !5187
  br i1 %tobool33, label %if.then34, label %if.end37, !dbg !5188

if.then34:                                        ; preds = %if.end24
  %36 = load i16, i16* %i, align 2, !dbg !5189
  %conv35 = zext i16 %36 to i32, !dbg !5189
  %or = or i32 %conv35, 32768, !dbg !5189
  %conv36 = trunc i32 %or to i16, !dbg !5189
  store i16 %conv36, i16* %i, align 2, !dbg !5189
  br label %if.end37, !dbg !5190

if.end37:                                         ; preds = %if.then34, %if.end24
  %37 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %mem.addr, align 8, !dbg !5191
  %flags38 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %37, i32 0, i32 1, !dbg !5193
  %38 = load i8, i8* %flags38, align 1, !dbg !5193
  %conv39 = zext i8 %38 to i32, !dbg !5191
  %and40 = and i32 %conv39, 8, !dbg !5194
  %tobool41 = icmp ne i32 %and40, 0, !dbg !5194
  br i1 %tobool41, label %if.then42, label %if.end46, !dbg !5195

if.then42:                                        ; preds = %if.end37
  %39 = load i16, i16* %i, align 2, !dbg !5196
  %conv43 = zext i16 %39 to i32, !dbg !5196
  %or44 = or i32 %conv43, 16384, !dbg !5196
  %conv45 = trunc i32 %or44 to i16, !dbg !5196
  store i16 %conv45, i16* %i, align 2, !dbg !5196
  br label %if.end46, !dbg !5197

if.end46:                                         ; preds = %if.then42, %if.end37
  %40 = load i32, i32* %sock, align 4, !dbg !5198
  %41 = load i16, i16* %base, align 2, !dbg !5199
  %conv47 = zext i16 %41 to i32, !dbg !5199
  %add48 = add i32 %conv47, 0, !dbg !5200
  %conv49 = trunc i32 %add48 to i16, !dbg !5199
  %42 = load i16, i16* %i, align 2, !dbg !5201
  call void @indirect_write16(i32 %40, i16 zeroext %conv49, i16 zeroext %42) #7, !dbg !5202
  %end50 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %region, i32 0, i32 1, !dbg !5203
  %43 = load i64, i64* %end50, align 8, !dbg !5203
  %shr51 = lshr i64 %43, 12, !dbg !5204
  %and52 = and i64 %shr51, 4095, !dbg !5205
  %conv53 = trunc i64 %and52 to i16, !dbg !5206
  store i16 %conv53, i16* %i, align 2, !dbg !5207
  %44 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %mem.addr, align 8, !dbg !5208
  %speed54 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %44, i32 0, i32 2, !dbg !5209
  %45 = load i16, i16* %speed54, align 2, !dbg !5209
  %conv55 = zext i16 %45 to i32, !dbg !5208
  %call56 = call i32 @to_cycles(i32 %conv55) #7, !dbg !5210
  switch i32 %call56, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb57
    i32 2, label %sw.bb61
  ], !dbg !5211

sw.bb:                                            ; preds = %if.end46
  br label %sw.epilog, !dbg !5212

sw.bb57:                                          ; preds = %if.end46
  %46 = load i16, i16* %i, align 2, !dbg !5214
  %conv58 = zext i16 %46 to i32, !dbg !5214
  %or59 = or i32 %conv58, 16384, !dbg !5214
  %conv60 = trunc i32 %or59 to i16, !dbg !5214
  store i16 %conv60, i16* %i, align 2, !dbg !5214
  br label %sw.epilog, !dbg !5215

sw.bb61:                                          ; preds = %if.end46
  %47 = load i16, i16* %i, align 2, !dbg !5216
  %conv62 = zext i16 %47 to i32, !dbg !5216
  %or63 = or i32 %conv62, 32768, !dbg !5216
  %conv64 = trunc i32 %or63 to i16, !dbg !5216
  store i16 %conv64, i16* %i, align 2, !dbg !5216
  br label %sw.epilog, !dbg !5217

sw.default:                                       ; preds = %if.end46
  %48 = load i16, i16* %i, align 2, !dbg !5218
  %conv65 = zext i16 %48 to i32, !dbg !5218
  %or66 = or i32 %conv65, 49152, !dbg !5218
  %conv67 = trunc i32 %or66 to i16, !dbg !5218
  store i16 %conv67, i16* %i, align 2, !dbg !5218
  br label %sw.epilog, !dbg !5219

sw.epilog:                                        ; preds = %sw.default, %sw.bb61, %sw.bb57, %sw.bb
  %49 = load i32, i32* %sock, align 4, !dbg !5220
  %50 = load i16, i16* %base, align 2, !dbg !5221
  %conv68 = zext i16 %50 to i32, !dbg !5221
  %add69 = add i32 %conv68, 2, !dbg !5222
  %conv70 = trunc i32 %add69 to i16, !dbg !5221
  %51 = load i16, i16* %i, align 2, !dbg !5223
  call void @indirect_write16(i32 %49, i16 zeroext %conv70, i16 zeroext %51) #7, !dbg !5224
  %52 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %mem.addr, align 8, !dbg !5225
  %card_start71 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %52, i32 0, i32 4, !dbg !5226
  %53 = load i32, i32* %card_start71, align 8, !dbg !5226
  %conv72 = zext i32 %53 to i64, !dbg !5225
  %start73 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %region, i32 0, i32 0, !dbg !5227
  %54 = load i64, i64* %start73, align 8, !dbg !5227
  %sub = sub i64 %conv72, %54, !dbg !5228
  %shr74 = lshr i64 %sub, 12, !dbg !5229
  %and75 = and i64 %shr74, 16383, !dbg !5230
  %conv76 = trunc i64 %and75 to i16, !dbg !5231
  store i16 %conv76, i16* %i, align 2, !dbg !5232
  %55 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %mem.addr, align 8, !dbg !5233
  %flags77 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %55, i32 0, i32 1, !dbg !5235
  %56 = load i8, i8* %flags77, align 1, !dbg !5235
  %conv78 = zext i8 %56 to i32, !dbg !5233
  %and79 = and i32 %conv78, 16, !dbg !5236
  %tobool80 = icmp ne i32 %and79, 0, !dbg !5236
  br i1 %tobool80, label %if.then81, label %if.end85, !dbg !5237

if.then81:                                        ; preds = %sw.epilog
  %57 = load i16, i16* %i, align 2, !dbg !5238
  %conv82 = zext i16 %57 to i32, !dbg !5238
  %or83 = or i32 %conv82, 32768, !dbg !5238
  %conv84 = trunc i32 %or83 to i16, !dbg !5238
  store i16 %conv84, i16* %i, align 2, !dbg !5238
  br label %if.end85, !dbg !5239

if.end85:                                         ; preds = %if.then81, %sw.epilog
  %58 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %mem.addr, align 8, !dbg !5240
  %flags86 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %58, i32 0, i32 1, !dbg !5242
  %59 = load i8, i8* %flags86, align 1, !dbg !5242
  %conv87 = zext i8 %59 to i32, !dbg !5240
  %and88 = and i32 %conv87, 32, !dbg !5243
  %tobool89 = icmp ne i32 %and88, 0, !dbg !5243
  br i1 %tobool89, label %if.then90, label %if.end94, !dbg !5244

if.then90:                                        ; preds = %if.end85
  %60 = load i16, i16* %i, align 2, !dbg !5245
  %conv91 = zext i16 %60 to i32, !dbg !5245
  %or92 = or i32 %conv91, 16384, !dbg !5245
  %conv93 = trunc i32 %or92 to i16, !dbg !5245
  store i16 %conv93, i16* %i, align 2, !dbg !5245
  br label %if.end94, !dbg !5246

if.end94:                                         ; preds = %if.then90, %if.end85
  %61 = load i32, i32* %sock, align 4, !dbg !5247
  %62 = load i16, i16* %base, align 2, !dbg !5248
  %conv95 = zext i16 %62 to i32, !dbg !5248
  %add96 = add i32 %conv95, 4, !dbg !5249
  %conv97 = trunc i32 %add96 to i16, !dbg !5248
  %63 = load i16, i16* %i, align 2, !dbg !5250
  call void @indirect_write16(i32 %61, i16 zeroext %conv97, i16 zeroext %63) #7, !dbg !5251
  %64 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %mem.addr, align 8, !dbg !5252
  %flags98 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %64, i32 0, i32 1, !dbg !5254
  %65 = load i8, i8* %flags98, align 1, !dbg !5254
  %conv99 = zext i8 %65 to i32, !dbg !5252
  %and100 = and i32 %conv99, 1, !dbg !5255
  %tobool101 = icmp ne i32 %and100, 0, !dbg !5255
  br i1 %tobool101, label %if.then102, label %if.end106, !dbg !5256

if.then102:                                       ; preds = %if.end94
  %66 = load i32, i32* %sock, align 4, !dbg !5257
  %67 = load i8, i8* %map, align 1, !dbg !5258
  %conv103 = zext i8 %67 to i32, !dbg !5258
  %shl104 = shl i32 1, %conv103, !dbg !5258
  %conv105 = trunc i32 %shl104 to i8, !dbg !5258
  call void @indirect_setbit(i32 %66, i16 zeroext 6, i8 zeroext %conv105) #7, !dbg !5259
  br label %if.end106, !dbg !5259

if.end106:                                        ; preds = %if.then102, %if.end94
  store i32 0, i32* %retval, align 4, !dbg !5260
  br label %return, !dbg !5260

return:                                           ; preds = %if.end106, %if.then11, %if.then
  %68 = load i32, i32* %retval, align 4, !dbg !5261
  ret i32 %68, !dbg !5261
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bridge_state(i32 %sock) #0 !dbg !5262 {
entry:
  %sock.addr = alloca i32, align 4
  store i32 %sock, i32* %sock.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sock.addr, metadata !5263, metadata !DIExpression()), !dbg !5264
  %0 = load i32, i32* %sock.addr, align 4, !dbg !5265
  call void @indirect_write(i32 %0, i16 zeroext 30, i8 zeroext 0) #7, !dbg !5266
  %1 = load i32, i32* %sock.addr, align 4, !dbg !5267
  call void @indirect_write(i32 %1, i16 zeroext 22, i8 zeroext 0) #7, !dbg !5268
  %2 = load i32, i32* %sock.addr, align 4, !dbg !5269
  call void @indirect_setbit(i32 %2, i16 zeroext 3, i8 zeroext 8) #7, !dbg !5270
  ret void, !dbg !5271
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @indirect_write(i32 %socket, i16 zeroext %reg, i8 zeroext %value) #0 !dbg !5272 {
entry:
  %lock.addr.i26 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i26, metadata !4588, metadata !DIExpression()), !dbg !5275
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4595, metadata !DIExpression()), !dbg !5277
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4597, metadata !DIExpression()), !dbg !5278
  %socket.addr = alloca i32, align 4
  %reg.addr = alloca i16, align 2
  %value.addr = alloca i8, align 1
  %port = alloca i16, align 2
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store i32 %socket, i32* %socket.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %socket.addr, metadata !5285, metadata !DIExpression()), !dbg !5286
  store i16 %reg, i16* %reg.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %reg.addr, metadata !5287, metadata !DIExpression()), !dbg !5288
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !5289, metadata !DIExpression()), !dbg !5290
  call void @llvm.dbg.declare(metadata i16* %port, metadata !5291, metadata !DIExpression()), !dbg !5292
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5293, metadata !DIExpression()), !dbg !5294
  br label %do.body, !dbg !5295

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5296

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5297, metadata !DIExpression()), !dbg !5299
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5300, metadata !DIExpression()), !dbg !5299
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5299
  %conv = zext i1 %cmp to i32, !dbg !5299
  store i32 1, i32* %tmp, align 4, !dbg !5299
  %0 = load i32, i32* %tmp, align 4, !dbg !5299
  br label %do.body2, !dbg !5301

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5302

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5303

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5305, metadata !DIExpression()), !dbg !5308
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5309, metadata !DIExpression()), !dbg !5308
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5308
  %conv8 = zext i1 %cmp7 to i32, !dbg !5308
  store i32 1, i32* %tmp9, align 4, !dbg !5308
  %1 = load i32, i32* %tmp9, align 4, !dbg !5308
  %call = call i64 @arch_local_irq_save() #7, !dbg !5310
  store i64 %call, i64* %flags, align 8, !dbg !5310
  br label %do.end, !dbg !5310

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5303

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5302

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5311, !srcloc !5312
  br label %do.body12, !dbg !5311

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @port_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5313
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !5314
  %rlock.i = bitcast %union.anon.3* %3 to %struct.raw_spinlock*, !dbg !5314
  br label %do.end14, !dbg !5315

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5311

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5302

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5301

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5296

do.end18:                                         ; preds = %do.end17
  %4 = load i16, i16* %reg.addr, align 2, !dbg !5316
  %conv19 = zext i16 %4 to i32, !dbg !5316
  %5 = load i32, i32* %socket.addr, align 4, !dbg !5317
  %mul = mul i32 %5, 64, !dbg !5318
  %add = add i32 %conv19, %mul, !dbg !5319
  %conv20 = trunc i32 %add to i16, !dbg !5316
  store i16 %conv20, i16* %reg.addr, align 2, !dbg !5320
  %6 = load i32, i32* %socket.addr, align 4, !dbg !5321
  %idxprom = sext i32 %6 to i64, !dbg !5322
  %arrayidx = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom, !dbg !5322
  %io_base = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx, i32 0, i32 2, !dbg !5323
  %7 = load i32, i32* %io_base, align 8, !dbg !5323
  %conv21 = trunc i32 %7 to i16, !dbg !5322
  store i16 %conv21, i16* %port, align 2, !dbg !5324
  %8 = load i16, i16* %reg.addr, align 2, !dbg !5325
  %conv22 = trunc i16 %8 to i8, !dbg !5325
  %9 = load i16, i16* %port, align 2, !dbg !5326
  %conv23 = zext i16 %9 to i32, !dbg !5326
  call void @outb(i8 zeroext %conv22, i32 %conv23) #7, !dbg !5327
  %10 = load i8, i8* %value.addr, align 1, !dbg !5328
  %11 = load i16, i16* %port, align 2, !dbg !5329
  %conv24 = zext i16 %11 to i32, !dbg !5329
  %add25 = add i32 %conv24, 1, !dbg !5330
  call void @outb(i8 zeroext %10, i32 %add25) #7, !dbg !5331
  %12 = load i64, i64* %flags, align 8, !dbg !5332
  store %struct.spinlock* @port_lock, %struct.spinlock** %lock.addr.i26, align 8
  store i64 %12, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !217, metadata !4655, metadata !DIExpression()) #5, !dbg !5333
  call void @llvm.dbg.declare(metadata !217, metadata !4659, metadata !DIExpression()) #5, !dbg !5333
  store i32 1, i32* %tmp.i, align 4, !dbg !5333
  %13 = load i32, i32* %tmp.i, align 4, !dbg !5333
  call void @llvm.dbg.declare(metadata !217, metadata !4660, metadata !DIExpression()) #5, !dbg !5334
  call void @llvm.dbg.declare(metadata !217, metadata !4666, metadata !DIExpression()) #5, !dbg !5334
  store i32 1, i32* %tmp8.i, align 4, !dbg !5334
  %14 = load i32, i32* %tmp8.i, align 4, !dbg !5334
  %15 = load i64, i64* %flags.addr.i, align 8, !dbg !5335
  call void @arch_local_irq_restore(i64 %15) #9, !dbg !5335
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5336, !srcloc !4670
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i26, align 8, !dbg !5337
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !5337
  %rlock.i27 = bitcast %union.anon.3* %17 to %struct.raw_spinlock*, !dbg !5337
  ret void, !dbg !5338
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @indirect_setbit(i32 %socket, i16 zeroext %reg, i8 zeroext %mask) #0 !dbg !5339 {
entry:
  %lock.addr.i34 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i34, metadata !4588, metadata !DIExpression()), !dbg !5340
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4595, metadata !DIExpression()), !dbg !5342
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4597, metadata !DIExpression()), !dbg !5343
  %socket.addr = alloca i32, align 4
  %reg.addr = alloca i16, align 2
  %mask.addr = alloca i8, align 1
  %port = alloca i16, align 2
  %val = alloca i8, align 1
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store i32 %socket, i32* %socket.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %socket.addr, metadata !5350, metadata !DIExpression()), !dbg !5351
  store i16 %reg, i16* %reg.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %reg.addr, metadata !5352, metadata !DIExpression()), !dbg !5353
  store i8 %mask, i8* %mask.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %mask.addr, metadata !5354, metadata !DIExpression()), !dbg !5355
  call void @llvm.dbg.declare(metadata i16* %port, metadata !5356, metadata !DIExpression()), !dbg !5357
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5358, metadata !DIExpression()), !dbg !5359
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5360, metadata !DIExpression()), !dbg !5361
  br label %do.body, !dbg !5362

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5363

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5364, metadata !DIExpression()), !dbg !5366
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5367, metadata !DIExpression()), !dbg !5366
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5366
  %conv = zext i1 %cmp to i32, !dbg !5366
  store i32 1, i32* %tmp, align 4, !dbg !5366
  %0 = load i32, i32* %tmp, align 4, !dbg !5366
  br label %do.body2, !dbg !5368

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5369

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5370

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5372, metadata !DIExpression()), !dbg !5375
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5376, metadata !DIExpression()), !dbg !5375
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5375
  %conv8 = zext i1 %cmp7 to i32, !dbg !5375
  store i32 1, i32* %tmp9, align 4, !dbg !5375
  %1 = load i32, i32* %tmp9, align 4, !dbg !5375
  %call = call i64 @arch_local_irq_save() #7, !dbg !5377
  store i64 %call, i64* %flags, align 8, !dbg !5377
  br label %do.end, !dbg !5377

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5370

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5369

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5378, !srcloc !5379
  br label %do.body12, !dbg !5378

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @port_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5380
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !5381
  %rlock.i = bitcast %union.anon.3* %3 to %struct.raw_spinlock*, !dbg !5381
  br label %do.end14, !dbg !5382

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5378

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5369

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5368

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5363

do.end18:                                         ; preds = %do.end17
  %4 = load i16, i16* %reg.addr, align 2, !dbg !5383
  %conv19 = zext i16 %4 to i32, !dbg !5383
  %5 = load i32, i32* %socket.addr, align 4, !dbg !5384
  %mul = mul i32 %5, 64, !dbg !5385
  %add = add i32 %conv19, %mul, !dbg !5386
  %conv20 = trunc i32 %add to i16, !dbg !5383
  store i16 %conv20, i16* %reg.addr, align 2, !dbg !5387
  %6 = load i32, i32* %socket.addr, align 4, !dbg !5388
  %idxprom = sext i32 %6 to i64, !dbg !5389
  %arrayidx = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom, !dbg !5389
  %io_base = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx, i32 0, i32 2, !dbg !5390
  %7 = load i32, i32* %io_base, align 8, !dbg !5390
  %conv21 = trunc i32 %7 to i16, !dbg !5389
  store i16 %conv21, i16* %port, align 2, !dbg !5391
  %8 = load i16, i16* %reg.addr, align 2, !dbg !5392
  %conv22 = trunc i16 %8 to i8, !dbg !5392
  %9 = load i16, i16* %port, align 2, !dbg !5393
  %conv23 = zext i16 %9 to i32, !dbg !5393
  call void @outb(i8 zeroext %conv22, i32 %conv23) #7, !dbg !5394
  %10 = load i16, i16* %port, align 2, !dbg !5395
  %conv24 = zext i16 %10 to i32, !dbg !5395
  %add25 = add i32 %conv24, 1, !dbg !5396
  %call26 = call zeroext i8 @inb(i32 %add25) #7, !dbg !5397
  store i8 %call26, i8* %val, align 1, !dbg !5398
  %11 = load i8, i8* %mask.addr, align 1, !dbg !5399
  %conv27 = zext i8 %11 to i32, !dbg !5399
  %12 = load i8, i8* %val, align 1, !dbg !5400
  %conv28 = zext i8 %12 to i32, !dbg !5400
  %or = or i32 %conv28, %conv27, !dbg !5400
  %conv29 = trunc i32 %or to i8, !dbg !5400
  store i8 %conv29, i8* %val, align 1, !dbg !5400
  %13 = load i16, i16* %reg.addr, align 2, !dbg !5401
  %conv30 = trunc i16 %13 to i8, !dbg !5401
  %14 = load i16, i16* %port, align 2, !dbg !5402
  %conv31 = zext i16 %14 to i32, !dbg !5402
  call void @outb(i8 zeroext %conv30, i32 %conv31) #7, !dbg !5403
  %15 = load i8, i8* %val, align 1, !dbg !5404
  %16 = load i16, i16* %port, align 2, !dbg !5405
  %conv32 = zext i16 %16 to i32, !dbg !5405
  %add33 = add i32 %conv32, 1, !dbg !5406
  call void @outb(i8 zeroext %15, i32 %add33) #7, !dbg !5407
  %17 = load i64, i64* %flags, align 8, !dbg !5408
  store %struct.spinlock* @port_lock, %struct.spinlock** %lock.addr.i34, align 8
  store i64 %17, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !217, metadata !4655, metadata !DIExpression()) #5, !dbg !5409
  call void @llvm.dbg.declare(metadata !217, metadata !4659, metadata !DIExpression()) #5, !dbg !5409
  store i32 1, i32* %tmp.i, align 4, !dbg !5409
  %18 = load i32, i32* %tmp.i, align 4, !dbg !5409
  call void @llvm.dbg.declare(metadata !217, metadata !4660, metadata !DIExpression()) #5, !dbg !5410
  call void @llvm.dbg.declare(metadata !217, metadata !4666, metadata !DIExpression()) #5, !dbg !5410
  store i32 1, i32* %tmp8.i, align 4, !dbg !5410
  %19 = load i32, i32* %tmp8.i, align 4, !dbg !5410
  %20 = load i64, i64* %flags.addr.i, align 8, !dbg !5411
  call void @arch_local_irq_restore(i64 %20) #9, !dbg !5411
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5412, !srcloc !4670
  %21 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i34, align 8, !dbg !5413
  %22 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %21, i32 0, i32 0, !dbg !5413
  %rlock.i35 = bitcast %union.anon.3* %22 to %struct.raw_spinlock*, !dbg !5413
  ret void, !dbg !5414
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @indirect_resetbit(i32 %socket, i16 zeroext %reg, i8 zeroext %mask) #0 !dbg !5415 {
entry:
  %lock.addr.i34 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i34, metadata !4588, metadata !DIExpression()), !dbg !5416
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4595, metadata !DIExpression()), !dbg !5418
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4597, metadata !DIExpression()), !dbg !5419
  %socket.addr = alloca i32, align 4
  %reg.addr = alloca i16, align 2
  %mask.addr = alloca i8, align 1
  %port = alloca i16, align 2
  %val = alloca i8, align 1
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store i32 %socket, i32* %socket.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %socket.addr, metadata !5426, metadata !DIExpression()), !dbg !5427
  store i16 %reg, i16* %reg.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %reg.addr, metadata !5428, metadata !DIExpression()), !dbg !5429
  store i8 %mask, i8* %mask.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %mask.addr, metadata !5430, metadata !DIExpression()), !dbg !5431
  call void @llvm.dbg.declare(metadata i16* %port, metadata !5432, metadata !DIExpression()), !dbg !5433
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5434, metadata !DIExpression()), !dbg !5435
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5436, metadata !DIExpression()), !dbg !5437
  br label %do.body, !dbg !5438

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5439

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5440, metadata !DIExpression()), !dbg !5442
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5443, metadata !DIExpression()), !dbg !5442
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5442
  %conv = zext i1 %cmp to i32, !dbg !5442
  store i32 1, i32* %tmp, align 4, !dbg !5442
  %0 = load i32, i32* %tmp, align 4, !dbg !5442
  br label %do.body2, !dbg !5444

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5445

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5446

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5448, metadata !DIExpression()), !dbg !5451
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5452, metadata !DIExpression()), !dbg !5451
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5451
  %conv8 = zext i1 %cmp7 to i32, !dbg !5451
  store i32 1, i32* %tmp9, align 4, !dbg !5451
  %1 = load i32, i32* %tmp9, align 4, !dbg !5451
  %call = call i64 @arch_local_irq_save() #7, !dbg !5453
  store i64 %call, i64* %flags, align 8, !dbg !5453
  br label %do.end, !dbg !5453

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5446

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5445

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5454, !srcloc !5455
  br label %do.body12, !dbg !5454

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @port_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5456
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !5457
  %rlock.i = bitcast %union.anon.3* %3 to %struct.raw_spinlock*, !dbg !5457
  br label %do.end14, !dbg !5458

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5454

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5445

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5444

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5439

do.end18:                                         ; preds = %do.end17
  %4 = load i16, i16* %reg.addr, align 2, !dbg !5459
  %conv19 = zext i16 %4 to i32, !dbg !5459
  %5 = load i32, i32* %socket.addr, align 4, !dbg !5460
  %mul = mul i32 %5, 64, !dbg !5461
  %add = add i32 %conv19, %mul, !dbg !5462
  %conv20 = trunc i32 %add to i16, !dbg !5459
  store i16 %conv20, i16* %reg.addr, align 2, !dbg !5463
  %6 = load i32, i32* %socket.addr, align 4, !dbg !5464
  %idxprom = sext i32 %6 to i64, !dbg !5465
  %arrayidx = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom, !dbg !5465
  %io_base = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx, i32 0, i32 2, !dbg !5466
  %7 = load i32, i32* %io_base, align 8, !dbg !5466
  %conv21 = trunc i32 %7 to i16, !dbg !5465
  store i16 %conv21, i16* %port, align 2, !dbg !5467
  %8 = load i16, i16* %reg.addr, align 2, !dbg !5468
  %conv22 = trunc i16 %8 to i8, !dbg !5468
  %9 = load i16, i16* %port, align 2, !dbg !5469
  %conv23 = zext i16 %9 to i32, !dbg !5469
  call void @outb(i8 zeroext %conv22, i32 %conv23) #7, !dbg !5470
  %10 = load i16, i16* %port, align 2, !dbg !5471
  %conv24 = zext i16 %10 to i32, !dbg !5471
  %add25 = add i32 %conv24, 1, !dbg !5472
  %call26 = call zeroext i8 @inb(i32 %add25) #7, !dbg !5473
  store i8 %call26, i8* %val, align 1, !dbg !5474
  %11 = load i8, i8* %mask.addr, align 1, !dbg !5475
  %conv27 = zext i8 %11 to i32, !dbg !5475
  %neg = xor i32 %conv27, -1, !dbg !5476
  %12 = load i8, i8* %val, align 1, !dbg !5477
  %conv28 = zext i8 %12 to i32, !dbg !5477
  %and = and i32 %conv28, %neg, !dbg !5477
  %conv29 = trunc i32 %and to i8, !dbg !5477
  store i8 %conv29, i8* %val, align 1, !dbg !5477
  %13 = load i16, i16* %reg.addr, align 2, !dbg !5478
  %conv30 = trunc i16 %13 to i8, !dbg !5478
  %14 = load i16, i16* %port, align 2, !dbg !5479
  %conv31 = zext i16 %14 to i32, !dbg !5479
  call void @outb(i8 zeroext %conv30, i32 %conv31) #7, !dbg !5480
  %15 = load i8, i8* %val, align 1, !dbg !5481
  %16 = load i16, i16* %port, align 2, !dbg !5482
  %conv32 = zext i16 %16 to i32, !dbg !5482
  %add33 = add i32 %conv32, 1, !dbg !5483
  call void @outb(i8 zeroext %15, i32 %add33) #7, !dbg !5484
  %17 = load i64, i64* %flags, align 8, !dbg !5485
  store %struct.spinlock* @port_lock, %struct.spinlock** %lock.addr.i34, align 8
  store i64 %17, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !217, metadata !4655, metadata !DIExpression()) #5, !dbg !5486
  call void @llvm.dbg.declare(metadata !217, metadata !4659, metadata !DIExpression()) #5, !dbg !5486
  store i32 1, i32* %tmp.i, align 4, !dbg !5486
  %18 = load i32, i32* %tmp.i, align 4, !dbg !5486
  call void @llvm.dbg.declare(metadata !217, metadata !4660, metadata !DIExpression()) #5, !dbg !5487
  call void @llvm.dbg.declare(metadata !217, metadata !4666, metadata !DIExpression()) #5, !dbg !5487
  store i32 1, i32* %tmp8.i, align 4, !dbg !5487
  %19 = load i32, i32* %tmp8.i, align 4, !dbg !5487
  %20 = load i64, i64* %flags.addr.i, align 8, !dbg !5488
  call void @arch_local_irq_restore(i64 %20) #9, !dbg !5488
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5489, !srcloc !4670
  %21 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i34, align 8, !dbg !5490
  %22 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %21, i32 0, i32 0, !dbg !5490
  %rlock.i35 = bitcast %union.anon.3* %22 to %struct.raw_spinlock*, !dbg !5490
  ret void, !dbg !5491
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @indirect_write16(i32 %socket, i16 zeroext %reg, i16 zeroext %value) #0 !dbg !5492 {
entry:
  %lock.addr.i34 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i34, metadata !4588, metadata !DIExpression()), !dbg !5495
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4595, metadata !DIExpression()), !dbg !5497
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4597, metadata !DIExpression()), !dbg !5498
  %socket.addr = alloca i32, align 4
  %reg.addr = alloca i16, align 2
  %value.addr = alloca i16, align 2
  %port = alloca i16, align 2
  %val = alloca i8, align 1
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store i32 %socket, i32* %socket.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %socket.addr, metadata !5505, metadata !DIExpression()), !dbg !5506
  store i16 %reg, i16* %reg.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %reg.addr, metadata !5507, metadata !DIExpression()), !dbg !5508
  store i16 %value, i16* %value.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %value.addr, metadata !5509, metadata !DIExpression()), !dbg !5510
  call void @llvm.dbg.declare(metadata i16* %port, metadata !5511, metadata !DIExpression()), !dbg !5512
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5513, metadata !DIExpression()), !dbg !5514
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5515, metadata !DIExpression()), !dbg !5516
  br label %do.body, !dbg !5517

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5518

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5519, metadata !DIExpression()), !dbg !5521
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5522, metadata !DIExpression()), !dbg !5521
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5521
  %conv = zext i1 %cmp to i32, !dbg !5521
  store i32 1, i32* %tmp, align 4, !dbg !5521
  %0 = load i32, i32* %tmp, align 4, !dbg !5521
  br label %do.body2, !dbg !5523

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5524

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5525

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5527, metadata !DIExpression()), !dbg !5530
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5531, metadata !DIExpression()), !dbg !5530
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5530
  %conv8 = zext i1 %cmp7 to i32, !dbg !5530
  store i32 1, i32* %tmp9, align 4, !dbg !5530
  %1 = load i32, i32* %tmp9, align 4, !dbg !5530
  %call = call i64 @arch_local_irq_save() #7, !dbg !5532
  store i64 %call, i64* %flags, align 8, !dbg !5532
  br label %do.end, !dbg !5532

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5525

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5524

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5533, !srcloc !5534
  br label %do.body12, !dbg !5533

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @port_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5535
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !5536
  %rlock.i = bitcast %union.anon.3* %3 to %struct.raw_spinlock*, !dbg !5536
  br label %do.end14, !dbg !5537

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5533

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5524

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5523

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5518

do.end18:                                         ; preds = %do.end17
  %4 = load i16, i16* %reg.addr, align 2, !dbg !5538
  %conv19 = zext i16 %4 to i32, !dbg !5538
  %5 = load i32, i32* %socket.addr, align 4, !dbg !5539
  %mul = mul i32 %5, 64, !dbg !5540
  %add = add i32 %conv19, %mul, !dbg !5541
  %conv20 = trunc i32 %add to i16, !dbg !5538
  store i16 %conv20, i16* %reg.addr, align 2, !dbg !5542
  %6 = load i32, i32* %socket.addr, align 4, !dbg !5543
  %idxprom = sext i32 %6 to i64, !dbg !5544
  %arrayidx = getelementptr [4 x %struct.socket_info], [4 x %struct.socket_info]* @sockets, i64 0, i64 %idxprom, !dbg !5544
  %io_base = getelementptr inbounds %struct.socket_info, %struct.socket_info* %arrayidx, i32 0, i32 2, !dbg !5545
  %7 = load i32, i32* %io_base, align 8, !dbg !5545
  %conv21 = trunc i32 %7 to i16, !dbg !5544
  store i16 %conv21, i16* %port, align 2, !dbg !5546
  %8 = load i16, i16* %reg.addr, align 2, !dbg !5547
  %conv22 = trunc i16 %8 to i8, !dbg !5547
  %9 = load i16, i16* %port, align 2, !dbg !5548
  %conv23 = zext i16 %9 to i32, !dbg !5548
  call void @outb(i8 zeroext %conv22, i32 %conv23) #7, !dbg !5549
  %10 = load i16, i16* %value.addr, align 2, !dbg !5550
  %conv24 = zext i16 %10 to i32, !dbg !5550
  %and = and i32 %conv24, 255, !dbg !5551
  %conv25 = trunc i32 %and to i8, !dbg !5550
  store i8 %conv25, i8* %val, align 1, !dbg !5552
  %11 = load i8, i8* %val, align 1, !dbg !5553
  %12 = load i16, i16* %port, align 2, !dbg !5554
  %conv26 = zext i16 %12 to i32, !dbg !5554
  %add27 = add i32 %conv26, 1, !dbg !5555
  call void @outb(i8 zeroext %11, i32 %add27) #7, !dbg !5556
  %13 = load i16, i16* %reg.addr, align 2, !dbg !5557
  %inc = add i16 %13, 1, !dbg !5557
  store i16 %inc, i16* %reg.addr, align 2, !dbg !5557
  %14 = load i16, i16* %reg.addr, align 2, !dbg !5558
  %conv28 = trunc i16 %14 to i8, !dbg !5558
  %15 = load i16, i16* %port, align 2, !dbg !5559
  %conv29 = zext i16 %15 to i32, !dbg !5559
  call void @outb(i8 zeroext %conv28, i32 %conv29) #7, !dbg !5560
  %16 = load i16, i16* %value.addr, align 2, !dbg !5561
  %conv30 = zext i16 %16 to i32, !dbg !5561
  %shr = ashr i32 %conv30, 8, !dbg !5562
  %conv31 = trunc i32 %shr to i8, !dbg !5561
  store i8 %conv31, i8* %val, align 1, !dbg !5563
  %17 = load i8, i8* %val, align 1, !dbg !5564
  %18 = load i16, i16* %port, align 2, !dbg !5565
  %conv32 = zext i16 %18 to i32, !dbg !5565
  %add33 = add i32 %conv32, 1, !dbg !5566
  call void @outb(i8 zeroext %17, i32 %add33) #7, !dbg !5567
  %19 = load i64, i64* %flags, align 8, !dbg !5568
  store %struct.spinlock* @port_lock, %struct.spinlock** %lock.addr.i34, align 8
  store i64 %19, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !217, metadata !4655, metadata !DIExpression()) #5, !dbg !5569
  call void @llvm.dbg.declare(metadata !217, metadata !4659, metadata !DIExpression()) #5, !dbg !5569
  store i32 1, i32* %tmp.i, align 4, !dbg !5569
  %20 = load i32, i32* %tmp.i, align 4, !dbg !5569
  call void @llvm.dbg.declare(metadata !217, metadata !4660, metadata !DIExpression()) #5, !dbg !5570
  call void @llvm.dbg.declare(metadata !217, metadata !4666, metadata !DIExpression()) #5, !dbg !5570
  store i32 1, i32* %tmp8.i, align 4, !dbg !5570
  %21 = load i32, i32* %tmp8.i, align 4, !dbg !5570
  %22 = load i64, i64* %flags.addr.i, align 8, !dbg !5571
  call void @arch_local_irq_restore(i64 %22) #9, !dbg !5571
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5572, !srcloc !4670
  %23 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i34, align 8, !dbg !5573
  %24 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %23, i32 0, i32 0, !dbg !5573
  %rlock.i35 = bitcast %union.anon.3* %24 to %struct.raw_spinlock*, !dbg !5573
  ret void, !dbg !5574
}

; Function Attrs: noredzone
declare dso_local void @pcibios_resource_to_bus(%struct.pci_bus*, %struct.pci_bus_region*, %struct.resource*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @to_cycles(i32 %ns) #0 !dbg !5575 {
entry:
  %retval = alloca i32, align 4
  %ns.addr = alloca i32, align 4
  store i32 %ns, i32* %ns.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ns.addr, metadata !5576, metadata !DIExpression()), !dbg !5577
  %0 = load i32, i32* @cycle_time, align 4, !dbg !5578
  %cmp = icmp ne i32 %0, 0, !dbg !5580
  br i1 %cmp, label %if.then, label %if.else, !dbg !5581

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ns.addr, align 4, !dbg !5582
  %2 = load i32, i32* @cycle_time, align 4, !dbg !5583
  %div = sdiv i32 %1, %2, !dbg !5584
  store i32 %div, i32* %retval, align 4, !dbg !5585
  br label %return, !dbg !5585

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5586
  br label %return, !dbg !5586

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !5587
  ret i32 %3, !dbg !5587
}

; Function Attrs: noredzone
declare dso_local void @pci_unregister_driver(%struct.pci_driver*) #1

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }
attributes #9 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4164}
!llvm.module.flags = !{!4165, !4166, !4167, !4168}
!llvm.ident = !{!4169}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file234", scope: !2, file: !3, line: 26, type: !4161, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !99, globals: !4132, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pcmcia/i82092.c", directory: "/home/lizy2001/genbc/linux")
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !94, line: 11, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!99 = !{!100, !103, !104, !105, !149}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !102, line: 76, flags: DIFlagFwdDecl)
!102 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!103 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "socket_info", file: !3, line: 54, size: 10048, elements: !107)
!107 = !{!108, !110, !111, !112, !4131}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !106, file: !3, line: 55, baseType: !109, size: 32)
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "card_state", scope: !106, file: !3, line: 56, baseType: !109, size: 32, offset: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "io_base", scope: !106, file: !3, line: 62, baseType: !7, size: 32, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !106, file: !3, line: 64, baseType: !113, size: 9856, offset: 128)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcmcia_socket", file: !114, line: 130, size: 9856, elements: !115)
!114 = !DIFile(filename: "./include/pcmcia/ss.h", directory: "/home/lizy2001/genbc/linux")
!115 = !{!116, !117, !130, !131, !132, !135, !136, !168, !169, !179, !183, !189, !194, !198, !199, !219, !220, !221, !222, !223, !224, !225, !4059, !4060, !4097, !4100, !4101, !4105, !4109, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !113, file: !114, line: 131, baseType: !100, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !113, file: !114, line: 132, baseType: !118, size: 96, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "socket_state_t", file: !114, line: 55, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "socket_state_t", file: !114, line: 50, size: 96, elements: !120)
!120 = !{!121, !124, !125, !128, !129}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !114, line: 51, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !123, line: 81, baseType: !7)
!123 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!124 = !DIDerivedType(tag: DW_TAG_member, name: "csc_mask", scope: !119, file: !114, line: 52, baseType: !122, size: 32, offset: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "Vcc", scope: !119, file: !114, line: 53, baseType: !126, size: 8, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !123, line: 79, baseType: !127)
!127 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "Vpp", scope: !119, file: !114, line: 53, baseType: !126, size: 8, offset: 72)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "io_irq", scope: !119, file: !114, line: 54, baseType: !126, size: 8, offset: 80)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !113, file: !114, line: 133, baseType: !122, size: 32, offset: 160)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_state", scope: !113, file: !114, line: 134, baseType: !122, size: 32, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "functions", scope: !113, file: !114, line: 135, baseType: !133, size: 16, offset: 224)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !123, line: 80, baseType: !134)
!134 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !113, file: !114, line: 136, baseType: !133, size: 16, offset: 240)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "cis_mem", scope: !113, file: !114, line: 137, baseType: !137, size: 256, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "pccard_mem_map", file: !114, line: 98, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pccard_mem_map", file: !114, line: 91, size: 256, elements: !139)
!139 = !{!140, !141, !142, !143, !150, !151}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !138, file: !114, line: 92, baseType: !126, size: 8)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !138, file: !114, line: 93, baseType: !126, size: 8, offset: 8)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !138, file: !114, line: 94, baseType: !133, size: 16, offset: 16)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "static_start", scope: !138, file: !114, line: 95, baseType: !144, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !123, line: 153, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !146, line: 23, baseType: !147)
!146 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !148, line: 31, baseType: !149)
!148 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!149 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "card_start", scope: !138, file: !114, line: 96, baseType: !122, size: 32, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !138, file: !114, line: 97, baseType: !152, size: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !154, line: 20, size: 512, elements: !155)
!154 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!155 = !{!156, !158, !159, !163, !164, !165, !166, !167}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !153, file: !154, line: 21, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !123, line: 158, baseType: !144)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !153, file: !154, line: 22, baseType: !157, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !153, file: !154, line: 23, baseType: !160, size: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!162 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !154, line: 24, baseType: !103, size: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !153, file: !154, line: 25, baseType: !103, size: 64, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !153, file: !154, line: 26, baseType: !152, size: 64, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !153, file: !154, line: 26, baseType: !152, size: 64, offset: 384)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !153, file: !154, line: 26, baseType: !152, size: 64, offset: 448)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "cis_virt", scope: !113, file: !114, line: 138, baseType: !104, size: 64, offset: 512)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !113, file: !114, line: 139, baseType: !170, size: 256, offset: 576)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 256, elements: !177)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_window_t", file: !114, line: 103, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_window_t", file: !114, line: 100, size: 128, elements: !173)
!173 = !{!174, !175, !176}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "InUse", scope: !172, file: !114, line: 101, baseType: !122, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "Config", scope: !172, file: !114, line: 101, baseType: !122, size: 32, offset: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !172, file: !114, line: 102, baseType: !152, size: 64, offset: 64)
!177 = !{!178}
!178 = !DISubrange(count: 2)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "win", scope: !113, file: !114, line: 140, baseType: !180, size: 1024, offset: 832)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 1024, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 4)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "cis_cache", scope: !113, file: !114, line: 141, baseType: !184, size: 128, offset: 1856)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !123, line: 178, size: 128, elements: !185)
!185 = !{!186, !188}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !184, file: !123, line: 179, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !184, file: !123, line: 179, baseType: !187, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "fake_cis_len", scope: !113, file: !114, line: 142, baseType: !190, size: 64, offset: 1984)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !123, line: 55, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !192, line: 72, baseType: !193)
!192 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !192, line: 16, baseType: !103)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "fake_cis", scope: !113, file: !114, line: 143, baseType: !195, size: 64, offset: 2048)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !146, line: 17, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !148, line: 21, baseType: !127)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "socket_list", scope: !113, file: !114, line: 145, baseType: !184, size: 128, offset: 2112)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "socket_released", scope: !113, file: !114, line: 146, baseType: !200, size: 192, offset: 2240)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !201, line: 26, size: 192, elements: !202)
!201 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!202 = !{!203, !204}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !200, file: !201, line: 27, baseType: !7, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !200, file: !201, line: 28, baseType: !205, size: 128, offset: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !206, line: 43, size: 128, elements: !207)
!206 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!207 = !{!208, !218}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !205, file: !206, line: 44, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !210, line: 29, baseType: !211)
!210 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !210, line: 20, elements: !212)
!212 = !{!213}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !211, file: !210, line: 21, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !215, line: 25, baseType: !216)
!215 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !215, line: 25, elements: !217)
!217 = !{}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !205, file: !206, line: 45, baseType: !184, size: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !113, file: !114, line: 149, baseType: !7, size: 32, offset: 2432)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !113, file: !114, line: 153, baseType: !122, size: 32, offset: 2464)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !113, file: !114, line: 154, baseType: !122, size: 32, offset: 2496)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "map_size", scope: !113, file: !114, line: 155, baseType: !122, size: 32, offset: 2528)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "io_offset", scope: !113, file: !114, line: 156, baseType: !122, size: 32, offset: 2560)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "pci_irq", scope: !113, file: !114, line: 157, baseType: !122, size: 32, offset: 2592)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "cb_dev", scope: !113, file: !114, line: 158, baseType: !226, size: 64, offset: 2624)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !228, line: 309, size: 19264, elements: !229)
!228 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!229 = !{!230, !231, !3860, !3861, !3862, !3863, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3891, !3956, !3957, !3958, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4032, !4033, !4035, !4036, !4037, !4038, !4040, !4041, !4042, !4045, !4052, !4053, !4054, !4055, !4056, !4057, !4058}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !227, file: !228, line: 310, baseType: !184, size: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !227, file: !228, line: 311, baseType: !232, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !228, line: 605, size: 8064, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240, !241, !243, !244, !245, !272, !275, !276, !280, !281, !282, !283, !284, !288, !289, !291, !3856, !3857, !3858, !3859}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !233, file: !228, line: 606, baseType: !184, size: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !233, file: !228, line: 607, baseType: !232, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !233, file: !228, line: 608, baseType: !184, size: 128, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !233, file: !228, line: 609, baseType: !184, size: 128, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !233, file: !228, line: 610, baseType: !226, size: 64, offset: 448)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !233, file: !228, line: 611, baseType: !184, size: 128, offset: 512)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !233, file: !228, line: 613, baseType: !242, size: 256, offset: 640)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 256, elements: !181)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !233, file: !228, line: 614, baseType: !184, size: 128, offset: 896)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !233, file: !228, line: 615, baseType: !153, size: 512, offset: 1024)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !233, file: !228, line: 617, baseType: !246, size: 64, offset: 1536)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !228, line: 731, size: 320, elements: !248)
!248 = !{!249, !253, !257, !261, !268}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !247, file: !228, line: 732, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!109, !232}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !247, file: !228, line: 733, baseType: !254, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !232}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !247, file: !228, line: 734, baseType: !258, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!104, !232, !7, !109}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !247, file: !228, line: 735, baseType: !262, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!109, !232, !7, !109, !109, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !146, line: 21, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !148, line: 27, baseType: !7)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !247, file: !228, line: 736, baseType: !269, size: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!109, !232, !7, !109, !109, !266}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !233, file: !228, line: 618, baseType: !273, size: 64, offset: 1600)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !228, line: 537, flags: DIFlagFwdDecl)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !233, file: !228, line: 619, baseType: !104, size: 64, offset: 1664)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !233, file: !228, line: 620, baseType: !277, size: 64, offset: 1728)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !279, line: 123, flags: DIFlagFwdDecl)
!279 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!280 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !233, file: !228, line: 622, baseType: !127, size: 8, offset: 1792)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !233, file: !228, line: 623, baseType: !127, size: 8, offset: 1800)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !233, file: !228, line: 624, baseType: !127, size: 8, offset: 1808)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !233, file: !228, line: 625, baseType: !127, size: 8, offset: 1816)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !233, file: !228, line: 630, baseType: !285, size: 384, offset: 1824)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 384, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 48)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !233, file: !228, line: 632, baseType: !134, size: 16, offset: 2208)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !233, file: !228, line: 633, baseType: !290, size: 16, offset: 2224)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !228, line: 237, baseType: !134)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !233, file: !228, line: 634, baseType: !292, size: 64, offset: 2240)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !294)
!294 = !{!295, !3410, !3411, !3414, !3415, !3466, !3557, !3558, !3559, !3560, !3561, !3570, !3675, !3688, !3691, !3692, !3696, !3698, !3699, !3700, !3704, !3710, !3711, !3714, !3718, !3808, !3809, !3810, !3811, !3812, !3844, !3845, !3846, !3849, !3852, !3853, !3854, !3855}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !293, file: !73, line: 462, baseType: !296, size: 512)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !297, line: 64, size: 512, elements: !298)
!297 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!298 = !{!299, !300, !301, !303, !355, !3261, !3400, !3405, !3406, !3407, !3408, !3409}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !296, file: !297, line: 65, baseType: !160, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !296, file: !297, line: 66, baseType: !184, size: 128, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !296, file: !297, line: 67, baseType: !302, size: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !296, file: !297, line: 68, baseType: !304, size: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !297, line: 192, size: 704, elements: !306)
!306 = !{!307, !308, !316, !317}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !305, file: !297, line: 193, baseType: !184, size: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !305, file: !297, line: 194, baseType: !309, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !210, line: 83, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !210, line: 71, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !210, line: 72, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !310, file: !210, line: 72, elements: !314)
!314 = !{!315}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !313, file: !210, line: 73, baseType: !211)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !305, file: !297, line: 195, baseType: !296, size: 512, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !305, file: !297, line: 196, baseType: !318, size: 64, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !297, line: 156, size: 192, elements: !321)
!321 = !{!322, !327, !332}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !320, file: !297, line: 157, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!109, !304, !302}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !320, file: !297, line: 158, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!160, !304, !302}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !320, file: !297, line: 159, baseType: !333, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!109, !304, !302, !337}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !297, line: 148, size: 20736, elements: !339)
!339 = !{!340, !345, !349, !350, !354}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !338, file: !297, line: 149, baseType: !341, size: 192)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 192, elements: !343)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!343 = !{!344}
!344 = !DISubrange(count: 3)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !338, file: !297, line: 150, baseType: !346, size: 4096, offset: 192)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 4096, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !338, file: !297, line: 151, baseType: !109, size: 32, offset: 4288)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !338, file: !297, line: 152, baseType: !351, size: 16384, offset: 4320)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 16384, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 2048)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !338, file: !297, line: 153, baseType: !109, size: 32, offset: 20704)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !296, file: !297, line: 69, baseType: !356, size: 64, offset: 320)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !297, line: 138, size: 448, elements: !358)
!358 = !{!359, !363, !387, !389, !3223, !3251, !3255}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !357, file: !297, line: 139, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !302}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !357, file: !297, line: 140, baseType: !364, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !367, line: 230, size: 128, elements: !368)
!367 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!368 = !{!369, !383}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !366, file: !367, line: 231, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!373, !302, !377, !342}
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !123, line: 60, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !192, line: 73, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !192, line: 15, baseType: !376)
!376 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !367, line: 30, size: 128, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !378, file: !367, line: 31, baseType: !160, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !378, file: !367, line: 32, baseType: !382, size: 16, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !123, line: 19, baseType: !134)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !366, file: !367, line: 232, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!373, !302, !377, !160, !190}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !357, file: !297, line: 141, baseType: !388, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !357, file: !297, line: 142, baseType: !390, size: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !367, line: 84, size: 320, elements: !394)
!394 = !{!395, !396, !400, !3220, !3221}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !393, file: !367, line: 85, baseType: !160, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !393, file: !367, line: 86, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!382, !302, !377, !109}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !393, file: !367, line: 88, baseType: !401, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!382, !302, !404, !109}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !367, line: 168, size: 448, elements: !406)
!406 = !{!407, !408, !409, !410, !3215, !3216}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !405, file: !367, line: 169, baseType: !378, size: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !405, file: !367, line: 170, baseType: !190, size: 64, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !405, file: !367, line: 171, baseType: !104, size: 64, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !405, file: !367, line: 172, baseType: !411, size: 64, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!373, !414, !302, !404, !342, !585, !190}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !416)
!416 = !{!417, !435, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3198, !3199, !3208, !3209, !3210, !3211, !3212, !3213, !3214}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !415, file: !44, line: 920, baseType: !418, size: 128)
!418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !415, file: !44, line: 917, size: 128, elements: !419)
!419 = !{!420, !426}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !418, file: !44, line: 918, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !422, line: 58, size: 64, elements: !423)
!422 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!423 = !{!424}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !421, file: !422, line: 59, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !418, file: !44, line: 919, baseType: !427, size: 128, align: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !123, line: 216, size: 128, align: 64, elements: !428)
!428 = !{!429, !431}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !427, file: !123, line: 217, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !427, file: !123, line: 218, baseType: !432, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !430}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !415, file: !44, line: 921, baseType: !436, size: 128, offset: 128)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !437, line: 8, size: 128, elements: !438)
!437 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!438 = !{!439, !443}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !436, file: !437, line: 9, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !442, line: 18, flags: DIFlagFwdDecl)
!442 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!443 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !436, file: !437, line: 10, baseType: !444, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !442, line: 89, size: 1536, elements: !446)
!446 = !{!447, !448, !458, !466, !467, !482, !3148, !3150, !3162, !3163, !3164, !3165, !3166, !3172, !3173, !3174}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !445, file: !442, line: 91, baseType: !7, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !445, file: !442, line: 92, baseType: !449, size: 32, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !450, line: 277, baseType: !451)
!450 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !450, line: 277, size: 32, elements: !452)
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !451, file: !450, line: 277, baseType: !454, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !450, line: 70, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !450, line: 65, size: 32, elements: !456)
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !455, file: !450, line: 66, baseType: !7, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !445, file: !442, line: 93, baseType: !459, size: 128, offset: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !460, line: 38, size: 128, elements: !461)
!460 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!461 = !{!462, !464}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !459, file: !460, line: 39, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !459, file: !460, line: 39, baseType: !465, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !445, file: !442, line: 94, baseType: !444, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !445, file: !442, line: 95, baseType: !468, size: 128, offset: 256)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !442, line: 47, size: 128, elements: !469)
!469 = !{!470, !479}
!470 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !442, line: 48, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !442, line: 48, size: 64, elements: !472)
!472 = !{!473, !478}
!473 = !DIDerivedType(tag: DW_TAG_member, scope: !471, file: !442, line: 49, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !471, file: !442, line: 49, size: 64, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !474, file: !442, line: 50, baseType: !266, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !474, file: !442, line: 50, baseType: !266, size: 32, offset: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !471, file: !442, line: 52, baseType: !145, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !468, file: !442, line: 54, baseType: !480, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !445, file: !442, line: 96, baseType: !483, size: 64, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !485)
!485 = !{!486, !487, !488, !496, !503, !504, !652, !2859, !2860, !2861, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !3124, !3132, !3133, !3134, !3144, !3145, !3146, !3147}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !484, file: !44, line: 611, baseType: !382, size: 16)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !484, file: !44, line: 612, baseType: !134, size: 16, offset: 16)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !484, file: !44, line: 613, baseType: !489, size: 32, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !490, line: 23, baseType: !491)
!490 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !490, line: 21, size: 32, elements: !492)
!492 = !{!493}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !491, file: !490, line: 22, baseType: !494, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !123, line: 32, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !192, line: 49, baseType: !7)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !484, file: !44, line: 614, baseType: !497, size: 32, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !490, line: 28, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !490, line: 26, size: 32, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !498, file: !490, line: 27, baseType: !501, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !123, line: 33, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !192, line: 50, baseType: !7)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !484, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !484, file: !44, line: 622, baseType: !505, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !508)
!508 = !{!509, !513, !526, !530, !536, !540, !546, !550, !554, !558, !562, !563, !569, !573, !599, !628, !632, !638, !643, !647, !648}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !507, file: !44, line: 1865, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!444, !483, !444, !7}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !507, file: !44, line: 1866, baseType: !514, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!160, !444, !483, !517}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !519, line: 10, size: 128, elements: !520)
!519 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!520 = !{!521, !525}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !518, file: !519, line: 11, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !104}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !518, file: !519, line: 12, baseType: !104, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !507, file: !44, line: 1867, baseType: !527, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!109, !483, !109}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !507, file: !44, line: 1868, baseType: !531, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!534, !483, !109}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !507, file: !44, line: 1870, baseType: !537, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!109, !444, !342, !109}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !507, file: !44, line: 1872, baseType: !541, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!109, !483, !444, !382, !544}
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !123, line: 30, baseType: !545)
!545 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !507, file: !44, line: 1873, baseType: !547, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!109, !444, !483, !444}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !507, file: !44, line: 1874, baseType: !551, size: 64, offset: 448)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!109, !483, !444}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !507, file: !44, line: 1875, baseType: !555, size: 64, offset: 512)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!109, !483, !444, !160}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !507, file: !44, line: 1876, baseType: !559, size: 64, offset: 576)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!109, !483, !444, !382}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !507, file: !44, line: 1877, baseType: !551, size: 64, offset: 640)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !507, file: !44, line: 1878, baseType: !564, size: 64, offset: 704)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!109, !483, !444, !382, !567}
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !123, line: 16, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !123, line: 13, baseType: !266)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !507, file: !44, line: 1879, baseType: !570, size: 64, offset: 768)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!109, !483, !444, !483, !444, !7}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !507, file: !44, line: 1881, baseType: !574, size: 64, offset: 832)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!109, !444, !577}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !579)
!579 = !{!580, !581, !582, !583, !584, !588, !596, !597, !598}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !578, file: !44, line: 220, baseType: !7, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !578, file: !44, line: 221, baseType: !382, size: 16, offset: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !578, file: !44, line: 222, baseType: !489, size: 32, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !578, file: !44, line: 223, baseType: !497, size: 32, offset: 96)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !578, file: !44, line: 224, baseType: !585, size: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !123, line: 46, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !192, line: 88, baseType: !587)
!587 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !578, file: !44, line: 225, baseType: !589, size: 128, offset: 192)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !590, line: 13, size: 128, elements: !591)
!590 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!591 = !{!592, !595}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !589, file: !590, line: 14, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !590, line: 8, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !148, line: 30, baseType: !587)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !589, file: !590, line: 15, baseType: !376, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !578, file: !44, line: 226, baseType: !589, size: 128, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !578, file: !44, line: 227, baseType: !589, size: 128, offset: 448)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !578, file: !44, line: 234, baseType: !414, size: 64, offset: 576)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !507, file: !44, line: 1882, baseType: !600, size: 64, offset: 896)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!109, !603, !605, !266, !7}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !607, line: 22, size: 1152, elements: !608)
!607 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!608 = !{!609, !610, !611, !612, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !606, file: !607, line: 23, baseType: !266, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !606, file: !607, line: 24, baseType: !382, size: 16, offset: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !606, file: !607, line: 25, baseType: !7, size: 32, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !606, file: !607, line: 26, baseType: !613, size: 32, offset: 96)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !123, line: 104, baseType: !266)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !606, file: !607, line: 27, baseType: !145, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !606, file: !607, line: 28, baseType: !145, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !606, file: !607, line: 37, baseType: !145, size: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !606, file: !607, line: 38, baseType: !567, size: 32, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !606, file: !607, line: 39, baseType: !567, size: 32, offset: 352)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !606, file: !607, line: 40, baseType: !489, size: 32, offset: 384)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !606, file: !607, line: 41, baseType: !497, size: 32, offset: 416)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !606, file: !607, line: 42, baseType: !585, size: 64, offset: 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !606, file: !607, line: 43, baseType: !589, size: 128, offset: 512)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !606, file: !607, line: 44, baseType: !589, size: 128, offset: 640)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !606, file: !607, line: 45, baseType: !589, size: 128, offset: 768)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !606, file: !607, line: 46, baseType: !589, size: 128, offset: 896)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !606, file: !607, line: 47, baseType: !145, size: 64, offset: 1024)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !606, file: !607, line: 48, baseType: !145, size: 64, offset: 1088)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !507, file: !44, line: 1883, baseType: !629, size: 64, offset: 960)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!373, !444, !342, !190}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !507, file: !44, line: 1884, baseType: !633, size: 64, offset: 1024)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!109, !483, !636, !145, !145}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !507, file: !44, line: 1886, baseType: !639, size: 64, offset: 1088)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!109, !483, !642, !109}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !507, file: !44, line: 1887, baseType: !644, size: 64, offset: 1152)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!109, !483, !444, !414, !7, !382}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !507, file: !44, line: 1890, baseType: !559, size: 64, offset: 1216)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !507, file: !44, line: 1891, baseType: !649, size: 64, offset: 1280)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!109, !483, !534, !109}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !484, file: !44, line: 623, baseType: !653, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !655)
!655 = !{!656, !657, !658, !659, !660, !661, !708, !2466, !2548, !2631, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2647, !2651, !2652, !2655, !2656, !2659, !2660, !2661, !2702, !2729, !2730, !2731, !2732, !2733, !2734, !2737, !2739, !2746, !2747, !2749, !2750, !2751, !2810, !2811, !2826, !2827, !2828, !2829, !2830, !2833, !2834, !2835, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !654, file: !44, line: 1417, baseType: !184, size: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !654, file: !44, line: 1418, baseType: !567, size: 32, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !654, file: !44, line: 1419, baseType: !127, size: 8, offset: 160)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !654, file: !44, line: 1420, baseType: !103, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !654, file: !44, line: 1421, baseType: !585, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !654, file: !44, line: 1422, baseType: !662, size: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !664)
!664 = !{!665, !666, !667, !674, !678, !682, !686, !687, !688, !698, !701, !702, !703, !705, !706, !707}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !663, file: !44, line: 2229, baseType: !160, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !663, file: !44, line: 2230, baseType: !109, size: 32, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !663, file: !44, line: 2238, baseType: !668, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!109, !671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !673, line: 28, flags: DIFlagFwdDecl)
!673 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!674 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !663, file: !44, line: 2239, baseType: !675, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !677)
!677 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !663, file: !44, line: 2240, baseType: !679, size: 64, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!444, !662, !109, !160, !104}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !663, file: !44, line: 2242, baseType: !683, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !653}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !663, file: !44, line: 2243, baseType: !100, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !663, file: !44, line: 2244, baseType: !662, size: 64, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !663, file: !44, line: 2245, baseType: !689, size: 64, offset: 512)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !123, line: 182, size: 64, elements: !690)
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !689, file: !123, line: 183, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !123, line: 186, size: 128, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !693, file: !123, line: 187, baseType: !692, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !693, file: !123, line: 187, baseType: !697, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !663, file: !44, line: 2247, baseType: !699, offset: 576)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !700, line: 187, elements: !217)
!700 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!701 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !663, file: !44, line: 2248, baseType: !699, offset: 576)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !663, file: !44, line: 2249, baseType: !699, offset: 576)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !663, file: !44, line: 2250, baseType: !704, offset: 576)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, elements: !343)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !663, file: !44, line: 2252, baseType: !699, offset: 576)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !663, file: !44, line: 2253, baseType: !699, offset: 576)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !663, file: !44, line: 2254, baseType: !699, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !654, file: !44, line: 1423, baseType: !709, size: 64, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !711)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !712)
!712 = !{!713, !717, !721, !722, !726, !732, !736, !737, !738, !742, !746, !747, !748, !749, !755, !760, !761, !768, !769, !770, !771, !2450, !2465}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !711, file: !44, line: 1936, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!483, !653}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !711, file: !44, line: 1937, baseType: !718, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !483}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !711, file: !44, line: 1938, baseType: !718, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !711, file: !44, line: 1940, baseType: !723, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !483, !109}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !711, file: !44, line: 1941, baseType: !727, size: 64, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!109, !483, !730}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !711, file: !44, line: 1942, baseType: !733, size: 64, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!109, !483}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !711, file: !44, line: 1943, baseType: !718, size: 64, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !711, file: !44, line: 1944, baseType: !683, size: 64, offset: 448)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !711, file: !44, line: 1945, baseType: !739, size: 64, offset: 512)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!109, !653, !109}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !711, file: !44, line: 1946, baseType: !743, size: 64, offset: 576)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!109, !653}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !711, file: !44, line: 1947, baseType: !743, size: 64, offset: 640)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !711, file: !44, line: 1948, baseType: !743, size: 64, offset: 704)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !711, file: !44, line: 1949, baseType: !743, size: 64, offset: 768)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !711, file: !44, line: 1950, baseType: !750, size: 64, offset: 832)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!109, !444, !753}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !711, file: !44, line: 1951, baseType: !756, size: 64, offset: 896)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!109, !653, !759, !342}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !711, file: !44, line: 1952, baseType: !683, size: 64, offset: 960)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !711, file: !44, line: 1954, baseType: !762, size: 64, offset: 1024)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!109, !765, !444}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !767, line: 539, flags: DIFlagFwdDecl)
!767 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!768 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !711, file: !44, line: 1955, baseType: !762, size: 64, offset: 1088)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !711, file: !44, line: 1956, baseType: !762, size: 64, offset: 1152)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !711, file: !44, line: 1957, baseType: !762, size: 64, offset: 1216)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !711, file: !44, line: 1963, baseType: !772, size: 64, offset: 1280)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!109, !653, !775, !798}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !777, line: 68, size: 512, align: 128, elements: !778)
!777 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!778 = !{!779, !780, !2442, !2449}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !776, file: !777, line: 69, baseType: !103, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !777, line: 77, baseType: !781, size: 320, offset: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !777, line: 77, size: 320, elements: !782)
!782 = !{!783, !970, !975, !1003, !1011, !1017, !2373, !2441}
!783 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 78, baseType: !784, size: 320)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 78, size: 320, elements: !785)
!785 = !{!786, !787, !968, !969}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !784, file: !777, line: 84, baseType: !184, size: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !784, file: !777, line: 86, baseType: !788, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !790)
!790 = !{!791, !792, !800, !801, !806, !821, !836, !837, !838, !839, !961, !962, !965, !966, !967}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !789, file: !44, line: 452, baseType: !483, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !789, file: !44, line: 453, baseType: !793, size: 128, offset: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !794, line: 292, size: 128, elements: !795)
!794 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!795 = !{!796, !797, !799}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !793, file: !794, line: 293, baseType: !309)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !793, file: !794, line: 295, baseType: !798, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !123, line: 148, baseType: !7)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !793, file: !794, line: 296, baseType: !104, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !789, file: !44, line: 454, baseType: !798, size: 32, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !789, file: !44, line: 455, baseType: !802, size: 32, offset: 224)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !123, line: 168, baseType: !803)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 166, size: 32, elements: !804)
!804 = !{!805}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !803, file: !123, line: 167, baseType: !109, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !789, file: !44, line: 460, baseType: !807, size: 128, offset: 256)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !808, line: 125, size: 128, elements: !809)
!808 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!809 = !{!810, !820}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !807, file: !808, line: 126, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !808, line: 31, size: 64, elements: !812)
!812 = !{!813}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !811, file: !808, line: 32, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !808, line: 24, size: 192, align: 64, elements: !816)
!816 = !{!817, !818, !819}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !815, file: !808, line: 25, baseType: !103, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !815, file: !808, line: 26, baseType: !814, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !815, file: !808, line: 27, baseType: !814, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !807, file: !808, line: 127, baseType: !814, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !789, file: !44, line: 461, baseType: !822, size: 256, offset: 384)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !823, line: 35, size: 256, elements: !824)
!823 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!824 = !{!825, !833, !834, !835}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !822, file: !823, line: 36, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !827, line: 13, baseType: !828)
!827 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !123, line: 175, baseType: !829)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 173, size: 64, elements: !830)
!830 = !{!831}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !829, file: !123, line: 174, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !146, line: 22, baseType: !594)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !822, file: !823, line: 42, baseType: !826, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !822, file: !823, line: 46, baseType: !209, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !822, file: !823, line: 47, baseType: !184, size: 128, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !789, file: !44, line: 462, baseType: !103, size: 64, offset: 640)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !789, file: !44, line: 463, baseType: !103, size: 64, offset: 704)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !789, file: !44, line: 464, baseType: !103, size: 64, offset: 768)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !789, file: !44, line: 465, baseType: !840, size: 64, offset: 832)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !843)
!843 = !{!844, !848, !852, !856, !860, !864, !870, !876, !880, !885, !889, !893, !897, !925, !929, !935, !936, !937, !941, !946, !950, !957}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !842, file: !44, line: 368, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!109, !775, !730}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !842, file: !44, line: 369, baseType: !849, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!109, !414, !775}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !842, file: !44, line: 372, baseType: !853, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!109, !788, !730}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !842, file: !44, line: 375, baseType: !857, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!109, !775}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !842, file: !44, line: 381, baseType: !861, size: 64, offset: 256)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!109, !414, !788, !187, !7}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !842, file: !44, line: 383, baseType: !865, size: 64, offset: 320)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !868}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !842, file: !44, line: 385, baseType: !871, size: 64, offset: 384)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!109, !414, !788, !585, !7, !7, !874, !875}
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !842, file: !44, line: 388, baseType: !877, size: 64, offset: 448)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{!109, !414, !788, !585, !7, !7, !775, !104}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !842, file: !44, line: 393, baseType: !881, size: 64, offset: 512)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!884, !788, !884}
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !123, line: 125, baseType: !145)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !842, file: !44, line: 394, baseType: !886, size: 64, offset: 576)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !775, !7, !7}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !842, file: !44, line: 395, baseType: !890, size: 64, offset: 640)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!109, !775, !798}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !842, file: !44, line: 396, baseType: !894, size: 64, offset: 704)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{null, !775}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !842, file: !44, line: 397, baseType: !898, size: 64, offset: 768)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!373, !901, !923}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !903)
!903 = !{!904, !905, !906, !910, !911, !912, !915, !916}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !902, file: !44, line: 321, baseType: !414, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !902, file: !44, line: 326, baseType: !585, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !902, file: !44, line: 327, baseType: !907, size: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !901, !376, !376}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !902, file: !44, line: 328, baseType: !104, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !902, file: !44, line: 329, baseType: !109, size: 32, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !902, file: !44, line: 330, baseType: !913, size: 16, offset: 288)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !146, line: 19, baseType: !914)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !148, line: 24, baseType: !134)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !902, file: !44, line: 331, baseType: !913, size: 16, offset: 304)
!916 = !DIDerivedType(tag: DW_TAG_member, scope: !902, file: !44, line: 332, baseType: !917, size: 64, offset: 320)
!917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !902, file: !44, line: 332, size: 64, elements: !918)
!918 = !{!919, !920}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !917, file: !44, line: 333, baseType: !7, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !917, file: !44, line: 334, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !842, file: !44, line: 402, baseType: !926, size: 64, offset: 832)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!109, !788, !775, !775, !5}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !842, file: !44, line: 404, baseType: !930, size: 64, offset: 896)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!544, !775, !933}
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !934, line: 305, baseType: !7)
!934 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!935 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !842, file: !44, line: 405, baseType: !894, size: 64, offset: 960)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !842, file: !44, line: 406, baseType: !857, size: 64, offset: 1024)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !842, file: !44, line: 407, baseType: !938, size: 64, offset: 1088)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!109, !775, !103, !103}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !842, file: !44, line: 409, baseType: !942, size: 64, offset: 1152)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !775, !945, !945}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !842, file: !44, line: 410, baseType: !947, size: 64, offset: 1216)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!109, !788, !775}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !842, file: !44, line: 413, baseType: !951, size: 64, offset: 1280)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!109, !954, !414, !956}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !842, file: !44, line: 415, baseType: !958, size: 64, offset: 1344)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !414}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !789, file: !44, line: 466, baseType: !103, size: 64, offset: 896)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !789, file: !44, line: 467, baseType: !963, size: 32, offset: 960)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !964, line: 8, baseType: !266)
!964 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!965 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !789, file: !44, line: 468, baseType: !309, offset: 992)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !789, file: !44, line: 469, baseType: !184, size: 128, offset: 1024)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !789, file: !44, line: 470, baseType: !104, size: 64, offset: 1152)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !784, file: !777, line: 87, baseType: !103, size: 64, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !784, file: !777, line: 94, baseType: !103, size: 64, offset: 256)
!970 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 96, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 96, size: 64, elements: !972)
!972 = !{!973}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !971, file: !777, line: 101, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !123, line: 143, baseType: !145)
!975 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 103, baseType: !976, size: 320)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 103, size: 320, elements: !977)
!977 = !{!978, !988, !991, !992}
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !777, line: 104, baseType: !979, size: 128)
!979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !976, file: !777, line: 104, size: 128, elements: !980)
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !979, file: !777, line: 105, baseType: !184, size: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, scope: !979, file: !777, line: 106, baseType: !983, size: 128)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !979, file: !777, line: 106, size: 128, elements: !984)
!984 = !{!985, !986, !987}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !983, file: !777, line: 107, baseType: !775, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !983, file: !777, line: 109, baseType: !109, size: 32, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !983, file: !777, line: 110, baseType: !109, size: 32, offset: 96)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !976, file: !777, line: 117, baseType: !989, size: 64, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !777, line: 117, flags: DIFlagFwdDecl)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !976, file: !777, line: 119, baseType: !104, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !777, line: 120, baseType: !993, size: 64, offset: 256)
!993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !976, file: !777, line: 120, size: 64, elements: !994)
!994 = !{!995, !996, !997}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !993, file: !777, line: 121, baseType: !104, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !993, file: !777, line: 122, baseType: !103, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !993, file: !777, line: 123, baseType: !998, size: 32)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !993, file: !777, line: 123, size: 32, elements: !999)
!999 = !{!1000, !1001, !1002}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !998, file: !777, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !998, file: !777, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !998, file: !777, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 130, baseType: !1004, size: 192)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 130, size: 192, elements: !1005)
!1005 = !{!1006, !1007, !1008, !1009, !1010}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1004, file: !777, line: 131, baseType: !103, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1004, file: !777, line: 134, baseType: !127, size: 8, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1004, file: !777, line: 135, baseType: !127, size: 8, offset: 72)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1004, file: !777, line: 136, baseType: !802, size: 32, offset: 96)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1004, file: !777, line: 137, baseType: !7, size: 32, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 139, baseType: !1012, size: 256)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 139, size: 256, elements: !1013)
!1013 = !{!1014, !1015, !1016}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1012, file: !777, line: 140, baseType: !103, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1012, file: !777, line: 141, baseType: !802, size: 32, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1012, file: !777, line: 143, baseType: !184, size: 128, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 145, baseType: !1018, size: 256)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 145, size: 256, elements: !1019)
!1019 = !{!1020, !1021, !1023, !1024, !2372}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1018, file: !777, line: 146, baseType: !103, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1018, file: !777, line: 147, baseType: !1022, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !767, line: 509, baseType: !775)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1018, file: !777, line: 148, baseType: !103, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !777, line: 149, baseType: !1025, size: 64, offset: 192)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1018, file: !777, line: 149, size: 64, elements: !1026)
!1026 = !{!1027, !2371}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1025, file: !777, line: 150, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !777, line: 388, size: 7296, elements: !1030)
!1030 = !{!1031, !2367}
!1031 = !DIDerivedType(tag: DW_TAG_member, scope: !1029, file: !777, line: 389, baseType: !1032, size: 7296)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1029, file: !777, line: 389, size: 7296, elements: !1033)
!1033 = !{!1034, !1152, !1153, !1154, !1158, !1159, !1160, !1161, !1162, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1203, !1209, !1212, !1258, !1259, !2351, !2352, !2355, !2356, !2357, !2360, !2361, !2362, !2365, !2366}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1032, file: !777, line: 390, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !777, line: 305, size: 1472, elements: !1037)
!1037 = !{!1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1052, !1053, !1058, !1059, !1062, !1146, !1147, !1148, !1149, !1150}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1036, file: !777, line: 308, baseType: !103, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1036, file: !777, line: 309, baseType: !103, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1036, file: !777, line: 313, baseType: !1035, size: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1036, file: !777, line: 313, baseType: !1035, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1036, file: !777, line: 315, baseType: !815, size: 192, align: 64, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1036, file: !777, line: 323, baseType: !103, size: 64, offset: 448)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1036, file: !777, line: 327, baseType: !1028, size: 64, offset: 512)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1036, file: !777, line: 333, baseType: !1046, size: 64, offset: 576)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !767, line: 284, baseType: !1047)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !767, line: 284, size: 64, elements: !1048)
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1047, file: !767, line: 284, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1051, line: 19, baseType: !103)
!1051 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1036, file: !777, line: 334, baseType: !103, size: 64, offset: 640)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1036, file: !777, line: 343, baseType: !1054, size: 256, offset: 704)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1036, file: !777, line: 340, size: 256, elements: !1055)
!1055 = !{!1056, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1054, file: !777, line: 341, baseType: !815, size: 192, align: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1054, file: !777, line: 342, baseType: !103, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1036, file: !777, line: 351, baseType: !184, size: 128, offset: 960)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1036, file: !777, line: 353, baseType: !1060, size: 64, offset: 1088)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !777, line: 353, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1036, file: !777, line: 356, baseType: !1063, size: 64, offset: 1152)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1065)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1066)
!1066 = !{!1067, !1071, !1072, !1076, !1080, !1120, !1124, !1128, !1132, !1133, !1134, !1138, !1142}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1065, file: !14, line: 558, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !1035}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1065, file: !14, line: 559, baseType: !1068, size: 64, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1065, file: !14, line: 560, baseType: !1073, size: 64, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!109, !1035, !103}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1065, file: !14, line: 561, baseType: !1077, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!109, !1035}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1065, file: !14, line: 562, baseType: !1081, size: 64, offset: 256)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!1084, !1085}
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !777, line: 682, baseType: !7)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093, !1100, !1107, !1113, !1114, !1115, !1117, !1119}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1086, file: !14, line: 509, baseType: !1035, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1086, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1086, file: !14, line: 511, baseType: !798, size: 32, offset: 96)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1086, file: !14, line: 512, baseType: !103, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1086, file: !14, line: 513, baseType: !103, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1086, file: !14, line: 514, baseType: !1094, size: 64, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !767, line: 385, baseType: !1096)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !767, line: 385, size: 64, elements: !1097)
!1097 = !{!1098}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1096, file: !767, line: 385, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1051, line: 15, baseType: !103)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1086, file: !14, line: 516, baseType: !1101, size: 64, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !767, line: 359, baseType: !1103)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !767, line: 359, size: 64, elements: !1104)
!1104 = !{!1105}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1103, file: !767, line: 359, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1051, line: 16, baseType: !103)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1086, file: !14, line: 519, baseType: !1108, size: 64, offset: 384)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1051, line: 21, baseType: !1109)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1051, line: 21, size: 64, elements: !1110)
!1110 = !{!1111}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1109, file: !1051, line: 21, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1051, line: 14, baseType: !103)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1086, file: !14, line: 521, baseType: !775, size: 64, offset: 448)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1086, file: !14, line: 522, baseType: !775, size: 64, offset: 512)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1086, file: !14, line: 528, baseType: !1116, size: 64, offset: 576)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1086, file: !14, line: 532, baseType: !1118, size: 64, offset: 640)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1086, file: !14, line: 536, baseType: !1022, size: 64, offset: 704)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1065, file: !14, line: 563, baseType: !1121, size: 64, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!1084, !1085, !13}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1065, file: !14, line: 565, baseType: !1125, size: 64, offset: 384)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{null, !1085, !103, !103}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1065, file: !14, line: 567, baseType: !1129, size: 64, offset: 448)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!103, !1035}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1065, file: !14, line: 571, baseType: !1081, size: 64, offset: 512)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1065, file: !14, line: 574, baseType: !1081, size: 64, offset: 576)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1065, file: !14, line: 579, baseType: !1135, size: 64, offset: 640)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!109, !1035, !103, !104, !109, !109}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1065, file: !14, line: 585, baseType: !1139, size: 64, offset: 704)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!160, !1035}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1065, file: !14, line: 615, baseType: !1143, size: 64, offset: 768)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!775, !1035, !103}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1036, file: !777, line: 359, baseType: !103, size: 64, offset: 1216)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1036, file: !777, line: 361, baseType: !414, size: 64, offset: 1280)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1036, file: !777, line: 362, baseType: !104, size: 64, offset: 1344)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1036, file: !777, line: 365, baseType: !826, size: 64, offset: 1408)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1036, file: !777, line: 373, baseType: !1151, offset: 1472)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !777, line: 296, elements: !217)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1032, file: !777, line: 391, baseType: !811, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1032, file: !777, line: 392, baseType: !145, size: 64, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1032, file: !777, line: 394, baseType: !1155, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!103, !414, !103, !103, !103, !103}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1032, file: !777, line: 398, baseType: !103, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1032, file: !777, line: 399, baseType: !103, size: 64, offset: 320)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1032, file: !777, line: 405, baseType: !103, size: 64, offset: 384)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1032, file: !777, line: 406, baseType: !103, size: 64, offset: 448)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1032, file: !777, line: 407, baseType: !1163, size: 64, offset: 512)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !767, line: 286, baseType: !1165)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !767, line: 286, size: 64, elements: !1166)
!1166 = !{!1167}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1165, file: !767, line: 286, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1051, line: 18, baseType: !103)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1032, file: !777, line: 416, baseType: !802, size: 32, offset: 576)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1032, file: !777, line: 428, baseType: !802, size: 32, offset: 608)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1032, file: !777, line: 437, baseType: !802, size: 32, offset: 640)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1032, file: !777, line: 447, baseType: !802, size: 32, offset: 672)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1032, file: !777, line: 450, baseType: !826, size: 64, offset: 704)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1032, file: !777, line: 452, baseType: !109, size: 32, offset: 768)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1032, file: !777, line: 454, baseType: !309, offset: 800)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1032, file: !777, line: 457, baseType: !822, size: 256, offset: 832)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1032, file: !777, line: 459, baseType: !184, size: 128, offset: 1088)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1032, file: !777, line: 466, baseType: !103, size: 64, offset: 1216)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1032, file: !777, line: 467, baseType: !103, size: 64, offset: 1280)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1032, file: !777, line: 469, baseType: !103, size: 64, offset: 1344)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1032, file: !777, line: 470, baseType: !103, size: 64, offset: 1408)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1032, file: !777, line: 471, baseType: !828, size: 64, offset: 1472)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1032, file: !777, line: 472, baseType: !103, size: 64, offset: 1536)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1032, file: !777, line: 473, baseType: !103, size: 64, offset: 1600)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1032, file: !777, line: 474, baseType: !103, size: 64, offset: 1664)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1032, file: !777, line: 475, baseType: !103, size: 64, offset: 1728)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1032, file: !777, line: 477, baseType: !309, offset: 1792)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1032, file: !777, line: 478, baseType: !103, size: 64, offset: 1792)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1032, file: !777, line: 478, baseType: !103, size: 64, offset: 1856)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1032, file: !777, line: 478, baseType: !103, size: 64, offset: 1920)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1032, file: !777, line: 478, baseType: !103, size: 64, offset: 1984)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1032, file: !777, line: 479, baseType: !103, size: 64, offset: 2048)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1032, file: !777, line: 479, baseType: !103, size: 64, offset: 2112)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1032, file: !777, line: 479, baseType: !103, size: 64, offset: 2176)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1032, file: !777, line: 480, baseType: !103, size: 64, offset: 2240)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1032, file: !777, line: 480, baseType: !103, size: 64, offset: 2304)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1032, file: !777, line: 480, baseType: !103, size: 64, offset: 2368)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1032, file: !777, line: 480, baseType: !103, size: 64, offset: 2432)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1032, file: !777, line: 482, baseType: !1200, size: 2816, offset: 2496)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 2816, elements: !1201)
!1201 = !{!1202}
!1202 = !DISubrange(count: 44)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1032, file: !777, line: 488, baseType: !1204, size: 256, offset: 5312)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1205, line: 60, size: 256, elements: !1206)
!1205 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1206 = !{!1207}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1204, file: !1205, line: 61, baseType: !1208, size: 256)
!1208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, size: 256, elements: !181)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1032, file: !777, line: 490, baseType: !1210, size: 64, offset: 5568)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !777, line: 490, flags: DIFlagFwdDecl)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1032, file: !777, line: 493, baseType: !1213, size: 896, offset: 5632)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1214, line: 53, baseType: !1215)
!1214 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1214, line: 13, size: 896, elements: !1216)
!1216 = !{!1217, !1218, !1219, !1220, !1223, !1224, !1231, !1232, !1252, !1253, !1254}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1215, file: !1214, line: 18, baseType: !145, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1215, file: !1214, line: 28, baseType: !828, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1215, file: !1214, line: 31, baseType: !822, size: 256, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1215, file: !1214, line: 32, baseType: !1221, size: 64, offset: 384)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1214, line: 32, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1215, file: !1214, line: 37, baseType: !134, size: 16, offset: 448)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1215, file: !1214, line: 40, baseType: !1225, size: 192, offset: 512)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1226, line: 53, size: 192, elements: !1227)
!1226 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1227 = !{!1228, !1229, !1230}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1225, file: !1226, line: 54, baseType: !826, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1225, file: !1226, line: 55, baseType: !309, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1225, file: !1226, line: 59, baseType: !184, size: 128, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1215, file: !1214, line: 41, baseType: !104, size: 64, offset: 704)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1215, file: !1214, line: 42, baseType: !1233, size: 64, offset: 768)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1235)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1236, line: 13, size: 896, elements: !1237)
!1236 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1237 = !{!1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1235, file: !1236, line: 14, baseType: !104, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1235, file: !1236, line: 15, baseType: !103, size: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1235, file: !1236, line: 17, baseType: !103, size: 64, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1235, file: !1236, line: 17, baseType: !103, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1235, file: !1236, line: 19, baseType: !376, size: 64, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1235, file: !1236, line: 21, baseType: !376, size: 64, offset: 320)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1235, file: !1236, line: 22, baseType: !376, size: 64, offset: 384)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1235, file: !1236, line: 23, baseType: !376, size: 64, offset: 448)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1235, file: !1236, line: 24, baseType: !376, size: 64, offset: 512)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1235, file: !1236, line: 25, baseType: !376, size: 64, offset: 576)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1235, file: !1236, line: 26, baseType: !376, size: 64, offset: 640)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1235, file: !1236, line: 27, baseType: !376, size: 64, offset: 704)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1235, file: !1236, line: 28, baseType: !376, size: 64, offset: 768)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1235, file: !1236, line: 29, baseType: !376, size: 64, offset: 832)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1215, file: !1214, line: 44, baseType: !802, size: 32, offset: 832)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1215, file: !1214, line: 50, baseType: !913, size: 16, offset: 864)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1215, file: !1214, line: 51, baseType: !1255, size: 16, offset: 880)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !146, line: 18, baseType: !1256)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !148, line: 23, baseType: !1257)
!1257 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1032, file: !777, line: 495, baseType: !103, size: 64, offset: 6528)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1032, file: !777, line: 497, baseType: !1260, size: 64, offset: 6592)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !777, line: 381, size: 384, elements: !1262)
!1262 = !{!1263, !1264, !2350}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1261, file: !777, line: 382, baseType: !802, size: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1261, file: !777, line: 383, baseType: !1265, size: 128, offset: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !777, line: 376, size: 128, elements: !1266)
!1266 = !{!1267, !2348}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1265, file: !777, line: 377, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1270, line: 640, size: 48640, elements: !1271)
!1270 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1271 = !{!1272, !1278, !1280, !1281, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1298, !1316, !1327, !1410, !1411, !1412, !1423, !1424, !1426, !1427, !1428, !1429, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1507, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1545, !1547, !1548, !1549, !1551, !1552, !1553, !1554, !1555, !1556, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1580, !1585, !1767, !1768, !1769, !1770, !1774, !1777, !1780, !1783, !1786, !1790, !1891, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1937, !1938, !1939, !1940, !1941, !1946, !1947, !1948, !1951, !1952, !1955, !1958, !1961, !1964, !2007, !2010, !2011, !2090, !2091, !2094, !2095, !2098, !2099, !2100, !2104, !2105, !2106, !2119, !2120, !2121, !2131, !2136, !2139, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1269, file: !1270, line: 646, baseType: !1273, size: 128)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1274, line: 56, size: 128, elements: !1275)
!1274 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1275 = !{!1276, !1277}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1273, file: !1274, line: 57, baseType: !103, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1273, file: !1274, line: 58, baseType: !266, size: 32, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1269, file: !1270, line: 649, baseType: !1279, size: 64, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !376)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1269, file: !1270, line: 657, baseType: !104, size: 64, offset: 192)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1269, file: !1270, line: 658, baseType: !1282, size: 32, offset: 256)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1283, line: 113, baseType: !1284)
!1283 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1283, line: 111, size: 32, elements: !1285)
!1285 = !{!1286}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1284, file: !1283, line: 112, baseType: !802, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1269, file: !1270, line: 660, baseType: !7, size: 32, offset: 288)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1269, file: !1270, line: 661, baseType: !7, size: 32, offset: 320)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1269, file: !1270, line: 684, baseType: !109, size: 32, offset: 352)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1269, file: !1270, line: 686, baseType: !109, size: 32, offset: 384)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1269, file: !1270, line: 687, baseType: !109, size: 32, offset: 416)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1269, file: !1270, line: 688, baseType: !109, size: 32, offset: 448)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1269, file: !1270, line: 689, baseType: !7, size: 32, offset: 480)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1269, file: !1270, line: 691, baseType: !1295, size: 64, offset: 512)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1297)
!1297 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1270, line: 691, flags: DIFlagFwdDecl)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1269, file: !1270, line: 692, baseType: !1299, size: 832, offset: 576)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1270, line: 451, size: 832, elements: !1300)
!1300 = !{!1301, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1299, file: !1270, line: 453, baseType: !1302, size: 128)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1270, line: 325, size: 128, elements: !1303)
!1303 = !{!1304, !1305}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1302, file: !1270, line: 326, baseType: !103, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1302, file: !1270, line: 327, baseType: !266, size: 32, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1299, file: !1270, line: 454, baseType: !815, size: 192, align: 64, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1299, file: !1270, line: 455, baseType: !184, size: 128, offset: 320)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1299, file: !1270, line: 456, baseType: !7, size: 32, offset: 448)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1299, file: !1270, line: 458, baseType: !145, size: 64, offset: 512)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1299, file: !1270, line: 459, baseType: !145, size: 64, offset: 576)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1299, file: !1270, line: 460, baseType: !145, size: 64, offset: 640)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1299, file: !1270, line: 461, baseType: !145, size: 64, offset: 704)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1299, file: !1270, line: 463, baseType: !145, size: 64, offset: 768)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1299, file: !1270, line: 465, baseType: !1315, offset: 832)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1270, line: 415, elements: !217)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1269, file: !1270, line: 693, baseType: !1317, size: 384, offset: 1408)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1270, line: 489, size: 384, elements: !1318)
!1318 = !{!1319, !1320, !1321, !1322, !1323, !1324, !1325}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1317, file: !1270, line: 490, baseType: !184, size: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1317, file: !1270, line: 491, baseType: !103, size: 64, offset: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1317, file: !1270, line: 492, baseType: !103, size: 64, offset: 192)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1317, file: !1270, line: 493, baseType: !7, size: 32, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1317, file: !1270, line: 494, baseType: !134, size: 16, offset: 288)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1317, file: !1270, line: 495, baseType: !134, size: 16, offset: 304)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1317, file: !1270, line: 497, baseType: !1326, size: 64, offset: 320)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1269, file: !1270, line: 697, baseType: !1328, size: 1792, offset: 1792)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1270, line: 507, size: 1792, elements: !1329)
!1329 = !{!1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1407, !1408}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1328, file: !1270, line: 508, baseType: !815, size: 192, align: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1328, file: !1270, line: 515, baseType: !145, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1328, file: !1270, line: 516, baseType: !145, size: 64, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1328, file: !1270, line: 517, baseType: !145, size: 64, offset: 320)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1328, file: !1270, line: 518, baseType: !145, size: 64, offset: 384)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1328, file: !1270, line: 519, baseType: !145, size: 64, offset: 448)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1328, file: !1270, line: 526, baseType: !832, size: 64, offset: 512)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1328, file: !1270, line: 527, baseType: !145, size: 64, offset: 576)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1328, file: !1270, line: 528, baseType: !7, size: 32, offset: 640)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1328, file: !1270, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1328, file: !1270, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1328, file: !1270, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1328, file: !1270, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1328, file: !1270, line: 563, baseType: !1344, size: 512, offset: 704)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1345)
!1345 = !{!1346, !1354, !1355, !1360, !1403, !1404, !1405, !1406}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1344, file: !20, line: 119, baseType: !1347, size: 256)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1348, line: 9, size: 256, elements: !1349)
!1348 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1349 = !{!1350, !1351}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1347, file: !1348, line: 10, baseType: !815, size: 192, align: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1347, file: !1348, line: 11, baseType: !1352, size: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1353, line: 29, baseType: !832)
!1353 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1344, file: !20, line: 120, baseType: !1352, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1344, file: !20, line: 121, baseType: !1356, size: 64, offset: 320)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!19, !1359}
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1344, file: !20, line: 122, baseType: !1361, size: 64, offset: 384)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1363)
!1363 = !{!1364, !1384, !1385, !1388, !1393, !1394, !1398, !1402}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1362, file: !20, line: 160, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1367)
!1367 = !{!1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1366, file: !20, line: 215, baseType: !209)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1366, file: !20, line: 216, baseType: !7, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1366, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1366, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1366, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1366, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1366, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1366, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1366, file: !20, line: 233, baseType: !1352, size: 64, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1366, file: !20, line: 234, baseType: !1359, size: 64, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1366, file: !20, line: 235, baseType: !1352, size: 64, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1366, file: !20, line: 236, baseType: !1359, size: 64, offset: 320)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1366, file: !20, line: 237, baseType: !1381, size: 4096, offset: 512)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1362, size: 4096, elements: !1382)
!1382 = !{!1383}
!1383 = !DISubrange(count: 8)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1362, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1362, file: !20, line: 162, baseType: !1386, size: 32, offset: 96)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !123, line: 27, baseType: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !192, line: 96, baseType: !109)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1362, file: !20, line: 163, baseType: !1389, size: 32, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !450, line: 276, baseType: !1390)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !450, line: 276, size: 32, elements: !1391)
!1391 = !{!1392}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1390, file: !450, line: 276, baseType: !454, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1362, file: !20, line: 164, baseType: !1359, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1362, file: !20, line: 165, baseType: !1395, size: 128, offset: 256)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1348, line: 14, size: 128, elements: !1396)
!1396 = !{!1397}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1395, file: !1348, line: 15, baseType: !807, size: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1362, file: !20, line: 166, baseType: !1399, size: 64, offset: 384)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!1352}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1362, file: !20, line: 167, baseType: !1352, size: 64, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1344, file: !20, line: 123, baseType: !196, size: 8, offset: 448)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1344, file: !20, line: 124, baseType: !196, size: 8, offset: 456)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1344, file: !20, line: 125, baseType: !196, size: 8, offset: 464)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1344, file: !20, line: 126, baseType: !196, size: 8, offset: 472)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1328, file: !1270, line: 572, baseType: !1344, size: 512, offset: 1216)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1328, file: !1270, line: 580, baseType: !1409, size: 64, offset: 1728)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1269, file: !1270, line: 721, baseType: !7, size: 32, offset: 3584)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1269, file: !1270, line: 722, baseType: !109, size: 32, offset: 3616)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1269, file: !1270, line: 723, baseType: !1413, size: 64, offset: 3648)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1415)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1416, line: 17, baseType: !1417)
!1416 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1416, line: 17, size: 64, elements: !1418)
!1418 = !{!1419}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1417, file: !1416, line: 17, baseType: !1420, size: 64)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 64, elements: !1421)
!1421 = !{!1422}
!1422 = !DISubrange(count: 1)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1269, file: !1270, line: 724, baseType: !1415, size: 64, offset: 3712)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1269, file: !1270, line: 749, baseType: !1425, offset: 3776)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1270, line: 290, elements: !217)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1269, file: !1270, line: 751, baseType: !184, size: 128, offset: 3776)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1269, file: !1270, line: 757, baseType: !1028, size: 64, offset: 3904)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1269, file: !1270, line: 758, baseType: !1028, size: 64, offset: 3968)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1269, file: !1270, line: 761, baseType: !1430, size: 320, offset: 4032)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1205, line: 34, size: 320, elements: !1431)
!1431 = !{!1432, !1433}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1430, file: !1205, line: 35, baseType: !145, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1430, file: !1205, line: 36, baseType: !1434, size: 256, offset: 64)
!1434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1035, size: 256, elements: !181)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1269, file: !1270, line: 766, baseType: !109, size: 32, offset: 4352)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1269, file: !1270, line: 767, baseType: !109, size: 32, offset: 4384)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1269, file: !1270, line: 768, baseType: !109, size: 32, offset: 4416)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1269, file: !1270, line: 770, baseType: !109, size: 32, offset: 4448)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1269, file: !1270, line: 772, baseType: !103, size: 64, offset: 4480)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1269, file: !1270, line: 775, baseType: !7, size: 32, offset: 4544)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1269, file: !1270, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1269, file: !1270, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1269, file: !1270, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1269, file: !1270, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1269, file: !1270, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1269, file: !1270, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1269, file: !1270, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1269, file: !1270, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1269, file: !1270, line: 831, baseType: !103, size: 64, offset: 4672)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1269, file: !1270, line: 833, baseType: !1451, size: 384, offset: 4736)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1452)
!1452 = !{!1453, !1458}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1451, file: !25, line: 26, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!376, !1457}
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, scope: !1451, file: !25, line: 27, baseType: !1459, size: 320, offset: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1451, file: !25, line: 27, size: 320, elements: !1460)
!1460 = !{!1461, !1470, !1497}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1459, file: !25, line: 36, baseType: !1462, size: 320)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1459, file: !25, line: 29, size: 320, elements: !1463)
!1463 = !{!1464, !1465, !1466, !1467, !1468, !1469}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1462, file: !25, line: 30, baseType: !265, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1462, file: !25, line: 31, baseType: !266, size: 32, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1462, file: !25, line: 32, baseType: !266, size: 32, offset: 96)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1462, file: !25, line: 33, baseType: !266, size: 32, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1462, file: !25, line: 34, baseType: !145, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1462, file: !25, line: 35, baseType: !265, size: 64, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1459, file: !25, line: 46, baseType: !1471, size: 192)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1459, file: !25, line: 38, size: 192, elements: !1472)
!1472 = !{!1473, !1474, !1475, !1496}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1471, file: !25, line: 39, baseType: !1386, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1471, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, scope: !1471, file: !25, line: 41, baseType: !1476, size: 64, offset: 64)
!1476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1471, file: !25, line: 41, size: 64, elements: !1477)
!1477 = !{!1478, !1486}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1476, file: !25, line: 42, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1481, line: 7, size: 128, elements: !1482)
!1481 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1482 = !{!1483, !1485}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1480, file: !1481, line: 8, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !192, line: 93, baseType: !587)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1480, file: !1481, line: 9, baseType: !587, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1476, file: !25, line: 43, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1489, line: 7, size: 64, elements: !1490)
!1489 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1490 = !{!1491, !1495}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1488, file: !1489, line: 8, baseType: !1492, size: 32)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1489, line: 5, baseType: !1493)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !146, line: 20, baseType: !1494)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !148, line: 26, baseType: !109)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1488, file: !1489, line: 9, baseType: !1493, size: 32, offset: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1471, file: !25, line: 45, baseType: !145, size: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1459, file: !25, line: 54, baseType: !1498, size: 256)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1459, file: !25, line: 48, size: 256, elements: !1499)
!1499 = !{!1500, !1503, !1504, !1505, !1506}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1498, file: !25, line: 49, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1498, file: !25, line: 50, baseType: !109, size: 32, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1498, file: !25, line: 51, baseType: !109, size: 32, offset: 96)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1498, file: !25, line: 52, baseType: !103, size: 64, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1498, file: !25, line: 53, baseType: !103, size: 64, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1269, file: !1270, line: 835, baseType: !1508, size: 32, offset: 5120)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !123, line: 22, baseType: !1509)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !192, line: 28, baseType: !109)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1269, file: !1270, line: 836, baseType: !1508, size: 32, offset: 5152)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1269, file: !1270, line: 840, baseType: !103, size: 64, offset: 5184)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1269, file: !1270, line: 849, baseType: !1268, size: 64, offset: 5248)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1269, file: !1270, line: 852, baseType: !1268, size: 64, offset: 5312)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1269, file: !1270, line: 857, baseType: !184, size: 128, offset: 5376)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1269, file: !1270, line: 858, baseType: !184, size: 128, offset: 5504)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1269, file: !1270, line: 859, baseType: !1268, size: 64, offset: 5632)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1269, file: !1270, line: 867, baseType: !184, size: 128, offset: 5696)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1269, file: !1270, line: 868, baseType: !184, size: 128, offset: 5824)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1269, file: !1270, line: 871, baseType: !1520, size: 64, offset: 5952)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1522)
!1522 = !{!1523, !1524, !1525, !1526, !1528, !1529, !1536, !1537}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1521, file: !53, line: 61, baseType: !1282, size: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1521, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1521, file: !53, line: 63, baseType: !309, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1521, file: !53, line: 65, baseType: !1527, size: 256, offset: 64)
!1527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 256, elements: !181)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1521, file: !53, line: 66, baseType: !689, size: 64, offset: 320)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1521, file: !53, line: 68, baseType: !1530, size: 128, offset: 384)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1531, line: 40, baseType: !1532)
!1531 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1531, line: 36, size: 128, elements: !1533)
!1533 = !{!1534, !1535}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1532, file: !1531, line: 37, baseType: !309)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1532, file: !1531, line: 38, baseType: !184, size: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1521, file: !53, line: 69, baseType: !427, size: 128, align: 64, offset: 512)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1521, file: !53, line: 70, baseType: !1538, size: 128, offset: 640)
!1538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1539, size: 128, elements: !1421)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1540)
!1540 = !{!1541, !1542}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1539, file: !53, line: 55, baseType: !109, size: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1539, file: !53, line: 56, baseType: !1543, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1269, file: !1270, line: 872, baseType: !1546, size: 512, offset: 6016)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 512, elements: !181)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1269, file: !1270, line: 873, baseType: !184, size: 128, offset: 6528)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1269, file: !1270, line: 874, baseType: !184, size: 128, offset: 6656)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1269, file: !1270, line: 876, baseType: !1550, size: 64, offset: 6784)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1269, file: !1270, line: 879, baseType: !759, size: 64, offset: 6848)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1269, file: !1270, line: 882, baseType: !759, size: 64, offset: 6912)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1269, file: !1270, line: 884, baseType: !145, size: 64, offset: 6976)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1269, file: !1270, line: 885, baseType: !145, size: 64, offset: 7040)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1269, file: !1270, line: 890, baseType: !145, size: 64, offset: 7104)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1269, file: !1270, line: 891, baseType: !1557, size: 128, offset: 7168)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1270, line: 242, size: 128, elements: !1558)
!1558 = !{!1559, !1560, !1561}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1557, file: !1270, line: 244, baseType: !145, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1557, file: !1270, line: 245, baseType: !145, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1557, file: !1270, line: 246, baseType: !209, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1269, file: !1270, line: 900, baseType: !103, size: 64, offset: 7296)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1269, file: !1270, line: 901, baseType: !103, size: 64, offset: 7360)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1269, file: !1270, line: 904, baseType: !145, size: 64, offset: 7424)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1269, file: !1270, line: 907, baseType: !145, size: 64, offset: 7488)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1269, file: !1270, line: 910, baseType: !103, size: 64, offset: 7552)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1269, file: !1270, line: 911, baseType: !103, size: 64, offset: 7616)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1269, file: !1270, line: 914, baseType: !1569, size: 640, offset: 7680)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1570, line: 123, size: 640, elements: !1571)
!1570 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1571 = !{!1572, !1578, !1579}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1569, file: !1570, line: 124, baseType: !1573, size: 576)
!1573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1574, size: 576, elements: !343)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1570, line: 108, size: 192, elements: !1575)
!1575 = !{!1576, !1577}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1574, file: !1570, line: 109, baseType: !145, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1574, file: !1570, line: 110, baseType: !1395, size: 128, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1569, file: !1570, line: 125, baseType: !7, size: 32, offset: 576)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1569, file: !1570, line: 126, baseType: !7, size: 32, offset: 608)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1269, file: !1270, line: 917, baseType: !1581, size: 192, offset: 8320)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1570, line: 134, size: 192, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1581, file: !1570, line: 135, baseType: !427, size: 128, align: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1581, file: !1570, line: 136, baseType: !7, size: 32, offset: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1269, file: !1270, line: 923, baseType: !1586, size: 64, offset: 8512)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1588)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1589, line: 111, size: 1280, elements: !1590)
!1589 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1590 = !{!1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1608, !1609, !1610, !1611, !1612, !1613, !1720, !1721, !1722, !1723, !1749, !1752, !1762}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1588, file: !1589, line: 112, baseType: !802, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1588, file: !1589, line: 120, baseType: !489, size: 32, offset: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1588, file: !1589, line: 121, baseType: !497, size: 32, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1588, file: !1589, line: 122, baseType: !489, size: 32, offset: 96)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1588, file: !1589, line: 123, baseType: !497, size: 32, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1588, file: !1589, line: 124, baseType: !489, size: 32, offset: 160)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1588, file: !1589, line: 125, baseType: !497, size: 32, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1588, file: !1589, line: 126, baseType: !489, size: 32, offset: 224)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1588, file: !1589, line: 127, baseType: !497, size: 32, offset: 256)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1588, file: !1589, line: 128, baseType: !7, size: 32, offset: 288)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1588, file: !1589, line: 129, baseType: !1602, size: 64, offset: 320)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1603, line: 26, baseType: !1604)
!1603 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1603, line: 24, size: 64, elements: !1605)
!1605 = !{!1606}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1604, file: !1603, line: 25, baseType: !1607, size: 64)
!1607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 64, elements: !177)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1588, file: !1589, line: 130, baseType: !1602, size: 64, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1588, file: !1589, line: 131, baseType: !1602, size: 64, offset: 448)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1588, file: !1589, line: 132, baseType: !1602, size: 64, offset: 512)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1588, file: !1589, line: 133, baseType: !1602, size: 64, offset: 576)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1588, file: !1589, line: 135, baseType: !127, size: 8, offset: 640)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1588, file: !1589, line: 137, baseType: !1614, size: 64, offset: 704)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1616, line: 189, size: 1664, elements: !1617)
!1616 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1617 = !{!1618, !1619, !1622, !1627, !1628, !1631, !1632, !1637, !1638, !1639, !1640, !1642, !1643, !1644, !1645, !1646, !1684, !1705}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1615, file: !1616, line: 190, baseType: !1282, size: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1615, file: !1616, line: 191, baseType: !1620, size: 32, offset: 32)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1616, line: 28, baseType: !1621)
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !123, line: 98, baseType: !1493)
!1622 = !DIDerivedType(tag: DW_TAG_member, scope: !1615, file: !1616, line: 192, baseType: !1623, size: 192, offset: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1615, file: !1616, line: 192, size: 192, elements: !1624)
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1623, file: !1616, line: 193, baseType: !184, size: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1623, file: !1616, line: 194, baseType: !815, size: 192, align: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1615, file: !1616, line: 199, baseType: !822, size: 256, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1615, file: !1616, line: 200, baseType: !1629, size: 64, offset: 512)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1616, line: 200, flags: DIFlagFwdDecl)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1615, file: !1616, line: 201, baseType: !104, size: 64, offset: 576)
!1632 = !DIDerivedType(tag: DW_TAG_member, scope: !1615, file: !1616, line: 202, baseType: !1633, size: 64, offset: 640)
!1633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1615, file: !1616, line: 202, size: 64, elements: !1634)
!1634 = !{!1635, !1636}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1633, file: !1616, line: 203, baseType: !593, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1633, file: !1616, line: 204, baseType: !593, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1615, file: !1616, line: 206, baseType: !593, size: 64, offset: 704)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1615, file: !1616, line: 207, baseType: !489, size: 32, offset: 768)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1615, file: !1616, line: 208, baseType: !497, size: 32, offset: 800)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1615, file: !1616, line: 209, baseType: !1641, size: 32, offset: 832)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1616, line: 31, baseType: !613)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1615, file: !1616, line: 210, baseType: !134, size: 16, offset: 864)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1615, file: !1616, line: 211, baseType: !134, size: 16, offset: 880)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1615, file: !1616, line: 215, baseType: !1257, size: 16, offset: 896)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1615, file: !1616, line: 222, baseType: !103, size: 64, offset: 960)
!1646 = !DIDerivedType(tag: DW_TAG_member, scope: !1615, file: !1616, line: 239, baseType: !1647, size: 320, offset: 1024)
!1647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1615, file: !1616, line: 239, size: 320, elements: !1648)
!1648 = !{!1649, !1676}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1647, file: !1616, line: 240, baseType: !1650, size: 320)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1616, line: 108, size: 320, elements: !1651)
!1651 = !{!1652, !1653, !1665, !1668, !1675}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1650, file: !1616, line: 110, baseType: !103, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !1616, line: 111, baseType: !1654, size: 64, offset: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1650, file: !1616, line: 111, size: 64, elements: !1655)
!1655 = !{!1656, !1664}
!1656 = !DIDerivedType(tag: DW_TAG_member, scope: !1654, file: !1616, line: 112, baseType: !1657, size: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1654, file: !1616, line: 112, size: 64, elements: !1658)
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1657, file: !1616, line: 114, baseType: !913, size: 16)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1657, file: !1616, line: 115, baseType: !1661, size: 48, offset: 16)
!1661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 48, elements: !1662)
!1662 = !{!1663}
!1663 = !DISubrange(count: 6)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1654, file: !1616, line: 121, baseType: !103, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1650, file: !1616, line: 123, baseType: !1666, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1616, line: 96, flags: DIFlagFwdDecl)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1650, file: !1616, line: 124, baseType: !1669, size: 64, offset: 192)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1616, line: 102, size: 192, elements: !1671)
!1671 = !{!1672, !1673, !1674}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1670, file: !1616, line: 103, baseType: !427, size: 128, align: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1670, file: !1616, line: 104, baseType: !1282, size: 32, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1670, file: !1616, line: 105, baseType: !544, size: 8, offset: 160)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1650, file: !1616, line: 125, baseType: !160, size: 64, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1647, file: !1616, line: 241, baseType: !1677, size: 320)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1647, file: !1616, line: 241, size: 320, elements: !1678)
!1678 = !{!1679, !1680, !1681, !1682, !1683}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1677, file: !1616, line: 242, baseType: !103, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1677, file: !1616, line: 243, baseType: !103, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1677, file: !1616, line: 244, baseType: !1666, size: 64, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1677, file: !1616, line: 245, baseType: !1669, size: 64, offset: 192)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1677, file: !1616, line: 246, baseType: !342, size: 64, offset: 256)
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1615, file: !1616, line: 254, baseType: !1685, size: 256, offset: 1344)
!1685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1615, file: !1616, line: 254, size: 256, elements: !1686)
!1686 = !{!1687, !1693}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1685, file: !1616, line: 255, baseType: !1688, size: 256)
!1688 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1616, line: 128, size: 256, elements: !1689)
!1689 = !{!1690, !1691}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1688, file: !1616, line: 129, baseType: !104, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1688, file: !1616, line: 130, baseType: !1692, size: 256)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 256, elements: !181)
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1685, file: !1616, line: 256, baseType: !1694, size: 256)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1685, file: !1616, line: 256, size: 256, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1694, file: !1616, line: 258, baseType: !184, size: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1694, file: !1616, line: 259, baseType: !1698, size: 128, offset: 128)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1699, line: 22, size: 128, elements: !1700)
!1699 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1700 = !{!1701, !1704}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1698, file: !1699, line: 23, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1699, line: 23, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1698, file: !1699, line: 24, baseType: !103, size: 64, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1615, file: !1616, line: 274, baseType: !1706, size: 64, offset: 1600)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1616, line: 170, size: 192, elements: !1708)
!1708 = !{!1709, !1718, !1719}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1707, file: !1616, line: 171, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1616, line: 165, baseType: !1711)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!109, !1614, !1714, !1716, !1614}
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1667)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1688)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1707, file: !1616, line: 172, baseType: !1614, size: 64, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1707, file: !1616, line: 173, baseType: !1666, size: 64, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1588, file: !1589, line: 138, baseType: !1614, size: 64, offset: 768)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1588, file: !1589, line: 139, baseType: !1614, size: 64, offset: 832)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1588, file: !1589, line: 140, baseType: !1614, size: 64, offset: 896)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1588, file: !1589, line: 145, baseType: !1724, size: 64, offset: 960)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1726, line: 13, size: 896, elements: !1727)
!1726 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1727 = !{!1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1725, file: !1726, line: 14, baseType: !1282, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1725, file: !1726, line: 15, baseType: !802, size: 32, offset: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1725, file: !1726, line: 16, baseType: !802, size: 32, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1725, file: !1726, line: 21, baseType: !826, size: 64, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1725, file: !1726, line: 27, baseType: !103, size: 64, offset: 192)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1725, file: !1726, line: 28, baseType: !103, size: 64, offset: 256)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1725, file: !1726, line: 29, baseType: !826, size: 64, offset: 320)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1725, file: !1726, line: 32, baseType: !693, size: 128, offset: 384)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1725, file: !1726, line: 33, baseType: !489, size: 32, offset: 512)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1725, file: !1726, line: 37, baseType: !826, size: 64, offset: 576)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1725, file: !1726, line: 44, baseType: !1739, size: 256, offset: 640)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1740, line: 15, size: 256, elements: !1741)
!1740 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1741 = !{!1742, !1743, !1744, !1745, !1746, !1747, !1748}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1739, file: !1740, line: 16, baseType: !209)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1739, file: !1740, line: 18, baseType: !109, size: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1739, file: !1740, line: 19, baseType: !109, size: 32, offset: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1739, file: !1740, line: 20, baseType: !109, size: 32, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1739, file: !1740, line: 21, baseType: !109, size: 32, offset: 96)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1739, file: !1740, line: 22, baseType: !103, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1739, file: !1740, line: 23, baseType: !103, size: 64, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1588, file: !1589, line: 146, baseType: !1750, size: 64, offset: 1024)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !490, line: 18, flags: DIFlagFwdDecl)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1588, file: !1589, line: 147, baseType: !1753, size: 64, offset: 1088)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1589, line: 25, size: 64, elements: !1755)
!1755 = !{!1756, !1757, !1758}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1754, file: !1589, line: 26, baseType: !802, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1754, file: !1589, line: 27, baseType: !109, size: 32, offset: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1754, file: !1589, line: 28, baseType: !1759, offset: 64)
!1759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !497, elements: !1760)
!1760 = !{!1761}
!1761 = !DISubrange(count: 0)
!1762 = !DIDerivedType(tag: DW_TAG_member, scope: !1588, file: !1589, line: 149, baseType: !1763, size: 128, offset: 1152)
!1763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1588, file: !1589, line: 149, size: 128, elements: !1764)
!1764 = !{!1765, !1766}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1763, file: !1589, line: 150, baseType: !109, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1763, file: !1589, line: 151, baseType: !427, size: 128, align: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1269, file: !1270, line: 926, baseType: !1586, size: 64, offset: 8576)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1269, file: !1270, line: 929, baseType: !1586, size: 64, offset: 8640)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1269, file: !1270, line: 933, baseType: !1614, size: 64, offset: 8704)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1269, file: !1270, line: 943, baseType: !1771, size: 128, offset: 8768)
!1771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 128, elements: !1772)
!1772 = !{!1773}
!1773 = !DISubrange(count: 16)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1269, file: !1270, line: 945, baseType: !1775, size: 64, offset: 8896)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1270, line: 49, flags: DIFlagFwdDecl)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1269, file: !1270, line: 956, baseType: !1778, size: 64, offset: 8960)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1270, line: 45, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1269, file: !1270, line: 959, baseType: !1781, size: 64, offset: 9024)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1270, line: 959, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1269, file: !1270, line: 962, baseType: !1784, size: 64, offset: 9088)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1270, line: 66, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1269, file: !1270, line: 966, baseType: !1787, size: 64, offset: 9152)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1789, line: 35, flags: DIFlagFwdDecl)
!1789 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1269, file: !1270, line: 969, baseType: !1791, size: 64, offset: 9216)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1793, line: 82, size: 7296, elements: !1794)
!1793 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1794 = !{!1795, !1796, !1797, !1798, !1799, !1800, !1801, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1830, !1839, !1840, !1842, !1843, !1844, !1847, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1877, !1878, !1885, !1886, !1887, !1888, !1889, !1890}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1792, file: !1793, line: 83, baseType: !1282, size: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1792, file: !1793, line: 84, baseType: !802, size: 32, offset: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1792, file: !1793, line: 85, baseType: !109, size: 32, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1792, file: !1793, line: 86, baseType: !184, size: 128, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1792, file: !1793, line: 88, baseType: !1530, size: 128, offset: 256)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1792, file: !1793, line: 91, baseType: !1268, size: 64, offset: 384)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1792, file: !1793, line: 94, baseType: !1802, size: 192, offset: 448)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1803, line: 30, size: 192, elements: !1804)
!1803 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1804 = !{!1805, !1806}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1802, file: !1803, line: 31, baseType: !184, size: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1802, file: !1803, line: 32, baseType: !1807, size: 64, offset: 128)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1808, line: 25, baseType: !1809)
!1808 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1808, line: 23, size: 64, elements: !1810)
!1810 = !{!1811}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1809, file: !1808, line: 24, baseType: !1420, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1792, file: !1793, line: 97, baseType: !689, size: 64, offset: 640)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1792, file: !1793, line: 100, baseType: !109, size: 32, offset: 704)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1792, file: !1793, line: 106, baseType: !109, size: 32, offset: 736)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1792, file: !1793, line: 107, baseType: !1268, size: 64, offset: 768)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1792, file: !1793, line: 110, baseType: !109, size: 32, offset: 832)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1792, file: !1793, line: 111, baseType: !7, size: 32, offset: 864)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1792, file: !1793, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1792, file: !1793, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1792, file: !1793, line: 128, baseType: !109, size: 32, offset: 928)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1792, file: !1793, line: 129, baseType: !184, size: 128, offset: 960)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1792, file: !1793, line: 132, baseType: !1344, size: 512, offset: 1088)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1792, file: !1793, line: 133, baseType: !1352, size: 64, offset: 1600)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1792, file: !1793, line: 140, baseType: !1825, size: 256, offset: 1664)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1826, size: 256, elements: !177)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1793, line: 38, size: 128, elements: !1827)
!1827 = !{!1828, !1829}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1826, file: !1793, line: 39, baseType: !145, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1826, file: !1793, line: 40, baseType: !145, size: 64, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1792, file: !1793, line: 146, baseType: !1831, size: 192, offset: 1920)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1793, line: 66, size: 192, elements: !1832)
!1832 = !{!1833}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1831, file: !1793, line: 67, baseType: !1834, size: 192)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1793, line: 47, size: 192, elements: !1835)
!1835 = !{!1836, !1837, !1838}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1834, file: !1793, line: 48, baseType: !828, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1834, file: !1793, line: 49, baseType: !828, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1834, file: !1793, line: 50, baseType: !828, size: 64, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1792, file: !1793, line: 150, baseType: !1569, size: 640, offset: 2112)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1792, file: !1793, line: 153, baseType: !1841, size: 256, offset: 2752)
!1841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1520, size: 256, elements: !181)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1792, file: !1793, line: 159, baseType: !1520, size: 64, offset: 3008)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1792, file: !1793, line: 162, baseType: !109, size: 32, offset: 3072)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1792, file: !1793, line: 164, baseType: !1845, size: 64, offset: 3136)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1793, line: 164, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1792, file: !1793, line: 175, baseType: !1848, size: 32, offset: 3200)
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !450, line: 805, baseType: !1849)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !450, line: 798, size: 32, elements: !1850)
!1850 = !{!1851, !1852}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1849, file: !450, line: 803, baseType: !449, size: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1849, file: !450, line: 804, baseType: !309, offset: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1792, file: !1793, line: 176, baseType: !145, size: 64, offset: 3264)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1792, file: !1793, line: 176, baseType: !145, size: 64, offset: 3328)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1792, file: !1793, line: 176, baseType: !145, size: 64, offset: 3392)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1792, file: !1793, line: 176, baseType: !145, size: 64, offset: 3456)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1792, file: !1793, line: 177, baseType: !145, size: 64, offset: 3520)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1792, file: !1793, line: 178, baseType: !145, size: 64, offset: 3584)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1792, file: !1793, line: 179, baseType: !1557, size: 128, offset: 3648)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1792, file: !1793, line: 180, baseType: !103, size: 64, offset: 3776)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1792, file: !1793, line: 180, baseType: !103, size: 64, offset: 3840)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1792, file: !1793, line: 180, baseType: !103, size: 64, offset: 3904)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1792, file: !1793, line: 180, baseType: !103, size: 64, offset: 3968)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1792, file: !1793, line: 181, baseType: !103, size: 64, offset: 4032)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1792, file: !1793, line: 181, baseType: !103, size: 64, offset: 4096)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1792, file: !1793, line: 181, baseType: !103, size: 64, offset: 4160)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1792, file: !1793, line: 181, baseType: !103, size: 64, offset: 4224)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1792, file: !1793, line: 182, baseType: !103, size: 64, offset: 4288)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1792, file: !1793, line: 182, baseType: !103, size: 64, offset: 4352)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1792, file: !1793, line: 182, baseType: !103, size: 64, offset: 4416)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1792, file: !1793, line: 182, baseType: !103, size: 64, offset: 4480)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1792, file: !1793, line: 183, baseType: !103, size: 64, offset: 4544)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1792, file: !1793, line: 183, baseType: !103, size: 64, offset: 4608)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1792, file: !1793, line: 184, baseType: !1875, offset: 4672)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1876, line: 12, elements: !217)
!1876 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1792, file: !1793, line: 192, baseType: !149, size: 64, offset: 4672)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1792, file: !1793, line: 203, baseType: !1879, size: 2048, offset: 4736)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1880, size: 2048, elements: !1772)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1881, line: 43, size: 128, elements: !1882)
!1881 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1882 = !{!1883, !1884}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1880, file: !1881, line: 44, baseType: !193, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1880, file: !1881, line: 45, baseType: !193, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1792, file: !1793, line: 220, baseType: !544, size: 8, offset: 6784)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1792, file: !1793, line: 221, baseType: !1257, size: 16, offset: 6800)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1792, file: !1793, line: 222, baseType: !1257, size: 16, offset: 6816)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1792, file: !1793, line: 224, baseType: !1028, size: 64, offset: 6848)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1792, file: !1793, line: 227, baseType: !1225, size: 192, offset: 6912)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1792, file: !1793, line: 233, baseType: !1225, size: 192, offset: 7104)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1269, file: !1270, line: 970, baseType: !1892, size: 64, offset: 9280)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1793, line: 20, size: 16576, elements: !1894)
!1894 = !{!1895, !1896, !1897, !1898}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1893, file: !1793, line: 21, baseType: !309)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1893, file: !1793, line: 22, baseType: !1282, size: 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1893, file: !1793, line: 23, baseType: !1530, size: 128, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1893, file: !1793, line: 24, baseType: !1899, size: 16384, offset: 192)
!1899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1900, size: 16384, elements: !347)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1803, line: 49, size: 256, elements: !1901)
!1901 = !{!1902}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1900, file: !1803, line: 50, baseType: !1903, size: 256)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1803, line: 35, size: 256, elements: !1904)
!1904 = !{!1905, !1912, !1913, !1919}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1903, file: !1803, line: 37, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1907, line: 19, baseType: !1908)
!1907 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1907, line: 18, baseType: !1910)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{null, !109}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1903, file: !1803, line: 38, baseType: !103, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1903, file: !1803, line: 44, baseType: !1914, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1907, line: 22, baseType: !1915)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1907, line: 21, baseType: !1917)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1903, file: !1803, line: 46, baseType: !1807, size: 64, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1269, file: !1270, line: 971, baseType: !1807, size: 64, offset: 9344)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1269, file: !1270, line: 972, baseType: !1807, size: 64, offset: 9408)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1269, file: !1270, line: 974, baseType: !1807, size: 64, offset: 9472)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1269, file: !1270, line: 975, baseType: !1802, size: 192, offset: 9536)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1269, file: !1270, line: 976, baseType: !103, size: 64, offset: 9728)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1269, file: !1270, line: 977, baseType: !190, size: 64, offset: 9792)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1269, file: !1270, line: 978, baseType: !7, size: 32, offset: 9856)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1269, file: !1270, line: 980, baseType: !430, size: 64, offset: 9920)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1269, file: !1270, line: 989, baseType: !1929, size: 128, offset: 9984)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1930, line: 35, size: 128, elements: !1931)
!1930 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1931 = !{!1932, !1933, !1934}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1929, file: !1930, line: 36, baseType: !109, size: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1929, file: !1930, line: 37, baseType: !802, size: 32, offset: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1929, file: !1930, line: 38, baseType: !1935, size: 64, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1930, line: 23, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1269, file: !1270, line: 992, baseType: !145, size: 64, offset: 10112)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1269, file: !1270, line: 993, baseType: !145, size: 64, offset: 10176)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1269, file: !1270, line: 996, baseType: !309, offset: 10240)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1269, file: !1270, line: 999, baseType: !209, offset: 10240)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1269, file: !1270, line: 1001, baseType: !1942, size: 64, offset: 10240)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1270, line: 636, size: 64, elements: !1943)
!1943 = !{!1944}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1942, file: !1270, line: 637, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1269, file: !1270, line: 1005, baseType: !807, size: 128, offset: 10304)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1269, file: !1270, line: 1007, baseType: !1268, size: 64, offset: 10432)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1269, file: !1270, line: 1009, baseType: !1949, size: 64, offset: 10496)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1270, line: 1009, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1269, file: !1270, line: 1043, baseType: !104, size: 64, offset: 10560)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1269, file: !1270, line: 1046, baseType: !1953, size: 64, offset: 10624)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1270, line: 41, flags: DIFlagFwdDecl)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1269, file: !1270, line: 1050, baseType: !1956, size: 64, offset: 10688)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1270, line: 42, flags: DIFlagFwdDecl)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1269, file: !1270, line: 1054, baseType: !1959, size: 64, offset: 10752)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1270, line: 55, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1269, file: !1270, line: 1056, baseType: !1962, size: 64, offset: 10816)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1270, line: 40, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1269, file: !1270, line: 1058, baseType: !1965, size: 64, offset: 10880)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1967, line: 99, size: 704, elements: !1968)
!1967 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1968 = !{!1969, !1970, !1971, !1972, !1973, !1974, !1975, !1994, !1995}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1966, file: !1967, line: 100, baseType: !826, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1966, file: !1967, line: 101, baseType: !802, size: 32, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1966, file: !1967, line: 102, baseType: !802, size: 32, offset: 96)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1966, file: !1967, line: 105, baseType: !309, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1966, file: !1967, line: 107, baseType: !134, size: 16, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1966, file: !1967, line: 109, baseType: !793, size: 128, offset: 192)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1966, file: !1967, line: 110, baseType: !1976, size: 64, offset: 320)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1967, line: 73, size: 448, elements: !1978)
!1978 = !{!1979, !1982, !1983, !1988, !1993}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1977, file: !1967, line: 74, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1967, line: 74, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1977, file: !1967, line: 75, baseType: !1965, size: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, scope: !1977, file: !1967, line: 83, baseType: !1984, size: 128, offset: 128)
!1984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1977, file: !1967, line: 83, size: 128, elements: !1985)
!1985 = !{!1986, !1987}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1984, file: !1967, line: 84, baseType: !184, size: 128)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1984, file: !1967, line: 85, baseType: !989, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, scope: !1977, file: !1967, line: 87, baseType: !1989, size: 128, offset: 256)
!1989 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1977, file: !1967, line: 87, size: 128, elements: !1990)
!1990 = !{!1991, !1992}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1989, file: !1967, line: 88, baseType: !693, size: 128)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1989, file: !1967, line: 89, baseType: !427, size: 128, align: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1977, file: !1967, line: 92, baseType: !7, size: 32, offset: 384)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1966, file: !1967, line: 111, baseType: !689, size: 64, offset: 384)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1966, file: !1967, line: 113, baseType: !1996, size: 256, offset: 448)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1997, line: 102, size: 256, elements: !1998)
!1997 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1998 = !{!1999, !2000, !2001}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1996, file: !1997, line: 103, baseType: !826, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1996, file: !1997, line: 104, baseType: !184, size: 128, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1996, file: !1997, line: 105, baseType: !2002, size: 64, offset: 192)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1997, line: 21, baseType: !2003)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{null, !2006}
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1269, file: !1270, line: 1061, baseType: !2008, size: 64, offset: 10944)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1270, line: 43, flags: DIFlagFwdDecl)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1269, file: !1270, line: 1064, baseType: !103, size: 64, offset: 11008)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1269, file: !1270, line: 1065, baseType: !2012, size: 64, offset: 11072)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1803, line: 14, baseType: !2014)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1803, line: 12, size: 384, elements: !2015)
!2015 = !{!2016}
!2016 = !DIDerivedType(tag: DW_TAG_member, scope: !2014, file: !1803, line: 13, baseType: !2017, size: 384)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2014, file: !1803, line: 13, size: 384, elements: !2018)
!2018 = !{!2019, !2020, !2021, !2022}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2017, file: !1803, line: 13, baseType: !109, size: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2017, file: !1803, line: 13, baseType: !109, size: 32, offset: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2017, file: !1803, line: 13, baseType: !109, size: 32, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2017, file: !1803, line: 13, baseType: !2023, size: 256, offset: 128)
!2023 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2024, line: 32, size: 256, elements: !2025)
!2024 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2025 = !{!2026, !2031, !2044, !2050, !2059, !2079, !2084}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2023, file: !2024, line: 37, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !2024, line: 34, size: 64, elements: !2028)
!2028 = !{!2029, !2030}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2027, file: !2024, line: 35, baseType: !1509, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2027, file: !2024, line: 36, baseType: !495, size: 32, offset: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2023, file: !2024, line: 45, baseType: !2032, size: 192)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !2024, line: 40, size: 192, elements: !2033)
!2033 = !{!2034, !2036, !2037, !2043}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2032, file: !2024, line: 41, baseType: !2035, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !192, line: 95, baseType: !109)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2032, file: !2024, line: 42, baseType: !109, size: 32, offset: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2032, file: !2024, line: 43, baseType: !2038, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2024, line: 11, baseType: !2039)
!2039 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2024, line: 8, size: 64, elements: !2040)
!2040 = !{!2041, !2042}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2039, file: !2024, line: 9, baseType: !109, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2039, file: !2024, line: 10, baseType: !104, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2032, file: !2024, line: 44, baseType: !109, size: 32, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2023, file: !2024, line: 52, baseType: !2045, size: 128)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !2024, line: 48, size: 128, elements: !2046)
!2046 = !{!2047, !2048, !2049}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2045, file: !2024, line: 49, baseType: !1509, size: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2045, file: !2024, line: 50, baseType: !495, size: 32, offset: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2045, file: !2024, line: 51, baseType: !2038, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2023, file: !2024, line: 61, baseType: !2051, size: 256)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !2024, line: 55, size: 256, elements: !2052)
!2052 = !{!2053, !2054, !2055, !2056, !2058}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2051, file: !2024, line: 56, baseType: !1509, size: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2051, file: !2024, line: 57, baseType: !495, size: 32, offset: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2051, file: !2024, line: 58, baseType: !109, size: 32, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2051, file: !2024, line: 59, baseType: !2057, size: 64, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !192, line: 94, baseType: !375)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2051, file: !2024, line: 60, baseType: !2057, size: 64, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2023, file: !2024, line: 95, baseType: !2060, size: 256)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !2024, line: 64, size: 256, elements: !2061)
!2061 = !{!2062, !2063}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2060, file: !2024, line: 65, baseType: !104, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, scope: !2060, file: !2024, line: 77, baseType: !2064, size: 192, offset: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2060, file: !2024, line: 77, size: 192, elements: !2065)
!2065 = !{!2066, !2067, !2074}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2064, file: !2024, line: 82, baseType: !1257, size: 16)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2064, file: !2024, line: 88, baseType: !2068, size: 192)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2064, file: !2024, line: 84, size: 192, elements: !2069)
!2069 = !{!2070, !2072, !2073}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2068, file: !2024, line: 85, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 64, elements: !1382)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2068, file: !2024, line: 86, baseType: !104, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2068, file: !2024, line: 87, baseType: !104, size: 64, offset: 128)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2064, file: !2024, line: 93, baseType: !2075, size: 96)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2064, file: !2024, line: 90, size: 96, elements: !2076)
!2076 = !{!2077, !2078}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2075, file: !2024, line: 91, baseType: !2071, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2075, file: !2024, line: 92, baseType: !267, size: 32, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2023, file: !2024, line: 101, baseType: !2080, size: 128)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !2024, line: 98, size: 128, elements: !2081)
!2081 = !{!2082, !2083}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2080, file: !2024, line: 99, baseType: !376, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2080, file: !2024, line: 100, baseType: !109, size: 32, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2023, file: !2024, line: 108, baseType: !2085, size: 128)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !2024, line: 104, size: 128, elements: !2086)
!2086 = !{!2087, !2088, !2089}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2085, file: !2024, line: 105, baseType: !104, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2085, file: !2024, line: 106, baseType: !109, size: 32, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2085, file: !2024, line: 107, baseType: !7, size: 32, offset: 96)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1269, file: !1270, line: 1067, baseType: !1875, offset: 11136)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1269, file: !1270, line: 1099, baseType: !2092, size: 64, offset: 11136)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1270, line: 56, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1269, file: !1270, line: 1103, baseType: !184, size: 128, offset: 11200)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1269, file: !1270, line: 1104, baseType: !2096, size: 64, offset: 11328)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1270, line: 46, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1269, file: !1270, line: 1105, baseType: !1225, size: 192, offset: 11392)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1269, file: !1270, line: 1106, baseType: !7, size: 32, offset: 11584)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1269, file: !1270, line: 1109, baseType: !2101, size: 128, offset: 11648)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2102, size: 128, elements: !177)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1270, line: 51, flags: DIFlagFwdDecl)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1269, file: !1270, line: 1110, baseType: !1225, size: 192, offset: 11776)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1269, file: !1270, line: 1111, baseType: !184, size: 128, offset: 11968)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1269, file: !1270, line: 1173, baseType: !2107, size: 64, offset: 12096)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2109, line: 62, size: 256, align: 256, elements: !2110)
!2109 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2110 = !{!2111, !2112, !2113, !2118}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2108, file: !2109, line: 75, baseType: !267, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2108, file: !2109, line: 90, baseType: !267, size: 32, offset: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2108, file: !2109, line: 124, baseType: !2114, size: 64, offset: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2108, file: !2109, line: 109, size: 64, elements: !2115)
!2115 = !{!2116, !2117}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2114, file: !2109, line: 110, baseType: !147, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2114, file: !2109, line: 112, baseType: !147, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2108, file: !2109, line: 144, baseType: !267, size: 32, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1269, file: !1270, line: 1174, baseType: !266, size: 32, offset: 12160)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1269, file: !1270, line: 1179, baseType: !103, size: 64, offset: 12224)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1269, file: !1270, line: 1182, baseType: !2122, size: 128, offset: 12288)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1205, line: 76, size: 128, elements: !2123)
!2123 = !{!2124, !2129, !2130}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2122, file: !1205, line: 85, baseType: !2125, size: 64)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2126, line: 7, size: 64, elements: !2127)
!2126 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2127 = !{!2128}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2125, file: !2126, line: 12, baseType: !1417, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2122, file: !1205, line: 88, baseType: !544, size: 8, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2122, file: !1205, line: 95, baseType: !544, size: 8, offset: 72)
!2131 = !DIDerivedType(tag: DW_TAG_member, scope: !1269, file: !1270, line: 1184, baseType: !2132, size: 128, offset: 12416)
!2132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1269, file: !1270, line: 1184, size: 128, elements: !2133)
!2133 = !{!2134, !2135}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2132, file: !1270, line: 1185, baseType: !1282, size: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2132, file: !1270, line: 1186, baseType: !427, size: 128, align: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1269, file: !1270, line: 1190, baseType: !2137, size: 64, offset: 12544)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1270, line: 53, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1269, file: !1270, line: 1192, baseType: !2140, size: 128, offset: 12608)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1205, line: 64, size: 128, elements: !2141)
!2141 = !{!2142, !2143, !2144}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2140, file: !1205, line: 65, baseType: !775, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2140, file: !1205, line: 67, baseType: !267, size: 32, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2140, file: !1205, line: 68, baseType: !267, size: 32, offset: 96)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1269, file: !1270, line: 1206, baseType: !109, size: 32, offset: 12736)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1269, file: !1270, line: 1207, baseType: !109, size: 32, offset: 12768)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1269, file: !1270, line: 1209, baseType: !103, size: 64, offset: 12800)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1269, file: !1270, line: 1219, baseType: !145, size: 64, offset: 12864)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1269, file: !1270, line: 1220, baseType: !145, size: 64, offset: 12928)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1269, file: !1270, line: 1317, baseType: !109, size: 32, offset: 12992)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1269, file: !1270, line: 1319, baseType: !1268, size: 64, offset: 13056)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1269, file: !1270, line: 1322, baseType: !2153, size: 64, offset: 13120)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2155, line: 56, size: 512, elements: !2156)
!2155 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2156 = !{!2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2154, file: !2155, line: 57, baseType: !2153, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2154, file: !2155, line: 58, baseType: !104, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2154, file: !2155, line: 59, baseType: !103, size: 64, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2154, file: !2155, line: 60, baseType: !103, size: 64, offset: 192)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2154, file: !2155, line: 61, baseType: !874, size: 64, offset: 256)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2154, file: !2155, line: 62, baseType: !7, size: 32, offset: 320)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2154, file: !2155, line: 63, baseType: !144, size: 64, offset: 384)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2154, file: !2155, line: 64, baseType: !2165, size: 64, offset: 448)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1269, file: !1270, line: 1326, baseType: !1282, size: 32, offset: 13184)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1269, file: !1270, line: 1342, baseType: !104, size: 64, offset: 13248)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1269, file: !1270, line: 1343, baseType: !147, size: 64, offset: 13312)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1269, file: !1270, line: 1344, baseType: !145, size: 64, offset: 13376)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1269, file: !1270, line: 1345, baseType: !147, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1269, file: !1270, line: 1346, baseType: !147, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1269, file: !1270, line: 1347, baseType: !147, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1269, file: !1270, line: 1348, baseType: !427, size: 128, align: 64, offset: 13504)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1269, file: !1270, line: 1358, baseType: !2176, size: 34816, offset: 13824)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2177, line: 485, size: 34816, elements: !2178)
!2177 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2178 = !{!2179, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2208, !2209, !2210, !2211, !2212, !2213, !2216, !2217, !2218}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2176, file: !2177, line: 487, baseType: !2180, size: 192)
!2180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2181, size: 192, elements: !343)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2182, line: 16, size: 64, elements: !2183)
!2182 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2183 = !{!2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2181, file: !2182, line: 17, baseType: !913, size: 16)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2181, file: !2182, line: 18, baseType: !913, size: 16, offset: 16)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2181, file: !2182, line: 19, baseType: !913, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2181, file: !2182, line: 19, baseType: !913, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2181, file: !2182, line: 19, baseType: !913, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2181, file: !2182, line: 19, baseType: !913, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2181, file: !2182, line: 19, baseType: !913, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2181, file: !2182, line: 20, baseType: !913, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2181, file: !2182, line: 20, baseType: !913, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2181, file: !2182, line: 20, baseType: !913, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2181, file: !2182, line: 20, baseType: !913, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2181, file: !2182, line: 20, baseType: !913, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2181, file: !2182, line: 20, baseType: !913, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2176, file: !2177, line: 491, baseType: !103, size: 64, offset: 192)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2176, file: !2177, line: 495, baseType: !134, size: 16, offset: 256)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2176, file: !2177, line: 496, baseType: !134, size: 16, offset: 272)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2176, file: !2177, line: 497, baseType: !134, size: 16, offset: 288)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2176, file: !2177, line: 498, baseType: !134, size: 16, offset: 304)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2176, file: !2177, line: 502, baseType: !103, size: 64, offset: 320)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2176, file: !2177, line: 503, baseType: !103, size: 64, offset: 384)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2176, file: !2177, line: 514, baseType: !2205, size: 256, offset: 448)
!2205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2206, size: 256, elements: !181)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2177, line: 483, flags: DIFlagFwdDecl)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2176, file: !2177, line: 516, baseType: !103, size: 64, offset: 704)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2176, file: !2177, line: 518, baseType: !103, size: 64, offset: 768)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2176, file: !2177, line: 520, baseType: !103, size: 64, offset: 832)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2176, file: !2177, line: 521, baseType: !103, size: 64, offset: 896)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2176, file: !2177, line: 522, baseType: !103, size: 64, offset: 960)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2176, file: !2177, line: 528, baseType: !2214, size: 64, offset: 1024)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2177, line: 10, flags: DIFlagFwdDecl)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2176, file: !2177, line: 535, baseType: !103, size: 64, offset: 1088)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2176, file: !2177, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2176, file: !2177, line: 540, baseType: !2219, size: 33280, offset: 1536)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2220, line: 317, size: 33280, elements: !2221)
!2220 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2221 = !{!2222, !2223, !2224}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2219, file: !2220, line: 330, baseType: !7, size: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2219, file: !2220, line: 337, baseType: !103, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2219, file: !2220, line: 348, baseType: !2225, size: 32768, offset: 512)
!2225 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2220, line: 304, size: 32768, elements: !2226)
!2226 = !{!2227, !2242, !2281, !2331, !2344}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2225, file: !2220, line: 305, baseType: !2228, size: 896)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2220, line: 12, size: 896, elements: !2229)
!2229 = !{!2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2241}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2228, file: !2220, line: 13, baseType: !266, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2228, file: !2220, line: 14, baseType: !266, size: 32, offset: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2228, file: !2220, line: 15, baseType: !266, size: 32, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2228, file: !2220, line: 16, baseType: !266, size: 32, offset: 96)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2228, file: !2220, line: 17, baseType: !266, size: 32, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2228, file: !2220, line: 18, baseType: !266, size: 32, offset: 160)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2228, file: !2220, line: 19, baseType: !266, size: 32, offset: 192)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2228, file: !2220, line: 22, baseType: !2238, size: 640, offset: 224)
!2238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 640, elements: !2239)
!2239 = !{!2240}
!2240 = !DISubrange(count: 20)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2228, file: !2220, line: 25, baseType: !266, size: 32, offset: 864)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2225, file: !2220, line: 306, baseType: !2243, size: 4096, align: 128)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2220, line: 34, size: 4096, align: 128, elements: !2244)
!2244 = !{!2245, !2246, !2247, !2248, !2249, !2264, !2265, !2266, !2270, !2272, !2276}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2243, file: !2220, line: 35, baseType: !913, size: 16)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2243, file: !2220, line: 36, baseType: !913, size: 16, offset: 16)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2243, file: !2220, line: 37, baseType: !913, size: 16, offset: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2243, file: !2220, line: 38, baseType: !913, size: 16, offset: 48)
!2249 = !DIDerivedType(tag: DW_TAG_member, scope: !2243, file: !2220, line: 39, baseType: !2250, size: 128, offset: 64)
!2250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2243, file: !2220, line: 39, size: 128, elements: !2251)
!2251 = !{!2252, !2257}
!2252 = !DIDerivedType(tag: DW_TAG_member, scope: !2250, file: !2220, line: 40, baseType: !2253, size: 128)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2250, file: !2220, line: 40, size: 128, elements: !2254)
!2254 = !{!2255, !2256}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2253, file: !2220, line: 41, baseType: !145, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2253, file: !2220, line: 42, baseType: !145, size: 64, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, scope: !2250, file: !2220, line: 44, baseType: !2258, size: 128)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2250, file: !2220, line: 44, size: 128, elements: !2259)
!2259 = !{!2260, !2261, !2262, !2263}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2258, file: !2220, line: 45, baseType: !266, size: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2258, file: !2220, line: 46, baseType: !266, size: 32, offset: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2258, file: !2220, line: 47, baseType: !266, size: 32, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2258, file: !2220, line: 48, baseType: !266, size: 32, offset: 96)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2243, file: !2220, line: 51, baseType: !266, size: 32, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2243, file: !2220, line: 52, baseType: !266, size: 32, offset: 224)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2243, file: !2220, line: 55, baseType: !2267, size: 1024, offset: 256)
!2267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 1024, elements: !2268)
!2268 = !{!2269}
!2269 = !DISubrange(count: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2243, file: !2220, line: 58, baseType: !2271, size: 2048, offset: 1280)
!2271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 2048, elements: !347)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2243, file: !2220, line: 60, baseType: !2273, size: 384, offset: 3328)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 384, elements: !2274)
!2274 = !{!2275}
!2275 = !DISubrange(count: 12)
!2276 = !DIDerivedType(tag: DW_TAG_member, scope: !2243, file: !2220, line: 62, baseType: !2277, size: 384, offset: 3712)
!2277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2243, file: !2220, line: 62, size: 384, elements: !2278)
!2278 = !{!2279, !2280}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2277, file: !2220, line: 63, baseType: !2273, size: 384)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2277, file: !2220, line: 64, baseType: !2273, size: 384)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2225, file: !2220, line: 307, baseType: !2282, size: 1088)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2220, line: 79, size: 1088, elements: !2283)
!2283 = !{!2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2330}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2282, file: !2220, line: 80, baseType: !266, size: 32)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2282, file: !2220, line: 81, baseType: !266, size: 32, offset: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2282, file: !2220, line: 82, baseType: !266, size: 32, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2282, file: !2220, line: 83, baseType: !266, size: 32, offset: 96)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2282, file: !2220, line: 84, baseType: !266, size: 32, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2282, file: !2220, line: 85, baseType: !266, size: 32, offset: 160)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2282, file: !2220, line: 86, baseType: !266, size: 32, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2282, file: !2220, line: 88, baseType: !2238, size: 640, offset: 224)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2282, file: !2220, line: 89, baseType: !196, size: 8, offset: 864)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2282, file: !2220, line: 90, baseType: !196, size: 8, offset: 872)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2282, file: !2220, line: 91, baseType: !196, size: 8, offset: 880)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2282, file: !2220, line: 92, baseType: !196, size: 8, offset: 888)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2282, file: !2220, line: 93, baseType: !196, size: 8, offset: 896)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2282, file: !2220, line: 94, baseType: !196, size: 8, offset: 904)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2282, file: !2220, line: 95, baseType: !2299, size: 64, offset: 960)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2301, line: 11, size: 128, elements: !2302)
!2301 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2302 = !{!2303, !2304}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2300, file: !2301, line: 12, baseType: !376, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2300, file: !2301, line: 13, baseType: !2305, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2307, line: 56, size: 1344, elements: !2308)
!2307 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2308 = !{!2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2306, file: !2307, line: 61, baseType: !103, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2306, file: !2307, line: 62, baseType: !103, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2306, file: !2307, line: 63, baseType: !103, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2306, file: !2307, line: 64, baseType: !103, size: 64, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2306, file: !2307, line: 65, baseType: !103, size: 64, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2306, file: !2307, line: 66, baseType: !103, size: 64, offset: 320)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2306, file: !2307, line: 68, baseType: !103, size: 64, offset: 384)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2306, file: !2307, line: 69, baseType: !103, size: 64, offset: 448)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2306, file: !2307, line: 70, baseType: !103, size: 64, offset: 512)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2306, file: !2307, line: 71, baseType: !103, size: 64, offset: 576)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2306, file: !2307, line: 72, baseType: !103, size: 64, offset: 640)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2306, file: !2307, line: 73, baseType: !103, size: 64, offset: 704)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2306, file: !2307, line: 74, baseType: !103, size: 64, offset: 768)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2306, file: !2307, line: 75, baseType: !103, size: 64, offset: 832)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2306, file: !2307, line: 76, baseType: !103, size: 64, offset: 896)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2306, file: !2307, line: 81, baseType: !103, size: 64, offset: 960)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2306, file: !2307, line: 83, baseType: !103, size: 64, offset: 1024)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2306, file: !2307, line: 84, baseType: !103, size: 64, offset: 1088)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2306, file: !2307, line: 85, baseType: !103, size: 64, offset: 1152)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2306, file: !2307, line: 86, baseType: !103, size: 64, offset: 1216)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2306, file: !2307, line: 87, baseType: !103, size: 64, offset: 1280)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2282, file: !2220, line: 96, baseType: !266, size: 32, offset: 1024)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2225, file: !2220, line: 308, baseType: !2332, size: 4608, align: 512)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2220, line: 289, size: 4608, align: 512, elements: !2333)
!2333 = !{!2334, !2335, !2342}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2332, file: !2220, line: 290, baseType: !2243, size: 4096, align: 128)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2332, file: !2220, line: 291, baseType: !2336, size: 512, offset: 4096)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2220, line: 268, size: 512, elements: !2337)
!2337 = !{!2338, !2339, !2340}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2336, file: !2220, line: 269, baseType: !145, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2336, file: !2220, line: 270, baseType: !145, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2336, file: !2220, line: 271, baseType: !2341, size: 384, offset: 128)
!2341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 384, elements: !1662)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2332, file: !2220, line: 292, baseType: !2343, offset: 4608)
!2343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, elements: !1760)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2225, file: !2220, line: 309, baseType: !2345, size: 32768)
!2345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 32768, elements: !2346)
!2346 = !{!2347}
!2347 = !DISubrange(count: 4096)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1265, file: !777, line: 378, baseType: !2349, size: 64, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1261, file: !777, line: 384, baseType: !200, size: 192, offset: 192)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1032, file: !777, line: 500, baseType: !309, offset: 6656)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1032, file: !777, line: 501, baseType: !2353, size: 64, offset: 6656)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !777, line: 387, flags: DIFlagFwdDecl)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1032, file: !777, line: 516, baseType: !1750, size: 64, offset: 6720)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1032, file: !777, line: 519, baseType: !414, size: 64, offset: 6784)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1032, file: !777, line: 521, baseType: !2358, size: 64, offset: 6848)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !777, line: 521, flags: DIFlagFwdDecl)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1032, file: !777, line: 545, baseType: !802, size: 32, offset: 6912)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1032, file: !777, line: 548, baseType: !544, size: 8, offset: 6944)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1032, file: !777, line: 550, baseType: !2363, offset: 6952)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2364, line: 142, elements: !217)
!2364 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1032, file: !777, line: 554, baseType: !1996, size: 256, offset: 6976)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1032, file: !777, line: 557, baseType: !266, size: 32, offset: 7232)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1029, file: !777, line: 565, baseType: !2368, offset: 7296)
!2368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, elements: !2369)
!2369 = !{!2370}
!2370 = !DISubrange(count: -1)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1025, file: !777, line: 151, baseType: !802, size: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1018, file: !777, line: 156, baseType: !309, offset: 256)
!2373 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 159, baseType: !2374, size: 128)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 159, size: 128, elements: !2375)
!2375 = !{!2376, !2440}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2374, file: !777, line: 161, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2379)
!2379 = !{!2380, !2390, !2411, !2412, !2413, !2414, !2415, !2427, !2428, !2429}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2378, file: !31, line: 111, baseType: !2381, size: 384)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2382)
!2382 = !{!2383, !2385, !2386, !2387, !2388, !2389}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2381, file: !31, line: 20, baseType: !2384, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2381, file: !31, line: 21, baseType: !2384, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2381, file: !31, line: 22, baseType: !2384, size: 64, offset: 128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2381, file: !31, line: 23, baseType: !103, size: 64, offset: 192)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2381, file: !31, line: 24, baseType: !103, size: 64, offset: 256)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2381, file: !31, line: 25, baseType: !103, size: 64, offset: 320)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2378, file: !31, line: 112, baseType: !2391, size: 64, offset: 384)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2393, line: 105, size: 128, elements: !2394)
!2393 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2394 = !{!2395, !2396}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2392, file: !2393, line: 110, baseType: !103, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2392, file: !2393, line: 118, baseType: !2397, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2393, line: 95, size: 448, elements: !2399)
!2399 = !{!2400, !2401, !2406, !2407, !2408, !2409, !2410}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2398, file: !2393, line: 96, baseType: !826, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2398, file: !2393, line: 97, baseType: !2402, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2393, line: 60, baseType: !2404)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null, !2391}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2398, file: !2393, line: 98, baseType: !2402, size: 64, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2398, file: !2393, line: 99, baseType: !544, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2398, file: !2393, line: 100, baseType: !544, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2398, file: !2393, line: 101, baseType: !427, size: 128, align: 64, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2398, file: !2393, line: 102, baseType: !2391, size: 64, offset: 384)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2378, file: !31, line: 113, baseType: !2392, size: 128, offset: 448)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2378, file: !31, line: 114, baseType: !200, size: 192, offset: 576)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2378, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2378, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2378, file: !31, line: 117, baseType: !2416, size: 64, offset: 832)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2418)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2419)
!2419 = !{!2420, !2421, !2425, !2426}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2418, file: !31, line: 73, baseType: !894, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2418, file: !31, line: 78, baseType: !2422, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{null, !2377}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2418, file: !31, line: 83, baseType: !2422, size: 64, offset: 128)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2418, file: !31, line: 89, baseType: !1081, size: 64, offset: 192)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2378, file: !31, line: 118, baseType: !104, size: 64, offset: 896)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2378, file: !31, line: 119, baseType: !109, size: 32, offset: 960)
!2429 = !DIDerivedType(tag: DW_TAG_member, scope: !2378, file: !31, line: 120, baseType: !2430, size: 128, offset: 1024)
!2430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2378, file: !31, line: 120, size: 128, elements: !2431)
!2431 = !{!2432, !2438}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2430, file: !31, line: 121, baseType: !2433, size: 128)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2434, line: 6, size: 128, elements: !2435)
!2434 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2435 = !{!2436, !2437}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2433, file: !2434, line: 7, baseType: !145, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2433, file: !2434, line: 8, baseType: !145, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2430, file: !31, line: 122, baseType: !2439)
!2439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2433, elements: !1760)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2374, file: !777, line: 162, baseType: !104, size: 64, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !781, file: !777, line: 176, baseType: !427, size: 128, align: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !777, line: 179, baseType: !2443, size: 32, offset: 384)
!2443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !777, line: 179, size: 32, elements: !2444)
!2444 = !{!2445, !2446, !2447, !2448}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2443, file: !777, line: 184, baseType: !802, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2443, file: !777, line: 192, baseType: !7, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2443, file: !777, line: 194, baseType: !7, size: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2443, file: !777, line: 195, baseType: !109, size: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !776, file: !777, line: 199, baseType: !802, size: 32, offset: 416)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !711, file: !44, line: 1964, baseType: !2451, size: 64, offset: 1344)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!376, !653, !2454}
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2456, line: 12, size: 256, elements: !2457)
!2456 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2457 = !{!2458, !2459, !2460, !2461, !2462}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2455, file: !2456, line: 13, baseType: !798, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2455, file: !2456, line: 16, baseType: !109, size: 32, offset: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2455, file: !2456, line: 23, baseType: !103, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2455, file: !2456, line: 30, baseType: !103, size: 64, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2455, file: !2456, line: 33, baseType: !2463, size: 64, offset: 192)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !777, line: 27, flags: DIFlagFwdDecl)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !711, file: !44, line: 1966, baseType: !2451, size: 64, offset: 1408)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !654, file: !44, line: 1424, baseType: !2467, size: 64, offset: 448)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2469)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2470)
!2470 = !{!2471, !2517, !2521, !2525, !2526, !2527, !2528, !2529, !2534, !2539, !2543}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2469, file: !38, line: 323, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!109, !2475}
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2477)
!2477 = !{!2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2502, !2503, !2504}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2476, file: !38, line: 295, baseType: !693, size: 128)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2476, file: !38, line: 296, baseType: !184, size: 128, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2476, file: !38, line: 297, baseType: !184, size: 128, offset: 256)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2476, file: !38, line: 298, baseType: !184, size: 128, offset: 384)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2476, file: !38, line: 299, baseType: !1225, size: 192, offset: 512)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2476, file: !38, line: 300, baseType: !309, offset: 704)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2476, file: !38, line: 301, baseType: !802, size: 32, offset: 704)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2476, file: !38, line: 302, baseType: !653, size: 64, offset: 768)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2476, file: !38, line: 303, baseType: !2487, size: 64, offset: 832)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2488)
!2488 = !{!2489, !2501}
!2489 = !DIDerivedType(tag: DW_TAG_member, scope: !2487, file: !38, line: 69, baseType: !2490, size: 32)
!2490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2487, file: !38, line: 69, size: 32, elements: !2491)
!2491 = !{!2492, !2493, !2494}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2490, file: !38, line: 70, baseType: !489, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2490, file: !38, line: 71, baseType: !497, size: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2490, file: !38, line: 72, baseType: !2495, size: 32)
!2495 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2496, line: 24, baseType: !2497)
!2496 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2496, line: 22, size: 32, elements: !2498)
!2498 = !{!2499}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2497, file: !2496, line: 23, baseType: !2500, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2496, line: 20, baseType: !495)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2487, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2476, file: !38, line: 304, baseType: !585, size: 64, offset: 896)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2476, file: !38, line: 305, baseType: !103, size: 64, offset: 960)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2476, file: !38, line: 306, baseType: !2505, size: 576, offset: 1024)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2506)
!2506 = !{!2507, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2505, file: !38, line: 206, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !587)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2505, file: !38, line: 207, baseType: !2508, size: 64, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2505, file: !38, line: 208, baseType: !2508, size: 64, offset: 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2505, file: !38, line: 209, baseType: !2508, size: 64, offset: 192)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2505, file: !38, line: 210, baseType: !2508, size: 64, offset: 256)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2505, file: !38, line: 211, baseType: !2508, size: 64, offset: 320)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2505, file: !38, line: 212, baseType: !2508, size: 64, offset: 384)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2505, file: !38, line: 213, baseType: !593, size: 64, offset: 448)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2505, file: !38, line: 214, baseType: !593, size: 64, offset: 512)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2469, file: !38, line: 324, baseType: !2518, size: 64, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!2475, !653, !109}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2469, file: !38, line: 325, baseType: !2522, size: 64, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{null, !2475}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2469, file: !38, line: 326, baseType: !2472, size: 64, offset: 192)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2469, file: !38, line: 327, baseType: !2472, size: 64, offset: 256)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2469, file: !38, line: 328, baseType: !2472, size: 64, offset: 320)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2469, file: !38, line: 329, baseType: !739, size: 64, offset: 384)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2469, file: !38, line: 332, baseType: !2530, size: 64, offset: 448)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!2533, !483}
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2469, file: !38, line: 333, baseType: !2535, size: 64, offset: 512)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!109, !483, !2538}
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2469, file: !38, line: 335, baseType: !2540, size: 64, offset: 576)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!109, !483, !2533}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2469, file: !38, line: 337, baseType: !2544, size: 64, offset: 640)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!109, !653, !2547}
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !654, file: !44, line: 1425, baseType: !2549, size: 64, offset: 512)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2551)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2552)
!2552 = !{!2553, !2557, !2558, !2562, !2563, !2564, !2579, !2602, !2606, !2607, !2630}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2551, file: !38, line: 429, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!109, !653, !109, !109, !603}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2551, file: !38, line: 430, baseType: !739, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2551, file: !38, line: 431, baseType: !2559, size: 64, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!109, !653, !7}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2551, file: !38, line: 432, baseType: !2559, size: 64, offset: 192)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2551, file: !38, line: 433, baseType: !739, size: 64, offset: 256)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2551, file: !38, line: 434, baseType: !2565, size: 64, offset: 320)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!109, !653, !109, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2570)
!2570 = !{!2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2569, file: !38, line: 416, baseType: !109, size: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2569, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2569, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2569, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2569, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2569, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2569, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2569, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2551, file: !38, line: 435, baseType: !2580, size: 64, offset: 384)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!109, !653, !2487, !2583}
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2585)
!2585 = !{!2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2584, file: !38, line: 344, baseType: !109, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2584, file: !38, line: 345, baseType: !145, size: 64, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2584, file: !38, line: 346, baseType: !145, size: 64, offset: 128)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2584, file: !38, line: 347, baseType: !145, size: 64, offset: 192)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2584, file: !38, line: 348, baseType: !145, size: 64, offset: 256)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2584, file: !38, line: 349, baseType: !145, size: 64, offset: 320)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2584, file: !38, line: 350, baseType: !145, size: 64, offset: 384)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2584, file: !38, line: 351, baseType: !832, size: 64, offset: 448)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2584, file: !38, line: 353, baseType: !832, size: 64, offset: 512)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2584, file: !38, line: 354, baseType: !109, size: 32, offset: 576)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2584, file: !38, line: 355, baseType: !109, size: 32, offset: 608)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2584, file: !38, line: 356, baseType: !145, size: 64, offset: 640)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2584, file: !38, line: 357, baseType: !145, size: 64, offset: 704)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2584, file: !38, line: 358, baseType: !145, size: 64, offset: 768)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2584, file: !38, line: 359, baseType: !832, size: 64, offset: 832)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2584, file: !38, line: 360, baseType: !109, size: 32, offset: 896)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2551, file: !38, line: 436, baseType: !2603, size: 64, offset: 448)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!109, !653, !2547, !2583}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2551, file: !38, line: 438, baseType: !2580, size: 64, offset: 512)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2551, file: !38, line: 439, baseType: !2608, size: 64, offset: 576)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!109, !653, !2611}
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2613)
!2613 = !{!2614, !2615}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2612, file: !38, line: 410, baseType: !7, size: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2612, file: !38, line: 411, baseType: !2616, size: 1344, offset: 64)
!2616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2617, size: 1344, elements: !343)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2618)
!2618 = !{!2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2629}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2617, file: !38, line: 396, baseType: !7, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2617, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2617, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2617, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2617, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2617, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2617, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2617, file: !38, line: 404, baseType: !149, size: 64, offset: 256)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2617, file: !38, line: 405, baseType: !2628, size: 64, offset: 320)
!2628 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !123, line: 126, baseType: !145)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2617, file: !38, line: 406, baseType: !2628, size: 64, offset: 384)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2551, file: !38, line: 440, baseType: !2559, size: 64, offset: 640)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !654, file: !44, line: 1426, baseType: !2632, size: 64, offset: 576)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2634)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !654, file: !44, line: 1427, baseType: !103, size: 64, offset: 640)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !654, file: !44, line: 1428, baseType: !103, size: 64, offset: 704)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !654, file: !44, line: 1429, baseType: !103, size: 64, offset: 768)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !654, file: !44, line: 1430, baseType: !444, size: 64, offset: 832)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !654, file: !44, line: 1431, baseType: !822, size: 256, offset: 896)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !654, file: !44, line: 1432, baseType: !109, size: 32, offset: 1152)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !654, file: !44, line: 1433, baseType: !802, size: 32, offset: 1184)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !654, file: !44, line: 1437, baseType: !2643, size: 64, offset: 1216)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2646)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !654, file: !44, line: 1449, baseType: !2648, size: 64, offset: 1280)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !460, line: 34, size: 64, elements: !2649)
!2649 = !{!2650}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2648, file: !460, line: 35, baseType: !463, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !654, file: !44, line: 1450, baseType: !184, size: 128, offset: 1344)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !654, file: !44, line: 1451, baseType: !2653, size: 64, offset: 1472)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !654, file: !44, line: 1452, baseType: !1962, size: 64, offset: 1536)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !654, file: !44, line: 1453, baseType: !2657, size: 64, offset: 1600)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !654, file: !44, line: 1454, baseType: !693, size: 128, offset: 1664)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !654, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !654, file: !44, line: 1456, baseType: !2662, size: 2432, offset: 1856)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2663)
!2663 = !{!2664, !2665, !2666, !2668, !2700}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2662, file: !38, line: 519, baseType: !7, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2662, file: !38, line: 520, baseType: !822, size: 256, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2662, file: !38, line: 521, baseType: !2667, size: 192, offset: 320)
!2667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 192, elements: !343)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2662, file: !38, line: 522, baseType: !2669, size: 1728, offset: 512)
!2669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2670, size: 1728, elements: !343)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2671)
!2671 = !{!2672, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2670, file: !38, line: 223, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2675)
!2675 = !{!2676, !2677, !2690, !2691}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2674, file: !38, line: 444, baseType: !109, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2674, file: !38, line: 445, baseType: !2678, size: 64, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2680)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2681)
!2681 = !{!2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2680, file: !38, line: 311, baseType: !739, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2680, file: !38, line: 312, baseType: !739, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2680, file: !38, line: 313, baseType: !739, size: 64, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2680, file: !38, line: 314, baseType: !739, size: 64, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2680, file: !38, line: 315, baseType: !2472, size: 64, offset: 256)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2680, file: !38, line: 316, baseType: !2472, size: 64, offset: 320)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2680, file: !38, line: 317, baseType: !2472, size: 64, offset: 384)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2680, file: !38, line: 318, baseType: !2544, size: 64, offset: 448)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2674, file: !38, line: 446, baseType: !100, size: 64, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2674, file: !38, line: 447, baseType: !2673, size: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2670, file: !38, line: 224, baseType: !109, size: 32, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2670, file: !38, line: 226, baseType: !184, size: 128, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2670, file: !38, line: 227, baseType: !103, size: 64, offset: 256)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2670, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2670, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2670, file: !38, line: 230, baseType: !2508, size: 64, offset: 384)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2670, file: !38, line: 231, baseType: !2508, size: 64, offset: 448)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2670, file: !38, line: 232, baseType: !104, size: 64, offset: 512)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2662, file: !38, line: 523, baseType: !2701, size: 192, offset: 2240)
!2701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2678, size: 192, elements: !343)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !654, file: !44, line: 1458, baseType: !2703, size: 2112, offset: 4288)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2704)
!2704 = !{!2705, !2706, !2707}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2703, file: !44, line: 1411, baseType: !109, size: 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2703, file: !44, line: 1412, baseType: !1530, size: 128, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2703, file: !44, line: 1413, baseType: !2708, size: 1920, offset: 192)
!2708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2709, size: 1920, elements: !343)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2710, line: 12, size: 640, elements: !2711)
!2710 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2711 = !{!2712, !2720, !2722, !2727, !2728}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2709, file: !2710, line: 13, baseType: !2713, size: 320)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2714, line: 17, size: 320, elements: !2715)
!2714 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2715 = !{!2716, !2717, !2718, !2719}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2713, file: !2714, line: 18, baseType: !109, size: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2713, file: !2714, line: 19, baseType: !109, size: 32, offset: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2713, file: !2714, line: 20, baseType: !1530, size: 128, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2713, file: !2714, line: 22, baseType: !427, size: 128, align: 64, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2709, file: !2710, line: 14, baseType: !2721, size: 64, offset: 320)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2709, file: !2710, line: 15, baseType: !2723, size: 64, offset: 384)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2724, line: 16, size: 64, elements: !2725)
!2724 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2725 = !{!2726}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2723, file: !2724, line: 17, baseType: !1268, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2709, file: !2710, line: 16, baseType: !1530, size: 128, offset: 448)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2709, file: !2710, line: 17, baseType: !802, size: 32, offset: 576)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !654, file: !44, line: 1465, baseType: !104, size: 64, offset: 6400)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !654, file: !44, line: 1468, baseType: !266, size: 32, offset: 6464)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !654, file: !44, line: 1470, baseType: !593, size: 64, offset: 6528)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !654, file: !44, line: 1471, baseType: !593, size: 64, offset: 6592)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !654, file: !44, line: 1473, baseType: !267, size: 32, offset: 6656)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !654, file: !44, line: 1474, baseType: !2735, size: 64, offset: 6720)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !654, file: !44, line: 1477, baseType: !2738, size: 256, offset: 6784)
!2738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 256, elements: !2268)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !654, file: !44, line: 1478, baseType: !2740, size: 128, offset: 7040)
!2740 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2741, line: 18, baseType: !2742)
!2741 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2741, line: 16, size: 128, elements: !2743)
!2743 = !{!2744}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2742, file: !2741, line: 17, baseType: !2745, size: 128)
!2745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 128, elements: !1772)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !654, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !654, file: !44, line: 1481, baseType: !2748, size: 32, offset: 7200)
!2748 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !123, line: 150, baseType: !7)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !654, file: !44, line: 1487, baseType: !1225, size: 192, offset: 7232)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !654, file: !44, line: 1493, baseType: !160, size: 64, offset: 7424)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !654, file: !44, line: 1495, baseType: !2752, size: 64, offset: 7488)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2754)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !442, line: 135, size: 1024, align: 512, elements: !2755)
!2755 = !{!2756, !2760, !2761, !2768, !2774, !2778, !2782, !2786, !2787, !2791, !2795, !2800, !2804}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2754, file: !442, line: 136, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!109, !444, !7}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2754, file: !442, line: 137, baseType: !2757, size: 64, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2754, file: !442, line: 138, baseType: !2762, size: 64, offset: 128)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!109, !2765, !2767}
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2754, file: !442, line: 139, baseType: !2769, size: 64, offset: 192)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!109, !2765, !7, !160, !2772}
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2754, file: !442, line: 141, baseType: !2775, size: 64, offset: 256)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!109, !2765}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2754, file: !442, line: 142, baseType: !2779, size: 64, offset: 320)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!109, !444}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2754, file: !442, line: 143, baseType: !2783, size: 64, offset: 384)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{null, !444}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2754, file: !442, line: 144, baseType: !2783, size: 64, offset: 448)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2754, file: !442, line: 145, baseType: !2788, size: 64, offset: 512)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{null, !444, !483}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2754, file: !442, line: 146, baseType: !2792, size: 64, offset: 576)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!342, !444, !342, !109}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2754, file: !442, line: 147, baseType: !2796, size: 64, offset: 640)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!440, !2799}
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2754, file: !442, line: 148, baseType: !2801, size: 64, offset: 704)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!109, !603, !544}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2754, file: !442, line: 149, baseType: !2805, size: 64, offset: 768)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!444, !444, !2808}
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !654, file: !44, line: 1500, baseType: !109, size: 32, offset: 7552)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !654, file: !44, line: 1502, baseType: !2812, size: 448, offset: 7616)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2456, line: 60, size: 448, elements: !2813)
!2813 = !{!2814, !2819, !2820, !2821, !2822, !2823, !2824}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2812, file: !2456, line: 61, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!103, !2818, !2454}
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2812, file: !2456, line: 63, baseType: !2815, size: 64, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2812, file: !2456, line: 66, baseType: !376, size: 64, offset: 128)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2812, file: !2456, line: 67, baseType: !109, size: 32, offset: 192)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2812, file: !2456, line: 68, baseType: !7, size: 32, offset: 224)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2812, file: !2456, line: 71, baseType: !184, size: 128, offset: 256)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2812, file: !2456, line: 77, baseType: !2825, size: 64, offset: 384)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !654, file: !44, line: 1505, baseType: !826, size: 64, offset: 8064)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !654, file: !44, line: 1508, baseType: !826, size: 64, offset: 8128)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !654, file: !44, line: 1511, baseType: !109, size: 32, offset: 8192)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !654, file: !44, line: 1514, baseType: !963, size: 32, offset: 8224)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !654, file: !44, line: 1517, baseType: !2831, size: 64, offset: 8256)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1997, line: 18, flags: DIFlagFwdDecl)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !654, file: !44, line: 1518, baseType: !689, size: 64, offset: 8320)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !654, file: !44, line: 1525, baseType: !1750, size: 64, offset: 8384)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !654, file: !44, line: 1532, baseType: !2836, size: 64, offset: 8448)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2837, line: 52, size: 64, elements: !2838)
!2837 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2838 = !{!2839}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2836, file: !2837, line: 53, baseType: !2840, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2837, line: 40, size: 256, elements: !2842)
!2842 = !{!2843, !2844, !2849}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2841, file: !2837, line: 42, baseType: !309)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2841, file: !2837, line: 44, baseType: !2845, size: 192)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2837, line: 28, size: 192, elements: !2846)
!2846 = !{!2847, !2848}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2845, file: !2837, line: 29, baseType: !184, size: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2845, file: !2837, line: 31, baseType: !376, size: 64, offset: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2841, file: !2837, line: 49, baseType: !376, size: 64, offset: 192)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !654, file: !44, line: 1533, baseType: !2836, size: 64, offset: 8512)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !654, file: !44, line: 1534, baseType: !427, size: 128, align: 64, offset: 8576)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !654, file: !44, line: 1535, baseType: !1996, size: 256, offset: 8704)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !654, file: !44, line: 1537, baseType: !1225, size: 192, offset: 8960)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !654, file: !44, line: 1542, baseType: !109, size: 32, offset: 9152)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !654, file: !44, line: 1545, baseType: !309, offset: 9184)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !654, file: !44, line: 1546, baseType: !184, size: 128, offset: 9216)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !654, file: !44, line: 1548, baseType: !309, offset: 9344)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !654, file: !44, line: 1549, baseType: !184, size: 128, offset: 9344)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !484, file: !44, line: 624, baseType: !788, size: 64, offset: 256)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !484, file: !44, line: 631, baseType: !103, size: 64, offset: 320)
!2861 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !44, line: 639, baseType: !2862, size: 32, offset: 384)
!2862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !44, line: 639, size: 32, elements: !2863)
!2863 = !{!2864, !2866}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2862, file: !44, line: 640, baseType: !2865, size: 32)
!2865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2862, file: !44, line: 641, baseType: !7, size: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !484, file: !44, line: 643, baseType: !567, size: 32, offset: 416)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !484, file: !44, line: 644, baseType: !585, size: 64, offset: 448)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !484, file: !44, line: 645, baseType: !589, size: 128, offset: 512)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !484, file: !44, line: 646, baseType: !589, size: 128, offset: 640)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !484, file: !44, line: 647, baseType: !589, size: 128, offset: 768)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !484, file: !44, line: 648, baseType: !309, offset: 896)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !484, file: !44, line: 649, baseType: !134, size: 16, offset: 896)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !484, file: !44, line: 650, baseType: !196, size: 8, offset: 912)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !484, file: !44, line: 651, baseType: !196, size: 8, offset: 920)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !484, file: !44, line: 652, baseType: !2628, size: 64, offset: 960)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !484, file: !44, line: 659, baseType: !103, size: 64, offset: 1024)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !484, file: !44, line: 660, baseType: !822, size: 256, offset: 1088)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !484, file: !44, line: 662, baseType: !103, size: 64, offset: 1344)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !484, file: !44, line: 663, baseType: !103, size: 64, offset: 1408)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !484, file: !44, line: 665, baseType: !693, size: 128, offset: 1472)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !484, file: !44, line: 666, baseType: !184, size: 128, offset: 1600)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !484, file: !44, line: 675, baseType: !184, size: 128, offset: 1728)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !484, file: !44, line: 676, baseType: !184, size: 128, offset: 1856)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !484, file: !44, line: 677, baseType: !184, size: 128, offset: 1984)
!2886 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !44, line: 678, baseType: !2887, size: 128, offset: 2112)
!2887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !44, line: 678, size: 128, elements: !2888)
!2888 = !{!2889, !2890}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2887, file: !44, line: 679, baseType: !689, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2887, file: !44, line: 680, baseType: !427, size: 128, align: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !484, file: !44, line: 682, baseType: !828, size: 64, offset: 2240)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !484, file: !44, line: 683, baseType: !828, size: 64, offset: 2304)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !484, file: !44, line: 684, baseType: !802, size: 32, offset: 2368)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !484, file: !44, line: 685, baseType: !802, size: 32, offset: 2400)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !484, file: !44, line: 686, baseType: !802, size: 32, offset: 2432)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !484, file: !44, line: 688, baseType: !802, size: 32, offset: 2464)
!2897 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !44, line: 690, baseType: !2898, size: 64, offset: 2496)
!2898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !44, line: 690, size: 64, elements: !2899)
!2899 = !{!2900, !3123}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2898, file: !44, line: 691, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2903)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2904)
!2904 = !{!2905, !2906, !2910, !2915, !2919, !2920, !2921, !2925, !2938, !2939, !2947, !2951, !2952, !2956, !2957, !2961, !2966, !2967, !2971, !2975, !3083, !3087, !3088, !3092, !3093, !3097, !3101, !3106, !3110, !3114, !3118, !3122}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2903, file: !44, line: 1823, baseType: !100, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2903, file: !44, line: 1824, baseType: !2907, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!585, !414, !585, !109}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2903, file: !44, line: 1825, baseType: !2911, size: 64, offset: 128)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!373, !414, !342, !190, !2914}
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2903, file: !44, line: 1826, baseType: !2916, size: 64, offset: 192)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!373, !414, !160, !190, !2914}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2903, file: !44, line: 1827, baseType: !898, size: 64, offset: 256)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2903, file: !44, line: 1828, baseType: !898, size: 64, offset: 320)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2903, file: !44, line: 1829, baseType: !2922, size: 64, offset: 384)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!109, !901, !544}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2903, file: !44, line: 1830, baseType: !2926, size: 64, offset: 448)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!109, !414, !2929}
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2931)
!2931 = !{!2932, !2937}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2930, file: !44, line: 1777, baseType: !2933, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2934)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!109, !2929, !160, !109, !585, !145, !7}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2930, file: !44, line: 1778, baseType: !585, size: 64, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2903, file: !44, line: 1831, baseType: !2926, size: 64, offset: 512)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2903, file: !44, line: 1832, baseType: !2940, size: 64, offset: 576)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!2943, !414, !2945}
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2944, line: 52, baseType: !7)
!2944 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !673, line: 27, flags: DIFlagFwdDecl)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2903, file: !44, line: 1833, baseType: !2948, size: 64, offset: 640)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!376, !414, !7, !103}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2903, file: !44, line: 1834, baseType: !2948, size: 64, offset: 704)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2903, file: !44, line: 1835, baseType: !2953, size: 64, offset: 768)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!109, !414, !1035}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2903, file: !44, line: 1836, baseType: !103, size: 64, offset: 832)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2903, file: !44, line: 1837, baseType: !2958, size: 64, offset: 896)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!109, !483, !414}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2903, file: !44, line: 1838, baseType: !2962, size: 64, offset: 960)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!109, !414, !2965}
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !104)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2903, file: !44, line: 1839, baseType: !2958, size: 64, offset: 1024)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2903, file: !44, line: 1840, baseType: !2968, size: 64, offset: 1088)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!109, !414, !585, !585, !109}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2903, file: !44, line: 1841, baseType: !2972, size: 64, offset: 1152)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!109, !109, !414, !109}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2903, file: !44, line: 1842, baseType: !2976, size: 64, offset: 1216)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!109, !414, !109, !2979}
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2981)
!2981 = !{!2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !3013, !3014, !3015, !3028, !3059}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2980, file: !44, line: 1063, baseType: !2979, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2980, file: !44, line: 1064, baseType: !184, size: 128, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2980, file: !44, line: 1065, baseType: !693, size: 128, offset: 192)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2980, file: !44, line: 1066, baseType: !184, size: 128, offset: 320)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2980, file: !44, line: 1069, baseType: !184, size: 128, offset: 448)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2980, file: !44, line: 1072, baseType: !2965, size: 64, offset: 576)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2980, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2980, file: !44, line: 1074, baseType: !127, size: 8, offset: 672)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2980, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2980, file: !44, line: 1076, baseType: !109, size: 32, offset: 736)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2980, file: !44, line: 1077, baseType: !1530, size: 128, offset: 768)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2980, file: !44, line: 1078, baseType: !414, size: 64, offset: 896)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2980, file: !44, line: 1079, baseType: !585, size: 64, offset: 960)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2980, file: !44, line: 1080, baseType: !585, size: 64, offset: 1024)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2980, file: !44, line: 1082, baseType: !2997, size: 64, offset: 1088)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2999)
!2999 = !{!3000, !3008, !3009, !3010, !3011, !3012}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2998, file: !44, line: 1315, baseType: !3001)
!3001 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3002, line: 20, baseType: !3003)
!3002 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3002, line: 11, elements: !3004)
!3004 = !{!3005}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3003, file: !3002, line: 12, baseType: !3006)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !215, line: 33, baseType: !3007)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !215, line: 31, elements: !217)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2998, file: !44, line: 1316, baseType: !109, size: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2998, file: !44, line: 1317, baseType: !109, size: 32, offset: 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2998, file: !44, line: 1318, baseType: !2997, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2998, file: !44, line: 1319, baseType: !414, size: 64, offset: 128)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2998, file: !44, line: 1320, baseType: !427, size: 128, align: 64, offset: 192)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2980, file: !44, line: 1084, baseType: !103, size: 64, offset: 1152)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2980, file: !44, line: 1085, baseType: !103, size: 64, offset: 1216)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2980, file: !44, line: 1087, baseType: !3016, size: 64, offset: 1280)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3018)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3019)
!3019 = !{!3020, !3024}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3018, file: !44, line: 1012, baseType: !3021, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{null, !2979, !2979}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3018, file: !44, line: 1013, baseType: !3025, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{null, !2979}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2980, file: !44, line: 1088, baseType: !3029, size: 64, offset: 1344)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3031)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3032)
!3032 = !{!3033, !3037, !3041, !3042, !3046, !3050, !3054, !3058}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3031, file: !44, line: 1017, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!2965, !2965}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3031, file: !44, line: 1018, baseType: !3038, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{null, !2965}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3031, file: !44, line: 1019, baseType: !3025, size: 64, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3031, file: !44, line: 1020, baseType: !3043, size: 64, offset: 192)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!109, !2979, !109}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3031, file: !44, line: 1021, baseType: !3047, size: 64, offset: 256)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!544, !2979}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3031, file: !44, line: 1022, baseType: !3051, size: 64, offset: 320)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!109, !2979, !109, !187}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3031, file: !44, line: 1023, baseType: !3055, size: 64, offset: 384)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{null, !2979, !875}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3031, file: !44, line: 1024, baseType: !3047, size: 64, offset: 448)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2980, file: !44, line: 1097, baseType: !3060, size: 256, offset: 1408)
!3060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2980, file: !44, line: 1089, size: 256, elements: !3061)
!3061 = !{!3062, !3071, !3077}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3060, file: !44, line: 1090, baseType: !3063, size: 256)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3064, line: 10, size: 256, elements: !3065)
!3064 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3065 = !{!3066, !3067, !3070}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3063, file: !3064, line: 11, baseType: !266, size: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3063, file: !3064, line: 12, baseType: !3068, size: 64, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3064, line: 5, flags: DIFlagFwdDecl)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3063, file: !3064, line: 13, baseType: !184, size: 128, offset: 128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3060, file: !44, line: 1091, baseType: !3072, size: 64)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3064, line: 17, size: 64, elements: !3073)
!3073 = !{!3074}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3072, file: !3064, line: 18, baseType: !3075, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3064, line: 16, flags: DIFlagFwdDecl)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3060, file: !44, line: 1096, baseType: !3078, size: 192)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3060, file: !44, line: 1092, size: 192, elements: !3079)
!3079 = !{!3080, !3081, !3082}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3078, file: !44, line: 1093, baseType: !184, size: 128)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3078, file: !44, line: 1094, baseType: !109, size: 32, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3078, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2903, file: !44, line: 1843, baseType: !3084, size: 64, offset: 1280)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!373, !414, !775, !109, !190, !2914, !109}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2903, file: !44, line: 1844, baseType: !1155, size: 64, offset: 1344)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2903, file: !44, line: 1845, baseType: !3089, size: 64, offset: 1408)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!109, !109}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2903, file: !44, line: 1846, baseType: !2976, size: 64, offset: 1472)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2903, file: !44, line: 1847, baseType: !3094, size: 64, offset: 1536)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!373, !2137, !414, !2914, !190, !7}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2903, file: !44, line: 1848, baseType: !3098, size: 64, offset: 1600)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!373, !414, !2914, !2137, !190, !7}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2903, file: !44, line: 1849, baseType: !3102, size: 64, offset: 1664)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!109, !414, !376, !3105, !875}
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2903, file: !44, line: 1850, baseType: !3107, size: 64, offset: 1728)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!376, !414, !109, !585, !585}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2903, file: !44, line: 1852, baseType: !3111, size: 64, offset: 1792)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{null, !765, !414}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2903, file: !44, line: 1856, baseType: !3115, size: 64, offset: 1856)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!373, !414, !585, !414, !585, !190, !7}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2903, file: !44, line: 1858, baseType: !3119, size: 64, offset: 1920)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!585, !414, !585, !414, !585, !585, !7}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2903, file: !44, line: 1861, baseType: !2968, size: 64, offset: 1984)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2898, file: !44, line: 692, baseType: !718, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !484, file: !44, line: 694, baseType: !3125, size: 64, offset: 2560)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3127)
!3127 = !{!3128, !3129, !3130, !3131}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3126, file: !44, line: 1101, baseType: !309)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3126, file: !44, line: 1102, baseType: !184, size: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3126, file: !44, line: 1103, baseType: !184, size: 128, offset: 128)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3126, file: !44, line: 1104, baseType: !184, size: 128, offset: 256)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !484, file: !44, line: 695, baseType: !789, size: 1216, align: 64, offset: 2624)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !484, file: !44, line: 696, baseType: !184, size: 128, offset: 3840)
!3134 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !44, line: 697, baseType: !3135, size: 64, offset: 3968)
!3135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !44, line: 697, size: 64, elements: !3136)
!3136 = !{!3137, !3138, !3139, !3142, !3143}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3135, file: !44, line: 698, baseType: !2137, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3135, file: !44, line: 699, baseType: !2653, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3135, file: !44, line: 700, baseType: !3140, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3135, file: !44, line: 701, baseType: !342, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3135, file: !44, line: 702, baseType: !7, size: 32)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !484, file: !44, line: 705, baseType: !267, size: 32, offset: 4032)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !484, file: !44, line: 708, baseType: !267, size: 32, offset: 4064)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !484, file: !44, line: 709, baseType: !2735, size: 64, offset: 4096)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !484, file: !44, line: 720, baseType: !104, size: 64, offset: 4160)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !445, file: !442, line: 98, baseType: !3149, size: 256, offset: 448)
!3149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !2268)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !445, file: !442, line: 101, baseType: !3151, size: 32, offset: 704)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3152, line: 25, size: 32, elements: !3153)
!3152 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3153 = !{!3154}
!3154 = !DIDerivedType(tag: DW_TAG_member, scope: !3151, file: !3152, line: 26, baseType: !3155, size: 32)
!3155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3151, file: !3152, line: 26, size: 32, elements: !3156)
!3156 = !{!3157}
!3157 = !DIDerivedType(tag: DW_TAG_member, scope: !3155, file: !3152, line: 30, baseType: !3158, size: 32)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3155, file: !3152, line: 30, size: 32, elements: !3159)
!3159 = !{!3160, !3161}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3158, file: !3152, line: 31, baseType: !309)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3158, file: !3152, line: 32, baseType: !109, size: 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !445, file: !442, line: 102, baseType: !2752, size: 64, offset: 768)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !445, file: !442, line: 103, baseType: !653, size: 64, offset: 832)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !445, file: !442, line: 104, baseType: !103, size: 64, offset: 896)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !445, file: !442, line: 105, baseType: !104, size: 64, offset: 960)
!3166 = !DIDerivedType(tag: DW_TAG_member, scope: !445, file: !442, line: 107, baseType: !3167, size: 128, offset: 1024)
!3167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !442, line: 107, size: 128, elements: !3168)
!3168 = !{!3169, !3170}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3167, file: !442, line: 108, baseType: !184, size: 128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3167, file: !442, line: 109, baseType: !3171, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !445, file: !442, line: 111, baseType: !184, size: 128, offset: 1152)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !445, file: !442, line: 112, baseType: !184, size: 128, offset: 1280)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !445, file: !442, line: 120, baseType: !3175, size: 128, offset: 1408)
!3175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !442, line: 116, size: 128, elements: !3176)
!3176 = !{!3177, !3178, !3179}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3175, file: !442, line: 117, baseType: !693, size: 128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3175, file: !442, line: 118, baseType: !459, size: 128)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3175, file: !442, line: 119, baseType: !427, size: 128, align: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !415, file: !44, line: 922, baseType: !483, size: 64, offset: 256)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !415, file: !44, line: 923, baseType: !2901, size: 64, offset: 320)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !415, file: !44, line: 929, baseType: !309, offset: 384)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !415, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !415, file: !44, line: 931, baseType: !826, size: 64, offset: 448)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !415, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !415, file: !44, line: 933, baseType: !2748, size: 32, offset: 544)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !415, file: !44, line: 934, baseType: !1225, size: 192, offset: 576)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !415, file: !44, line: 935, baseType: !585, size: 64, offset: 768)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !415, file: !44, line: 936, baseType: !3190, size: 192, offset: 832)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3191)
!3191 = !{!3192, !3193, !3194, !3195, !3196, !3197}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3190, file: !44, line: 886, baseType: !3001)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3190, file: !44, line: 887, baseType: !1520, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3190, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3190, file: !44, line: 889, baseType: !489, size: 32, offset: 96)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3190, file: !44, line: 889, baseType: !489, size: 32, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3190, file: !44, line: 890, baseType: !109, size: 32, offset: 160)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !415, file: !44, line: 937, baseType: !1586, size: 64, offset: 1024)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !415, file: !44, line: 938, baseType: !3200, size: 256, offset: 1088)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3201)
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3207}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3200, file: !44, line: 897, baseType: !103, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3200, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3200, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3200, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3200, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3200, file: !44, line: 904, baseType: !585, size: 64, offset: 192)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !415, file: !44, line: 940, baseType: !145, size: 64, offset: 1344)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !415, file: !44, line: 945, baseType: !104, size: 64, offset: 1408)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !415, file: !44, line: 949, baseType: !184, size: 128, offset: 1472)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !415, file: !44, line: 950, baseType: !184, size: 128, offset: 1600)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !415, file: !44, line: 952, baseType: !788, size: 64, offset: 1728)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !415, file: !44, line: 953, baseType: !963, size: 32, offset: 1792)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !415, file: !44, line: 954, baseType: !963, size: 32, offset: 1824)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !405, file: !367, line: 174, baseType: !411, size: 64, offset: 320)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !405, file: !367, line: 176, baseType: !3217, size: 64, offset: 384)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!109, !414, !302, !404, !1035}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !393, file: !367, line: 90, baseType: !388, size: 64, offset: 192)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !393, file: !367, line: 91, baseType: !3222, size: 64, offset: 256)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !357, file: !297, line: 143, baseType: !3224, size: 64, offset: 256)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!3227, !302}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3229)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3230)
!3230 = !{!3231, !3232, !3236, !3240, !3246, !3250}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3229, file: !61, line: 40, baseType: !60, size: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3229, file: !61, line: 41, baseType: !3233, size: 64, offset: 64)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!544}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3229, file: !61, line: 42, baseType: !3237, size: 64, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!104}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3229, file: !61, line: 43, baseType: !3241, size: 64, offset: 192)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!2165, !3244}
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3229, file: !61, line: 44, baseType: !3247, size: 64, offset: 256)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!2165}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3229, file: !61, line: 45, baseType: !522, size: 64, offset: 320)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !357, file: !297, line: 144, baseType: !3252, size: 64, offset: 320)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!2165, !302}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !357, file: !297, line: 145, baseType: !3256, size: 64, offset: 384)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{null, !302, !3259, !3260}
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !296, file: !297, line: 70, baseType: !3262, size: 64, offset: 384)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !673, line: 123, size: 1024, elements: !3264)
!3264 = !{!3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3393, !3394, !3395, !3396, !3397}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3263, file: !673, line: 124, baseType: !802, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3263, file: !673, line: 125, baseType: !802, size: 32, offset: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3263, file: !673, line: 135, baseType: !3262, size: 64, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3263, file: !673, line: 136, baseType: !160, size: 64, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3263, file: !673, line: 138, baseType: !815, size: 192, align: 64, offset: 192)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3263, file: !673, line: 140, baseType: !2165, size: 64, offset: 384)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3263, file: !673, line: 141, baseType: !7, size: 32, offset: 448)
!3272 = !DIDerivedType(tag: DW_TAG_member, scope: !3263, file: !673, line: 142, baseType: !3273, size: 256, offset: 512)
!3273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3263, file: !673, line: 142, size: 256, elements: !3274)
!3274 = !{!3275, !3321, !3325}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3273, file: !673, line: 143, baseType: !3276, size: 192)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !673, line: 91, size: 192, elements: !3277)
!3277 = !{!3278, !3279, !3280}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3276, file: !673, line: 92, baseType: !103, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3276, file: !673, line: 94, baseType: !811, size: 64, offset: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3276, file: !673, line: 100, baseType: !3281, size: 64, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !673, line: 180, size: 704, elements: !3283)
!3283 = !{!3284, !3285, !3286, !3293, !3294, !3295, !3319, !3320}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3282, file: !673, line: 182, baseType: !3262, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3282, file: !673, line: 183, baseType: !7, size: 32, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3282, file: !673, line: 186, baseType: !3287, size: 192, offset: 128)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3288, line: 19, size: 192, elements: !3289)
!3288 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3289 = !{!3290, !3291, !3292}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3287, file: !3288, line: 20, baseType: !793, size: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3287, file: !3288, line: 21, baseType: !7, size: 32, offset: 128)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3287, file: !3288, line: 22, baseType: !7, size: 32, offset: 160)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3282, file: !673, line: 187, baseType: !266, size: 32, offset: 320)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3282, file: !673, line: 188, baseType: !266, size: 32, offset: 352)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3282, file: !673, line: 189, baseType: !3296, size: 64, offset: 384)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !673, line: 168, size: 320, elements: !3298)
!3298 = !{!3299, !3303, !3307, !3311, !3315}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3297, file: !673, line: 169, baseType: !3300, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!109, !765, !3281}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3297, file: !673, line: 171, baseType: !3304, size: 64, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!109, !3262, !160, !382}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3297, file: !673, line: 173, baseType: !3308, size: 64, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!109, !3262}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3297, file: !673, line: 174, baseType: !3312, size: 64, offset: 192)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!109, !3262, !3262, !160}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3297, file: !673, line: 176, baseType: !3316, size: 64, offset: 256)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!109, !765, !3262, !3281}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3282, file: !673, line: 192, baseType: !184, size: 128, offset: 448)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3282, file: !673, line: 194, baseType: !1530, size: 128, offset: 576)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3273, file: !673, line: 144, baseType: !3322, size: 64)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !673, line: 103, size: 64, elements: !3323)
!3323 = !{!3324}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3322, file: !673, line: 104, baseType: !3262, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3273, file: !673, line: 145, baseType: !3326, size: 256)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !673, line: 107, size: 256, elements: !3327)
!3327 = !{!3328, !3388, !3391, !3392}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3326, file: !673, line: 108, baseType: !3329, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3331)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !673, line: 217, size: 768, elements: !3332)
!3332 = !{!3333, !3353, !3357, !3361, !3365, !3369, !3373, !3377, !3378, !3379, !3380, !3384}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3331, file: !673, line: 222, baseType: !3334, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!109, !3337}
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !673, line: 197, size: 1088, elements: !3339)
!3339 = !{!3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3338, file: !673, line: 199, baseType: !3262, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3338, file: !673, line: 200, baseType: !414, size: 64, offset: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3338, file: !673, line: 201, baseType: !765, size: 64, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3338, file: !673, line: 202, baseType: !104, size: 64, offset: 192)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3338, file: !673, line: 205, baseType: !1225, size: 192, offset: 256)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3338, file: !673, line: 206, baseType: !1225, size: 192, offset: 448)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3338, file: !673, line: 207, baseType: !109, size: 32, offset: 640)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3338, file: !673, line: 208, baseType: !184, size: 128, offset: 704)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3338, file: !673, line: 209, baseType: !342, size: 64, offset: 832)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3338, file: !673, line: 211, baseType: !190, size: 64, offset: 896)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3338, file: !673, line: 212, baseType: !544, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3338, file: !673, line: 213, baseType: !544, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3338, file: !673, line: 214, baseType: !1063, size: 64, offset: 1024)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3331, file: !673, line: 223, baseType: !3354, size: 64, offset: 64)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{null, !3337}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3331, file: !673, line: 236, baseType: !3358, size: 64, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!109, !765, !104}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3331, file: !673, line: 238, baseType: !3362, size: 64, offset: 192)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!104, !765, !2914}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3331, file: !673, line: 239, baseType: !3366, size: 64, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!104, !765, !104, !2914}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3331, file: !673, line: 240, baseType: !3370, size: 64, offset: 320)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{null, !765, !104}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3331, file: !673, line: 242, baseType: !3374, size: 64, offset: 384)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!373, !3337, !342, !190, !585}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3331, file: !673, line: 252, baseType: !190, size: 64, offset: 448)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3331, file: !673, line: 259, baseType: !544, size: 8, offset: 512)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3331, file: !673, line: 260, baseType: !3374, size: 64, offset: 576)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3331, file: !673, line: 263, baseType: !3381, size: 64, offset: 640)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!2943, !3337, !2945}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3331, file: !673, line: 266, baseType: !3385, size: 64, offset: 704)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!109, !3337, !1035}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3326, file: !673, line: 109, baseType: !3389, size: 64, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !673, line: 31, flags: DIFlagFwdDecl)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3326, file: !673, line: 110, baseType: !585, size: 64, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3326, file: !673, line: 111, baseType: !3262, size: 64, offset: 192)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3263, file: !673, line: 148, baseType: !104, size: 64, offset: 768)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3263, file: !673, line: 154, baseType: !145, size: 64, offset: 832)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3263, file: !673, line: 156, baseType: !134, size: 16, offset: 896)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3263, file: !673, line: 157, baseType: !382, size: 16, offset: 912)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3263, file: !673, line: 158, baseType: !3398, size: 64, offset: 960)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !673, line: 32, flags: DIFlagFwdDecl)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !296, file: !297, line: 71, baseType: !3401, size: 32, offset: 448)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3402, line: 19, size: 32, elements: !3403)
!3402 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3403 = !{!3404}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3401, file: !3402, line: 20, baseType: !1282, size: 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !296, file: !297, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !296, file: !297, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !296, file: !297, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !296, file: !297, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !296, file: !297, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !293, file: !73, line: 463, baseType: !292, size: 64, offset: 512)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !293, file: !73, line: 465, baseType: !3412, size: 64, offset: 576)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !293, file: !73, line: 467, baseType: !160, size: 64, offset: 640)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !293, file: !73, line: 468, baseType: !3416, size: 64, offset: 704)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3418)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3419)
!3419 = !{!3420, !3421, !3422, !3426, !3431, !3435}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3418, file: !73, line: 88, baseType: !160, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3418, file: !73, line: 89, baseType: !390, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3418, file: !73, line: 90, baseType: !3423, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!109, !292, !337}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3418, file: !73, line: 91, baseType: !3427, size: 64, offset: 192)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!342, !292, !3430, !3259, !3260}
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3418, file: !73, line: 93, baseType: !3432, size: 64, offset: 256)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{null, !292}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3418, file: !73, line: 95, baseType: !3436, size: 64, offset: 320)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3438)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3439)
!3439 = !{!3440, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3438, file: !80, line: 279, baseType: !3441, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!109, !292}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3438, file: !80, line: 280, baseType: !3432, size: 64, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3438, file: !80, line: 281, baseType: !3441, size: 64, offset: 128)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3438, file: !80, line: 282, baseType: !3441, size: 64, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3438, file: !80, line: 283, baseType: !3441, size: 64, offset: 256)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3438, file: !80, line: 284, baseType: !3441, size: 64, offset: 320)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3438, file: !80, line: 285, baseType: !3441, size: 64, offset: 384)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3438, file: !80, line: 286, baseType: !3441, size: 64, offset: 448)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3438, file: !80, line: 287, baseType: !3441, size: 64, offset: 512)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3438, file: !80, line: 288, baseType: !3441, size: 64, offset: 576)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3438, file: !80, line: 289, baseType: !3441, size: 64, offset: 640)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3438, file: !80, line: 290, baseType: !3441, size: 64, offset: 704)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3438, file: !80, line: 291, baseType: !3441, size: 64, offset: 768)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3438, file: !80, line: 292, baseType: !3441, size: 64, offset: 832)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3438, file: !80, line: 293, baseType: !3441, size: 64, offset: 896)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3438, file: !80, line: 294, baseType: !3441, size: 64, offset: 960)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3438, file: !80, line: 295, baseType: !3441, size: 64, offset: 1024)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3438, file: !80, line: 296, baseType: !3441, size: 64, offset: 1088)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3438, file: !80, line: 297, baseType: !3441, size: 64, offset: 1152)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3438, file: !80, line: 298, baseType: !3441, size: 64, offset: 1216)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3438, file: !80, line: 299, baseType: !3441, size: 64, offset: 1280)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3438, file: !80, line: 300, baseType: !3441, size: 64, offset: 1344)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3438, file: !80, line: 301, baseType: !3441, size: 64, offset: 1408)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !293, file: !73, line: 470, baseType: !3467, size: 64, offset: 768)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3469, line: 82, size: 1408, elements: !3470)
!3469 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3470 = !{!3471, !3472, !3473, !3474, !3475, !3476, !3477, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3552, !3555, !3556}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3468, file: !3469, line: 83, baseType: !160, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3468, file: !3469, line: 84, baseType: !160, size: 64, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3468, file: !3469, line: 85, baseType: !292, size: 64, offset: 128)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3468, file: !3469, line: 86, baseType: !390, size: 64, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3468, file: !3469, line: 87, baseType: !390, size: 64, offset: 256)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3468, file: !3469, line: 88, baseType: !390, size: 64, offset: 320)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3468, file: !3469, line: 90, baseType: !3478, size: 64, offset: 384)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!109, !292, !3481}
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3483)
!3483 = !{!3484, !3485, !3486, !3487, !3488, !3489, !3490, !3503, !3516, !3517, !3518, !3519, !3520, !3528, !3529, !3530, !3531, !3532, !3533}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3482, file: !67, line: 96, baseType: !160, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3482, file: !67, line: 97, baseType: !3467, size: 64, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3482, file: !67, line: 99, baseType: !100, size: 64, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3482, file: !67, line: 100, baseType: !160, size: 64, offset: 192)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3482, file: !67, line: 102, baseType: !544, size: 8, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3482, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3482, file: !67, line: 105, baseType: !3491, size: 64, offset: 320)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3493)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3494, line: 262, size: 1600, elements: !3495)
!3494 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3495 = !{!3496, !3497, !3498, !3502}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3493, file: !3494, line: 263, baseType: !2738, size: 256)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3493, file: !3494, line: 264, baseType: !2738, size: 256, offset: 256)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3493, file: !3494, line: 265, baseType: !3499, size: 1024, offset: 512)
!3499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 1024, elements: !3500)
!3500 = !{!3501}
!3501 = !DISubrange(count: 128)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3493, file: !3494, line: 266, baseType: !2165, size: 64, offset: 1536)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3482, file: !67, line: 106, baseType: !3504, size: 64, offset: 384)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3506)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3494, line: 210, size: 256, elements: !3507)
!3507 = !{!3508, !3512, !3514, !3515}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3506, file: !3494, line: 211, baseType: !3509, size: 72)
!3509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 72, elements: !3510)
!3510 = !{!3511}
!3511 = !DISubrange(count: 9)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3506, file: !3494, line: 212, baseType: !3513, size: 64, offset: 128)
!3513 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3494, line: 14, baseType: !103)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3506, file: !3494, line: 213, baseType: !267, size: 32, offset: 192)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3506, file: !3494, line: 214, baseType: !267, size: 32, offset: 224)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3482, file: !67, line: 108, baseType: !3441, size: 64, offset: 448)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3482, file: !67, line: 109, baseType: !3432, size: 64, offset: 512)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3482, file: !67, line: 110, baseType: !3441, size: 64, offset: 576)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3482, file: !67, line: 111, baseType: !3432, size: 64, offset: 640)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3482, file: !67, line: 112, baseType: !3521, size: 64, offset: 704)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!109, !292, !3524}
!3524 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3525)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3526)
!3526 = !{!3527}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3525, file: !80, line: 51, baseType: !109, size: 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3482, file: !67, line: 113, baseType: !3441, size: 64, offset: 768)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3482, file: !67, line: 114, baseType: !390, size: 64, offset: 832)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3482, file: !67, line: 115, baseType: !390, size: 64, offset: 896)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3482, file: !67, line: 117, baseType: !3436, size: 64, offset: 960)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3482, file: !67, line: 118, baseType: !3432, size: 64, offset: 1024)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3482, file: !67, line: 120, baseType: !3534, size: 64, offset: 1088)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3468, file: !3469, line: 91, baseType: !3423, size: 64, offset: 448)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3468, file: !3469, line: 92, baseType: !3441, size: 64, offset: 512)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3468, file: !3469, line: 93, baseType: !3432, size: 64, offset: 576)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3468, file: !3469, line: 94, baseType: !3441, size: 64, offset: 640)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3468, file: !3469, line: 95, baseType: !3432, size: 64, offset: 704)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3468, file: !3469, line: 97, baseType: !3441, size: 64, offset: 768)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3468, file: !3469, line: 98, baseType: !3441, size: 64, offset: 832)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3468, file: !3469, line: 100, baseType: !3521, size: 64, offset: 896)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3468, file: !3469, line: 101, baseType: !3441, size: 64, offset: 960)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3468, file: !3469, line: 103, baseType: !3441, size: 64, offset: 1024)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3468, file: !3469, line: 105, baseType: !3441, size: 64, offset: 1088)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3468, file: !3469, line: 107, baseType: !3436, size: 64, offset: 1152)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3468, file: !3469, line: 109, baseType: !3549, size: 64, offset: 1216)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3551)
!3551 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3469, line: 109, flags: DIFlagFwdDecl)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3468, file: !3469, line: 111, baseType: !3553, size: 64, offset: 1280)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3469, line: 111, flags: DIFlagFwdDecl)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3468, file: !3469, line: 112, baseType: !699, offset: 1344)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3468, file: !3469, line: 114, baseType: !544, size: 8, offset: 1344)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !293, file: !73, line: 471, baseType: !3481, size: 64, offset: 832)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !293, file: !73, line: 473, baseType: !104, size: 64, offset: 896)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !293, file: !73, line: 475, baseType: !104, size: 64, offset: 960)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !293, file: !73, line: 480, baseType: !1225, size: 192, offset: 1024)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !293, file: !73, line: 484, baseType: !3562, size: 576, offset: 1216)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3563)
!3563 = !{!3564, !3565, !3566, !3567, !3568, !3569}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3562, file: !73, line: 362, baseType: !184, size: 128)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3562, file: !73, line: 363, baseType: !184, size: 128, offset: 128)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3562, file: !73, line: 364, baseType: !184, size: 128, offset: 256)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3562, file: !73, line: 365, baseType: !184, size: 128, offset: 384)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3562, file: !73, line: 366, baseType: !544, size: 8, offset: 512)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3562, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !293, file: !73, line: 485, baseType: !3571, size: 2304, offset: 1792)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3572)
!3572 = !{!3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3668, !3672}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3571, file: !80, line: 566, baseType: !3524, size: 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3571, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3571, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3571, file: !80, line: 569, baseType: !544, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3571, file: !80, line: 570, baseType: !544, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3571, file: !80, line: 571, baseType: !544, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3571, file: !80, line: 572, baseType: !544, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3571, file: !80, line: 573, baseType: !544, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3571, file: !80, line: 574, baseType: !544, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3571, file: !80, line: 575, baseType: !544, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3571, file: !80, line: 576, baseType: !544, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3571, file: !80, line: 577, baseType: !266, size: 32, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3571, file: !80, line: 578, baseType: !309, offset: 96)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3571, file: !80, line: 580, baseType: !184, size: 128, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3571, file: !80, line: 581, baseType: !200, size: 192, offset: 256)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3571, file: !80, line: 582, baseType: !3589, size: 64, offset: 448)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3591, line: 43, size: 1472, elements: !3592)
!3591 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3592 = !{!3593, !3594, !3595, !3596, !3597, !3600, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3590, file: !3591, line: 44, baseType: !160, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3590, file: !3591, line: 45, baseType: !109, size: 32, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3590, file: !3591, line: 46, baseType: !184, size: 128, offset: 128)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3590, file: !3591, line: 47, baseType: !309, offset: 256)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3590, file: !3591, line: 48, baseType: !3598, size: 64, offset: 256)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3590, file: !3591, line: 49, baseType: !3601, size: 320, offset: 320)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3602, line: 11, size: 320, elements: !3603)
!3602 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3603 = !{!3604, !3605, !3606, !3611}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3601, file: !3602, line: 16, baseType: !693, size: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3601, file: !3602, line: 17, baseType: !103, size: 64, offset: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3601, file: !3602, line: 18, baseType: !3607, size: 64, offset: 192)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{null, !3610}
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3601, file: !3602, line: 19, baseType: !266, size: 32, offset: 256)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3590, file: !3591, line: 50, baseType: !103, size: 64, offset: 640)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3590, file: !3591, line: 51, baseType: !1352, size: 64, offset: 704)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3590, file: !3591, line: 52, baseType: !1352, size: 64, offset: 768)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3590, file: !3591, line: 53, baseType: !1352, size: 64, offset: 832)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3590, file: !3591, line: 54, baseType: !1352, size: 64, offset: 896)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3590, file: !3591, line: 55, baseType: !1352, size: 64, offset: 960)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3590, file: !3591, line: 56, baseType: !103, size: 64, offset: 1024)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3590, file: !3591, line: 57, baseType: !103, size: 64, offset: 1088)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3590, file: !3591, line: 58, baseType: !103, size: 64, offset: 1152)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3590, file: !3591, line: 59, baseType: !103, size: 64, offset: 1216)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3590, file: !3591, line: 60, baseType: !103, size: 64, offset: 1280)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3590, file: !3591, line: 61, baseType: !292, size: 64, offset: 1344)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3590, file: !3591, line: 62, baseType: !544, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3590, file: !3591, line: 63, baseType: !544, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3571, file: !80, line: 583, baseType: !544, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3571, file: !80, line: 584, baseType: !544, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3571, file: !80, line: 585, baseType: !544, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3571, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3571, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3571, file: !80, line: 592, baseType: !1344, size: 512, offset: 576)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3571, file: !80, line: 593, baseType: !145, size: 64, offset: 1088)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3571, file: !80, line: 594, baseType: !1996, size: 256, offset: 1152)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3571, file: !80, line: 595, baseType: !1530, size: 128, offset: 1408)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3571, file: !80, line: 596, baseType: !3598, size: 64, offset: 1536)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3571, file: !80, line: 597, baseType: !802, size: 32, offset: 1600)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3571, file: !80, line: 598, baseType: !802, size: 32, offset: 1632)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3571, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3571, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3571, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3571, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3571, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3571, file: !80, line: 604, baseType: !544, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3571, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3571, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3571, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3571, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3571, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3571, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3571, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3571, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3571, file: !80, line: 613, baseType: !109, size: 32, offset: 1792)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3571, file: !80, line: 614, baseType: !109, size: 32, offset: 1824)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3571, file: !80, line: 615, baseType: !145, size: 64, offset: 1856)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3571, file: !80, line: 616, baseType: !145, size: 64, offset: 1920)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3571, file: !80, line: 617, baseType: !145, size: 64, offset: 1984)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3571, file: !80, line: 618, baseType: !145, size: 64, offset: 2048)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3571, file: !80, line: 620, baseType: !3659, size: 64, offset: 2112)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3661)
!3661 = !{!3662, !3663, !3664, !3665}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3660, file: !80, line: 537, baseType: !309)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3660, file: !80, line: 538, baseType: !7, size: 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3660, file: !80, line: 540, baseType: !184, size: 128, offset: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3660, file: !80, line: 543, baseType: !3666, size: 64, offset: 192)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3571, file: !80, line: 621, baseType: !3669, size: 64, offset: 2176)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{null, !292, !1493}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3571, file: !80, line: 622, baseType: !3673, size: 64, offset: 2240)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !293, file: !73, line: 486, baseType: !3676, size: 64, offset: 4096)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3678)
!3678 = !{!3679, !3680, !3681, !3685, !3686, !3687}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3677, file: !80, line: 643, baseType: !3438, size: 1472)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3677, file: !80, line: 644, baseType: !3441, size: 64, offset: 1472)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3677, file: !80, line: 645, baseType: !3682, size: 64, offset: 1536)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{null, !292, !544}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3677, file: !80, line: 646, baseType: !3441, size: 64, offset: 1600)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3677, file: !80, line: 647, baseType: !3432, size: 64, offset: 1664)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3677, file: !80, line: 648, baseType: !3432, size: 64, offset: 1728)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !293, file: !73, line: 493, baseType: !3689, size: 64, offset: 4160)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !293, file: !73, line: 499, baseType: !184, size: 128, offset: 4224)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !293, file: !73, line: 502, baseType: !3693, size: 64, offset: 4352)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3695)
!3695 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !293, file: !73, line: 504, baseType: !3697, size: 64, offset: 4416)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !293, file: !73, line: 505, baseType: !145, size: 64, offset: 4480)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !293, file: !73, line: 510, baseType: !145, size: 64, offset: 4544)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !293, file: !73, line: 511, baseType: !3701, size: 64, offset: 4608)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3703)
!3703 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !293, file: !73, line: 513, baseType: !3705, size: 64, offset: 4672)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3707)
!3707 = !{!3708, !3709}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3706, file: !73, line: 293, baseType: !7, size: 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3706, file: !73, line: 294, baseType: !103, size: 64, offset: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !293, file: !73, line: 515, baseType: !184, size: 128, offset: 4736)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !293, file: !73, line: 526, baseType: !3712, offset: 4864)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3713, line: 5, elements: !217)
!3713 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !293, file: !73, line: 528, baseType: !3715, size: 64, offset: 4864)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3717, line: 14, flags: DIFlagFwdDecl)
!3717 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !293, file: !73, line: 529, baseType: !3719, size: 64, offset: 4928)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3721, line: 17, size: 192, elements: !3722)
!3721 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3722 = !{!3723, !3724, !3807}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3720, file: !3721, line: 18, baseType: !3719, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3720, file: !3721, line: 19, baseType: !3725, size: 64, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3727)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3721, line: 110, size: 1152, elements: !3728)
!3728 = !{!3729, !3733, !3737, !3743, !3749, !3753, !3757, !3762, !3766, !3767, !3771, !3775, !3779, !3790, !3791, !3792, !3793, !3803}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3727, file: !3721, line: 111, baseType: !3730, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!3719, !3719}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3727, file: !3721, line: 112, baseType: !3734, size: 64, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{null, !3719}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3727, file: !3721, line: 113, baseType: !3738, size: 64, offset: 128)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!544, !3741}
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3720)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3727, file: !3721, line: 114, baseType: !3744, size: 64, offset: 192)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!2165, !3741, !3747}
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3727, file: !3721, line: 116, baseType: !3750, size: 64, offset: 256)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!544, !3741, !160}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3727, file: !3721, line: 118, baseType: !3754, size: 64, offset: 320)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!109, !3741, !160, !7, !104, !190}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3727, file: !3721, line: 123, baseType: !3758, size: 64, offset: 384)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!109, !3741, !160, !3761, !190}
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3727, file: !3721, line: 126, baseType: !3763, size: 64, offset: 448)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!160, !3741}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3727, file: !3721, line: 127, baseType: !3763, size: 64, offset: 512)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3727, file: !3721, line: 128, baseType: !3768, size: 64, offset: 576)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!3719, !3741}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3727, file: !3721, line: 130, baseType: !3772, size: 64, offset: 640)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!3719, !3741, !3719}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3727, file: !3721, line: 133, baseType: !3776, size: 64, offset: 704)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!3719, !3741, !160}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3727, file: !3721, line: 135, baseType: !3780, size: 64, offset: 768)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!109, !3741, !160, !160, !7, !7, !3783}
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3721, line: 43, size: 640, elements: !3785)
!3785 = !{!3786, !3787, !3788}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3784, file: !3721, line: 44, baseType: !3719, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3784, file: !3721, line: 45, baseType: !7, size: 32, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3784, file: !3721, line: 46, baseType: !3789, size: 512, offset: 128)
!3789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 512, elements: !1382)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3727, file: !3721, line: 140, baseType: !3772, size: 64, offset: 832)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3727, file: !3721, line: 143, baseType: !3768, size: 64, offset: 896)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3727, file: !3721, line: 145, baseType: !3730, size: 64, offset: 960)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3727, file: !3721, line: 146, baseType: !3794, size: 64, offset: 1024)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!109, !3741, !3797}
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3721, line: 29, size: 128, elements: !3799)
!3799 = !{!3800, !3801, !3802}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3798, file: !3721, line: 30, baseType: !7, size: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3798, file: !3721, line: 31, baseType: !7, size: 32, offset: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3798, file: !3721, line: 32, baseType: !3741, size: 64, offset: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3727, file: !3721, line: 148, baseType: !3804, size: 64, offset: 1088)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!109, !3741, !292}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3720, file: !3721, line: 20, baseType: !292, size: 64, offset: 128)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !293, file: !73, line: 534, baseType: !567, size: 32, offset: 4992)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !293, file: !73, line: 535, baseType: !266, size: 32, offset: 5024)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !293, file: !73, line: 537, baseType: !309, offset: 5056)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !293, file: !73, line: 538, baseType: !184, size: 128, offset: 5056)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !293, file: !73, line: 540, baseType: !3813, size: 64, offset: 5184)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3815, line: 54, size: 960, elements: !3816)
!3815 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3816 = !{!3817, !3818, !3819, !3820, !3821, !3822, !3823, !3827, !3831, !3832, !3833, !3834, !3838, !3842, !3843}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3814, file: !3815, line: 55, baseType: !160, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3814, file: !3815, line: 56, baseType: !100, size: 64, offset: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3814, file: !3815, line: 58, baseType: !390, size: 64, offset: 128)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3814, file: !3815, line: 59, baseType: !390, size: 64, offset: 192)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3814, file: !3815, line: 60, baseType: !302, size: 64, offset: 256)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3814, file: !3815, line: 62, baseType: !3423, size: 64, offset: 320)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3814, file: !3815, line: 63, baseType: !3824, size: 64, offset: 384)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!342, !292, !3430}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3814, file: !3815, line: 65, baseType: !3828, size: 64, offset: 448)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{null, !3813}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3814, file: !3815, line: 66, baseType: !3432, size: 64, offset: 512)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3814, file: !3815, line: 68, baseType: !3441, size: 64, offset: 576)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3814, file: !3815, line: 70, baseType: !3227, size: 64, offset: 640)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3814, file: !3815, line: 71, baseType: !3835, size: 64, offset: 704)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!2165, !292}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3814, file: !3815, line: 73, baseType: !3839, size: 64, offset: 768)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{null, !292, !3259, !3260}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3814, file: !3815, line: 75, baseType: !3436, size: 64, offset: 832)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3814, file: !3815, line: 77, baseType: !3553, size: 64, offset: 896)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !293, file: !73, line: 541, baseType: !390, size: 64, offset: 5248)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !293, file: !73, line: 543, baseType: !3432, size: 64, offset: 5312)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !293, file: !73, line: 544, baseType: !3847, size: 64, offset: 5376)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !293, file: !73, line: 545, baseType: !3850, size: 64, offset: 5440)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !293, file: !73, line: 547, baseType: !544, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !293, file: !73, line: 548, baseType: !544, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !293, file: !73, line: 549, baseType: !544, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !293, file: !73, line: 550, baseType: !544, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !233, file: !228, line: 635, baseType: !293, size: 5568, offset: 2304)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !233, file: !228, line: 636, baseType: !404, size: 64, offset: 7872)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !233, file: !228, line: 637, baseType: !404, size: 64, offset: 7936)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !233, file: !228, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !227, file: !228, line: 312, baseType: !232, size: 64, offset: 192)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !227, file: !228, line: 314, baseType: !104, size: 64, offset: 256)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !227, file: !228, line: 315, baseType: !277, size: 64, offset: 320)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !227, file: !228, line: 316, baseType: !3864, size: 64, offset: 384)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !228, line: 69, size: 832, elements: !3866)
!3866 = !{!3867, !3868, !3869, !3872, !3873}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3865, file: !228, line: 70, baseType: !232, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3865, file: !228, line: 71, baseType: !184, size: 128, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !3865, file: !228, line: 72, baseType: !3870, size: 64, offset: 192)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !228, line: 72, flags: DIFlagFwdDecl)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3865, file: !228, line: 73, baseType: !127, size: 8, offset: 256)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3865, file: !228, line: 74, baseType: !296, size: 512, offset: 320)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !227, file: !228, line: 318, baseType: !7, size: 32, offset: 448)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !227, file: !228, line: 319, baseType: !134, size: 16, offset: 480)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !227, file: !228, line: 320, baseType: !134, size: 16, offset: 496)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !227, file: !228, line: 321, baseType: !134, size: 16, offset: 512)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !227, file: !228, line: 322, baseType: !134, size: 16, offset: 528)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !227, file: !228, line: 323, baseType: !7, size: 32, offset: 544)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !227, file: !228, line: 324, baseType: !196, size: 8, offset: 576)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !227, file: !228, line: 325, baseType: !196, size: 8, offset: 584)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !227, file: !228, line: 330, baseType: !196, size: 8, offset: 592)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !227, file: !228, line: 331, baseType: !196, size: 8, offset: 600)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !227, file: !228, line: 332, baseType: !196, size: 8, offset: 608)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !227, file: !228, line: 333, baseType: !196, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !227, file: !228, line: 334, baseType: !196, size: 8, offset: 624)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !227, file: !228, line: 335, baseType: !196, size: 8, offset: 632)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !227, file: !228, line: 336, baseType: !913, size: 16, offset: 640)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !227, file: !228, line: 337, baseType: !3890, size: 64, offset: 704)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !227, file: !228, line: 339, baseType: !3892, size: 64, offset: 768)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !228, line: 858, size: 2048, elements: !3894)
!3894 = !{!3895, !3896, !3897, !3909, !3913, !3917, !3921, !3925, !3926, !3930, !3949, !3950, !3951}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3893, file: !228, line: 859, baseType: !184, size: 128)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3893, file: !228, line: 860, baseType: !160, size: 64, offset: 128)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3893, file: !228, line: 861, baseType: !3898, size: 64, offset: 192)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3900)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3494, line: 38, size: 256, elements: !3901)
!3901 = !{!3902, !3903, !3904, !3905, !3906, !3907, !3908}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3900, file: !3494, line: 39, baseType: !267, size: 32)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3900, file: !3494, line: 39, baseType: !267, size: 32, offset: 32)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !3900, file: !3494, line: 40, baseType: !267, size: 32, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !3900, file: !3494, line: 40, baseType: !267, size: 32, offset: 96)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3900, file: !3494, line: 41, baseType: !267, size: 32, offset: 128)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !3900, file: !3494, line: 41, baseType: !267, size: 32, offset: 160)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3900, file: !3494, line: 42, baseType: !3513, size: 64, offset: 192)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3893, file: !228, line: 862, baseType: !3910, size: 64, offset: 256)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!109, !226, !3898}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3893, file: !228, line: 863, baseType: !3914, size: 64, offset: 320)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{null, !226}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3893, file: !228, line: 864, baseType: !3918, size: 64, offset: 384)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!109, !226, !3524}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3893, file: !228, line: 865, baseType: !3922, size: 64, offset: 448)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!109, !226}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3893, file: !228, line: 866, baseType: !3914, size: 64, offset: 512)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !3893, file: !228, line: 867, baseType: !3927, size: 64, offset: 576)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!109, !226, !109}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !3893, file: !228, line: 868, baseType: !3931, size: 64, offset: 640)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3933)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !228, line: 795, size: 384, elements: !3934)
!3934 = !{!3935, !3941, !3945, !3946, !3947, !3948}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !3933, file: !228, line: 797, baseType: !3936, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!3939, !226, !3940}
!3939 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !228, line: 772, baseType: !7)
!3940 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !228, line: 180, baseType: !7)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !3933, file: !228, line: 801, baseType: !3942, size: 64, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!3939, !226}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !3933, file: !228, line: 804, baseType: !3942, size: 64, offset: 128)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !3933, file: !228, line: 807, baseType: !3914, size: 64, offset: 192)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !3933, file: !228, line: 808, baseType: !3914, size: 64, offset: 256)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3933, file: !228, line: 811, baseType: !3914, size: 64, offset: 320)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3893, file: !228, line: 869, baseType: !390, size: 64, offset: 704)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3893, file: !228, line: 870, baseType: !3482, size: 1152, offset: 768)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3893, file: !228, line: 871, baseType: !3952, size: 128, offset: 1920)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !228, line: 759, size: 128, elements: !3953)
!3953 = !{!3954, !3955}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3952, file: !228, line: 760, baseType: !309)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3952, file: !228, line: 761, baseType: !184, size: 128)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !227, file: !228, line: 340, baseType: !145, size: 64, offset: 832)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !227, file: !228, line: 346, baseType: !3706, size: 128, offset: 896)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !227, file: !228, line: 348, baseType: !3959, size: 32, offset: 1024)
!3959 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !228, line: 155, baseType: !109)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !227, file: !228, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !227, file: !228, line: 352, baseType: !196, size: 8, offset: 1064)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !227, file: !228, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !227, file: !228, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !227, file: !228, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !227, file: !228, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !227, file: !228, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !227, file: !228, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !227, file: !228, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !227, file: !228, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !227, file: !228, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !227, file: !228, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !227, file: !228, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !227, file: !228, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !227, file: !228, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !227, file: !228, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !227, file: !228, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !227, file: !228, line: 376, baseType: !7, size: 32, offset: 1120)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !227, file: !228, line: 377, baseType: !7, size: 32, offset: 1152)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !227, file: !228, line: 380, baseType: !3980, size: 64, offset: 1216)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !228, line: 303, flags: DIFlagFwdDecl)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !227, file: !228, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !227, file: !228, line: 383, baseType: !109, size: 32, offset: 1312)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !227, file: !228, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !227, file: !228, line: 387, baseType: !3940, size: 32, offset: 1376)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !227, file: !228, line: 388, baseType: !293, size: 5568, offset: 1408)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !227, file: !228, line: 390, baseType: !109, size: 32, offset: 6976)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !227, file: !228, line: 396, baseType: !7, size: 32, offset: 7008)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !227, file: !228, line: 397, baseType: !3990, size: 8704, offset: 7040)
!3990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 8704, elements: !3991)
!3991 = !{!3992}
!3992 = !DISubrange(count: 17)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !227, file: !228, line: 399, baseType: !544, size: 8, offset: 15744)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !227, file: !228, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !227, file: !228, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !227, file: !228, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !227, file: !228, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !227, file: !228, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !227, file: !228, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !227, file: !228, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !227, file: !228, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !227, file: !228, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !227, file: !228, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !227, file: !228, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !227, file: !228, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !227, file: !228, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !227, file: !228, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !227, file: !228, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !227, file: !228, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !227, file: !228, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !227, file: !228, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !227, file: !228, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !227, file: !228, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !227, file: !228, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !227, file: !228, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !227, file: !228, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !227, file: !228, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !227, file: !228, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !227, file: !228, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !227, file: !228, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !227, file: !228, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !227, file: !228, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !227, file: !228, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !227, file: !228, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !227, file: !228, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !227, file: !228, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !227, file: !228, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !227, file: !228, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !227, file: !228, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !227, file: !228, line: 450, baseType: !4031, size: 16, offset: 15792)
!4031 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !228, line: 206, baseType: !134)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !227, file: !228, line: 451, baseType: !802, size: 32, offset: 15808)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !227, file: !228, line: 453, baseType: !4034, size: 512, offset: 15840)
!4034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 512, elements: !1772)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !227, file: !228, line: 454, baseType: !689, size: 64, offset: 16384)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !227, file: !228, line: 455, baseType: !404, size: 64, offset: 16448)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !227, file: !228, line: 456, baseType: !109, size: 32, offset: 16512)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !227, file: !228, line: 457, baseType: !4039, size: 1088, offset: 16576)
!4039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 1088, elements: !3991)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !227, file: !228, line: 458, baseType: !4039, size: 1088, offset: 17664)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !227, file: !228, line: 469, baseType: !390, size: 64, offset: 18752)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !227, file: !228, line: 471, baseType: !4043, size: 64, offset: 18816)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !228, line: 304, flags: DIFlagFwdDecl)
!4045 = !DIDerivedType(tag: DW_TAG_member, scope: !227, file: !228, line: 478, baseType: !4046, size: 64, offset: 18880)
!4046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !227, file: !228, line: 478, size: 64, elements: !4047)
!4047 = !{!4048, !4051}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4046, file: !228, line: 479, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !228, line: 305, flags: DIFlagFwdDecl)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4046, file: !228, line: 480, baseType: !226, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !227, file: !228, line: 482, baseType: !913, size: 16, offset: 18944)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !227, file: !228, line: 483, baseType: !196, size: 8, offset: 18960)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !227, file: !228, line: 497, baseType: !913, size: 16, offset: 18976)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !227, file: !228, line: 498, baseType: !144, size: 64, offset: 19008)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !227, file: !228, line: 499, baseType: !190, size: 64, offset: 19072)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !227, file: !228, line: 500, baseType: !342, size: 64, offset: 19136)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !227, file: !228, line: 502, baseType: !103, size: 64, offset: 19200)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "resource_setup_done", scope: !113, file: !114, line: 163, baseType: !196, size: 8, offset: 2688)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !113, file: !114, line: 166, baseType: !4061, size: 64, offset: 2752)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pccard_operations", file: !114, line: 121, size: 384, elements: !4063)
!4063 = !{!4064, !4069, !4070, !4075, !4080, !4092}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4062, file: !114, line: 122, baseType: !4065, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!109, !4068}
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4062, file: !114, line: 123, baseType: !4065, size: 64, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4062, file: !114, line: 124, baseType: !4071, size: 64, offset: 128)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!109, !4068, !4074}
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "set_socket", scope: !4062, file: !114, line: 125, baseType: !4076, size: 64, offset: 192)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!109, !4068, !4079}
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "set_io_map", scope: !4062, file: !114, line: 126, baseType: !4081, size: 64, offset: 256)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!109, !4068, !4084}
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pccard_io_map", file: !114, line: 84, size: 192, elements: !4086)
!4086 = !{!4087, !4088, !4089, !4090, !4091}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4085, file: !114, line: 85, baseType: !126, size: 8)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4085, file: !114, line: 86, baseType: !126, size: 8, offset: 8)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !4085, file: !114, line: 87, baseType: !133, size: 16, offset: 16)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4085, file: !114, line: 88, baseType: !144, size: 64, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4085, file: !114, line: 88, baseType: !144, size: 64, offset: 128)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem_map", scope: !4062, file: !114, line: 127, baseType: !4093, size: 64, offset: 320)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!109, !4068, !4096}
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "resource_ops", scope: !113, file: !114, line: 167, baseType: !4098, size: 64, offset: 2816)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DICompositeType(tag: DW_TAG_structure_type, name: "pccard_resource_ops", file: !114, line: 116, flags: DIFlagFwdDecl)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "resource_data", scope: !113, file: !114, line: 168, baseType: !104, size: 64, offset: 2880)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "zoom_video", scope: !113, file: !114, line: 172, baseType: !4102, size: 64, offset: 2944)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{null, !4068, !109}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "power_hook", scope: !113, file: !114, line: 176, baseType: !4106, size: 64, offset: 3008)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!109, !4068, !109}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "tune_bridge", scope: !113, file: !114, line: 180, baseType: !4110, size: 64, offset: 3072)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{null, !4068, !232}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !113, file: !114, line: 184, baseType: !1268, size: 64, offset: 3136)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "thread_done", scope: !113, file: !114, line: 185, baseType: !200, size: 192, offset: 3200)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "thread_events", scope: !113, file: !114, line: 186, baseType: !7, size: 32, offset: 3392)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_events", scope: !113, file: !114, line: 187, baseType: !7, size: 32, offset: 3424)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "skt_mutex", scope: !113, file: !114, line: 191, baseType: !1225, size: 192, offset: 3456)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "ops_mutex", scope: !113, file: !114, line: 192, baseType: !1225, size: 192, offset: 3648)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "thread_lock", scope: !113, file: !114, line: 195, baseType: !309, offset: 3840)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !113, file: !114, line: 198, baseType: !4121, size: 64, offset: 3840)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcmcia_callback", file: !114, line: 118, flags: DIFlagFwdDecl)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "devices_list", scope: !113, file: !114, line: 203, baseType: !184, size: 128, offset: 3904)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "device_count", scope: !113, file: !114, line: 207, baseType: !196, size: 8, offset: 4032)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "pcmcia_pfc", scope: !113, file: !114, line: 210, baseType: !196, size: 8, offset: 4040)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !113, file: !114, line: 213, baseType: !802, size: 32, offset: 4064)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "pcmcia_irq", scope: !113, file: !114, line: 216, baseType: !7, size: 32, offset: 4096)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !113, file: !114, line: 221, baseType: !293, size: 5568, offset: 4160)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !113, file: !114, line: 223, baseType: !104, size: 64, offset: 9728)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "resume_status", scope: !113, file: !114, line: 225, baseType: !109, size: 32, offset: 9792)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !106, file: !3, line: 65, baseType: !226, size: 64, offset: 9984)
!4132 = !{!0, !4133, !4138, !4140, !4145, !4147, !4150, !4152, !4155, !4157, !4159}
!4133 = !DIGlobalVariableExpression(var: !4134, expr: !DIExpression())
!4134 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license235", scope: !2, file: !3, line: 26, type: !4135, isLocal: true, isDefinition: true, align: 8)
!4135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 152, elements: !4136)
!4136 = !{!4137}
!4137 = !DISubrange(count: 19)
!4138 = !DIGlobalVariableExpression(var: !4139, expr: !DIExpression())
!4139 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_i82092aa_module_init240", scope: !2, file: !3, line: 675, type: !104, isLocal: true, isDefinition: true)
!4140 = !DIGlobalVariableExpression(var: !4141, expr: !DIExpression())
!4141 = distinct !DIGlobalVariable(name: "__exitcall_i82092aa_module_exit", scope: !2, file: !3, line: 676, type: !4142, isLocal: true, isDefinition: true)
!4142 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4143, line: 117, baseType: !4144)
!4143 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!4145 = !DIGlobalVariableExpression(var: !4146, expr: !DIExpression())
!4146 = distinct !DIGlobalVariable(name: "i82092aa_pci_driver", scope: !2, file: !3, line: 35, type: !3893, isLocal: true, isDefinition: true)
!4147 = !DIGlobalVariableExpression(var: !4148, expr: !DIExpression())
!4148 = distinct !DIGlobalVariable(name: "i82092aa_pci_ids", scope: !2, file: !3, line: 29, type: !4149, isLocal: true, isDefinition: true)
!4149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3899, size: 512, elements: !177)
!4150 = !DIGlobalVariableExpression(var: !4151, expr: !DIExpression())
!4151 = distinct !DIGlobalVariable(name: "socket_count", scope: !2, file: !3, line: 70, type: !109, isLocal: true, isDefinition: true)
!4152 = !DIGlobalVariableExpression(var: !4153, expr: !DIExpression())
!4153 = distinct !DIGlobalVariable(name: "sockets", scope: !2, file: !3, line: 69, type: !4154, isLocal: true, isDefinition: true)
!4154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 40192, elements: !181)
!4155 = !DIGlobalVariableExpression(var: !4156, expr: !DIExpression())
!4156 = distinct !DIGlobalVariable(name: "port_lock", scope: !2, file: !3, line: 184, type: !309, isLocal: true, isDefinition: true)
!4157 = !DIGlobalVariableExpression(var: !4158, expr: !DIExpression())
!4158 = distinct !DIGlobalVariable(name: "i82092aa_operations", scope: !2, file: !3, line: 44, type: !4062, isLocal: true, isDefinition: true)
!4159 = !DIGlobalVariableExpression(var: !4160, expr: !DIExpression())
!4160 = distinct !DIGlobalVariable(name: "cycle_time", scope: !2, file: !3, line: 277, type: !109, isLocal: true, isDefinition: true)
!4161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 272, elements: !4162)
!4162 = !{!4163}
!4163 = !DISubrange(count: 34)
!4164 = !{!"rsp"}
!4165 = !{i32 7, !"Dwarf Version", i32 4}
!4166 = !{i32 2, !"Debug Info Version", i32 3}
!4167 = !{i32 1, !"wchar_size", i32 2}
!4168 = !{i32 1, !"Code Model", i32 2}
!4169 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4170 = distinct !DISubprogram(name: "i82092aa_module_init", scope: !3, file: !3, line: 663, type: !4171, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!109}
!4173 = !DILocation(line: 665, column: 9, scope: !4170)
!4174 = !DILocation(line: 665, column: 2, scope: !4170)
!4175 = distinct !DISubprogram(name: "i82092aa_module_exit", scope: !3, file: !3, line: 668, type: !1917, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4176 = !DILocation(line: 670, column: 2, scope: !4175)
!4177 = !DILocation(line: 671, column: 17, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4175, file: !3, line: 671, column: 6)
!4179 = !DILocation(line: 671, column: 25, scope: !4178)
!4180 = !DILocation(line: 671, column: 6, scope: !4175)
!4181 = !DILocation(line: 672, column: 3, scope: !4178)
!4182 = !DILocation(line: 673, column: 1, scope: !4175)
!4183 = distinct !DISubprogram(name: "i82092aa_pci_probe", scope: !3, file: !3, line: 73, type: !3911, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4184 = !DILocalVariable(name: "dev", arg: 1, scope: !4183, file: !3, line: 73, type: !226)
!4185 = !DILocation(line: 73, column: 47, scope: !4183)
!4186 = !DILocalVariable(name: "id", arg: 2, scope: !4183, file: !3, line: 74, type: !3898)
!4187 = !DILocation(line: 74, column: 38, scope: !4183)
!4188 = !DILocalVariable(name: "configbyte", scope: !4183, file: !3, line: 76, type: !127)
!4189 = !DILocation(line: 76, column: 16, scope: !4183)
!4190 = !DILocalVariable(name: "i", scope: !4183, file: !3, line: 77, type: !109)
!4191 = !DILocation(line: 77, column: 6, scope: !4183)
!4192 = !DILocalVariable(name: "ret", scope: !4183, file: !3, line: 77, type: !109)
!4193 = !DILocation(line: 77, column: 9, scope: !4183)
!4194 = !DILocation(line: 79, column: 26, scope: !4183)
!4195 = !DILocation(line: 79, column: 8, scope: !4183)
!4196 = !DILocation(line: 79, column: 6, scope: !4183)
!4197 = !DILocation(line: 80, column: 6, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 80, column: 6)
!4199 = !DILocation(line: 80, column: 6, scope: !4183)
!4200 = !DILocation(line: 81, column: 10, scope: !4198)
!4201 = !DILocation(line: 81, column: 3, scope: !4198)
!4202 = !DILocation(line: 84, column: 23, scope: !4183)
!4203 = !DILocation(line: 84, column: 2, scope: !4183)
!4204 = !DILocation(line: 86, column: 10, scope: !4183)
!4205 = !DILocation(line: 86, column: 20, scope: !4183)
!4206 = !DILocation(line: 86, column: 2, scope: !4183)
!4207 = !DILocation(line: 88, column: 16, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 86, column: 24)
!4209 = !DILocation(line: 89, column: 3, scope: !4208)
!4210 = !DILocation(line: 91, column: 16, scope: !4208)
!4211 = !DILocation(line: 92, column: 3, scope: !4208)
!4212 = !DILocation(line: 95, column: 16, scope: !4208)
!4213 = !DILocation(line: 96, column: 3, scope: !4208)
!4214 = !DILocation(line: 99, column: 3, scope: !4208)
!4215 = !DILocation(line: 101, column: 7, scope: !4208)
!4216 = !DILocation(line: 102, column: 3, scope: !4208)
!4217 = !DILocation(line: 104, column: 2, scope: !4183)
!4218 = !DILocation(line: 107, column: 7, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 107, column: 6)
!4220 = !DILocation(line: 107, column: 6, scope: !4183)
!4221 = !DILocation(line: 108, column: 7, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 107, column: 66)
!4223 = !DILocation(line: 109, column: 3, scope: !4222)
!4224 = !DILocation(line: 112, column: 9, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 112, column: 2)
!4226 = !DILocation(line: 112, column: 7, scope: !4225)
!4227 = !DILocation(line: 112, column: 14, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 112, column: 2)
!4229 = !DILocation(line: 112, column: 18, scope: !4228)
!4230 = !DILocation(line: 112, column: 16, scope: !4228)
!4231 = !DILocation(line: 112, column: 2, scope: !4225)
!4232 = !DILocation(line: 113, column: 11, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4228, file: !3, line: 112, column: 37)
!4234 = !DILocation(line: 113, column: 3, scope: !4233)
!4235 = !DILocation(line: 113, column: 14, scope: !4233)
!4236 = !DILocation(line: 113, column: 25, scope: !4233)
!4237 = !DILocation(line: 114, column: 24, scope: !4233)
!4238 = !DILocation(line: 114, column: 11, scope: !4233)
!4239 = !DILocation(line: 114, column: 3, scope: !4233)
!4240 = !DILocation(line: 114, column: 14, scope: !4233)
!4241 = !DILocation(line: 114, column: 22, scope: !4233)
!4242 = !DILocation(line: 115, column: 11, scope: !4233)
!4243 = !DILocation(line: 115, column: 3, scope: !4233)
!4244 = !DILocation(line: 115, column: 14, scope: !4233)
!4245 = !DILocation(line: 115, column: 21, scope: !4233)
!4246 = !DILocation(line: 115, column: 30, scope: !4233)
!4247 = !DILocation(line: 116, column: 11, scope: !4233)
!4248 = !DILocation(line: 116, column: 3, scope: !4233)
!4249 = !DILocation(line: 116, column: 14, scope: !4233)
!4250 = !DILocation(line: 116, column: 21, scope: !4233)
!4251 = !DILocation(line: 116, column: 30, scope: !4233)
!4252 = !DILocation(line: 117, column: 11, scope: !4233)
!4253 = !DILocation(line: 117, column: 3, scope: !4233)
!4254 = !DILocation(line: 117, column: 14, scope: !4233)
!4255 = !DILocation(line: 117, column: 21, scope: !4233)
!4256 = !DILocation(line: 117, column: 30, scope: !4233)
!4257 = !DILocation(line: 118, column: 32, scope: !4233)
!4258 = !DILocation(line: 118, column: 37, scope: !4233)
!4259 = !DILocation(line: 118, column: 11, scope: !4233)
!4260 = !DILocation(line: 118, column: 3, scope: !4233)
!4261 = !DILocation(line: 118, column: 14, scope: !4233)
!4262 = !DILocation(line: 118, column: 21, scope: !4233)
!4263 = !DILocation(line: 118, column: 30, scope: !4233)
!4264 = !DILocation(line: 119, column: 31, scope: !4233)
!4265 = !DILocation(line: 119, column: 11, scope: !4233)
!4266 = !DILocation(line: 119, column: 3, scope: !4233)
!4267 = !DILocation(line: 119, column: 14, scope: !4233)
!4268 = !DILocation(line: 119, column: 21, scope: !4233)
!4269 = !DILocation(line: 119, column: 29, scope: !4233)
!4270 = !DILocation(line: 120, column: 11, scope: !4233)
!4271 = !DILocation(line: 120, column: 3, scope: !4233)
!4272 = !DILocation(line: 120, column: 14, scope: !4233)
!4273 = !DILocation(line: 120, column: 21, scope: !4233)
!4274 = !DILocation(line: 120, column: 27, scope: !4233)
!4275 = !DILocation(line: 122, column: 23, scope: !4233)
!4276 = !DILocation(line: 122, column: 11, scope: !4233)
!4277 = !DILocation(line: 122, column: 3, scope: !4233)
!4278 = !DILocation(line: 122, column: 14, scope: !4233)
!4279 = !DILocation(line: 122, column: 21, scope: !4233)
!4280 = !DILocation(line: 124, column: 20, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 124, column: 7)
!4282 = !DILocation(line: 124, column: 7, scope: !4281)
!4283 = !DILocation(line: 124, column: 7, scope: !4233)
!4284 = !DILocation(line: 125, column: 12, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 124, column: 24)
!4286 = !DILocation(line: 125, column: 4, scope: !4285)
!4287 = !DILocation(line: 125, column: 15, scope: !4285)
!4288 = !DILocation(line: 125, column: 26, scope: !4285)
!4289 = !DILocation(line: 127, column: 3, scope: !4285)
!4290 = !DILocation(line: 130, column: 2, scope: !4233)
!4291 = !DILocation(line: 112, column: 33, scope: !4228)
!4292 = !DILocation(line: 112, column: 2, scope: !4228)
!4293 = distinct !{!4293, !4231, !4294}
!4294 = !DILocation(line: 130, column: 2, scope: !4225)
!4295 = !DILocation(line: 135, column: 13, scope: !4183)
!4296 = !DILocation(line: 138, column: 24, scope: !4183)
!4297 = !DILocation(line: 138, column: 35, scope: !4183)
!4298 = !DILocation(line: 138, column: 2, scope: !4183)
!4299 = !DILocation(line: 142, column: 20, scope: !4183)
!4300 = !DILocation(line: 142, column: 25, scope: !4183)
!4301 = !DILocation(line: 142, column: 8, scope: !4183)
!4302 = !DILocation(line: 142, column: 6, scope: !4183)
!4303 = !DILocation(line: 144, column: 6, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 144, column: 6)
!4305 = !DILocation(line: 144, column: 6, scope: !4183)
!4306 = !DILocation(line: 145, column: 3, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4304, file: !3, line: 144, column: 11)
!4308 = !DILocation(line: 147, column: 3, scope: !4307)
!4309 = !DILocation(line: 150, column: 9, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 150, column: 2)
!4311 = !DILocation(line: 150, column: 7, scope: !4310)
!4312 = !DILocation(line: 150, column: 14, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 150, column: 2)
!4314 = !DILocation(line: 150, column: 18, scope: !4313)
!4315 = !DILocation(line: 150, column: 16, scope: !4313)
!4316 = !DILocation(line: 150, column: 2, scope: !4310)
!4317 = !DILocation(line: 151, column: 35, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4313, file: !3, line: 150, column: 37)
!4319 = !DILocation(line: 151, column: 40, scope: !4318)
!4320 = !DILocation(line: 151, column: 11, scope: !4318)
!4321 = !DILocation(line: 151, column: 3, scope: !4318)
!4322 = !DILocation(line: 151, column: 14, scope: !4318)
!4323 = !DILocation(line: 151, column: 21, scope: !4318)
!4324 = !DILocation(line: 151, column: 25, scope: !4318)
!4325 = !DILocation(line: 151, column: 32, scope: !4318)
!4326 = !DILocation(line: 152, column: 11, scope: !4318)
!4327 = !DILocation(line: 152, column: 3, scope: !4318)
!4328 = !DILocation(line: 152, column: 14, scope: !4318)
!4329 = !DILocation(line: 152, column: 21, scope: !4318)
!4330 = !DILocation(line: 152, column: 25, scope: !4318)
!4331 = !DILocation(line: 153, column: 11, scope: !4318)
!4332 = !DILocation(line: 153, column: 3, scope: !4318)
!4333 = !DILocation(line: 153, column: 14, scope: !4318)
!4334 = !DILocation(line: 153, column: 21, scope: !4318)
!4335 = !DILocation(line: 153, column: 34, scope: !4318)
!4336 = !DILocation(line: 154, column: 41, scope: !4318)
!4337 = !DILocation(line: 154, column: 33, scope: !4318)
!4338 = !DILocation(line: 154, column: 44, scope: !4318)
!4339 = !DILocation(line: 154, column: 9, scope: !4318)
!4340 = !DILocation(line: 154, column: 7, scope: !4318)
!4341 = !DILocation(line: 155, column: 7, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4318, file: !3, line: 155, column: 7)
!4343 = !DILocation(line: 155, column: 7, scope: !4318)
!4344 = !DILocation(line: 156, column: 4, scope: !4342)
!4345 = !DILocation(line: 157, column: 2, scope: !4318)
!4346 = !DILocation(line: 150, column: 33, scope: !4313)
!4347 = !DILocation(line: 150, column: 2, scope: !4313)
!4348 = distinct !{!4348, !4316, !4349}
!4349 = !DILocation(line: 157, column: 2, scope: !4310)
!4350 = !DILocation(line: 159, column: 2, scope: !4183)
!4351 = !DILabel(scope: !4183, name: "err_out_free_sockets", file: !3, line: 161)
!4352 = !DILocation(line: 161, column: 1, scope: !4183)
!4353 = !DILocation(line: 162, column: 6, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 162, column: 6)
!4355 = !DILocation(line: 162, column: 6, scope: !4183)
!4356 = !DILocation(line: 163, column: 9, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4358, file: !3, line: 163, column: 3)
!4358 = distinct !DILexicalBlock(scope: !4354, file: !3, line: 162, column: 9)
!4359 = !DILocation(line: 163, column: 8, scope: !4357)
!4360 = !DILocation(line: 163, column: 13, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 163, column: 3)
!4362 = !DILocation(line: 163, column: 15, scope: !4361)
!4363 = !DILocation(line: 163, column: 3, scope: !4357)
!4364 = !DILocation(line: 164, column: 38, scope: !4361)
!4365 = !DILocation(line: 164, column: 30, scope: !4361)
!4366 = !DILocation(line: 164, column: 41, scope: !4361)
!4367 = !DILocation(line: 164, column: 4, scope: !4361)
!4368 = !DILocation(line: 163, column: 22, scope: !4361)
!4369 = !DILocation(line: 163, column: 3, scope: !4361)
!4370 = distinct !{!4370, !4363, !4371}
!4371 = !DILocation(line: 164, column: 47, scope: !4357)
!4372 = !DILocation(line: 165, column: 2, scope: !4358)
!4373 = !DILocation(line: 166, column: 11, scope: !4183)
!4374 = !DILocation(line: 166, column: 16, scope: !4183)
!4375 = !DILocation(line: 166, column: 2, scope: !4183)
!4376 = !DILabel(scope: !4183, name: "err_out_free_res", file: !3, line: 167)
!4377 = !DILocation(line: 167, column: 1, scope: !4183)
!4378 = !DILocation(line: 168, column: 2, scope: !4183)
!4379 = !DILabel(scope: !4183, name: "err_out_disable", file: !3, line: 169)
!4380 = !DILocation(line: 169, column: 1, scope: !4183)
!4381 = !DILocation(line: 170, column: 21, scope: !4183)
!4382 = !DILocation(line: 170, column: 2, scope: !4183)
!4383 = !DILocation(line: 171, column: 9, scope: !4183)
!4384 = !DILocation(line: 171, column: 2, scope: !4183)
!4385 = !DILocation(line: 172, column: 1, scope: !4183)
!4386 = distinct !DISubprogram(name: "i82092aa_pci_remove", scope: !3, file: !3, line: 174, type: !3915, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4387 = !DILocalVariable(name: "dev", arg: 1, scope: !4386, file: !3, line: 174, type: !226)
!4388 = !DILocation(line: 174, column: 49, scope: !4386)
!4389 = !DILocalVariable(name: "i", scope: !4386, file: !3, line: 176, type: !109)
!4390 = !DILocation(line: 176, column: 6, scope: !4386)
!4391 = !DILocation(line: 178, column: 11, scope: !4386)
!4392 = !DILocation(line: 178, column: 16, scope: !4386)
!4393 = !DILocation(line: 178, column: 2, scope: !4386)
!4394 = !DILocation(line: 180, column: 9, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4386, file: !3, line: 180, column: 2)
!4396 = !DILocation(line: 180, column: 7, scope: !4395)
!4397 = !DILocation(line: 180, column: 14, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4395, file: !3, line: 180, column: 2)
!4399 = !DILocation(line: 180, column: 18, scope: !4398)
!4400 = !DILocation(line: 180, column: 16, scope: !4398)
!4401 = !DILocation(line: 180, column: 2, scope: !4395)
!4402 = !DILocation(line: 181, column: 37, scope: !4398)
!4403 = !DILocation(line: 181, column: 29, scope: !4398)
!4404 = !DILocation(line: 181, column: 40, scope: !4398)
!4405 = !DILocation(line: 181, column: 3, scope: !4398)
!4406 = !DILocation(line: 180, column: 33, scope: !4398)
!4407 = !DILocation(line: 180, column: 2, scope: !4398)
!4408 = distinct !{!4408, !4401, !4409}
!4409 = !DILocation(line: 181, column: 46, scope: !4395)
!4410 = !DILocation(line: 182, column: 1, scope: !4386)
!4411 = distinct !DISubprogram(name: "card_present", scope: !3, file: !3, line: 357, type: !3090, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4412 = !DILocalVariable(name: "socketno", arg: 1, scope: !4411, file: !3, line: 357, type: !109)
!4413 = !DILocation(line: 357, column: 29, scope: !4411)
!4414 = !DILocalVariable(name: "val", scope: !4411, file: !3, line: 359, type: !7)
!4415 = !DILocation(line: 359, column: 15, scope: !4411)
!4416 = !DILocation(line: 361, column: 7, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 361, column: 6)
!4418 = !DILocation(line: 361, column: 16, scope: !4417)
!4419 = !DILocation(line: 361, column: 21, scope: !4417)
!4420 = !DILocation(line: 361, column: 25, scope: !4417)
!4421 = !DILocation(line: 361, column: 34, scope: !4417)
!4422 = !DILocation(line: 361, column: 6, scope: !4411)
!4423 = !DILocation(line: 362, column: 3, scope: !4417)
!4424 = !DILocation(line: 363, column: 14, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 363, column: 6)
!4426 = !DILocation(line: 363, column: 6, scope: !4425)
!4427 = !DILocation(line: 363, column: 24, scope: !4425)
!4428 = !DILocation(line: 363, column: 32, scope: !4425)
!4429 = !DILocation(line: 363, column: 6, scope: !4411)
!4430 = !DILocation(line: 364, column: 3, scope: !4425)
!4431 = !DILocation(line: 367, column: 22, scope: !4411)
!4432 = !DILocation(line: 367, column: 8, scope: !4411)
!4433 = !DILocation(line: 367, column: 6, scope: !4411)
!4434 = !DILocation(line: 368, column: 7, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 368, column: 6)
!4436 = !DILocation(line: 368, column: 10, scope: !4435)
!4437 = !DILocation(line: 368, column: 15, scope: !4435)
!4438 = !DILocation(line: 368, column: 6, scope: !4411)
!4439 = !DILocation(line: 369, column: 3, scope: !4435)
!4440 = !DILocation(line: 371, column: 2, scope: !4411)
!4441 = !DILocation(line: 372, column: 1, scope: !4411)
!4442 = distinct !DISubprogram(name: "request_irq", scope: !279, file: !279, line: 157, type: !4443, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!109, !7, !4445, !103, !160, !104}
!4445 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !279, line: 92, baseType: !4446)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!4449, !109, !104}
!4449 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !94, line: 17, baseType: !93)
!4450 = !DILocalVariable(name: "irq", arg: 1, scope: !4442, file: !279, line: 157, type: !7)
!4451 = !DILocation(line: 157, column: 26, scope: !4442)
!4452 = !DILocalVariable(name: "handler", arg: 2, scope: !4442, file: !279, line: 157, type: !4445)
!4453 = !DILocation(line: 157, column: 45, scope: !4442)
!4454 = !DILocalVariable(name: "flags", arg: 3, scope: !4442, file: !279, line: 157, type: !103)
!4455 = !DILocation(line: 157, column: 68, scope: !4442)
!4456 = !DILocalVariable(name: "name", arg: 4, scope: !4442, file: !279, line: 158, type: !160)
!4457 = !DILocation(line: 158, column: 18, scope: !4442)
!4458 = !DILocalVariable(name: "dev", arg: 5, scope: !4442, file: !279, line: 158, type: !104)
!4459 = !DILocation(line: 158, column: 30, scope: !4442)
!4460 = !DILocation(line: 160, column: 30, scope: !4442)
!4461 = !DILocation(line: 160, column: 35, scope: !4442)
!4462 = !DILocation(line: 160, column: 50, scope: !4442)
!4463 = !DILocation(line: 160, column: 57, scope: !4442)
!4464 = !DILocation(line: 160, column: 63, scope: !4442)
!4465 = !DILocation(line: 160, column: 9, scope: !4442)
!4466 = !DILocation(line: 160, column: 2, scope: !4442)
!4467 = distinct !DISubprogram(name: "i82092aa_interrupt", scope: !3, file: !3, line: 290, type: !4447, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4468 = !DILocalVariable(name: "irq", arg: 1, scope: !4467, file: !3, line: 290, type: !109)
!4469 = !DILocation(line: 290, column: 43, scope: !4467)
!4470 = !DILocalVariable(name: "dev", arg: 2, scope: !4467, file: !3, line: 290, type: !104)
!4471 = !DILocation(line: 290, column: 54, scope: !4467)
!4472 = !DILocalVariable(name: "i", scope: !4467, file: !3, line: 292, type: !109)
!4473 = !DILocation(line: 292, column: 6, scope: !4467)
!4474 = !DILocalVariable(name: "loopcount", scope: !4467, file: !3, line: 293, type: !109)
!4475 = !DILocation(line: 293, column: 6, scope: !4467)
!4476 = !DILocalVariable(name: "handled", scope: !4467, file: !3, line: 294, type: !109)
!4477 = !DILocation(line: 294, column: 6, scope: !4467)
!4478 = !DILocalVariable(name: "events", scope: !4467, file: !3, line: 296, type: !7)
!4479 = !DILocation(line: 296, column: 15, scope: !4467)
!4480 = !DILocalVariable(name: "active", scope: !4467, file: !3, line: 296, type: !7)
!4481 = !DILocation(line: 296, column: 23, scope: !4467)
!4482 = !DILocation(line: 298, column: 2, scope: !4467)
!4483 = !DILocation(line: 299, column: 12, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 298, column: 12)
!4485 = !DILocation(line: 300, column: 7, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 300, column: 7)
!4487 = !DILocation(line: 300, column: 17, scope: !4486)
!4488 = !DILocation(line: 300, column: 7, scope: !4484)
!4489 = !DILocation(line: 301, column: 4, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4486, file: !3, line: 300, column: 23)
!4491 = !DILocation(line: 302, column: 4, scope: !4490)
!4492 = !DILocation(line: 305, column: 10, scope: !4484)
!4493 = !DILocation(line: 307, column: 10, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 307, column: 3)
!4495 = !DILocation(line: 307, column: 8, scope: !4494)
!4496 = !DILocation(line: 307, column: 15, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 307, column: 3)
!4498 = !DILocation(line: 307, column: 19, scope: !4497)
!4499 = !DILocation(line: 307, column: 17, scope: !4497)
!4500 = !DILocation(line: 307, column: 3, scope: !4494)
!4501 = !DILocalVariable(name: "csc", scope: !4502, file: !3, line: 308, type: !109)
!4502 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 307, column: 38)
!4503 = !DILocation(line: 308, column: 8, scope: !4502)
!4504 = !DILocation(line: 311, column: 16, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 311, column: 8)
!4506 = !DILocation(line: 311, column: 8, scope: !4505)
!4507 = !DILocation(line: 311, column: 19, scope: !4505)
!4508 = !DILocation(line: 311, column: 30, scope: !4505)
!4509 = !DILocation(line: 311, column: 8, scope: !4502)
!4510 = !DILocation(line: 312, column: 5, scope: !4505)
!4511 = !DILocation(line: 315, column: 24, scope: !4502)
!4512 = !DILocation(line: 315, column: 10, scope: !4502)
!4513 = !DILocation(line: 315, column: 8, scope: !4502)
!4514 = !DILocation(line: 317, column: 8, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 317, column: 8)
!4516 = !DILocation(line: 317, column: 12, scope: !4515)
!4517 = !DILocation(line: 317, column: 8, scope: !4502)
!4518 = !DILocation(line: 318, column: 5, scope: !4515)
!4519 = !DILocation(line: 319, column: 12, scope: !4502)
!4520 = !DILocation(line: 320, column: 11, scope: !4502)
!4521 = !DILocation(line: 322, column: 8, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 322, column: 8)
!4523 = !DILocation(line: 322, column: 12, scope: !4522)
!4524 = !DILocation(line: 322, column: 8, scope: !4502)
!4525 = !DILocation(line: 323, column: 12, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 322, column: 31)
!4527 = !DILocation(line: 324, column: 5, scope: !4526)
!4528 = !DILocation(line: 326, column: 4, scope: !4526)
!4529 = !DILocation(line: 328, column: 22, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 328, column: 8)
!4531 = !DILocation(line: 328, column: 8, scope: !4530)
!4532 = !DILocation(line: 328, column: 38, scope: !4530)
!4533 = !DILocation(line: 328, column: 8, scope: !4502)
!4534 = !DILocation(line: 330, column: 9, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 330, column: 9)
!4536 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 328, column: 56)
!4537 = !DILocation(line: 330, column: 13, scope: !4535)
!4538 = !DILocation(line: 330, column: 9, scope: !4536)
!4539 = !DILocation(line: 331, column: 13, scope: !4535)
!4540 = !DILocation(line: 331, column: 6, scope: !4535)
!4541 = !DILocation(line: 332, column: 4, scope: !4536)
!4542 = !DILocation(line: 334, column: 9, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4544, file: !3, line: 334, column: 9)
!4544 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 332, column: 11)
!4545 = !DILocation(line: 334, column: 13, scope: !4543)
!4546 = !DILocation(line: 334, column: 9, scope: !4544)
!4547 = !DILocation(line: 335, column: 13, scope: !4543)
!4548 = !DILocation(line: 335, column: 6, scope: !4543)
!4549 = !DILocation(line: 336, column: 9, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4544, file: !3, line: 336, column: 9)
!4551 = !DILocation(line: 336, column: 13, scope: !4550)
!4552 = !DILocation(line: 336, column: 9, scope: !4544)
!4553 = !DILocation(line: 337, column: 13, scope: !4550)
!4554 = !DILocation(line: 337, column: 6, scope: !4550)
!4555 = !DILocation(line: 338, column: 9, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4544, file: !3, line: 338, column: 9)
!4557 = !DILocation(line: 338, column: 13, scope: !4556)
!4558 = !DILocation(line: 338, column: 9, scope: !4544)
!4559 = !DILocation(line: 339, column: 13, scope: !4556)
!4560 = !DILocation(line: 339, column: 6, scope: !4556)
!4561 = !DILocation(line: 342, column: 8, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 342, column: 8)
!4563 = !DILocation(line: 342, column: 8, scope: !4502)
!4564 = !DILocation(line: 343, column: 34, scope: !4562)
!4565 = !DILocation(line: 343, column: 26, scope: !4562)
!4566 = !DILocation(line: 343, column: 37, scope: !4562)
!4567 = !DILocation(line: 343, column: 45, scope: !4562)
!4568 = !DILocation(line: 343, column: 5, scope: !4562)
!4569 = !DILocation(line: 344, column: 14, scope: !4502)
!4570 = !DILocation(line: 344, column: 11, scope: !4502)
!4571 = !DILocation(line: 345, column: 3, scope: !4502)
!4572 = !DILocation(line: 307, column: 34, scope: !4497)
!4573 = !DILocation(line: 307, column: 3, scope: !4497)
!4574 = distinct !{!4574, !4500, !4575}
!4575 = !DILocation(line: 345, column: 3, scope: !4494)
!4576 = !DILocation(line: 347, column: 7, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 347, column: 7)
!4578 = !DILocation(line: 347, column: 14, scope: !4577)
!4579 = !DILocation(line: 347, column: 7, scope: !4484)
!4580 = !DILocation(line: 348, column: 4, scope: !4577)
!4581 = distinct !{!4581, !4482, !4582}
!4582 = !DILocation(line: 349, column: 2, scope: !4467)
!4583 = !DILocation(line: 350, column: 9, scope: !4467)
!4584 = !DILocation(line: 350, column: 2, scope: !4467)
!4585 = distinct !DISubprogram(name: "indirect_read", scope: !3, file: !3, line: 188, type: !4586, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!127, !109, !134}
!4588 = !DILocalVariable(name: "lock", arg: 1, scope: !4589, file: !4590, line: 407, type: !1118)
!4589 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4590, file: !4590, line: 407, type: !4591, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4590 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4591 = !DISubroutineType(types: !4592)
!4592 = !{null, !1118, !103}
!4593 = !DILocation(line: 407, column: 64, scope: !4589, inlinedAt: !4594)
!4594 = distinct !DILocation(line: 199, column: 2, scope: !4585)
!4595 = !DILocalVariable(name: "flags", arg: 2, scope: !4589, file: !4590, line: 407, type: !103)
!4596 = !DILocation(line: 407, column: 84, scope: !4589, inlinedAt: !4594)
!4597 = !DILocalVariable(name: "lock", arg: 1, scope: !4598, file: !4590, line: 327, type: !1118)
!4598 = distinct !DISubprogram(name: "spinlock_check", scope: !4590, file: !4590, line: 327, type: !4599, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!4601, !1118}
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!4602 = !DILocation(line: 327, column: 67, scope: !4598, inlinedAt: !4603)
!4603 = distinct !DILocation(line: 194, column: 2, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4605, file: !3, line: 194, column: 2)
!4605 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 194, column: 2)
!4606 = distinct !DILexicalBlock(scope: !4607, file: !3, line: 194, column: 2)
!4607 = distinct !DILexicalBlock(scope: !4608, file: !3, line: 194, column: 2)
!4608 = distinct !DILexicalBlock(scope: !4585, file: !3, line: 194, column: 2)
!4609 = !DILocalVariable(name: "socket", arg: 1, scope: !4585, file: !3, line: 188, type: !109)
!4610 = !DILocation(line: 188, column: 40, scope: !4585)
!4611 = !DILocalVariable(name: "reg", arg: 2, scope: !4585, file: !3, line: 188, type: !134)
!4612 = !DILocation(line: 188, column: 63, scope: !4585)
!4613 = !DILocalVariable(name: "port", scope: !4585, file: !3, line: 190, type: !134)
!4614 = !DILocation(line: 190, column: 21, scope: !4585)
!4615 = !DILocalVariable(name: "val", scope: !4585, file: !3, line: 191, type: !127)
!4616 = !DILocation(line: 191, column: 16, scope: !4585)
!4617 = !DILocalVariable(name: "flags", scope: !4585, file: !3, line: 192, type: !103)
!4618 = !DILocation(line: 192, column: 16, scope: !4585)
!4619 = !DILocation(line: 194, column: 2, scope: !4585)
!4620 = !DILocation(line: 194, column: 2, scope: !4608)
!4621 = !DILocalVariable(name: "__dummy", scope: !4622, file: !3, line: 194, type: !103)
!4622 = distinct !DILexicalBlock(scope: !4607, file: !3, line: 194, column: 2)
!4623 = !DILocation(line: 194, column: 2, scope: !4622)
!4624 = !DILocalVariable(name: "__dummy2", scope: !4622, file: !3, line: 194, type: !103)
!4625 = !DILocation(line: 194, column: 2, scope: !4607)
!4626 = !DILocation(line: 194, column: 2, scope: !4606)
!4627 = !DILocation(line: 194, column: 2, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 194, column: 2)
!4629 = !DILocalVariable(name: "__dummy", scope: !4630, file: !3, line: 194, type: !103)
!4630 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 194, column: 2)
!4631 = distinct !DILexicalBlock(scope: !4628, file: !3, line: 194, column: 2)
!4632 = !DILocation(line: 194, column: 2, scope: !4630)
!4633 = !DILocalVariable(name: "__dummy2", scope: !4630, file: !3, line: 194, type: !103)
!4634 = !DILocation(line: 194, column: 2, scope: !4631)
!4635 = !DILocation(line: 194, column: 2, scope: !4605)
!4636 = !{i32 -2141725517}
!4637 = !DILocation(line: 329, column: 10, scope: !4598, inlinedAt: !4603)
!4638 = !DILocation(line: 329, column: 16, scope: !4598, inlinedAt: !4603)
!4639 = !DILocation(line: 194, column: 2, scope: !4604)
!4640 = !DILocation(line: 195, column: 9, scope: !4585)
!4641 = !DILocation(line: 195, column: 16, scope: !4585)
!4642 = !DILocation(line: 195, column: 6, scope: !4585)
!4643 = !DILocation(line: 196, column: 17, scope: !4585)
!4644 = !DILocation(line: 196, column: 9, scope: !4585)
!4645 = !DILocation(line: 196, column: 25, scope: !4585)
!4646 = !DILocation(line: 196, column: 7, scope: !4585)
!4647 = !DILocation(line: 197, column: 7, scope: !4585)
!4648 = !DILocation(line: 197, column: 12, scope: !4585)
!4649 = !DILocation(line: 197, column: 2, scope: !4585)
!4650 = !DILocation(line: 198, column: 12, scope: !4585)
!4651 = !DILocation(line: 198, column: 16, scope: !4585)
!4652 = !DILocation(line: 198, column: 8, scope: !4585)
!4653 = !DILocation(line: 198, column: 6, scope: !4585)
!4654 = !DILocation(line: 199, column: 37, scope: !4585)
!4655 = !DILocalVariable(name: "__dummy", scope: !4656, file: !4590, line: 409, type: !103)
!4656 = distinct !DILexicalBlock(scope: !4657, file: !4590, line: 409, column: 2)
!4657 = distinct !DILexicalBlock(scope: !4589, file: !4590, line: 409, column: 2)
!4658 = !DILocation(line: 409, column: 2, scope: !4656, inlinedAt: !4594)
!4659 = !DILocalVariable(name: "__dummy2", scope: !4656, file: !4590, line: 409, type: !103)
!4660 = !DILocalVariable(name: "__dummy", scope: !4661, file: !4590, line: 409, type: !103)
!4661 = distinct !DILexicalBlock(scope: !4662, file: !4590, line: 409, column: 2)
!4662 = distinct !DILexicalBlock(scope: !4663, file: !4590, line: 409, column: 2)
!4663 = distinct !DILexicalBlock(scope: !4664, file: !4590, line: 409, column: 2)
!4664 = distinct !DILexicalBlock(scope: !4657, file: !4590, line: 409, column: 2)
!4665 = !DILocation(line: 409, column: 2, scope: !4661, inlinedAt: !4594)
!4666 = !DILocalVariable(name: "__dummy2", scope: !4661, file: !4590, line: 409, type: !103)
!4667 = !DILocation(line: 409, column: 2, scope: !4662, inlinedAt: !4594)
!4668 = !DILocation(line: 409, column: 2, scope: !4669, inlinedAt: !4594)
!4669 = distinct !DILexicalBlock(scope: !4664, file: !4590, line: 409, column: 2)
!4670 = !{i32 -2145462297}
!4671 = !DILocation(line: 409, column: 2, scope: !4672, inlinedAt: !4594)
!4672 = distinct !DILexicalBlock(scope: !4669, file: !4590, line: 409, column: 2)
!4673 = !DILocation(line: 200, column: 9, scope: !4585)
!4674 = !DILocation(line: 200, column: 2, scope: !4585)
!4675 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4676, file: !4676, line: 666, type: !4677, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4676 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4677 = !DISubroutineType(types: !4678)
!4678 = !{!103}
!4679 = !DILocalVariable(name: "f", scope: !4675, file: !4676, line: 668, type: !103)
!4680 = !DILocation(line: 668, column: 16, scope: !4675)
!4681 = !DILocation(line: 670, column: 6, scope: !4675)
!4682 = !DILocation(line: 670, column: 4, scope: !4675)
!4683 = !DILocation(line: 671, column: 2, scope: !4675)
!4684 = !DILocation(line: 672, column: 9, scope: !4675)
!4685 = !DILocation(line: 672, column: 2, scope: !4675)
!4686 = distinct !DISubprogram(name: "outb", scope: !4687, file: !4687, line: 334, type: !4688, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4687 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4688 = !DISubroutineType(types: !4689)
!4689 = !{null, !127, !109}
!4690 = !DILocalVariable(name: "value", arg: 1, scope: !4686, file: !4687, line: 334, type: !127)
!4691 = !DILocation(line: 334, column: 1, scope: !4686)
!4692 = !DILocalVariable(name: "port", arg: 2, scope: !4686, file: !4687, line: 334, type: !109)
!4693 = !{i32 -2143408853}
!4694 = distinct !DISubprogram(name: "inb", scope: !4687, file: !4687, line: 334, type: !4695, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{!127, !109}
!4697 = !DILocalVariable(name: "port", arg: 1, scope: !4694, file: !4687, line: 334, type: !109)
!4698 = !DILocation(line: 334, column: 1, scope: !4694)
!4699 = !DILocalVariable(name: "value", scope: !4694, file: !4687, line: 334, type: !127)
!4700 = !{i32 -2143408651}
!4701 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4676, file: !4676, line: 646, type: !4677, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4702 = !DILocalVariable(name: "__ret", scope: !4703, file: !4676, line: 648, type: !103)
!4703 = distinct !DILexicalBlock(scope: !4701, file: !4676, line: 648, column: 9)
!4704 = !DILocation(line: 648, column: 9, scope: !4703)
!4705 = !DILocalVariable(name: "__edi", scope: !4703, file: !4676, line: 648, type: !103)
!4706 = !DILocalVariable(name: "__esi", scope: !4703, file: !4676, line: 648, type: !103)
!4707 = !DILocalVariable(name: "__edx", scope: !4703, file: !4676, line: 648, type: !103)
!4708 = !DILocalVariable(name: "__ecx", scope: !4703, file: !4676, line: 648, type: !103)
!4709 = !DILocalVariable(name: "__eax", scope: !4703, file: !4676, line: 648, type: !103)
!4710 = !DILocation(line: 648, column: 9, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4712, file: !4676, line: 648, column: 9)
!4712 = distinct !DILexicalBlock(scope: !4703, file: !4676, line: 648, column: 9)
!4713 = !{i32 -2145775866, i32 -2145773551, i32 -2145773317, i32 -2145773266, i32 -2145773238, i32 -2145773213, i32 -2145773529, i32 -2145773516, i32 -2145773078, i32 -2145772959, i32 -2145773424, i32 -2145773397, i32 -2145773369, i32 -2145773339}
!4714 = !DILocalVariable(name: "__mask", scope: !4715, file: !4676, line: 648, type: !103)
!4715 = distinct !DILexicalBlock(scope: !4711, file: !4676, line: 648, column: 9)
!4716 = !DILocation(line: 648, column: 9, scope: !4715)
!4717 = !DILocation(line: 648, column: 9, scope: !4712)
!4718 = !DILocation(line: 648, column: 2, scope: !4701)
!4719 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4676, file: !4676, line: 656, type: !1917, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4720 = !DILocalVariable(name: "__edi", scope: !4721, file: !4676, line: 658, type: !103)
!4721 = distinct !DILexicalBlock(scope: !4719, file: !4676, line: 658, column: 2)
!4722 = !DILocation(line: 658, column: 2, scope: !4721)
!4723 = !DILocalVariable(name: "__esi", scope: !4721, file: !4676, line: 658, type: !103)
!4724 = !DILocalVariable(name: "__edx", scope: !4721, file: !4676, line: 658, type: !103)
!4725 = !DILocalVariable(name: "__ecx", scope: !4721, file: !4676, line: 658, type: !103)
!4726 = !DILocalVariable(name: "__eax", scope: !4721, file: !4676, line: 658, type: !103)
!4727 = !{i32 -2145768772, i32 -2145768040, i32 -2145767806, i32 -2145767755, i32 -2145767727, i32 -2145767702, i32 -2145768018, i32 -2145768005, i32 -2145767567, i32 -2145767448, i32 -2145767913, i32 -2145767886, i32 -2145767858, i32 -2145767828}
!4728 = !DILocation(line: 659, column: 1, scope: !4719)
!4729 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4676, file: !4676, line: 651, type: !4730, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{null, !103}
!4732 = !DILocalVariable(name: "f", arg: 1, scope: !4729, file: !4676, line: 651, type: !103)
!4733 = !DILocation(line: 651, column: 65, scope: !4729)
!4734 = !DILocalVariable(name: "__edi", scope: !4735, file: !4676, line: 653, type: !103)
!4735 = distinct !DILexicalBlock(scope: !4729, file: !4676, line: 653, column: 2)
!4736 = !DILocation(line: 653, column: 2, scope: !4735)
!4737 = !DILocalVariable(name: "__esi", scope: !4735, file: !4676, line: 653, type: !103)
!4738 = !DILocalVariable(name: "__edx", scope: !4735, file: !4676, line: 653, type: !103)
!4739 = !DILocalVariable(name: "__ecx", scope: !4735, file: !4676, line: 653, type: !103)
!4740 = !DILocalVariable(name: "__eax", scope: !4735, file: !4676, line: 653, type: !103)
!4741 = !{i32 -2145771399, i32 -2145770649, i32 -2145770415, i32 -2145770364, i32 -2145770336, i32 -2145770311, i32 -2145770627, i32 -2145770614, i32 -2145770176, i32 -2145770057, i32 -2145770522, i32 -2145770495, i32 -2145770467, i32 -2145770437}
!4742 = !DILocation(line: 654, column: 1, scope: !4729)
!4743 = distinct !DISubprogram(name: "i82092aa_init", scope: !3, file: !3, line: 383, type: !4066, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4744 = !DILocalVariable(name: "sock", arg: 1, scope: !4743, file: !3, line: 383, type: !4068)
!4745 = !DILocation(line: 383, column: 48, scope: !4743)
!4746 = !DILocalVariable(name: "i", scope: !4743, file: !3, line: 385, type: !109)
!4747 = !DILocation(line: 385, column: 6, scope: !4743)
!4748 = !DILocalVariable(name: "res", scope: !4743, file: !3, line: 386, type: !153)
!4749 = !DILocation(line: 386, column: 18, scope: !4743)
!4750 = !DILocalVariable(name: "io", scope: !4743, file: !3, line: 387, type: !4751)
!4751 = !DIDerivedType(tag: DW_TAG_typedef, name: "pccard_io_map", file: !114, line: 89, baseType: !4085)
!4752 = !DILocation(line: 387, column: 16, scope: !4743)
!4753 = !DILocalVariable(name: "mem", scope: !4743, file: !3, line: 388, type: !137)
!4754 = !DILocation(line: 388, column: 17, scope: !4743)
!4755 = !DILocation(line: 388, column: 23, scope: !4743)
!4756 = !DILocation(line: 390, column: 9, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4743, file: !3, line: 390, column: 2)
!4758 = !DILocation(line: 390, column: 7, scope: !4757)
!4759 = !DILocation(line: 390, column: 14, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 390, column: 2)
!4761 = !DILocation(line: 390, column: 16, scope: !4760)
!4762 = !DILocation(line: 390, column: 2, scope: !4757)
!4763 = !DILocation(line: 391, column: 12, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 390, column: 26)
!4765 = !DILocation(line: 391, column: 6, scope: !4764)
!4766 = !DILocation(line: 391, column: 10, scope: !4764)
!4767 = !DILocation(line: 392, column: 23, scope: !4764)
!4768 = !DILocation(line: 392, column: 3, scope: !4764)
!4769 = !DILocation(line: 393, column: 2, scope: !4764)
!4770 = !DILocation(line: 390, column: 22, scope: !4760)
!4771 = !DILocation(line: 390, column: 2, scope: !4760)
!4772 = distinct !{!4772, !4762, !4773}
!4773 = !DILocation(line: 393, column: 2, scope: !4757)
!4774 = !DILocation(line: 394, column: 9, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4743, file: !3, line: 394, column: 2)
!4776 = !DILocation(line: 394, column: 7, scope: !4775)
!4777 = !DILocation(line: 394, column: 14, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 394, column: 2)
!4779 = !DILocation(line: 394, column: 16, scope: !4778)
!4780 = !DILocation(line: 394, column: 2, scope: !4775)
!4781 = !DILocation(line: 395, column: 13, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4778, file: !3, line: 394, column: 26)
!4783 = !DILocation(line: 395, column: 7, scope: !4782)
!4784 = !DILocation(line: 395, column: 11, scope: !4782)
!4785 = !DILocation(line: 396, column: 24, scope: !4782)
!4786 = !DILocation(line: 396, column: 3, scope: !4782)
!4787 = !DILocation(line: 397, column: 2, scope: !4782)
!4788 = !DILocation(line: 394, column: 22, scope: !4778)
!4789 = !DILocation(line: 394, column: 2, scope: !4778)
!4790 = distinct !{!4790, !4780, !4791}
!4791 = !DILocation(line: 397, column: 2, scope: !4775)
!4792 = !DILocation(line: 399, column: 2, scope: !4743)
!4793 = distinct !DISubprogram(name: "i82092aa_get_status", scope: !3, file: !3, line: 402, type: !4072, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4794 = !DILocalVariable(name: "socket", arg: 1, scope: !4793, file: !3, line: 402, type: !4068)
!4795 = !DILocation(line: 402, column: 54, scope: !4793)
!4796 = !DILocalVariable(name: "value", arg: 2, scope: !4793, file: !3, line: 402, type: !4074)
!4797 = !DILocation(line: 402, column: 69, scope: !4793)
!4798 = !DILocalVariable(name: "sock", scope: !4793, file: !3, line: 404, type: !7)
!4799 = !DILocation(line: 404, column: 15, scope: !4793)
!4800 = !DILocalVariable(name: "__mptr", scope: !4801, file: !3, line: 404, type: !104)
!4801 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 404, column: 22)
!4802 = !DILocation(line: 404, column: 22, scope: !4801)
!4803 = !DILocation(line: 404, column: 22, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 404, column: 22)
!4805 = !DILocation(line: 405, column: 34, scope: !4793)
!4806 = !DILocalVariable(name: "status", scope: !4793, file: !3, line: 406, type: !7)
!4807 = !DILocation(line: 406, column: 15, scope: !4793)
!4808 = !DILocation(line: 409, column: 25, scope: !4793)
!4809 = !DILocation(line: 409, column: 11, scope: !4793)
!4810 = !DILocation(line: 409, column: 9, scope: !4793)
!4811 = !DILocation(line: 411, column: 3, scope: !4793)
!4812 = !DILocation(line: 411, column: 9, scope: !4793)
!4813 = !DILocation(line: 413, column: 7, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 413, column: 6)
!4815 = !DILocation(line: 413, column: 14, scope: !4814)
!4816 = !DILocation(line: 413, column: 32, scope: !4814)
!4817 = !DILocation(line: 413, column: 6, scope: !4793)
!4818 = !DILocation(line: 414, column: 4, scope: !4814)
!4819 = !DILocation(line: 414, column: 10, scope: !4814)
!4820 = !DILocation(line: 414, column: 3, scope: !4814)
!4821 = !DILocation(line: 418, column: 20, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 418, column: 6)
!4823 = !DILocation(line: 418, column: 6, scope: !4822)
!4824 = !DILocation(line: 418, column: 39, scope: !4822)
!4825 = !DILocation(line: 418, column: 6, scope: !4793)
!4826 = !DILocation(line: 420, column: 9, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 420, column: 7)
!4828 = distinct !DILexicalBlock(scope: !4822, file: !3, line: 418, column: 57)
!4829 = !DILocation(line: 420, column: 16, scope: !4827)
!4830 = !DILocation(line: 420, column: 7, scope: !4828)
!4831 = !DILocation(line: 421, column: 5, scope: !4827)
!4832 = !DILocation(line: 421, column: 11, scope: !4827)
!4833 = !DILocation(line: 421, column: 4, scope: !4827)
!4834 = !DILocation(line: 422, column: 2, scope: !4828)
!4835 = !DILocation(line: 423, column: 9, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 423, column: 7)
!4837 = distinct !DILexicalBlock(scope: !4822, file: !3, line: 422, column: 9)
!4838 = !DILocation(line: 423, column: 16, scope: !4836)
!4839 = !DILocation(line: 423, column: 7, scope: !4837)
!4840 = !DILocation(line: 424, column: 5, scope: !4836)
!4841 = !DILocation(line: 424, column: 11, scope: !4836)
!4842 = !DILocation(line: 424, column: 4, scope: !4836)
!4843 = !DILocation(line: 425, column: 9, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 425, column: 7)
!4845 = !DILocation(line: 425, column: 16, scope: !4844)
!4846 = !DILocation(line: 425, column: 7, scope: !4837)
!4847 = !DILocation(line: 426, column: 5, scope: !4844)
!4848 = !DILocation(line: 426, column: 11, scope: !4844)
!4849 = !DILocation(line: 426, column: 4, scope: !4844)
!4850 = !DILocation(line: 429, column: 6, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 429, column: 6)
!4852 = !DILocation(line: 429, column: 13, scope: !4851)
!4853 = !DILocation(line: 429, column: 6, scope: !4793)
!4854 = !DILocation(line: 430, column: 5, scope: !4851)
!4855 = !DILocation(line: 430, column: 12, scope: !4851)
!4856 = !DILocation(line: 430, column: 3, scope: !4851)
!4857 = !DILocation(line: 432, column: 6, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 432, column: 6)
!4859 = !DILocation(line: 432, column: 13, scope: !4858)
!4860 = !DILocation(line: 432, column: 6, scope: !4793)
!4861 = !DILocation(line: 433, column: 5, scope: !4858)
!4862 = !DILocation(line: 433, column: 12, scope: !4858)
!4863 = !DILocation(line: 433, column: 3, scope: !4858)
!4864 = !DILocation(line: 435, column: 6, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 435, column: 6)
!4866 = !DILocation(line: 435, column: 13, scope: !4865)
!4867 = !DILocation(line: 435, column: 6, scope: !4793)
!4868 = !DILocation(line: 436, column: 5, scope: !4865)
!4869 = !DILocation(line: 436, column: 12, scope: !4865)
!4870 = !DILocation(line: 436, column: 3, scope: !4865)
!4871 = !DILocation(line: 438, column: 2, scope: !4793)
!4872 = distinct !DISubprogram(name: "i82092aa_set_socket", scope: !3, file: !3, line: 442, type: !4077, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4873 = !DILocalVariable(name: "socket", arg: 1, scope: !4872, file: !3, line: 442, type: !4068)
!4874 = !DILocation(line: 442, column: 54, scope: !4872)
!4875 = !DILocalVariable(name: "state", arg: 2, scope: !4872, file: !3, line: 443, type: !4079)
!4876 = !DILocation(line: 443, column: 27, scope: !4872)
!4877 = !DILocalVariable(name: "sock_info", scope: !4872, file: !3, line: 445, type: !105)
!4878 = !DILocation(line: 445, column: 22, scope: !4872)
!4879 = !DILocalVariable(name: "__mptr", scope: !4880, file: !3, line: 445, type: !104)
!4880 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 445, column: 34)
!4881 = !DILocation(line: 445, column: 34, scope: !4880)
!4882 = !DILocation(line: 445, column: 34, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 445, column: 34)
!4884 = !DILocalVariable(name: "sock", scope: !4872, file: !3, line: 447, type: !7)
!4885 = !DILocation(line: 447, column: 15, scope: !4872)
!4886 = !DILocation(line: 447, column: 22, scope: !4872)
!4887 = !DILocation(line: 447, column: 33, scope: !4872)
!4888 = !DILocalVariable(name: "reg", scope: !4872, file: !3, line: 448, type: !127)
!4889 = !DILocation(line: 448, column: 16, scope: !4872)
!4890 = !DILocation(line: 452, column: 19, scope: !4872)
!4891 = !DILocation(line: 452, column: 2, scope: !4872)
!4892 = !DILocation(line: 456, column: 6, scope: !4872)
!4893 = !DILocation(line: 459, column: 8, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 459, column: 6)
!4895 = !DILocation(line: 459, column: 15, scope: !4894)
!4896 = !DILocation(line: 459, column: 21, scope: !4894)
!4897 = !DILocation(line: 459, column: 6, scope: !4872)
!4898 = !DILocation(line: 460, column: 9, scope: !4894)
!4899 = !DILocation(line: 460, column: 13, scope: !4894)
!4900 = !DILocation(line: 460, column: 7, scope: !4894)
!4901 = !DILocation(line: 460, column: 3, scope: !4894)
!4902 = !DILocation(line: 461, column: 6, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 461, column: 6)
!4904 = !DILocation(line: 461, column: 13, scope: !4903)
!4905 = !DILocation(line: 461, column: 19, scope: !4903)
!4906 = !DILocation(line: 461, column: 6, scope: !4872)
!4907 = !DILocation(line: 462, column: 9, scope: !4903)
!4908 = !DILocation(line: 462, column: 13, scope: !4903)
!4909 = !DILocation(line: 462, column: 7, scope: !4903)
!4910 = !DILocation(line: 462, column: 3, scope: !4903)
!4911 = !DILocation(line: 465, column: 17, scope: !4872)
!4912 = !DILocation(line: 465, column: 36, scope: !4872)
!4913 = !DILocation(line: 465, column: 2, scope: !4872)
!4914 = !DILocation(line: 469, column: 6, scope: !4872)
!4915 = !DILocation(line: 471, column: 6, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 471, column: 6)
!4917 = !DILocation(line: 471, column: 13, scope: !4916)
!4918 = !DILocation(line: 471, column: 19, scope: !4916)
!4919 = !DILocation(line: 471, column: 6, scope: !4872)
!4920 = !DILocation(line: 472, column: 3, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 471, column: 34)
!4922 = !DILocation(line: 473, column: 7, scope: !4921)
!4923 = !DILocation(line: 474, column: 2, scope: !4921)
!4924 = !DILocation(line: 475, column: 6, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 475, column: 6)
!4926 = !DILocation(line: 475, column: 13, scope: !4925)
!4927 = !DILocation(line: 475, column: 19, scope: !4925)
!4928 = !DILocation(line: 475, column: 6, scope: !4872)
!4929 = !DILocation(line: 476, column: 3, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4925, file: !3, line: 475, column: 36)
!4931 = !DILocation(line: 477, column: 7, scope: !4930)
!4932 = !DILocation(line: 478, column: 2, scope: !4930)
!4933 = !DILocation(line: 480, column: 10, scope: !4872)
!4934 = !DILocation(line: 480, column: 17, scope: !4872)
!4935 = !DILocation(line: 480, column: 2, scope: !4872)
!4936 = !DILocation(line: 482, column: 3, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 480, column: 22)
!4938 = !DILocation(line: 484, column: 3, scope: !4937)
!4939 = !DILocation(line: 487, column: 7, scope: !4937)
!4940 = !DILocation(line: 488, column: 3, scope: !4937)
!4941 = !DILocation(line: 490, column: 3, scope: !4937)
!4942 = !DILocation(line: 493, column: 3, scope: !4937)
!4943 = !DILocation(line: 496, column: 10, scope: !4872)
!4944 = !DILocation(line: 496, column: 17, scope: !4872)
!4945 = !DILocation(line: 496, column: 2, scope: !4872)
!4946 = !DILocation(line: 498, column: 3, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 496, column: 22)
!4948 = !DILocation(line: 500, column: 3, scope: !4947)
!4949 = !DILocation(line: 502, column: 3, scope: !4947)
!4950 = !DILocation(line: 504, column: 7, scope: !4947)
!4951 = !DILocation(line: 505, column: 3, scope: !4947)
!4952 = !DILocation(line: 507, column: 3, scope: !4947)
!4953 = !DILocation(line: 508, column: 7, scope: !4947)
!4954 = !DILocation(line: 509, column: 3, scope: !4947)
!4955 = !DILocation(line: 511, column: 3, scope: !4947)
!4956 = !DILocation(line: 514, column: 3, scope: !4947)
!4957 = !DILocation(line: 517, column: 6, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 517, column: 6)
!4959 = !DILocation(line: 517, column: 27, scope: !4958)
!4960 = !DILocation(line: 517, column: 13, scope: !4958)
!4961 = !DILocation(line: 517, column: 10, scope: !4958)
!4962 = !DILocation(line: 517, column: 6, scope: !4872)
!4963 = !DILocation(line: 518, column: 18, scope: !4958)
!4964 = !DILocation(line: 518, column: 36, scope: !4958)
!4965 = !DILocation(line: 518, column: 3, scope: !4958)
!4966 = !DILocation(line: 522, column: 6, scope: !4872)
!4967 = !DILocation(line: 523, column: 6, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 523, column: 6)
!4969 = !DILocation(line: 523, column: 13, scope: !4968)
!4970 = !DILocation(line: 523, column: 22, scope: !4968)
!4971 = !DILocation(line: 523, column: 6, scope: !4872)
!4972 = !DILocation(line: 524, column: 7, scope: !4968)
!4973 = !DILocation(line: 524, column: 3, scope: !4968)
!4974 = !DILocation(line: 525, column: 6, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 525, column: 6)
!4976 = !DILocation(line: 525, column: 13, scope: !4975)
!4977 = !DILocation(line: 525, column: 19, scope: !4975)
!4978 = !DILocation(line: 525, column: 6, scope: !4872)
!4979 = !DILocation(line: 526, column: 7, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 526, column: 7)
!4981 = distinct !DILexicalBlock(scope: !4975, file: !3, line: 525, column: 32)
!4982 = !DILocation(line: 526, column: 14, scope: !4980)
!4983 = !DILocation(line: 526, column: 23, scope: !4980)
!4984 = !DILocation(line: 526, column: 7, scope: !4981)
!4985 = !DILocation(line: 527, column: 8, scope: !4980)
!4986 = !DILocation(line: 527, column: 4, scope: !4980)
!4987 = !DILocation(line: 528, column: 2, scope: !4981)
!4988 = !DILocation(line: 529, column: 7, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 529, column: 7)
!4990 = distinct !DILexicalBlock(scope: !4975, file: !3, line: 528, column: 9)
!4991 = !DILocation(line: 529, column: 14, scope: !4989)
!4992 = !DILocation(line: 529, column: 23, scope: !4989)
!4993 = !DILocation(line: 529, column: 7, scope: !4990)
!4994 = !DILocation(line: 530, column: 8, scope: !4989)
!4995 = !DILocation(line: 530, column: 4, scope: !4989)
!4996 = !DILocation(line: 531, column: 7, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 531, column: 7)
!4998 = !DILocation(line: 531, column: 14, scope: !4997)
!4999 = !DILocation(line: 531, column: 23, scope: !4997)
!5000 = !DILocation(line: 531, column: 7, scope: !4990)
!5001 = !DILocation(line: 532, column: 8, scope: !4997)
!5002 = !DILocation(line: 532, column: 4, scope: !4997)
!5003 = !DILocation(line: 533, column: 7, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 533, column: 7)
!5005 = !DILocation(line: 533, column: 14, scope: !5004)
!5006 = !DILocation(line: 533, column: 23, scope: !5004)
!5007 = !DILocation(line: 533, column: 7, scope: !4990)
!5008 = !DILocation(line: 534, column: 8, scope: !5004)
!5009 = !DILocation(line: 534, column: 4, scope: !5004)
!5010 = !DILocation(line: 542, column: 17, scope: !4872)
!5011 = !DILocation(line: 542, column: 36, scope: !4872)
!5012 = !DILocation(line: 542, column: 2, scope: !4872)
!5013 = !DILocation(line: 543, column: 22, scope: !4872)
!5014 = !DILocation(line: 543, column: 8, scope: !4872)
!5015 = !DILocation(line: 545, column: 2, scope: !4872)
!5016 = !DILocation(line: 546, column: 1, scope: !4872)
!5017 = distinct !DISubprogram(name: "i82092aa_set_io_map", scope: !3, file: !3, line: 548, type: !4082, scopeLine: 550, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5018 = !DILocalVariable(name: "socket", arg: 1, scope: !5017, file: !3, line: 548, type: !4068)
!5019 = !DILocation(line: 548, column: 54, scope: !5017)
!5020 = !DILocalVariable(name: "io", arg: 2, scope: !5017, file: !3, line: 549, type: !4084)
!5021 = !DILocation(line: 549, column: 33, scope: !5017)
!5022 = !DILocalVariable(name: "sock_info", scope: !5017, file: !3, line: 551, type: !105)
!5023 = !DILocation(line: 551, column: 22, scope: !5017)
!5024 = !DILocalVariable(name: "__mptr", scope: !5025, file: !3, line: 551, type: !104)
!5025 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 551, column: 34)
!5026 = !DILocation(line: 551, column: 34, scope: !5025)
!5027 = !DILocation(line: 551, column: 34, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 551, column: 34)
!5029 = !DILocalVariable(name: "sock", scope: !5017, file: !3, line: 553, type: !7)
!5030 = !DILocation(line: 553, column: 15, scope: !5017)
!5031 = !DILocation(line: 553, column: 22, scope: !5017)
!5032 = !DILocation(line: 553, column: 33, scope: !5017)
!5033 = !DILocalVariable(name: "map", scope: !5017, file: !3, line: 554, type: !127)
!5034 = !DILocation(line: 554, column: 16, scope: !5017)
!5035 = !DILocalVariable(name: "ioctl", scope: !5017, file: !3, line: 554, type: !127)
!5036 = !DILocation(line: 554, column: 21, scope: !5017)
!5037 = !DILocation(line: 556, column: 8, scope: !5017)
!5038 = !DILocation(line: 556, column: 12, scope: !5017)
!5039 = !DILocation(line: 556, column: 6, scope: !5017)
!5040 = !DILocation(line: 559, column: 6, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 559, column: 6)
!5042 = !DILocation(line: 559, column: 10, scope: !5041)
!5043 = !DILocation(line: 559, column: 6, scope: !5017)
!5044 = !DILocation(line: 560, column: 3, scope: !5041)
!5045 = !DILocation(line: 562, column: 7, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 562, column: 6)
!5047 = !DILocation(line: 562, column: 11, scope: !5046)
!5048 = !DILocation(line: 562, column: 17, scope: !5046)
!5049 = !DILocation(line: 562, column: 27, scope: !5046)
!5050 = !DILocation(line: 562, column: 31, scope: !5046)
!5051 = !DILocation(line: 562, column: 35, scope: !5046)
!5052 = !DILocation(line: 562, column: 40, scope: !5046)
!5053 = !DILocation(line: 563, column: 6, scope: !5046)
!5054 = !DILocation(line: 563, column: 10, scope: !5046)
!5055 = !DILocation(line: 563, column: 14, scope: !5046)
!5056 = !DILocation(line: 563, column: 21, scope: !5046)
!5057 = !DILocation(line: 563, column: 25, scope: !5046)
!5058 = !DILocation(line: 563, column: 19, scope: !5046)
!5059 = !DILocation(line: 562, column: 6, scope: !5017)
!5060 = !DILocation(line: 564, column: 3, scope: !5046)
!5061 = !DILocation(line: 567, column: 20, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 567, column: 6)
!5063 = !DILocation(line: 567, column: 6, scope: !5062)
!5064 = !DILocation(line: 567, column: 42, scope: !5062)
!5065 = !DILocation(line: 567, column: 40, scope: !5062)
!5066 = !DILocation(line: 567, column: 6, scope: !5017)
!5067 = !DILocation(line: 568, column: 21, scope: !5062)
!5068 = !DILocation(line: 568, column: 41, scope: !5062)
!5069 = !DILocation(line: 568, column: 3, scope: !5062)
!5070 = !DILocation(line: 571, column: 19, scope: !5017)
!5071 = !DILocation(line: 571, column: 25, scope: !5017)
!5072 = !DILocation(line: 571, column: 37, scope: !5017)
!5073 = !DILocation(line: 571, column: 52, scope: !5017)
!5074 = !DILocation(line: 571, column: 56, scope: !5017)
!5075 = !DILocation(line: 571, column: 2, scope: !5017)
!5076 = !DILocation(line: 572, column: 19, scope: !5017)
!5077 = !DILocation(line: 572, column: 25, scope: !5017)
!5078 = !DILocation(line: 572, column: 37, scope: !5017)
!5079 = !DILocation(line: 572, column: 51, scope: !5017)
!5080 = !DILocation(line: 572, column: 55, scope: !5017)
!5081 = !DILocation(line: 572, column: 2, scope: !5017)
!5082 = !DILocation(line: 574, column: 24, scope: !5017)
!5083 = !DILocation(line: 574, column: 10, scope: !5017)
!5084 = !DILocation(line: 574, column: 45, scope: !5017)
!5085 = !DILocation(line: 574, column: 44, scope: !5017)
!5086 = !DILocation(line: 574, column: 42, scope: !5017)
!5087 = !DILocation(line: 574, column: 8, scope: !5017)
!5088 = !DILocation(line: 576, column: 6, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 576, column: 6)
!5090 = !DILocation(line: 576, column: 10, scope: !5089)
!5091 = !DILocation(line: 576, column: 16, scope: !5089)
!5092 = !DILocation(line: 576, column: 6, scope: !5017)
!5093 = !DILocation(line: 577, column: 12, scope: !5089)
!5094 = !DILocation(line: 577, column: 9, scope: !5089)
!5095 = !DILocation(line: 577, column: 3, scope: !5089)
!5096 = !DILocation(line: 579, column: 17, scope: !5017)
!5097 = !DILocation(line: 579, column: 35, scope: !5017)
!5098 = !DILocation(line: 579, column: 2, scope: !5017)
!5099 = !DILocation(line: 582, column: 6, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 582, column: 6)
!5101 = !DILocation(line: 582, column: 10, scope: !5100)
!5102 = !DILocation(line: 582, column: 16, scope: !5100)
!5103 = !DILocation(line: 582, column: 6, scope: !5017)
!5104 = !DILocation(line: 583, column: 19, scope: !5100)
!5105 = !DILocation(line: 583, column: 39, scope: !5100)
!5106 = !DILocation(line: 583, column: 3, scope: !5100)
!5107 = !DILocation(line: 585, column: 2, scope: !5017)
!5108 = !DILocation(line: 586, column: 1, scope: !5017)
!5109 = distinct !DISubprogram(name: "i82092aa_set_mem_map", scope: !3, file: !3, line: 588, type: !4094, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5110 = !DILocalVariable(name: "socket", arg: 1, scope: !5109, file: !3, line: 588, type: !4068)
!5111 = !DILocation(line: 588, column: 55, scope: !5109)
!5112 = !DILocalVariable(name: "mem", arg: 2, scope: !5109, file: !3, line: 589, type: !4096)
!5113 = !DILocation(line: 589, column: 28, scope: !5109)
!5114 = !DILocalVariable(name: "sock_info", scope: !5109, file: !3, line: 591, type: !105)
!5115 = !DILocation(line: 591, column: 22, scope: !5109)
!5116 = !DILocalVariable(name: "__mptr", scope: !5117, file: !3, line: 591, type: !104)
!5117 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 591, column: 34)
!5118 = !DILocation(line: 591, column: 34, scope: !5117)
!5119 = !DILocation(line: 591, column: 34, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 591, column: 34)
!5121 = !DILocalVariable(name: "sock", scope: !5109, file: !3, line: 593, type: !7)
!5122 = !DILocation(line: 593, column: 15, scope: !5109)
!5123 = !DILocation(line: 593, column: 22, scope: !5109)
!5124 = !DILocation(line: 593, column: 33, scope: !5109)
!5125 = !DILocalVariable(name: "region", scope: !5109, file: !3, line: 594, type: !5126)
!5126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus_region", file: !228, line: 754, size: 128, elements: !5127)
!5127 = !{!5128, !5130}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5126, file: !228, line: 755, baseType: !5129, size: 64)
!5129 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_addr_t", file: !228, line: 749, baseType: !145)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5126, file: !228, line: 756, baseType: !5129, size: 64, offset: 64)
!5131 = !DILocation(line: 594, column: 24, scope: !5109)
!5132 = !DILocalVariable(name: "base", scope: !5109, file: !3, line: 595, type: !134)
!5133 = !DILocation(line: 595, column: 17, scope: !5109)
!5134 = !DILocalVariable(name: "i", scope: !5109, file: !3, line: 595, type: !134)
!5135 = !DILocation(line: 595, column: 23, scope: !5109)
!5136 = !DILocalVariable(name: "map", scope: !5109, file: !3, line: 596, type: !127)
!5137 = !DILocation(line: 596, column: 16, scope: !5109)
!5138 = !DILocation(line: 598, column: 26, scope: !5109)
!5139 = !DILocation(line: 598, column: 37, scope: !5109)
!5140 = !DILocation(line: 598, column: 42, scope: !5109)
!5141 = !DILocation(line: 598, column: 56, scope: !5109)
!5142 = !DILocation(line: 598, column: 61, scope: !5109)
!5143 = !DILocation(line: 598, column: 2, scope: !5109)
!5144 = !DILocation(line: 600, column: 8, scope: !5109)
!5145 = !DILocation(line: 600, column: 13, scope: !5109)
!5146 = !DILocation(line: 600, column: 6, scope: !5109)
!5147 = !DILocation(line: 601, column: 6, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 601, column: 6)
!5149 = !DILocation(line: 601, column: 10, scope: !5148)
!5150 = !DILocation(line: 601, column: 6, scope: !5109)
!5151 = !DILocation(line: 602, column: 3, scope: !5148)
!5152 = !DILocation(line: 604, column: 7, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 604, column: 6)
!5154 = !DILocation(line: 604, column: 12, scope: !5153)
!5155 = !DILocation(line: 604, column: 23, scope: !5153)
!5156 = !DILocation(line: 604, column: 36, scope: !5153)
!5157 = !DILocation(line: 604, column: 47, scope: !5153)
!5158 = !DILocation(line: 604, column: 62, scope: !5153)
!5159 = !DILocation(line: 604, column: 53, scope: !5153)
!5160 = !DILocation(line: 604, column: 67, scope: !5153)
!5161 = !DILocation(line: 605, column: 8, scope: !5153)
!5162 = !DILocation(line: 605, column: 13, scope: !5153)
!5163 = !DILocation(line: 605, column: 19, scope: !5153)
!5164 = !DILocation(line: 604, column: 6, scope: !5109)
!5165 = !DILocation(line: 606, column: 3, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 605, column: 28)
!5167 = !DILocation(line: 612, column: 3, scope: !5166)
!5168 = !DILocation(line: 616, column: 20, scope: !5169)
!5169 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 616, column: 6)
!5170 = !DILocation(line: 616, column: 6, scope: !5169)
!5171 = !DILocation(line: 616, column: 42, scope: !5169)
!5172 = !DILocation(line: 616, column: 40, scope: !5169)
!5173 = !DILocation(line: 616, column: 6, scope: !5109)
!5174 = !DILocation(line: 617, column: 21, scope: !5169)
!5175 = !DILocation(line: 617, column: 41, scope: !5169)
!5176 = !DILocation(line: 617, column: 3, scope: !5169)
!5177 = !DILocation(line: 620, column: 9, scope: !5109)
!5178 = !DILocation(line: 620, column: 7, scope: !5109)
!5179 = !DILocation(line: 621, column: 14, scope: !5109)
!5180 = !DILocation(line: 621, column: 20, scope: !5109)
!5181 = !DILocation(line: 621, column: 27, scope: !5109)
!5182 = !DILocation(line: 621, column: 6, scope: !5109)
!5183 = !DILocation(line: 621, column: 4, scope: !5109)
!5184 = !DILocation(line: 622, column: 6, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 622, column: 6)
!5186 = !DILocation(line: 622, column: 11, scope: !5185)
!5187 = !DILocation(line: 622, column: 17, scope: !5185)
!5188 = !DILocation(line: 622, column: 6, scope: !5109)
!5189 = !DILocation(line: 623, column: 5, scope: !5185)
!5190 = !DILocation(line: 623, column: 3, scope: !5185)
!5191 = !DILocation(line: 624, column: 6, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 624, column: 6)
!5193 = !DILocation(line: 624, column: 11, scope: !5192)
!5194 = !DILocation(line: 624, column: 17, scope: !5192)
!5195 = !DILocation(line: 624, column: 6, scope: !5109)
!5196 = !DILocation(line: 625, column: 5, scope: !5192)
!5197 = !DILocation(line: 625, column: 3, scope: !5192)
!5198 = !DILocation(line: 626, column: 19, scope: !5109)
!5199 = !DILocation(line: 626, column: 25, scope: !5109)
!5200 = !DILocation(line: 626, column: 29, scope: !5109)
!5201 = !DILocation(line: 626, column: 44, scope: !5109)
!5202 = !DILocation(line: 626, column: 2, scope: !5109)
!5203 = !DILocation(line: 630, column: 14, scope: !5109)
!5204 = !DILocation(line: 630, column: 18, scope: !5109)
!5205 = !DILocation(line: 630, column: 25, scope: !5109)
!5206 = !DILocation(line: 630, column: 6, scope: !5109)
!5207 = !DILocation(line: 630, column: 4, scope: !5109)
!5208 = !DILocation(line: 631, column: 20, scope: !5109)
!5209 = !DILocation(line: 631, column: 25, scope: !5109)
!5210 = !DILocation(line: 631, column: 10, scope: !5109)
!5211 = !DILocation(line: 631, column: 2, scope: !5109)
!5212 = !DILocation(line: 633, column: 3, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 631, column: 33)
!5214 = !DILocation(line: 635, column: 5, scope: !5213)
!5215 = !DILocation(line: 636, column: 3, scope: !5213)
!5216 = !DILocation(line: 638, column: 5, scope: !5213)
!5217 = !DILocation(line: 639, column: 3, scope: !5213)
!5218 = !DILocation(line: 641, column: 5, scope: !5213)
!5219 = !DILocation(line: 642, column: 3, scope: !5213)
!5220 = !DILocation(line: 645, column: 19, scope: !5109)
!5221 = !DILocation(line: 645, column: 25, scope: !5109)
!5222 = !DILocation(line: 645, column: 29, scope: !5109)
!5223 = !DILocation(line: 645, column: 43, scope: !5109)
!5224 = !DILocation(line: 645, column: 2, scope: !5109)
!5225 = !DILocation(line: 649, column: 8, scope: !5109)
!5226 = !DILocation(line: 649, column: 13, scope: !5109)
!5227 = !DILocation(line: 649, column: 33, scope: !5109)
!5228 = !DILocation(line: 649, column: 24, scope: !5109)
!5229 = !DILocation(line: 649, column: 40, scope: !5109)
!5230 = !DILocation(line: 649, column: 47, scope: !5109)
!5231 = !DILocation(line: 649, column: 6, scope: !5109)
!5232 = !DILocation(line: 649, column: 4, scope: !5109)
!5233 = !DILocation(line: 650, column: 6, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 650, column: 6)
!5235 = !DILocation(line: 650, column: 11, scope: !5234)
!5236 = !DILocation(line: 650, column: 17, scope: !5234)
!5237 = !DILocation(line: 650, column: 6, scope: !5109)
!5238 = !DILocation(line: 651, column: 5, scope: !5234)
!5239 = !DILocation(line: 651, column: 3, scope: !5234)
!5240 = !DILocation(line: 652, column: 6, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 652, column: 6)
!5242 = !DILocation(line: 652, column: 11, scope: !5241)
!5243 = !DILocation(line: 652, column: 17, scope: !5241)
!5244 = !DILocation(line: 652, column: 6, scope: !5109)
!5245 = !DILocation(line: 653, column: 5, scope: !5241)
!5246 = !DILocation(line: 653, column: 3, scope: !5241)
!5247 = !DILocation(line: 654, column: 19, scope: !5109)
!5248 = !DILocation(line: 654, column: 25, scope: !5109)
!5249 = !DILocation(line: 654, column: 29, scope: !5109)
!5250 = !DILocation(line: 654, column: 42, scope: !5109)
!5251 = !DILocation(line: 654, column: 2, scope: !5109)
!5252 = !DILocation(line: 657, column: 6, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 657, column: 6)
!5254 = !DILocation(line: 657, column: 11, scope: !5253)
!5255 = !DILocation(line: 657, column: 17, scope: !5253)
!5256 = !DILocation(line: 657, column: 6, scope: !5109)
!5257 = !DILocation(line: 658, column: 19, scope: !5253)
!5258 = !DILocation(line: 658, column: 39, scope: !5253)
!5259 = !DILocation(line: 658, column: 3, scope: !5253)
!5260 = !DILocation(line: 660, column: 2, scope: !5109)
!5261 = !DILocation(line: 661, column: 1, scope: !5109)
!5262 = distinct !DISubprogram(name: "set_bridge_state", scope: !3, file: !3, line: 374, type: !1910, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5263 = !DILocalVariable(name: "sock", arg: 1, scope: !5262, file: !3, line: 374, type: !109)
!5264 = !DILocation(line: 374, column: 34, scope: !5262)
!5265 = !DILocation(line: 376, column: 17, scope: !5262)
!5266 = !DILocation(line: 376, column: 2, scope: !5262)
!5267 = !DILocation(line: 377, column: 17, scope: !5262)
!5268 = !DILocation(line: 377, column: 2, scope: !5262)
!5269 = !DILocation(line: 379, column: 18, scope: !5262)
!5270 = !DILocation(line: 379, column: 2, scope: !5262)
!5271 = !DILocation(line: 380, column: 1, scope: !5262)
!5272 = distinct !DISubprogram(name: "indirect_write", scope: !3, file: !3, line: 203, type: !5273, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5273 = !DISubroutineType(types: !5274)
!5274 = !{null, !109, !134, !127}
!5275 = !DILocation(line: 407, column: 64, scope: !4589, inlinedAt: !5276)
!5276 = distinct !DILocation(line: 213, column: 2, scope: !5272)
!5277 = !DILocation(line: 407, column: 84, scope: !4589, inlinedAt: !5276)
!5278 = !DILocation(line: 327, column: 67, scope: !4598, inlinedAt: !5279)
!5279 = distinct !DILocation(line: 208, column: 2, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5281, file: !3, line: 208, column: 2)
!5281 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 208, column: 2)
!5282 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 208, column: 2)
!5283 = distinct !DILexicalBlock(scope: !5284, file: !3, line: 208, column: 2)
!5284 = distinct !DILexicalBlock(scope: !5272, file: !3, line: 208, column: 2)
!5285 = !DILocalVariable(name: "socket", arg: 1, scope: !5272, file: !3, line: 203, type: !109)
!5286 = !DILocation(line: 203, column: 32, scope: !5272)
!5287 = !DILocalVariable(name: "reg", arg: 2, scope: !5272, file: !3, line: 203, type: !134)
!5288 = !DILocation(line: 203, column: 55, scope: !5272)
!5289 = !DILocalVariable(name: "value", arg: 3, scope: !5272, file: !3, line: 203, type: !127)
!5290 = !DILocation(line: 203, column: 74, scope: !5272)
!5291 = !DILocalVariable(name: "port", scope: !5272, file: !3, line: 205, type: !134)
!5292 = !DILocation(line: 205, column: 21, scope: !5272)
!5293 = !DILocalVariable(name: "flags", scope: !5272, file: !3, line: 206, type: !103)
!5294 = !DILocation(line: 206, column: 16, scope: !5272)
!5295 = !DILocation(line: 208, column: 2, scope: !5272)
!5296 = !DILocation(line: 208, column: 2, scope: !5284)
!5297 = !DILocalVariable(name: "__dummy", scope: !5298, file: !3, line: 208, type: !103)
!5298 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 208, column: 2)
!5299 = !DILocation(line: 208, column: 2, scope: !5298)
!5300 = !DILocalVariable(name: "__dummy2", scope: !5298, file: !3, line: 208, type: !103)
!5301 = !DILocation(line: 208, column: 2, scope: !5283)
!5302 = !DILocation(line: 208, column: 2, scope: !5282)
!5303 = !DILocation(line: 208, column: 2, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 208, column: 2)
!5305 = !DILocalVariable(name: "__dummy", scope: !5306, file: !3, line: 208, type: !103)
!5306 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 208, column: 2)
!5307 = distinct !DILexicalBlock(scope: !5304, file: !3, line: 208, column: 2)
!5308 = !DILocation(line: 208, column: 2, scope: !5306)
!5309 = !DILocalVariable(name: "__dummy2", scope: !5306, file: !3, line: 208, type: !103)
!5310 = !DILocation(line: 208, column: 2, scope: !5307)
!5311 = !DILocation(line: 208, column: 2, scope: !5281)
!5312 = !{i32 -2141724496}
!5313 = !DILocation(line: 329, column: 10, scope: !4598, inlinedAt: !5279)
!5314 = !DILocation(line: 329, column: 16, scope: !4598, inlinedAt: !5279)
!5315 = !DILocation(line: 208, column: 2, scope: !5280)
!5316 = !DILocation(line: 209, column: 8, scope: !5272)
!5317 = !DILocation(line: 209, column: 14, scope: !5272)
!5318 = !DILocation(line: 209, column: 21, scope: !5272)
!5319 = !DILocation(line: 209, column: 12, scope: !5272)
!5320 = !DILocation(line: 209, column: 6, scope: !5272)
!5321 = !DILocation(line: 210, column: 17, scope: !5272)
!5322 = !DILocation(line: 210, column: 9, scope: !5272)
!5323 = !DILocation(line: 210, column: 25, scope: !5272)
!5324 = !DILocation(line: 210, column: 7, scope: !5272)
!5325 = !DILocation(line: 211, column: 7, scope: !5272)
!5326 = !DILocation(line: 211, column: 12, scope: !5272)
!5327 = !DILocation(line: 211, column: 2, scope: !5272)
!5328 = !DILocation(line: 212, column: 7, scope: !5272)
!5329 = !DILocation(line: 212, column: 14, scope: !5272)
!5330 = !DILocation(line: 212, column: 18, scope: !5272)
!5331 = !DILocation(line: 212, column: 2, scope: !5272)
!5332 = !DILocation(line: 213, column: 37, scope: !5272)
!5333 = !DILocation(line: 409, column: 2, scope: !4656, inlinedAt: !5276)
!5334 = !DILocation(line: 409, column: 2, scope: !4661, inlinedAt: !5276)
!5335 = !DILocation(line: 409, column: 2, scope: !4662, inlinedAt: !5276)
!5336 = !DILocation(line: 409, column: 2, scope: !4669, inlinedAt: !5276)
!5337 = !DILocation(line: 409, column: 2, scope: !4672, inlinedAt: !5276)
!5338 = !DILocation(line: 214, column: 1, scope: !5272)
!5339 = distinct !DISubprogram(name: "indirect_setbit", scope: !3, file: !3, line: 216, type: !5273, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5340 = !DILocation(line: 407, column: 64, scope: !4589, inlinedAt: !5341)
!5341 = distinct !DILocation(line: 230, column: 2, scope: !5339)
!5342 = !DILocation(line: 407, column: 84, scope: !4589, inlinedAt: !5341)
!5343 = !DILocation(line: 327, column: 67, scope: !4598, inlinedAt: !5344)
!5344 = distinct !DILocation(line: 222, column: 2, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5346, file: !3, line: 222, column: 2)
!5346 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 222, column: 2)
!5347 = distinct !DILexicalBlock(scope: !5348, file: !3, line: 222, column: 2)
!5348 = distinct !DILexicalBlock(scope: !5349, file: !3, line: 222, column: 2)
!5349 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 222, column: 2)
!5350 = !DILocalVariable(name: "socket", arg: 1, scope: !5339, file: !3, line: 216, type: !109)
!5351 = !DILocation(line: 216, column: 33, scope: !5339)
!5352 = !DILocalVariable(name: "reg", arg: 2, scope: !5339, file: !3, line: 216, type: !134)
!5353 = !DILocation(line: 216, column: 56, scope: !5339)
!5354 = !DILocalVariable(name: "mask", arg: 3, scope: !5339, file: !3, line: 216, type: !127)
!5355 = !DILocation(line: 216, column: 75, scope: !5339)
!5356 = !DILocalVariable(name: "port", scope: !5339, file: !3, line: 218, type: !134)
!5357 = !DILocation(line: 218, column: 21, scope: !5339)
!5358 = !DILocalVariable(name: "val", scope: !5339, file: !3, line: 219, type: !127)
!5359 = !DILocation(line: 219, column: 16, scope: !5339)
!5360 = !DILocalVariable(name: "flags", scope: !5339, file: !3, line: 220, type: !103)
!5361 = !DILocation(line: 220, column: 16, scope: !5339)
!5362 = !DILocation(line: 222, column: 2, scope: !5339)
!5363 = !DILocation(line: 222, column: 2, scope: !5349)
!5364 = !DILocalVariable(name: "__dummy", scope: !5365, file: !3, line: 222, type: !103)
!5365 = distinct !DILexicalBlock(scope: !5348, file: !3, line: 222, column: 2)
!5366 = !DILocation(line: 222, column: 2, scope: !5365)
!5367 = !DILocalVariable(name: "__dummy2", scope: !5365, file: !3, line: 222, type: !103)
!5368 = !DILocation(line: 222, column: 2, scope: !5348)
!5369 = !DILocation(line: 222, column: 2, scope: !5347)
!5370 = !DILocation(line: 222, column: 2, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 222, column: 2)
!5372 = !DILocalVariable(name: "__dummy", scope: !5373, file: !3, line: 222, type: !103)
!5373 = distinct !DILexicalBlock(scope: !5374, file: !3, line: 222, column: 2)
!5374 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 222, column: 2)
!5375 = !DILocation(line: 222, column: 2, scope: !5373)
!5376 = !DILocalVariable(name: "__dummy2", scope: !5373, file: !3, line: 222, type: !103)
!5377 = !DILocation(line: 222, column: 2, scope: !5374)
!5378 = !DILocation(line: 222, column: 2, scope: !5346)
!5379 = !{i32 -2141723474}
!5380 = !DILocation(line: 329, column: 10, scope: !4598, inlinedAt: !5344)
!5381 = !DILocation(line: 329, column: 16, scope: !4598, inlinedAt: !5344)
!5382 = !DILocation(line: 222, column: 2, scope: !5345)
!5383 = !DILocation(line: 223, column: 8, scope: !5339)
!5384 = !DILocation(line: 223, column: 14, scope: !5339)
!5385 = !DILocation(line: 223, column: 21, scope: !5339)
!5386 = !DILocation(line: 223, column: 12, scope: !5339)
!5387 = !DILocation(line: 223, column: 6, scope: !5339)
!5388 = !DILocation(line: 224, column: 17, scope: !5339)
!5389 = !DILocation(line: 224, column: 9, scope: !5339)
!5390 = !DILocation(line: 224, column: 25, scope: !5339)
!5391 = !DILocation(line: 224, column: 7, scope: !5339)
!5392 = !DILocation(line: 225, column: 7, scope: !5339)
!5393 = !DILocation(line: 225, column: 12, scope: !5339)
!5394 = !DILocation(line: 225, column: 2, scope: !5339)
!5395 = !DILocation(line: 226, column: 12, scope: !5339)
!5396 = !DILocation(line: 226, column: 16, scope: !5339)
!5397 = !DILocation(line: 226, column: 8, scope: !5339)
!5398 = !DILocation(line: 226, column: 6, scope: !5339)
!5399 = !DILocation(line: 227, column: 9, scope: !5339)
!5400 = !DILocation(line: 227, column: 6, scope: !5339)
!5401 = !DILocation(line: 228, column: 7, scope: !5339)
!5402 = !DILocation(line: 228, column: 12, scope: !5339)
!5403 = !DILocation(line: 228, column: 2, scope: !5339)
!5404 = !DILocation(line: 229, column: 7, scope: !5339)
!5405 = !DILocation(line: 229, column: 12, scope: !5339)
!5406 = !DILocation(line: 229, column: 16, scope: !5339)
!5407 = !DILocation(line: 229, column: 2, scope: !5339)
!5408 = !DILocation(line: 230, column: 37, scope: !5339)
!5409 = !DILocation(line: 409, column: 2, scope: !4656, inlinedAt: !5341)
!5410 = !DILocation(line: 409, column: 2, scope: !4661, inlinedAt: !5341)
!5411 = !DILocation(line: 409, column: 2, scope: !4662, inlinedAt: !5341)
!5412 = !DILocation(line: 409, column: 2, scope: !4669, inlinedAt: !5341)
!5413 = !DILocation(line: 409, column: 2, scope: !4672, inlinedAt: !5341)
!5414 = !DILocation(line: 231, column: 1, scope: !5339)
!5415 = distinct !DISubprogram(name: "indirect_resetbit", scope: !3, file: !3, line: 234, type: !5273, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5416 = !DILocation(line: 407, column: 64, scope: !4589, inlinedAt: !5417)
!5417 = distinct !DILocation(line: 249, column: 2, scope: !5415)
!5418 = !DILocation(line: 407, column: 84, scope: !4589, inlinedAt: !5417)
!5419 = !DILocation(line: 327, column: 67, scope: !4598, inlinedAt: !5420)
!5420 = distinct !DILocation(line: 241, column: 2, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 241, column: 2)
!5422 = distinct !DILexicalBlock(scope: !5423, file: !3, line: 241, column: 2)
!5423 = distinct !DILexicalBlock(scope: !5424, file: !3, line: 241, column: 2)
!5424 = distinct !DILexicalBlock(scope: !5425, file: !3, line: 241, column: 2)
!5425 = distinct !DILexicalBlock(scope: !5415, file: !3, line: 241, column: 2)
!5426 = !DILocalVariable(name: "socket", arg: 1, scope: !5415, file: !3, line: 234, type: !109)
!5427 = !DILocation(line: 234, column: 35, scope: !5415)
!5428 = !DILocalVariable(name: "reg", arg: 2, scope: !5415, file: !3, line: 235, type: !134)
!5429 = !DILocation(line: 235, column: 25, scope: !5415)
!5430 = !DILocalVariable(name: "mask", arg: 3, scope: !5415, file: !3, line: 235, type: !127)
!5431 = !DILocation(line: 235, column: 44, scope: !5415)
!5432 = !DILocalVariable(name: "port", scope: !5415, file: !3, line: 237, type: !134)
!5433 = !DILocation(line: 237, column: 21, scope: !5415)
!5434 = !DILocalVariable(name: "val", scope: !5415, file: !3, line: 238, type: !127)
!5435 = !DILocation(line: 238, column: 16, scope: !5415)
!5436 = !DILocalVariable(name: "flags", scope: !5415, file: !3, line: 239, type: !103)
!5437 = !DILocation(line: 239, column: 16, scope: !5415)
!5438 = !DILocation(line: 241, column: 2, scope: !5415)
!5439 = !DILocation(line: 241, column: 2, scope: !5425)
!5440 = !DILocalVariable(name: "__dummy", scope: !5441, file: !3, line: 241, type: !103)
!5441 = distinct !DILexicalBlock(scope: !5424, file: !3, line: 241, column: 2)
!5442 = !DILocation(line: 241, column: 2, scope: !5441)
!5443 = !DILocalVariable(name: "__dummy2", scope: !5441, file: !3, line: 241, type: !103)
!5444 = !DILocation(line: 241, column: 2, scope: !5424)
!5445 = !DILocation(line: 241, column: 2, scope: !5423)
!5446 = !DILocation(line: 241, column: 2, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5423, file: !3, line: 241, column: 2)
!5448 = !DILocalVariable(name: "__dummy", scope: !5449, file: !3, line: 241, type: !103)
!5449 = distinct !DILexicalBlock(scope: !5450, file: !3, line: 241, column: 2)
!5450 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 241, column: 2)
!5451 = !DILocation(line: 241, column: 2, scope: !5449)
!5452 = !DILocalVariable(name: "__dummy2", scope: !5449, file: !3, line: 241, type: !103)
!5453 = !DILocation(line: 241, column: 2, scope: !5450)
!5454 = !DILocation(line: 241, column: 2, scope: !5422)
!5455 = !{i32 -2141722443}
!5456 = !DILocation(line: 329, column: 10, scope: !4598, inlinedAt: !5420)
!5457 = !DILocation(line: 329, column: 16, scope: !4598, inlinedAt: !5420)
!5458 = !DILocation(line: 241, column: 2, scope: !5421)
!5459 = !DILocation(line: 242, column: 8, scope: !5415)
!5460 = !DILocation(line: 242, column: 14, scope: !5415)
!5461 = !DILocation(line: 242, column: 21, scope: !5415)
!5462 = !DILocation(line: 242, column: 12, scope: !5415)
!5463 = !DILocation(line: 242, column: 6, scope: !5415)
!5464 = !DILocation(line: 243, column: 17, scope: !5415)
!5465 = !DILocation(line: 243, column: 9, scope: !5415)
!5466 = !DILocation(line: 243, column: 25, scope: !5415)
!5467 = !DILocation(line: 243, column: 7, scope: !5415)
!5468 = !DILocation(line: 244, column: 7, scope: !5415)
!5469 = !DILocation(line: 244, column: 12, scope: !5415)
!5470 = !DILocation(line: 244, column: 2, scope: !5415)
!5471 = !DILocation(line: 245, column: 12, scope: !5415)
!5472 = !DILocation(line: 245, column: 16, scope: !5415)
!5473 = !DILocation(line: 245, column: 8, scope: !5415)
!5474 = !DILocation(line: 245, column: 6, scope: !5415)
!5475 = !DILocation(line: 246, column: 10, scope: !5415)
!5476 = !DILocation(line: 246, column: 9, scope: !5415)
!5477 = !DILocation(line: 246, column: 6, scope: !5415)
!5478 = !DILocation(line: 247, column: 7, scope: !5415)
!5479 = !DILocation(line: 247, column: 12, scope: !5415)
!5480 = !DILocation(line: 247, column: 2, scope: !5415)
!5481 = !DILocation(line: 248, column: 7, scope: !5415)
!5482 = !DILocation(line: 248, column: 12, scope: !5415)
!5483 = !DILocation(line: 248, column: 16, scope: !5415)
!5484 = !DILocation(line: 248, column: 2, scope: !5415)
!5485 = !DILocation(line: 249, column: 37, scope: !5415)
!5486 = !DILocation(line: 409, column: 2, scope: !4656, inlinedAt: !5417)
!5487 = !DILocation(line: 409, column: 2, scope: !4661, inlinedAt: !5417)
!5488 = !DILocation(line: 409, column: 2, scope: !4662, inlinedAt: !5417)
!5489 = !DILocation(line: 409, column: 2, scope: !4669, inlinedAt: !5417)
!5490 = !DILocation(line: 409, column: 2, scope: !4672, inlinedAt: !5417)
!5491 = !DILocation(line: 250, column: 1, scope: !5415)
!5492 = distinct !DISubprogram(name: "indirect_write16", scope: !3, file: !3, line: 252, type: !5493, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5493 = !DISubroutineType(types: !5494)
!5494 = !{null, !109, !134, !134}
!5495 = !DILocation(line: 407, column: 64, scope: !4589, inlinedAt: !5496)
!5496 = distinct !DILocation(line: 272, column: 2, scope: !5492)
!5497 = !DILocation(line: 407, column: 84, scope: !4589, inlinedAt: !5496)
!5498 = !DILocation(line: 327, column: 67, scope: !4598, inlinedAt: !5499)
!5499 = distinct !DILocation(line: 259, column: 2, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 259, column: 2)
!5501 = distinct !DILexicalBlock(scope: !5502, file: !3, line: 259, column: 2)
!5502 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 259, column: 2)
!5503 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 259, column: 2)
!5504 = distinct !DILexicalBlock(scope: !5492, file: !3, line: 259, column: 2)
!5505 = !DILocalVariable(name: "socket", arg: 1, scope: !5492, file: !3, line: 252, type: !109)
!5506 = !DILocation(line: 252, column: 34, scope: !5492)
!5507 = !DILocalVariable(name: "reg", arg: 2, scope: !5492, file: !3, line: 253, type: !134)
!5508 = !DILocation(line: 253, column: 24, scope: !5492)
!5509 = !DILocalVariable(name: "value", arg: 3, scope: !5492, file: !3, line: 253, type: !134)
!5510 = !DILocation(line: 253, column: 44, scope: !5492)
!5511 = !DILocalVariable(name: "port", scope: !5492, file: !3, line: 255, type: !134)
!5512 = !DILocation(line: 255, column: 21, scope: !5492)
!5513 = !DILocalVariable(name: "val", scope: !5492, file: !3, line: 256, type: !127)
!5514 = !DILocation(line: 256, column: 16, scope: !5492)
!5515 = !DILocalVariable(name: "flags", scope: !5492, file: !3, line: 257, type: !103)
!5516 = !DILocation(line: 257, column: 16, scope: !5492)
!5517 = !DILocation(line: 259, column: 2, scope: !5492)
!5518 = !DILocation(line: 259, column: 2, scope: !5504)
!5519 = !DILocalVariable(name: "__dummy", scope: !5520, file: !3, line: 259, type: !103)
!5520 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 259, column: 2)
!5521 = !DILocation(line: 259, column: 2, scope: !5520)
!5522 = !DILocalVariable(name: "__dummy2", scope: !5520, file: !3, line: 259, type: !103)
!5523 = !DILocation(line: 259, column: 2, scope: !5503)
!5524 = !DILocation(line: 259, column: 2, scope: !5502)
!5525 = !DILocation(line: 259, column: 2, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5502, file: !3, line: 259, column: 2)
!5527 = !DILocalVariable(name: "__dummy", scope: !5528, file: !3, line: 259, type: !103)
!5528 = distinct !DILexicalBlock(scope: !5529, file: !3, line: 259, column: 2)
!5529 = distinct !DILexicalBlock(scope: !5526, file: !3, line: 259, column: 2)
!5530 = !DILocation(line: 259, column: 2, scope: !5528)
!5531 = !DILocalVariable(name: "__dummy2", scope: !5528, file: !3, line: 259, type: !103)
!5532 = !DILocation(line: 259, column: 2, scope: !5529)
!5533 = !DILocation(line: 259, column: 2, scope: !5501)
!5534 = !{i32 -2141721412}
!5535 = !DILocation(line: 329, column: 10, scope: !4598, inlinedAt: !5499)
!5536 = !DILocation(line: 329, column: 16, scope: !4598, inlinedAt: !5499)
!5537 = !DILocation(line: 259, column: 2, scope: !5500)
!5538 = !DILocation(line: 260, column: 8, scope: !5492)
!5539 = !DILocation(line: 260, column: 14, scope: !5492)
!5540 = !DILocation(line: 260, column: 21, scope: !5492)
!5541 = !DILocation(line: 260, column: 12, scope: !5492)
!5542 = !DILocation(line: 260, column: 6, scope: !5492)
!5543 = !DILocation(line: 261, column: 17, scope: !5492)
!5544 = !DILocation(line: 261, column: 9, scope: !5492)
!5545 = !DILocation(line: 261, column: 25, scope: !5492)
!5546 = !DILocation(line: 261, column: 7, scope: !5492)
!5547 = !DILocation(line: 263, column: 7, scope: !5492)
!5548 = !DILocation(line: 263, column: 12, scope: !5492)
!5549 = !DILocation(line: 263, column: 2, scope: !5492)
!5550 = !DILocation(line: 264, column: 8, scope: !5492)
!5551 = !DILocation(line: 264, column: 14, scope: !5492)
!5552 = !DILocation(line: 264, column: 6, scope: !5492)
!5553 = !DILocation(line: 265, column: 7, scope: !5492)
!5554 = !DILocation(line: 265, column: 12, scope: !5492)
!5555 = !DILocation(line: 265, column: 16, scope: !5492)
!5556 = !DILocation(line: 265, column: 2, scope: !5492)
!5557 = !DILocation(line: 267, column: 5, scope: !5492)
!5558 = !DILocation(line: 269, column: 7, scope: !5492)
!5559 = !DILocation(line: 269, column: 12, scope: !5492)
!5560 = !DILocation(line: 269, column: 2, scope: !5492)
!5561 = !DILocation(line: 270, column: 8, scope: !5492)
!5562 = !DILocation(line: 270, column: 13, scope: !5492)
!5563 = !DILocation(line: 270, column: 6, scope: !5492)
!5564 = !DILocation(line: 271, column: 7, scope: !5492)
!5565 = !DILocation(line: 271, column: 12, scope: !5492)
!5566 = !DILocation(line: 271, column: 16, scope: !5492)
!5567 = !DILocation(line: 271, column: 2, scope: !5492)
!5568 = !DILocation(line: 272, column: 37, scope: !5492)
!5569 = !DILocation(line: 409, column: 2, scope: !4656, inlinedAt: !5496)
!5570 = !DILocation(line: 409, column: 2, scope: !4661, inlinedAt: !5496)
!5571 = !DILocation(line: 409, column: 2, scope: !4662, inlinedAt: !5496)
!5572 = !DILocation(line: 409, column: 2, scope: !4669, inlinedAt: !5496)
!5573 = !DILocation(line: 409, column: 2, scope: !4672, inlinedAt: !5496)
!5574 = !DILocation(line: 273, column: 1, scope: !5492)
!5575 = distinct !DISubprogram(name: "to_cycles", scope: !3, file: !3, line: 279, type: !3090, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5576 = !DILocalVariable(name: "ns", arg: 1, scope: !5575, file: !3, line: 279, type: !109)
!5577 = !DILocation(line: 279, column: 26, scope: !5575)
!5578 = !DILocation(line: 281, column: 6, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 281, column: 6)
!5580 = !DILocation(line: 281, column: 17, scope: !5579)
!5581 = !DILocation(line: 281, column: 6, scope: !5575)
!5582 = !DILocation(line: 282, column: 10, scope: !5579)
!5583 = !DILocation(line: 282, column: 13, scope: !5579)
!5584 = !DILocation(line: 282, column: 12, scope: !5579)
!5585 = !DILocation(line: 282, column: 3, scope: !5579)
!5586 = !DILocation(line: 284, column: 3, scope: !5579)
!5587 = !DILocation(line: 285, column: 1, scope: !5575)
