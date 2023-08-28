; ModuleID = '../bcout/drivers/misc/phantom.llvm.bc'
source_filename = "drivers/misc/phantom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_phantom_init6:\09\09\09"
module asm ".long\09phantom_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.68, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.67, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.67 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.63 }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { %struct.spinlock, i32 }
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
%struct.page = type { i64, %union.anon.1, %union.anon.55, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.55 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.56, i32 }
%union.anon.56 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.48, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.18, [0 x i64] }
%struct.anon.18 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.19, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.19 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.25, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.26, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.27, %union.anon.31, %struct.key_restriction* }
%union.anon.25 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.26 = type { i64 }
%union.anon.27 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.28, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.28 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.31 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.34, %union.anon.35, i32 }
%struct.request_queue = type opaque
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.36 }
%struct.anon.36 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.47, i32, [12 x i8] }
%union.anon.47 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.48 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.49, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.52 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i64, i64 }
%union.anon.52 = type { [12 x i32] }
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
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.57, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.58, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.59, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.57 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.58 = type { %struct.callback_head }
%union.anon.59 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i32, i64, i64, %union.anon.5, %union.anon.6 }
%union.anon.5 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.6 = type { i64 }
%struct.swap_info_struct = type opaque
%union.anon.62 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.60 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.60 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
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
%union.anon.68 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.class_attribute_string = type { %struct.class_attribute, i8* }
%struct.class_attribute = type { %struct.attribute, i64 (%struct.class*, %struct.class_attribute*, i8*)*, i64 (%struct.class*, %struct.class_attribute*, i8*, i64)* }
%struct.module_version_attribute = type { %struct.module_attribute, i8*, i8* }
%struct.module_attribute = type { %struct.attribute, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*)*, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*, i64)*, void (%struct.module*, i8*)*, i32 (%struct.module*)*, void (%struct.module*)* }
%struct.module_kobject = type { %struct.kobject, %struct.module*, %struct.kobject*, %struct.module_param_attrs*, %struct.completion* }
%struct.module_param_attrs = type opaque
%struct.kmem_cache = type opaque
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
%struct.phantom_device = type { i32, i8*, i32*, i32*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.cdev, %struct.mutex, %struct.spinlock, %struct.phm_regs, i32 }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.phm_regs = type { i32, i32, [8 x i32] }
%struct.phm_reg = type { i32, i32 }

@phantom_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([2 x %struct.pci_device_id], [2 x %struct.pci_device_id]* @phantom_pci_tbl, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @phantom_probe, void (%struct.pci_dev*)* @phantom_remove, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver { i8* null, %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @phantom_pm_ops, void (%struct.device*)* null, %struct.driver_private* null }, %struct.pci_dynids zeroinitializer }, align 8, !dbg !0
@phantom_major = internal global i32 0, align 4, !dbg !4169
@phantom_class = internal global %struct.class* null, align 8, !dbg !4167
@class_attr_version = internal global %struct.class_attribute_string { %struct.class_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i16 292 }, i64 (%struct.class*, %struct.class_attribute*, i8*)* @show_class_attr_string, i64 (%struct.class*, %struct.class_attribute*, i8*, i64)* null }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0) }, align 8, !dbg !4188
@__UNIQUE_ID___addressable_phantom_init245 = internal global i8* bitcast (i32 ()* @phantom_init to i8*), section ".discard.addressable", align 8, !dbg !4094
@__exitcall_phantom_exit = internal global void ()* @phantom_exit, section ".exitcall.exit", align 8, !dbg !4096
@__UNIQUE_ID_author246 = internal constant [48 x i8] c"phantom.author=Jiri Slaby <jirislaby@gmail.com>\00", section ".modinfo", align 1, !dbg !4101
@__UNIQUE_ID_description247 = internal constant [58 x i8] c"phantom.description=Sensable Phantom driver (PCI devices)\00", section ".modinfo", align 1, !dbg !4104
@__UNIQUE_ID_file248 = internal constant [34 x i8] c"phantom.file=drivers/misc/phantom\00", section ".modinfo", align 1, !dbg !4109
@__UNIQUE_ID_license249 = internal constant [20 x i8] c"phantom.license=GPL\00", section ".modinfo", align 1, !dbg !4114
@__UNIQUE_ID_version250 = internal constant [23 x i8] c"phantom.version=n0.9.8\00", section ".modinfo", align 1, !dbg !4117
@___modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i16 292 }, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*)* @__modver_version_show, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*, i64)* null, void (%struct.module*, i8*)* null, i32 (%struct.module*)* null, void (%struct.module*)* null }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0) }, align 8, !dbg !4211
@__modver_attr = internal constant %struct.module_version_attribute* @___modver_attr, section "__modver", align 8, !dbg !4122
@.str = private unnamed_addr constant [8 x i8] c"phantom\00", align 1
@phantom_pci_tbl = internal global [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4277, i32 36944, i32 4277, i32 36944, i32 425984, i32 16776960, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4171
@phantom_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @phantom_suspend, i32 (%struct.device*)* @phantom_resume, i32 (%struct.device*)* @phantom_suspend, i32 (%struct.device*)* @phantom_resume, i32 (%struct.device*)* @phantom_suspend, i32 (%struct.device*)* @phantom_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null }, align 8, !dbg !4186
@.str.1 = private unnamed_addr constant [27 x i8] c"pci_enable_device failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"too many devices found!\0A\00", align 1
@phantom_devices = internal global [8 x i8] zeroinitializer, align 1, !dbg !4179
@.str.3 = private unnamed_addr constant [29 x i8] c"pci_request_regions failed!\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"unable to allocate device\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"can't remap conf space\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"can't remap input space\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"can't remap output space\0A\00", align 1
@phantom_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4174
@.str.8 = private unnamed_addr constant [16 x i8] c"&pht->open_lock\00", align 1
@phantom_probe.__key.9 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4177
@.str.10 = private unnamed_addr constant [11 x i8] c"&pht->wait\00", align 1
@phantom_file_ops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @no_llseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @phantom_poll, i64 (%struct.file*, i32, i64)* @phantom_ioctl, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @phantom_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @phantom_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !4182
@.str.11 = private unnamed_addr constant [21 x i8] c"can't establish ISR\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"chardev registration failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"phantom%u\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"can't create device\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.15 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.16 = private unnamed_addr constant [64 x i8] c"\013phantom: you need to set NOT_OH before you start the device!\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@phantom_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @phantom_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @phantom_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !4184
@.str.19 = private unnamed_addr constant [23 x i8] c"drivers/misc/phantom.c\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"n0.9.8\00", align 1
@phantom_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4206
@.str.22 = private unnamed_addr constant [41 x i8] c"\013phantom: can't register phantom class\0A\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"\013phantom: can't create sysfs version file\0A\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"\013phantom: can't register character device\0A\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"\013phantom: can't register pci driver\0A\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"\016Phantom Linux Driver, version n0.9.8, init OK\0A\00", align 1
@llvm.used = appending global [9 x i8*] [i8* bitcast (void ()* @phantom_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_phantom_init245 to i8*), i8* bitcast (void ()** @__exitcall_phantom_exit to i8*), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__UNIQUE_ID_author246, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__UNIQUE_ID_description247, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__UNIQUE_ID_file248, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license249, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__UNIQUE_ID_version250, i32 0, i32 0), i8* bitcast (%struct.module_version_attribute** @__modver_attr to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @phantom_exit() #0 section ".exit.text" !dbg !4219 {
entry:
  %tmp = alloca i32, align 4
  call void @pci_unregister_driver(%struct.pci_driver* @phantom_pci_driver) #11, !dbg !4220
  %0 = load i32, i32* @phantom_major, align 4, !dbg !4221
  %shl = shl i32 %0, 20, !dbg !4221
  call void @unregister_chrdev_region(i32 %shl, i32 8) #11, !dbg !4222
  %1 = load %struct.class*, %struct.class** @phantom_class, align 8, !dbg !4223
  call void @class_remove_file(%struct.class* %1, %struct.class_attribute* getelementptr inbounds (%struct.class_attribute_string, %struct.class_attribute_string* @class_attr_version, i32 0, i32 0)) #11, !dbg !4224
  %2 = load %struct.class*, %struct.class** @phantom_class, align 8, !dbg !4225
  call void @class_destroy(%struct.class* %2) #11, !dbg !4226
  store i32 0, i32* %tmp, align 4, !dbg !4227
  %3 = load i32, i32* %tmp, align 4, !dbg !4230
  ret void, !dbg !4231
}

; Function Attrs: noredzone
declare dso_local void @pci_unregister_driver(%struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local void @unregister_chrdev_region(i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @class_remove_file(%struct.class* %class, %struct.class_attribute* %attr) #2 !dbg !4232 {
entry:
  %class.addr = alloca %struct.class*, align 8
  %attr.addr = alloca %struct.class_attribute*, align 8
  store %struct.class* %class, %struct.class** %class.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class** %class.addr, metadata !4237, metadata !DIExpression()), !dbg !4238
  store %struct.class_attribute* %attr, %struct.class_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class_attribute** %attr.addr, metadata !4239, metadata !DIExpression()), !dbg !4240
  %0 = load %struct.class*, %struct.class** %class.addr, align 8, !dbg !4241
  %1 = load %struct.class_attribute*, %struct.class_attribute** %attr.addr, align 8, !dbg !4242
  call void @class_remove_file_ns(%struct.class* %0, %struct.class_attribute* %1, i8* null) #11, !dbg !4243
  ret void, !dbg !4244
}

; Function Attrs: noredzone
declare dso_local void @class_destroy(%struct.class*) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @phantom_init() #0 section ".init.text" !dbg !4208 {
entry:
  %retval = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %dev = alloca i32, align 4
  %tmp = alloca %struct.class*, align 8
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4245, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.declare(metadata i32* %dev, metadata !4247, metadata !DIExpression()), !dbg !4248
  %call = call %struct.class* @__class_create(%struct.module* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* @phantom_init.__key) #11, !dbg !4249
  store %struct.class* %call, %struct.class** %tmp, align 8, !dbg !4249
  %0 = load %struct.class*, %struct.class** %tmp, align 8, !dbg !4249
  store %struct.class* %0, %struct.class** @phantom_class, align 8, !dbg !4251
  %1 = load %struct.class*, %struct.class** @phantom_class, align 8, !dbg !4252
  %2 = bitcast %struct.class* %1 to i8*, !dbg !4252
  %call2 = call zeroext i1 @IS_ERR(i8* %2) #11, !dbg !4254
  br i1 %call2, label %if.then, label %if.end, !dbg !4255

if.then:                                          ; preds = %entry
  %3 = load %struct.class*, %struct.class** @phantom_class, align 8, !dbg !4256
  %4 = bitcast %struct.class* %3 to i8*, !dbg !4256
  %call3 = call i64 @PTR_ERR(i8* %4) #11, !dbg !4258
  %conv = trunc i64 %call3 to i32, !dbg !4258
  store i32 %conv, i32* %retval1, align 4, !dbg !4259
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0)) #12, !dbg !4260
  br label %err, !dbg !4261

if.end:                                           ; preds = %entry
  %5 = load %struct.class*, %struct.class** @phantom_class, align 8, !dbg !4262
  %call5 = call i32 @class_create_file(%struct.class* %5, %struct.class_attribute* getelementptr inbounds (%struct.class_attribute_string, %struct.class_attribute_string* @class_attr_version, i32 0, i32 0)) #11, !dbg !4263
  store i32 %call5, i32* %retval1, align 4, !dbg !4264
  %6 = load i32, i32* %retval1, align 4, !dbg !4265
  %tobool = icmp ne i32 %6, 0, !dbg !4265
  br i1 %tobool, label %if.then6, label %if.end8, !dbg !4267

if.then6:                                         ; preds = %if.end
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i64 0, i64 0)) #12, !dbg !4268
  br label %err_class, !dbg !4270

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @alloc_chrdev_region(i32* %dev, i32 0, i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #11, !dbg !4271
  store i32 %call9, i32* %retval1, align 4, !dbg !4272
  %7 = load i32, i32* %retval1, align 4, !dbg !4273
  %tobool10 = icmp ne i32 %7, 0, !dbg !4273
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !4275

if.then11:                                        ; preds = %if.end8
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0)) #12, !dbg !4276
  br label %err_attr, !dbg !4278

if.end13:                                         ; preds = %if.end8
  %8 = load i32, i32* %dev, align 4, !dbg !4279
  %shr = lshr i32 %8, 20, !dbg !4279
  store i32 %shr, i32* @phantom_major, align 4, !dbg !4280
  %call14 = call i32 @__pci_register_driver(%struct.pci_driver* @phantom_pci_driver, %struct.module* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #11, !dbg !4281
  store i32 %call14, i32* %retval1, align 4, !dbg !4282
  %9 = load i32, i32* %retval1, align 4, !dbg !4283
  %tobool15 = icmp ne i32 %9, 0, !dbg !4283
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !4285

if.then16:                                        ; preds = %if.end13
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0)) #12, !dbg !4286
  br label %err_unchr, !dbg !4288

if.end18:                                         ; preds = %if.end13
  %call19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !4289
  store i32 0, i32* %retval, align 4, !dbg !4290
  br label %return, !dbg !4290

err_unchr:                                        ; preds = %if.then16
  call void @llvm.dbg.label(metadata !4291), !dbg !4292
  %10 = load i32, i32* %dev, align 4, !dbg !4293
  call void @unregister_chrdev_region(i32 %10, i32 8) #11, !dbg !4294
  br label %err_attr, !dbg !4294

err_attr:                                         ; preds = %err_unchr, %if.then11
  call void @llvm.dbg.label(metadata !4295), !dbg !4296
  %11 = load %struct.class*, %struct.class** @phantom_class, align 8, !dbg !4297
  call void @class_remove_file(%struct.class* %11, %struct.class_attribute* getelementptr inbounds (%struct.class_attribute_string, %struct.class_attribute_string* @class_attr_version, i32 0, i32 0)) #11, !dbg !4298
  br label %err_class, !dbg !4298

err_class:                                        ; preds = %err_attr, %if.then6
  call void @llvm.dbg.label(metadata !4299), !dbg !4300
  %12 = load %struct.class*, %struct.class** @phantom_class, align 8, !dbg !4301
  call void @class_destroy(%struct.class* %12) #11, !dbg !4302
  br label %err, !dbg !4302

err:                                              ; preds = %err_class, %if.then
  call void @llvm.dbg.label(metadata !4303), !dbg !4304
  %13 = load i32, i32* %retval1, align 4, !dbg !4305
  store i32 %13, i32* %retval, align 4, !dbg !4306
  br label %return, !dbg !4306

return:                                           ; preds = %err, %if.end18
  %14 = load i32, i32* %retval, align 4, !dbg !4307
  ret i32 %14, !dbg !4307
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @phantom_probe(%struct.pci_dev* %pdev, %struct.pci_device_id* %pci_id) #2 !dbg !4176 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4308, metadata !DIExpression()), !dbg !4314
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %pci_id.addr = alloca %struct.pci_device_id*, align 8
  %pht = alloca %struct.phantom_device*, align 8
  %minor = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4317, metadata !DIExpression()), !dbg !4318
  store %struct.pci_device_id* %pci_id, %struct.pci_device_id** %pci_id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %pci_id.addr, metadata !4319, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.declare(metadata %struct.phantom_device** %pht, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.declare(metadata i32* %minor, metadata !4323, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4325, metadata !DIExpression()), !dbg !4326
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4327
  %call = call i32 @pci_enable_device(%struct.pci_dev* %0) #11, !dbg !4328
  store i32 %call, i32* %retval1, align 4, !dbg !4329
  %1 = load i32, i32* %retval1, align 4, !dbg !4330
  %tobool = icmp ne i32 %1, 0, !dbg !4330
  br i1 %tobool, label %if.then, label %if.end, !dbg !4332

if.then:                                          ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4333
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 41, !dbg !4333
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #12, !dbg !4333
  br label %err, !dbg !4335

if.end:                                           ; preds = %entry
  %call2 = call i32 @phantom_get_free() #11, !dbg !4336
  store i32 %call2, i32* %minor, align 4, !dbg !4337
  %3 = load i32, i32* %minor, align 4, !dbg !4338
  %cmp = icmp eq i32 %3, 8, !dbg !4340
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !4341

if.then3:                                         ; preds = %if.end
  %4 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4342
  %dev4 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 41, !dbg !4342
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0)) #12, !dbg !4342
  store i32 -5, i32* %retval1, align 4, !dbg !4344
  br label %err_dis, !dbg !4345

if.end5:                                          ; preds = %if.end
  %5 = load i32, i32* %minor, align 4, !dbg !4346
  %idxprom = zext i32 %5 to i64, !dbg !4347
  %arrayidx = getelementptr [8 x i8], [8 x i8]* @phantom_devices, i64 0, i64 %idxprom, !dbg !4347
  store i8 1, i8* %arrayidx, align 1, !dbg !4348
  %6 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4349
  %call6 = call i32 @pci_request_regions(%struct.pci_dev* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #11, !dbg !4350
  store i32 %call6, i32* %retval1, align 4, !dbg !4351
  %7 = load i32, i32* %retval1, align 4, !dbg !4352
  %tobool7 = icmp ne i32 %7, 0, !dbg !4352
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !4354

if.then8:                                         ; preds = %if.end5
  %8 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4355
  %dev9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 41, !dbg !4355
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0)) #12, !dbg !4355
  br label %err_null, !dbg !4357

if.end10:                                         ; preds = %if.end5
  store i32 -12, i32* %retval1, align 4, !dbg !4358
  %call11 = call i8* @kzalloc(i64 240, i32 3264) #11, !dbg !4359
  %9 = bitcast i8* %call11 to %struct.phantom_device*, !dbg !4359
  store %struct.phantom_device* %9, %struct.phantom_device** %pht, align 8, !dbg !4360
  %10 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4361
  %cmp12 = icmp eq %struct.phantom_device* %10, null, !dbg !4363
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !4364

if.then13:                                        ; preds = %if.end10
  %11 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4365
  %dev14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 41, !dbg !4365
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !4365
  br label %err_reg, !dbg !4367

if.end15:                                         ; preds = %if.end10
  %12 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4368
  %call16 = call i8* @pci_iomap(%struct.pci_dev* %12, i32 0, i64 0) #11, !dbg !4369
  %13 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4370
  %caddr = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %13, i32 0, i32 1, !dbg !4371
  store i8* %call16, i8** %caddr, align 8, !dbg !4372
  %14 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4373
  %caddr17 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %14, i32 0, i32 1, !dbg !4375
  %15 = load i8*, i8** %caddr17, align 8, !dbg !4375
  %cmp18 = icmp eq i8* %15, null, !dbg !4376
  br i1 %cmp18, label %if.then19, label %if.end21, !dbg !4377

if.then19:                                        ; preds = %if.end15
  %16 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4378
  %dev20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 41, !dbg !4378
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)) #12, !dbg !4378
  br label %err_fr, !dbg !4380

if.end21:                                         ; preds = %if.end15
  %17 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4381
  %call22 = call i8* @pci_iomap(%struct.pci_dev* %17, i32 2, i64 0) #11, !dbg !4382
  %18 = bitcast i8* %call22 to i32*, !dbg !4382
  %19 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4383
  %iaddr = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %19, i32 0, i32 2, !dbg !4384
  store i32* %18, i32** %iaddr, align 8, !dbg !4385
  %20 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4386
  %iaddr23 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %20, i32 0, i32 2, !dbg !4388
  %21 = load i32*, i32** %iaddr23, align 8, !dbg !4388
  %cmp24 = icmp eq i32* %21, null, !dbg !4389
  br i1 %cmp24, label %if.then25, label %if.end27, !dbg !4390

if.then25:                                        ; preds = %if.end21
  %22 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4391
  %dev26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 41, !dbg !4391
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0)) #12, !dbg !4391
  br label %err_unmc, !dbg !4393

if.end27:                                         ; preds = %if.end21
  %23 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4394
  %call28 = call i8* @pci_iomap(%struct.pci_dev* %23, i32 3, i64 0) #11, !dbg !4395
  %24 = bitcast i8* %call28 to i32*, !dbg !4395
  %25 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4396
  %oaddr = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %25, i32 0, i32 3, !dbg !4397
  store i32* %24, i32** %oaddr, align 8, !dbg !4398
  %26 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4399
  %oaddr29 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %26, i32 0, i32 3, !dbg !4401
  %27 = load i32*, i32** %oaddr29, align 8, !dbg !4401
  %cmp30 = icmp eq i32* %27, null, !dbg !4402
  br i1 %cmp30, label %if.then31, label %if.end33, !dbg !4403

if.then31:                                        ; preds = %if.end27
  %28 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4404
  %dev32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 41, !dbg !4404
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !4404
  br label %err_unmi, !dbg !4406

if.end33:                                         ; preds = %if.end27
  br label %do.body, !dbg !4407

do.body:                                          ; preds = %if.end33
  %29 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4408
  %open_lock = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %29, i32 0, i32 8, !dbg !4408
  call void @__mutex_init(%struct.mutex* %open_lock, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), %struct.lock_class_key* @phantom_probe.__key) #11, !dbg !4408
  br label %do.end, !dbg !4408

do.end:                                           ; preds = %do.body
  br label %do.body34, !dbg !4410

do.body34:                                        ; preds = %do.end
  %30 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4411
  %regs_lock = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %30, i32 0, i32 9, !dbg !4411
  store %struct.spinlock* %regs_lock, %struct.spinlock** %lock.addr.i, align 8
  %31 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4412
  %32 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %31, i32 0, i32 0, !dbg !4413
  %rlock.i = bitcast %union.anon.3* %32 to %struct.raw_spinlock*, !dbg !4413
  %33 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4411
  %regs_lock36 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %33, i32 0, i32 9, !dbg !4411
  %34 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4411
  %rlock = bitcast %union.anon.3* %34 to %struct.raw_spinlock*, !dbg !4411
  %35 = bitcast %struct.spinlock* %regs_lock36 to i8*, !dbg !4411
  %36 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4411
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 1 %36, i64 0, i1 false), !dbg !4411
  br label %do.end37, !dbg !4411

do.end37:                                         ; preds = %do.body34
  br label %do.body38, !dbg !4414

do.body38:                                        ; preds = %do.end37
  %37 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4415
  %wait = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %37, i32 0, i32 6, !dbg !4415
  call void @__init_waitqueue_head(%struct.wait_queue_head* %wait, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), %struct.lock_class_key* @phantom_probe.__key.9) #11, !dbg !4415
  br label %do.end39, !dbg !4415

do.end39:                                         ; preds = %do.body38
  %38 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4417
  %cdev = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %38, i32 0, i32 7, !dbg !4418
  call void @cdev_init(%struct.cdev* %cdev, %struct.file_operations* @phantom_file_ops) #11, !dbg !4419
  %39 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4420
  %cdev40 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %39, i32 0, i32 7, !dbg !4421
  %owner = getelementptr inbounds %struct.cdev, %struct.cdev* %cdev40, i32 0, i32 1, !dbg !4422
  store %struct.module* null, %struct.module** %owner, align 8, !dbg !4423
  %40 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4424
  %caddr41 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %40, i32 0, i32 1, !dbg !4425
  %41 = load i8*, i8** %caddr41, align 8, !dbg !4425
  %add.ptr = getelementptr i8, i8* %41, i64 76, !dbg !4426
  call void @iowrite32(i32 0, i8* %add.ptr) #11, !dbg !4427
  %42 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4428
  %caddr42 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %42, i32 0, i32 1, !dbg !4429
  %43 = load i8*, i8** %caddr42, align 8, !dbg !4429
  %add.ptr43 = getelementptr i8, i8* %43, i64 76, !dbg !4430
  %call44 = call i32 @ioread32(i8* %add.ptr43) #11, !dbg !4431
  %44 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4432
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 43, !dbg !4433
  %45 = load i32, i32* %irq, align 4, !dbg !4433
  %46 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4434
  %47 = bitcast %struct.phantom_device* %46 to i8*, !dbg !4434
  %call45 = call i32 @request_irq(i32 %45, i32 (i32, i8*)* @phantom_isr, i64 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %47) #11, !dbg !4435
  store i32 %call45, i32* %retval1, align 4, !dbg !4436
  %48 = load i32, i32* %retval1, align 4, !dbg !4437
  %tobool46 = icmp ne i32 %48, 0, !dbg !4437
  br i1 %tobool46, label %if.then47, label %if.end49, !dbg !4439

if.then47:                                        ; preds = %do.end39
  %49 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4440
  %dev48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 41, !dbg !4440
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !4440
  br label %err_unmo, !dbg !4442

if.end49:                                         ; preds = %do.end39
  %50 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4443
  %cdev50 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %50, i32 0, i32 7, !dbg !4444
  %51 = load i32, i32* @phantom_major, align 4, !dbg !4445
  %shl = shl i32 %51, 20, !dbg !4445
  %52 = load i32, i32* %minor, align 4, !dbg !4445
  %or = or i32 %shl, %52, !dbg !4445
  %call51 = call i32 @cdev_add(%struct.cdev* %cdev50, i32 %or, i32 1) #11, !dbg !4446
  store i32 %call51, i32* %retval1, align 4, !dbg !4447
  %53 = load i32, i32* %retval1, align 4, !dbg !4448
  %tobool52 = icmp ne i32 %53, 0, !dbg !4448
  br i1 %tobool52, label %if.then53, label %if.end55, !dbg !4450

if.then53:                                        ; preds = %if.end49
  %54 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4451
  %dev54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 41, !dbg !4451
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0)) #12, !dbg !4451
  br label %err_irq, !dbg !4453

if.end55:                                         ; preds = %if.end49
  %55 = load %struct.class*, %struct.class** @phantom_class, align 8, !dbg !4454
  %56 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4456
  %dev56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 41, !dbg !4457
  %57 = load i32, i32* @phantom_major, align 4, !dbg !4458
  %shl57 = shl i32 %57, 20, !dbg !4458
  %58 = load i32, i32* %minor, align 4, !dbg !4458
  %or58 = or i32 %shl57, %58, !dbg !4458
  %59 = load i32, i32* %minor, align 4, !dbg !4459
  %call59 = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, i8*, ...) @device_create(%struct.class* %55, %struct.device* %dev56, i32 %or58, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %59) #11, !dbg !4460
  %60 = bitcast %struct.device* %call59 to i8*, !dbg !4460
  %call60 = call zeroext i1 @IS_ERR(i8* %60) #11, !dbg !4461
  br i1 %call60, label %if.then61, label %if.end63, !dbg !4462

if.then61:                                        ; preds = %if.end55
  %61 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4463
  %dev62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 41, !dbg !4463
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0)) #12, !dbg !4463
  br label %if.end63, !dbg !4463

if.end63:                                         ; preds = %if.then61, %if.end55
  %62 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4464
  %63 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4465
  %64 = bitcast %struct.phantom_device* %63 to i8*, !dbg !4465
  call void @pci_set_drvdata(%struct.pci_dev* %62, i8* %64) #11, !dbg !4466
  store i32 0, i32* %retval, align 4, !dbg !4467
  br label %return, !dbg !4467

err_irq:                                          ; preds = %if.then53
  call void @llvm.dbg.label(metadata !4468), !dbg !4469
  %65 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4470
  %irq64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 43, !dbg !4471
  %66 = load i32, i32* %irq64, align 4, !dbg !4471
  %67 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4472
  %68 = bitcast %struct.phantom_device* %67 to i8*, !dbg !4472
  %call65 = call i8* @free_irq(i32 %66, i8* %68) #11, !dbg !4473
  br label %err_unmo, !dbg !4473

err_unmo:                                         ; preds = %err_irq, %if.then47
  call void @llvm.dbg.label(metadata !4474), !dbg !4475
  %69 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4476
  %70 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4477
  %oaddr66 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %70, i32 0, i32 3, !dbg !4478
  %71 = load i32*, i32** %oaddr66, align 8, !dbg !4478
  %72 = bitcast i32* %71 to i8*, !dbg !4477
  call void @pci_iounmap(%struct.pci_dev* %69, i8* %72) #11, !dbg !4479
  br label %err_unmi, !dbg !4479

err_unmi:                                         ; preds = %err_unmo, %if.then31
  call void @llvm.dbg.label(metadata !4480), !dbg !4481
  %73 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4482
  %74 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4483
  %iaddr67 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %74, i32 0, i32 2, !dbg !4484
  %75 = load i32*, i32** %iaddr67, align 8, !dbg !4484
  %76 = bitcast i32* %75 to i8*, !dbg !4483
  call void @pci_iounmap(%struct.pci_dev* %73, i8* %76) #11, !dbg !4485
  br label %err_unmc, !dbg !4485

err_unmc:                                         ; preds = %err_unmi, %if.then25
  call void @llvm.dbg.label(metadata !4486), !dbg !4487
  %77 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4488
  %78 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4489
  %caddr68 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %78, i32 0, i32 1, !dbg !4490
  %79 = load i8*, i8** %caddr68, align 8, !dbg !4490
  call void @pci_iounmap(%struct.pci_dev* %77, i8* %79) #11, !dbg !4491
  br label %err_fr, !dbg !4491

err_fr:                                           ; preds = %err_unmc, %if.then19
  call void @llvm.dbg.label(metadata !4492), !dbg !4493
  %80 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4494
  %81 = bitcast %struct.phantom_device* %80 to i8*, !dbg !4494
  call void @kfree(i8* %81) #11, !dbg !4495
  br label %err_reg, !dbg !4495

err_reg:                                          ; preds = %err_fr, %if.then13
  call void @llvm.dbg.label(metadata !4496), !dbg !4497
  %82 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4498
  call void @pci_release_regions(%struct.pci_dev* %82) #11, !dbg !4499
  br label %err_null, !dbg !4499

err_null:                                         ; preds = %err_reg, %if.then8
  call void @llvm.dbg.label(metadata !4500), !dbg !4501
  %83 = load i32, i32* %minor, align 4, !dbg !4502
  %idxprom69 = zext i32 %83 to i64, !dbg !4503
  %arrayidx70 = getelementptr [8 x i8], [8 x i8]* @phantom_devices, i64 0, i64 %idxprom69, !dbg !4503
  store i8 0, i8* %arrayidx70, align 1, !dbg !4504
  br label %err_dis, !dbg !4503

err_dis:                                          ; preds = %err_null, %if.then3
  call void @llvm.dbg.label(metadata !4505), !dbg !4506
  %84 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4507
  call void @pci_disable_device(%struct.pci_dev* %84) #11, !dbg !4508
  br label %err, !dbg !4508

err:                                              ; preds = %err_dis, %if.then
  call void @llvm.dbg.label(metadata !4509), !dbg !4510
  %85 = load i32, i32* %retval1, align 4, !dbg !4511
  store i32 %85, i32* %retval, align 4, !dbg !4512
  br label %return, !dbg !4512

return:                                           ; preds = %err, %if.end63
  %86 = load i32, i32* %retval, align 4, !dbg !4513
  ret i32 %86, !dbg !4513
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @phantom_remove(%struct.pci_dev* %pdev) #2 !dbg !4514 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %pht = alloca %struct.phantom_device*, align 8
  %minor = alloca i32, align 4
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4515, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.declare(metadata %struct.phantom_device** %pht, metadata !4517, metadata !DIExpression()), !dbg !4518
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4519
  %call = call i8* @pci_get_drvdata(%struct.pci_dev* %0) #11, !dbg !4520
  %1 = bitcast i8* %call to %struct.phantom_device*, !dbg !4520
  store %struct.phantom_device* %1, %struct.phantom_device** %pht, align 8, !dbg !4518
  call void @llvm.dbg.declare(metadata i32* %minor, metadata !4521, metadata !DIExpression()), !dbg !4522
  %2 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4523
  %cdev = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %2, i32 0, i32 7, !dbg !4523
  %dev = getelementptr inbounds %struct.cdev, %struct.cdev* %cdev, i32 0, i32 4, !dbg !4523
  %3 = load i32, i32* %dev, align 8, !dbg !4523
  %and = and i32 %3, 1048575, !dbg !4523
  store i32 %and, i32* %minor, align 4, !dbg !4522
  %4 = load %struct.class*, %struct.class** @phantom_class, align 8, !dbg !4524
  %5 = load i32, i32* @phantom_major, align 4, !dbg !4525
  %shl = shl i32 %5, 20, !dbg !4525
  %6 = load i32, i32* %minor, align 4, !dbg !4525
  %or = or i32 %shl, %6, !dbg !4525
  call void @device_destroy(%struct.class* %4, i32 %or) #11, !dbg !4526
  %7 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4527
  %cdev1 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %7, i32 0, i32 7, !dbg !4528
  call void @cdev_del(%struct.cdev* %cdev1) #11, !dbg !4529
  %8 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4530
  %caddr = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %8, i32 0, i32 1, !dbg !4531
  %9 = load i8*, i8** %caddr, align 8, !dbg !4531
  %add.ptr = getelementptr i8, i8* %9, i64 76, !dbg !4532
  call void @iowrite32(i32 0, i8* %add.ptr) #11, !dbg !4533
  %10 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4534
  %caddr2 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %10, i32 0, i32 1, !dbg !4535
  %11 = load i8*, i8** %caddr2, align 8, !dbg !4535
  %add.ptr3 = getelementptr i8, i8* %11, i64 76, !dbg !4536
  %call4 = call i32 @ioread32(i8* %add.ptr3) #11, !dbg !4537
  %12 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4538
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 43, !dbg !4539
  %13 = load i32, i32* %irq, align 4, !dbg !4539
  %14 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4540
  %15 = bitcast %struct.phantom_device* %14 to i8*, !dbg !4540
  %call5 = call i8* @free_irq(i32 %13, i8* %15) #11, !dbg !4541
  %16 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4542
  %17 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4543
  %oaddr = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %17, i32 0, i32 3, !dbg !4544
  %18 = load i32*, i32** %oaddr, align 8, !dbg !4544
  %19 = bitcast i32* %18 to i8*, !dbg !4543
  call void @pci_iounmap(%struct.pci_dev* %16, i8* %19) #11, !dbg !4545
  %20 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4546
  %21 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4547
  %iaddr = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %21, i32 0, i32 2, !dbg !4548
  %22 = load i32*, i32** %iaddr, align 8, !dbg !4548
  %23 = bitcast i32* %22 to i8*, !dbg !4547
  call void @pci_iounmap(%struct.pci_dev* %20, i8* %23) #11, !dbg !4549
  %24 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4550
  %25 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4551
  %caddr6 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %25, i32 0, i32 1, !dbg !4552
  %26 = load i8*, i8** %caddr6, align 8, !dbg !4552
  call void @pci_iounmap(%struct.pci_dev* %24, i8* %26) #11, !dbg !4553
  %27 = load %struct.phantom_device*, %struct.phantom_device** %pht, align 8, !dbg !4554
  %28 = bitcast %struct.phantom_device* %27 to i8*, !dbg !4554
  call void @kfree(i8* %28) #11, !dbg !4555
  %29 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4556
  call void @pci_release_regions(%struct.pci_dev* %29) #11, !dbg !4557
  %30 = load i32, i32* %minor, align 4, !dbg !4558
  %idxprom = zext i32 %30 to i64, !dbg !4559
  %arrayidx = getelementptr [8 x i8], [8 x i8]* @phantom_devices, i64 0, i64 %idxprom, !dbg !4559
  store i8 0, i8* %arrayidx, align 1, !dbg !4560
  %31 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4561
  call void @pci_disable_device(%struct.pci_dev* %31) #11, !dbg !4562
  ret void, !dbg !4563
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @phantom_get_free() #2 !dbg !4564 {
entry:
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4567, metadata !DIExpression()), !dbg !4568
  store i32 0, i32* %i, align 4, !dbg !4569
  br label %for.cond, !dbg !4571

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4572
  %cmp = icmp ult i32 %0, 8, !dbg !4574
  br i1 %cmp, label %for.body, label %for.end, !dbg !4575

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !4576
  %idxprom = zext i32 %1 to i64, !dbg !4578
  %arrayidx = getelementptr [8 x i8], [8 x i8]* @phantom_devices, i64 0, i64 %idxprom, !dbg !4578
  %2 = load i8, i8* %arrayidx, align 1, !dbg !4578
  %conv = zext i8 %2 to i32, !dbg !4578
  %cmp1 = icmp eq i32 %conv, 0, !dbg !4579
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4580

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !4581

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4582

for.inc:                                          ; preds = %if.end
  %3 = load i32, i32* %i, align 4, !dbg !4583
  %inc = add i32 %3, 1, !dbg !4583
  store i32 %inc, i32* %i, align 4, !dbg !4583
  br label %for.cond, !dbg !4584, !llvm.loop !4585

for.end:                                          ; preds = %if.then, %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !4587
  ret i32 %4, !dbg !4588
}

; Function Attrs: noredzone
declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4589 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4592, metadata !DIExpression()), !dbg !4596
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4602, metadata !DIExpression()), !dbg !4603
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4604, metadata !DIExpression()), !dbg !4605
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4606, metadata !DIExpression()), !dbg !4607
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4608, metadata !DIExpression()), !dbg !4612
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4614, metadata !DIExpression()), !dbg !4618
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4620, metadata !DIExpression()), !dbg !4624
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4629, metadata !DIExpression()), !dbg !4630
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4631, metadata !DIExpression()), !dbg !4632
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4633, metadata !DIExpression()), !dbg !4634
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4635, metadata !DIExpression()), !dbg !4636
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4637, metadata !DIExpression()), !dbg !4638
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4639, metadata !DIExpression()), !dbg !4640
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4641, metadata !DIExpression()), !dbg !4642
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4643, metadata !DIExpression()), !dbg !4644
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4645, metadata !DIExpression()), !dbg !4646
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4647, metadata !DIExpression()), !dbg !4648
  %0 = load i64, i64* %size.addr, align 8, !dbg !4649
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4650
  %or = or i32 %1, 256, !dbg !4651
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4652
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4653
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4654

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4655
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4656
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4657

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4658
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4659
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4660
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !4661
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4638
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4662
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4663
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4664
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4665
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4666
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4667
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #14, !dbg !4668
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4668
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4668
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4668
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4668
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4669
  br label %kmalloc.exit, !dbg !4669

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4670
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4671
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4671
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4673

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4674
  br label %kmalloc_index.exit.i, !dbg !4674

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4675
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4677
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4678

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4679
  br label %kmalloc_index.exit.i, !dbg !4679

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4680
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4682
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4683

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4684
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4685
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4686

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4687
  br label %kmalloc_index.exit.i, !dbg !4687

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4688
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4690
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4691

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4692
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4693
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4694

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4695
  br label %kmalloc_index.exit.i, !dbg !4695

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4696
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4698
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4699

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4700
  br label %kmalloc_index.exit.i, !dbg !4700

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4701
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4703
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4704

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4705
  br label %kmalloc_index.exit.i, !dbg !4705

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4706
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4708
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4709

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4710
  br label %kmalloc_index.exit.i, !dbg !4710

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4711
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4713
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4714

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4715
  br label %kmalloc_index.exit.i, !dbg !4715

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4716
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4718
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4719

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4720
  br label %kmalloc_index.exit.i, !dbg !4720

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4721
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4723
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4724

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4725
  br label %kmalloc_index.exit.i, !dbg !4725

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4726
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4728
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4729

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4730
  br label %kmalloc_index.exit.i, !dbg !4730

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4731
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4733
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4734

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4735
  br label %kmalloc_index.exit.i, !dbg !4735

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4736
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4738
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4739

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4740
  br label %kmalloc_index.exit.i, !dbg !4740

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4741
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4743
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4744

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4745
  br label %kmalloc_index.exit.i, !dbg !4745

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4746
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4748
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4749

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4750
  br label %kmalloc_index.exit.i, !dbg !4750

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4751
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4753
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4754

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4755
  br label %kmalloc_index.exit.i, !dbg !4755

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4756
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4758
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4759

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4760
  br label %kmalloc_index.exit.i, !dbg !4760

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4761
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4763
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4764

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4765
  br label %kmalloc_index.exit.i, !dbg !4765

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4766
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4768
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4769

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4770
  br label %kmalloc_index.exit.i, !dbg !4770

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4771
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4773
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4774

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4775
  br label %kmalloc_index.exit.i, !dbg !4775

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4776
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4778
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4779

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4780
  br label %kmalloc_index.exit.i, !dbg !4780

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4781
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4783
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4784

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4785
  br label %kmalloc_index.exit.i, !dbg !4785

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4786
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4788
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4789

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4790
  br label %kmalloc_index.exit.i, !dbg !4790

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4791
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4793
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4794

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4795
  br label %kmalloc_index.exit.i, !dbg !4795

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4796
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4798
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4799

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4800
  br label %kmalloc_index.exit.i, !dbg !4800

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4801
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4803
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4804

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4805
  br label %kmalloc_index.exit.i, !dbg !4805

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4806
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4808
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4809

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4810
  br label %kmalloc_index.exit.i, !dbg !4810

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4811
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4813
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4814

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4815
  br label %kmalloc_index.exit.i, !dbg !4815

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4816, !srcloc !4819
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 204) #10, !dbg !4820, !srcloc !4823
  unreachable, !dbg !4824

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4825
  store i32 %45, i32* %index.i, align 4, !dbg !4826
  %46 = load i32, i32* %index.i, align 4, !dbg !4827
  %tobool.i = icmp ne i32 %46, 0, !dbg !4827
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4829

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4830
  br label %kmalloc.exit, !dbg !4830

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4831
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4832
  %and.i.i = and i32 %48, 17, !dbg !4832
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4832
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4832
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4832
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4832
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4834

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4835
  br label %kmalloc_type.exit.i, !dbg !4835

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4836
  %and2.i.i = and i32 %49, 1, !dbg !4837
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4836
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4836
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4836
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4838
  br label %kmalloc_type.exit.i, !dbg !4838

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4839
  %idxprom.i = zext i32 %51 to i64, !dbg !4840
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4840
  %52 = load i32, i32* %index.i, align 4, !dbg !4841
  %idxprom6.i = zext i32 %52 to i64, !dbg !4840
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4840
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4840
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4842
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4843
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4844
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4845
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #14, !dbg !4846
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4846
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4846
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4846
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4846
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4607
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4847
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4848
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4849
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4850
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #14, !dbg !4851
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4852
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4853
  store i8* %62, i8** %retval.i, align 8, !dbg !4854
  br label %kmalloc.exit, !dbg !4854

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4855
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4856
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #14, !dbg !4857
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4857
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4857
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4857
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4857
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4858
  br label %kmalloc.exit, !dbg !4858

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4859
  ret i8* %65, !dbg !4860
}

; Function Attrs: noredzone
declare dso_local i8* @pci_iomap(%struct.pci_dev*, i32, i64) #1

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noredzone
declare dso_local void @cdev_init(%struct.cdev*, %struct.file_operations*) #1

; Function Attrs: noredzone
declare dso_local void @iowrite32(i32, i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @ioread32(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #2 !dbg !4861 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4869, metadata !DIExpression()), !dbg !4870
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !4871, metadata !DIExpression()), !dbg !4872
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4873, metadata !DIExpression()), !dbg !4874
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4875, metadata !DIExpression()), !dbg !4876
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !4877, metadata !DIExpression()), !dbg !4878
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4879
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !4880
  %2 = load i64, i64* %flags.addr, align 8, !dbg !4881
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4882
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !4883
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #11, !dbg !4884
  ret i32 %call, !dbg !4885
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @phantom_isr(i32 %irq, i8* %data) #2 !dbg !4886 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4887, metadata !DIExpression()), !dbg !4893
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4898, metadata !DIExpression()), !dbg !4906
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4908, metadata !DIExpression()), !dbg !4909
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !4910, metadata !DIExpression()), !dbg !4911
  %lock.addr.i22 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i22, metadata !4912, metadata !DIExpression()), !dbg !4916
  %lock.addr.i20 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i20, metadata !4912, metadata !DIExpression()), !dbg !4918
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4922, metadata !DIExpression()), !dbg !4924
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %dev = alloca %struct.phantom_device*, align 8
  %i = alloca i32, align 4
  %ctl = alloca i32, align 4
  %r = alloca %struct.phm_regs*, align 8
  %m = alloca i32, align 4
  %__UNIQUE_ID___x242 = alloca i32, align 4
  %__UNIQUE_ID___y243 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4926, metadata !DIExpression()), !dbg !4927
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4928, metadata !DIExpression()), !dbg !4929
  call void @llvm.dbg.declare(metadata %struct.phantom_device** %dev, metadata !4930, metadata !DIExpression()), !dbg !4931
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4932
  %1 = bitcast i8* %0 to %struct.phantom_device*, !dbg !4932
  store %struct.phantom_device* %1, %struct.phantom_device** %dev, align 8, !dbg !4931
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4933, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.declare(metadata i32* %ctl, metadata !4935, metadata !DIExpression()), !dbg !4936
  %2 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !4937
  %regs_lock = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %2, i32 0, i32 9, !dbg !4938
  store %struct.spinlock* %regs_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !4939, !srcloc !4941
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4942
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !4942
  %rlock.i = bitcast %union.anon.3* %4 to %struct.raw_spinlock*, !dbg !4942
  %5 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !4944
  %iaddr = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %5, i32 0, i32 2, !dbg !4945
  %6 = load i32*, i32** %iaddr, align 8, !dbg !4945
  %add.ptr = getelementptr i32, i32* %6, i64 6, !dbg !4946
  %7 = bitcast i32* %add.ptr to i8*, !dbg !4944
  %call = call i32 @ioread32(i8* %7) #11, !dbg !4947
  store i32 %call, i32* %ctl, align 4, !dbg !4948
  %8 = load i32, i32* %ctl, align 4, !dbg !4949
  %and = and i32 %8, 16, !dbg !4950
  %tobool = icmp ne i32 %and, 0, !dbg !4950
  br i1 %tobool, label %if.end, label %if.then, !dbg !4951

if.then:                                          ; preds = %entry
  %9 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !4952
  %regs_lock1 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %9, i32 0, i32 9, !dbg !4953
  store %struct.spinlock* %regs_lock1, %struct.spinlock** %lock.addr.i20, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !4954, !srcloc !4956
  %10 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i20, align 8, !dbg !4957
  %11 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %10, i32 0, i32 0, !dbg !4957
  %rlock.i21 = bitcast %union.anon.3* %11 to %struct.raw_spinlock*, !dbg !4957
  store i32 0, i32* %retval, align 4, !dbg !4959
  br label %return, !dbg !4959

if.end:                                           ; preds = %entry
  %12 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !4960
  %iaddr2 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %12, i32 0, i32 2, !dbg !4961
  %13 = load i32*, i32** %iaddr2, align 8, !dbg !4961
  %14 = bitcast i32* %13 to i8*, !dbg !4960
  call void @iowrite32(i32 0, i8* %14) #11, !dbg !4962
  %15 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !4963
  %iaddr3 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %15, i32 0, i32 2, !dbg !4964
  %16 = load i32*, i32** %iaddr3, align 8, !dbg !4964
  %17 = bitcast i32* %16 to i8*, !dbg !4963
  call void @iowrite32(i32 192, i8* %17) #11, !dbg !4965
  %18 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !4966
  %status = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %18, i32 0, i32 4, !dbg !4968
  %19 = load i64, i64* %status, align 8, !dbg !4968
  %and4 = and i64 %19, 2, !dbg !4969
  %tobool5 = icmp ne i64 %and4, 0, !dbg !4969
  br i1 %tobool5, label %if.then6, label %if.end16, !dbg !4970

if.then6:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.phm_regs** %r, metadata !4971, metadata !DIExpression()), !dbg !4974
  %20 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !4975
  %oregs = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %20, i32 0, i32 10, !dbg !4976
  store %struct.phm_regs* %oregs, %struct.phm_regs** %r, align 8, !dbg !4974
  call void @llvm.dbg.declare(metadata i32* %m, metadata !4977, metadata !DIExpression()), !dbg !4978
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x242, metadata !4979, metadata !DIExpression()), !dbg !4981
  %21 = load %struct.phm_regs*, %struct.phm_regs** %r, align 8, !dbg !4981
  %count = getelementptr inbounds %struct.phm_regs, %struct.phm_regs* %21, i32 0, i32 0, !dbg !4981
  %22 = load i32, i32* %count, align 4, !dbg !4981
  store i32 %22, i32* %__UNIQUE_ID___x242, align 4, !dbg !4981
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y243, metadata !4982, metadata !DIExpression()), !dbg !4981
  store i32 8, i32* %__UNIQUE_ID___y243, align 4, !dbg !4981
  %23 = load i32, i32* %__UNIQUE_ID___x242, align 4, !dbg !4981
  %24 = load i32, i32* %__UNIQUE_ID___y243, align 4, !dbg !4981
  %cmp = icmp ult i32 %23, %24, !dbg !4981
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4981

cond.true:                                        ; preds = %if.then6
  %25 = load i32, i32* %__UNIQUE_ID___x242, align 4, !dbg !4981
  br label %cond.end, !dbg !4981

cond.false:                                       ; preds = %if.then6
  %26 = load i32, i32* %__UNIQUE_ID___y243, align 4, !dbg !4981
  br label %cond.end, !dbg !4981

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %26, %cond.false ], !dbg !4981
  store i32 %cond, i32* %tmp, align 4, !dbg !4981
  %27 = load i32, i32* %tmp, align 4, !dbg !4981
  store i32 %27, i32* %m, align 4, !dbg !4978
  store i32 0, i32* %i, align 4, !dbg !4983
  br label %for.cond, !dbg !4985

for.cond:                                         ; preds = %for.inc, %cond.end
  %28 = load i32, i32* %i, align 4, !dbg !4986
  %29 = load i32, i32* %m, align 4, !dbg !4988
  %cmp7 = icmp ult i32 %28, %29, !dbg !4989
  br i1 %cmp7, label %for.body, label %for.end, !dbg !4990

for.body:                                         ; preds = %for.cond
  %30 = load %struct.phm_regs*, %struct.phm_regs** %r, align 8, !dbg !4991
  %mask = getelementptr inbounds %struct.phm_regs, %struct.phm_regs* %30, i32 0, i32 1, !dbg !4993
  %31 = load i32, i32* %mask, align 4, !dbg !4993
  %conv = zext i32 %31 to i64, !dbg !4991
  %32 = load i32, i32* %i, align 4, !dbg !4994
  %sh_prom = zext i32 %32 to i64, !dbg !4994
  %shl = shl i64 1, %sh_prom, !dbg !4994
  %and8 = and i64 %conv, %shl, !dbg !4995
  %tobool9 = icmp ne i64 %and8, 0, !dbg !4995
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !4996

if.then10:                                        ; preds = %for.body
  %33 = load %struct.phm_regs*, %struct.phm_regs** %r, align 8, !dbg !4997
  %values = getelementptr inbounds %struct.phm_regs, %struct.phm_regs* %33, i32 0, i32 2, !dbg !4998
  %34 = load i32, i32* %i, align 4, !dbg !4999
  %idxprom = zext i32 %34 to i64, !dbg !4997
  %arrayidx = getelementptr [8 x i32], [8 x i32]* %values, i64 0, i64 %idxprom, !dbg !4997
  %35 = load i32, i32* %arrayidx, align 4, !dbg !4997
  %36 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5000
  %oaddr = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %36, i32 0, i32 3, !dbg !5001
  %37 = load i32*, i32** %oaddr, align 8, !dbg !5001
  %38 = load i32, i32* %i, align 4, !dbg !5002
  %idx.ext = zext i32 %38 to i64, !dbg !5003
  %add.ptr11 = getelementptr i32, i32* %37, i64 %idx.ext, !dbg !5003
  %39 = bitcast i32* %add.ptr11 to i8*, !dbg !5000
  call void @iowrite32(i32 %35, i8* %39) #11, !dbg !5004
  br label %if.end12, !dbg !5004

if.end12:                                         ; preds = %if.then10, %for.body
  br label %for.inc, !dbg !4994

for.inc:                                          ; preds = %if.end12
  %40 = load i32, i32* %i, align 4, !dbg !5005
  %inc = add i32 %40, 1, !dbg !5005
  store i32 %inc, i32* %i, align 4, !dbg !5005
  br label %for.cond, !dbg !5006, !llvm.loop !5007

for.end:                                          ; preds = %for.cond
  %41 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5009
  %ctl_reg = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %41, i32 0, i32 11, !dbg !5010
  %42 = load i32, i32* %ctl_reg, align 8, !dbg !5011
  %xor = xor i32 %42, 1, !dbg !5011
  store i32 %xor, i32* %ctl_reg, align 8, !dbg !5011
  %43 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5012
  %ctl_reg13 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %43, i32 0, i32 11, !dbg !5013
  %44 = load i32, i32* %ctl_reg13, align 8, !dbg !5013
  %45 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5014
  %iaddr14 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %45, i32 0, i32 2, !dbg !5015
  %46 = load i32*, i32** %iaddr14, align 8, !dbg !5015
  %add.ptr15 = getelementptr i32, i32* %46, i64 6, !dbg !5016
  %47 = bitcast i32* %add.ptr15 to i8*, !dbg !5014
  call void @iowrite32(i32 %44, i8* %47) #11, !dbg !5017
  br label %if.end16, !dbg !5018

if.end16:                                         ; preds = %for.end, %if.end
  %48 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5019
  %regs_lock17 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %48, i32 0, i32 9, !dbg !5020
  store %struct.spinlock* %regs_lock17, %struct.spinlock** %lock.addr.i22, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5021, !srcloc !4956
  %49 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i22, align 8, !dbg !5022
  %50 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %49, i32 0, i32 0, !dbg !5022
  %rlock.i23 = bitcast %union.anon.3* %50 to %struct.raw_spinlock*, !dbg !5022
  %51 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5023
  %iaddr18 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %51, i32 0, i32 2, !dbg !5024
  %52 = load i32*, i32** %iaddr18, align 8, !dbg !5024
  %53 = bitcast i32* %52 to i8*, !dbg !5023
  %call19 = call i32 @ioread32(i8* %53) #11, !dbg !5025
  %54 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5026
  %counter = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %54, i32 0, i32 5, !dbg !5027
  store %struct.atomic_t* %counter, %struct.atomic_t** %v.addr.i, align 8
  %55 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5028
  %56 = bitcast %struct.atomic_t* %55 to i8*, !dbg !5028
  store i8* %56, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %57 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5029
  %58 = load i64, i64* %size.addr.i.i, align 8, !dbg !5030
  %conv.i.i = trunc i64 %58 to i32, !dbg !5030
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %57, i32 %conv.i.i) #14, !dbg !5031
  %59 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5032
  %60 = load i64, i64* %size.addr.i.i, align 8, !dbg !5032
  call void @kcsan_check_access(i8* %59, i64 %60, i32 7) #14, !dbg !5032
  %61 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5033
  store %struct.atomic_t* %61, %struct.atomic_t** %v.addr.i1.i, align 8
  %62 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5034
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %62, i32 0, i32 0, !dbg !5035
  call void asm sideeffect "incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #10, !dbg !5036, !srcloc !5037
  %63 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5038
  %wait = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %63, i32 0, i32 6, !dbg !5038
  call void @__wake_up(%struct.wait_queue_head* %wait, i32 1, i32 1, i8* null) #11, !dbg !5038
  store i32 1, i32* %retval, align 4, !dbg !5039
  br label %return, !dbg !5039

return:                                           ; preds = %if.end16, %if.then
  %64 = load i32, i32* %retval, align 4, !dbg !5040
  ret i32 %64, !dbg !5040
}

; Function Attrs: noredzone
declare dso_local i32 @cdev_add(%struct.cdev*, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !5041 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5045, metadata !DIExpression()), !dbg !5046
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5047
  %1 = ptrtoint i8* %0 to i64, !dbg !5047
  %2 = inttoptr i64 %1 to i8*, !dbg !5047
  %3 = ptrtoint i8* %2 to i64, !dbg !5047
  %cmp = icmp uge i64 %3, -4095, !dbg !5047
  %lnot = xor i1 %cmp, true, !dbg !5047
  %lnot1 = xor i1 %lnot, true, !dbg !5047
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5047
  %conv = sext i32 %lnot.ext to i64, !dbg !5047
  %tobool = icmp ne i64 %conv, 0, !dbg !5047
  ret i1 %tobool, !dbg !5048
}

; Function Attrs: noredzone
declare dso_local %struct.device* @device_create(%struct.class*, %struct.device*, i32, i8*, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci_set_drvdata(%struct.pci_dev* %pdev, i8* %data) #2 !dbg !5049 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5052, metadata !DIExpression()), !dbg !5053
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5054, metadata !DIExpression()), !dbg !5055
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5056
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !5057
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5058
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #11, !dbg !5059
  ret void, !dbg !5060
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local i8* @free_irq(i32, i8*) #1

; Function Attrs: noredzone
declare dso_local void @pci_iounmap(%struct.pci_dev*, i8*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noredzone
declare dso_local void @pci_release_regions(%struct.pci_dev*) #1

; Function Attrs: noredzone
declare dso_local void @pci_disable_device(%struct.pci_dev*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !5061 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5065, metadata !DIExpression()), !dbg !5070
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5072, metadata !DIExpression()), !dbg !5073
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5074, metadata !DIExpression()), !dbg !5075
  %0 = load i64, i64* %size.addr, align 8, !dbg !5076
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5078
  br i1 %1, label %if.then, label %if.end447, !dbg !5079

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5080
  %tobool = icmp ne i64 %2, 0, !dbg !5080
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5083

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5084
  br label %return, !dbg !5084

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5085
  %cmp = icmp ult i64 %3, 4096, !dbg !5087
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5088

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5089
  br label %return, !dbg !5089

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub = sub i64 %4, 1, !dbg !5090
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5090
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5090

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub4 = sub i64 %6, 1, !dbg !5090
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5090
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5090

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub6 = sub i64 %8, 1, !dbg !5090
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5090
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5090

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5090

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub9 = sub i64 %9, 1, !dbg !5090
  %and = and i64 %sub9, -9223372036854775808, !dbg !5090
  %tobool10 = icmp ne i64 %and, 0, !dbg !5090
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5090

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5090

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub13 = sub i64 %10, 1, !dbg !5090
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5090
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5090
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5090

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5090

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub18 = sub i64 %11, 1, !dbg !5090
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5090
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5090
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5090

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5090

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub23 = sub i64 %12, 1, !dbg !5090
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5090
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5090
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5090

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5090

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub28 = sub i64 %13, 1, !dbg !5090
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5090
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5090
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5090

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5090

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub33 = sub i64 %14, 1, !dbg !5090
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5090
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5090
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5090

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5090

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub38 = sub i64 %15, 1, !dbg !5090
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5090
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5090
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5090

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5090

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub43 = sub i64 %16, 1, !dbg !5090
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5090
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5090
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5090

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5090

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub48 = sub i64 %17, 1, !dbg !5090
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5090
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5090
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5090

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5090

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub53 = sub i64 %18, 1, !dbg !5090
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5090
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5090
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5090

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5090

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub58 = sub i64 %19, 1, !dbg !5090
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5090
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5090
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5090

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5090

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub63 = sub i64 %20, 1, !dbg !5090
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5090
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5090
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5090

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5090

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub68 = sub i64 %21, 1, !dbg !5090
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5090
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5090
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5090

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5090

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub73 = sub i64 %22, 1, !dbg !5090
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5090
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5090
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5090

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5090

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub78 = sub i64 %23, 1, !dbg !5090
  %and79 = and i64 %sub78, 562949953421312, !dbg !5090
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5090
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5090

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5090

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub83 = sub i64 %24, 1, !dbg !5090
  %and84 = and i64 %sub83, 281474976710656, !dbg !5090
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5090
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5090

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5090

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub88 = sub i64 %25, 1, !dbg !5090
  %and89 = and i64 %sub88, 140737488355328, !dbg !5090
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5090
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5090

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5090

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub93 = sub i64 %26, 1, !dbg !5090
  %and94 = and i64 %sub93, 70368744177664, !dbg !5090
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5090
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5090

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5090

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub98 = sub i64 %27, 1, !dbg !5090
  %and99 = and i64 %sub98, 35184372088832, !dbg !5090
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5090
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5090

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5090

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub103 = sub i64 %28, 1, !dbg !5090
  %and104 = and i64 %sub103, 17592186044416, !dbg !5090
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5090
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5090

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5090

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub108 = sub i64 %29, 1, !dbg !5090
  %and109 = and i64 %sub108, 8796093022208, !dbg !5090
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5090
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5090

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5090

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub113 = sub i64 %30, 1, !dbg !5090
  %and114 = and i64 %sub113, 4398046511104, !dbg !5090
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5090
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5090

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5090

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub118 = sub i64 %31, 1, !dbg !5090
  %and119 = and i64 %sub118, 2199023255552, !dbg !5090
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5090
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5090

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5090

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub123 = sub i64 %32, 1, !dbg !5090
  %and124 = and i64 %sub123, 1099511627776, !dbg !5090
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5090
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5090

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5090

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub128 = sub i64 %33, 1, !dbg !5090
  %and129 = and i64 %sub128, 549755813888, !dbg !5090
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5090
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5090

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5090

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub133 = sub i64 %34, 1, !dbg !5090
  %and134 = and i64 %sub133, 274877906944, !dbg !5090
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5090
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5090

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5090

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub138 = sub i64 %35, 1, !dbg !5090
  %and139 = and i64 %sub138, 137438953472, !dbg !5090
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5090
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5090

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5090

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub143 = sub i64 %36, 1, !dbg !5090
  %and144 = and i64 %sub143, 68719476736, !dbg !5090
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5090
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5090

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5090

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub148 = sub i64 %37, 1, !dbg !5090
  %and149 = and i64 %sub148, 34359738368, !dbg !5090
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5090
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5090

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5090

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub153 = sub i64 %38, 1, !dbg !5090
  %and154 = and i64 %sub153, 17179869184, !dbg !5090
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5090
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5090

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5090

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub158 = sub i64 %39, 1, !dbg !5090
  %and159 = and i64 %sub158, 8589934592, !dbg !5090
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5090
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5090

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5090

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub163 = sub i64 %40, 1, !dbg !5090
  %and164 = and i64 %sub163, 4294967296, !dbg !5090
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5090
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5090

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5090

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub168 = sub i64 %41, 1, !dbg !5090
  %and169 = and i64 %sub168, 2147483648, !dbg !5090
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5090
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5090

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5090

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub173 = sub i64 %42, 1, !dbg !5090
  %and174 = and i64 %sub173, 1073741824, !dbg !5090
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5090
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5090

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5090

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub178 = sub i64 %43, 1, !dbg !5090
  %and179 = and i64 %sub178, 536870912, !dbg !5090
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5090
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5090

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5090

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub183 = sub i64 %44, 1, !dbg !5090
  %and184 = and i64 %sub183, 268435456, !dbg !5090
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5090
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5090

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5090

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub188 = sub i64 %45, 1, !dbg !5090
  %and189 = and i64 %sub188, 134217728, !dbg !5090
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5090
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5090

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5090

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub193 = sub i64 %46, 1, !dbg !5090
  %and194 = and i64 %sub193, 67108864, !dbg !5090
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5090
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5090

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5090

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub198 = sub i64 %47, 1, !dbg !5090
  %and199 = and i64 %sub198, 33554432, !dbg !5090
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5090
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5090

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5090

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub203 = sub i64 %48, 1, !dbg !5090
  %and204 = and i64 %sub203, 16777216, !dbg !5090
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5090
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5090

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5090

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub208 = sub i64 %49, 1, !dbg !5090
  %and209 = and i64 %sub208, 8388608, !dbg !5090
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5090
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5090

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5090

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub213 = sub i64 %50, 1, !dbg !5090
  %and214 = and i64 %sub213, 4194304, !dbg !5090
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5090
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5090

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5090

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub218 = sub i64 %51, 1, !dbg !5090
  %and219 = and i64 %sub218, 2097152, !dbg !5090
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5090
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5090

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5090

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub223 = sub i64 %52, 1, !dbg !5090
  %and224 = and i64 %sub223, 1048576, !dbg !5090
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5090
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5090

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5090

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub228 = sub i64 %53, 1, !dbg !5090
  %and229 = and i64 %sub228, 524288, !dbg !5090
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5090
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5090

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5090

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub233 = sub i64 %54, 1, !dbg !5090
  %and234 = and i64 %sub233, 262144, !dbg !5090
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5090
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5090

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5090

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub238 = sub i64 %55, 1, !dbg !5090
  %and239 = and i64 %sub238, 131072, !dbg !5090
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5090
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5090

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5090

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub243 = sub i64 %56, 1, !dbg !5090
  %and244 = and i64 %sub243, 65536, !dbg !5090
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5090
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5090

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5090

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub248 = sub i64 %57, 1, !dbg !5090
  %and249 = and i64 %sub248, 32768, !dbg !5090
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5090
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5090

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5090

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub253 = sub i64 %58, 1, !dbg !5090
  %and254 = and i64 %sub253, 16384, !dbg !5090
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5090
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5090

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5090

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub258 = sub i64 %59, 1, !dbg !5090
  %and259 = and i64 %sub258, 8192, !dbg !5090
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5090
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5090

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5090

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub263 = sub i64 %60, 1, !dbg !5090
  %and264 = and i64 %sub263, 4096, !dbg !5090
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5090
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5090

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5090

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub268 = sub i64 %61, 1, !dbg !5090
  %and269 = and i64 %sub268, 2048, !dbg !5090
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5090
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5090

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5090

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub273 = sub i64 %62, 1, !dbg !5090
  %and274 = and i64 %sub273, 1024, !dbg !5090
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5090
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5090

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5090

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub278 = sub i64 %63, 1, !dbg !5090
  %and279 = and i64 %sub278, 512, !dbg !5090
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5090
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5090

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5090

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub283 = sub i64 %64, 1, !dbg !5090
  %and284 = and i64 %sub283, 256, !dbg !5090
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5090
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5090

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5090

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub288 = sub i64 %65, 1, !dbg !5090
  %and289 = and i64 %sub288, 128, !dbg !5090
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5090
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5090

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5090

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub293 = sub i64 %66, 1, !dbg !5090
  %and294 = and i64 %sub293, 64, !dbg !5090
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5090
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5090

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5090

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub298 = sub i64 %67, 1, !dbg !5090
  %and299 = and i64 %sub298, 32, !dbg !5090
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5090
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5090

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5090

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub303 = sub i64 %68, 1, !dbg !5090
  %and304 = and i64 %sub303, 16, !dbg !5090
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5090
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5090

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5090

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub308 = sub i64 %69, 1, !dbg !5090
  %and309 = and i64 %sub308, 8, !dbg !5090
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5090
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5090

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5090

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub313 = sub i64 %70, 1, !dbg !5090
  %and314 = and i64 %sub313, 4, !dbg !5090
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5090
  %71 = zext i1 %tobool315 to i64, !dbg !5090
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5090
  br label %cond.end, !dbg !5090

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5090
  br label %cond.end317, !dbg !5090

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5090
  br label %cond.end319, !dbg !5090

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5090
  br label %cond.end321, !dbg !5090

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5090
  br label %cond.end323, !dbg !5090

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5090
  br label %cond.end325, !dbg !5090

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5090
  br label %cond.end327, !dbg !5090

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5090
  br label %cond.end329, !dbg !5090

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5090
  br label %cond.end331, !dbg !5090

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5090
  br label %cond.end333, !dbg !5090

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5090
  br label %cond.end335, !dbg !5090

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5090
  br label %cond.end337, !dbg !5090

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5090
  br label %cond.end339, !dbg !5090

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5090
  br label %cond.end341, !dbg !5090

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5090
  br label %cond.end343, !dbg !5090

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5090
  br label %cond.end345, !dbg !5090

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5090
  br label %cond.end347, !dbg !5090

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5090
  br label %cond.end349, !dbg !5090

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5090
  br label %cond.end351, !dbg !5090

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5090
  br label %cond.end353, !dbg !5090

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5090
  br label %cond.end355, !dbg !5090

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5090
  br label %cond.end357, !dbg !5090

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5090
  br label %cond.end359, !dbg !5090

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5090
  br label %cond.end361, !dbg !5090

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5090
  br label %cond.end363, !dbg !5090

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5090
  br label %cond.end365, !dbg !5090

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5090
  br label %cond.end367, !dbg !5090

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5090
  br label %cond.end369, !dbg !5090

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5090
  br label %cond.end371, !dbg !5090

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5090
  br label %cond.end373, !dbg !5090

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5090
  br label %cond.end375, !dbg !5090

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5090
  br label %cond.end377, !dbg !5090

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5090
  br label %cond.end379, !dbg !5090

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5090
  br label %cond.end381, !dbg !5090

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5090
  br label %cond.end383, !dbg !5090

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5090
  br label %cond.end385, !dbg !5090

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5090
  br label %cond.end387, !dbg !5090

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5090
  br label %cond.end389, !dbg !5090

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5090
  br label %cond.end391, !dbg !5090

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5090
  br label %cond.end393, !dbg !5090

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5090
  br label %cond.end395, !dbg !5090

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5090
  br label %cond.end397, !dbg !5090

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5090
  br label %cond.end399, !dbg !5090

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5090
  br label %cond.end401, !dbg !5090

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5090
  br label %cond.end403, !dbg !5090

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5090
  br label %cond.end405, !dbg !5090

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5090
  br label %cond.end407, !dbg !5090

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5090
  br label %cond.end409, !dbg !5090

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5090
  br label %cond.end411, !dbg !5090

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5090
  br label %cond.end413, !dbg !5090

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5090
  br label %cond.end415, !dbg !5090

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5090
  br label %cond.end417, !dbg !5090

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5090
  br label %cond.end419, !dbg !5090

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5090
  br label %cond.end421, !dbg !5090

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5090
  br label %cond.end423, !dbg !5090

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5090
  br label %cond.end425, !dbg !5090

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5090
  br label %cond.end427, !dbg !5090

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5090
  br label %cond.end429, !dbg !5090

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5090
  br label %cond.end431, !dbg !5090

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5090
  br label %cond.end433, !dbg !5090

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5090
  br label %cond.end435, !dbg !5090

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5090
  br label %cond.end437, !dbg !5090

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5090
  br label %cond.end440, !dbg !5090

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5090

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5090
  br label %cond.end444, !dbg !5090

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5090
  %sub443 = sub i64 %72, 1, !dbg !5090
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !5090
  br label %cond.end444, !dbg !5090

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5090
  %sub446 = sub i32 %cond445, 12, !dbg !5091
  %add = add i32 %sub446, 1, !dbg !5092
  store i32 %add, i32* %retval, align 4, !dbg !5093
  br label %return, !dbg !5093

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5094
  %dec = add i64 %73, -1, !dbg !5094
  store i64 %dec, i64* %size.addr, align 8, !dbg !5094
  %74 = load i64, i64* %size.addr, align 8, !dbg !5095
  %shr = lshr i64 %74, 12, !dbg !5095
  store i64 %shr, i64* %size.addr, align 8, !dbg !5095
  %75 = load i64, i64* %size.addr, align 8, !dbg !5096
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5073
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5097
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5098
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #9, !dbg !5097, !srcloc !5099
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5097
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5100
  %add.i = add i32 %79, 1, !dbg !5101
  store i32 %add.i, i32* %retval, align 4, !dbg !5102
  br label %return, !dbg !5102

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5103
  ret i32 %80, !dbg !5103
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !5104 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5065, metadata !DIExpression()), !dbg !5108
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5072, metadata !DIExpression()), !dbg !5110
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5111, metadata !DIExpression()), !dbg !5112
  %0 = load i64, i64* %n.addr, align 8, !dbg !5113
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5110
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5114
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5115
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #9, !dbg !5114, !srcloc !5099
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5114
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5116
  %add.i = add i32 %4, 1, !dbg !5117
  %sub = sub i32 %add.i, 1, !dbg !5118
  ret i32 %sub, !dbg !5119
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5120 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5124, metadata !DIExpression()), !dbg !5125
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5126, metadata !DIExpression()), !dbg !5127
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5128, metadata !DIExpression()), !dbg !5129
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5130, metadata !DIExpression()), !dbg !5131
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5132
  ret i8* %0, !dbg !5133
}

; Function Attrs: noredzone
declare dso_local i64 @no_llseek(%struct.file*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @phantom_poll(%struct.file* %file, %struct.poll_table_struct* %wait) #2 !dbg !5134 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5139, metadata !DIExpression()), !dbg !5145
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5151, metadata !DIExpression()), !dbg !5153
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5155, metadata !DIExpression()), !dbg !5156
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5157, metadata !DIExpression()), !dbg !5158
  %file.addr = alloca %struct.file*, align 8
  %wait.addr = alloca %struct.poll_table_struct*, align 8
  %dev = alloca %struct.phantom_device*, align 8
  %mask = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5159, metadata !DIExpression()), !dbg !5160
  store %struct.poll_table_struct* %wait, %struct.poll_table_struct** %wait.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.poll_table_struct** %wait.addr, metadata !5161, metadata !DIExpression()), !dbg !5162
  call void @llvm.dbg.declare(metadata %struct.phantom_device** %dev, metadata !5163, metadata !DIExpression()), !dbg !5164
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5165
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !5166
  %1 = load i8*, i8** %private_data, align 8, !dbg !5166
  %2 = bitcast i8* %1 to %struct.phantom_device*, !dbg !5165
  store %struct.phantom_device* %2, %struct.phantom_device** %dev, align 8, !dbg !5164
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !5167, metadata !DIExpression()), !dbg !5168
  store i32 0, i32* %mask, align 4, !dbg !5168
  store i32 0, i32* %tmp, align 4, !dbg !5169
  %3 = load i32, i32* %tmp, align 4, !dbg !5172
  %4 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5173
  %5 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5174
  %wait1 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %5, i32 0, i32 6, !dbg !5175
  %6 = load %struct.poll_table_struct*, %struct.poll_table_struct** %wait.addr, align 8, !dbg !5176
  call void @poll_wait(%struct.file* %4, %struct.wait_queue_head* %wait1, %struct.poll_table_struct* %6) #11, !dbg !5177
  %7 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5178
  %status = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %7, i32 0, i32 4, !dbg !5179
  %8 = load i64, i64* %status, align 8, !dbg !5179
  %and = and i64 %8, 1, !dbg !5180
  %tobool = icmp ne i64 %and, 0, !dbg !5180
  br i1 %tobool, label %if.else, label %if.then, !dbg !5181

if.then:                                          ; preds = %entry
  store i32 8, i32* %mask, align 4, !dbg !5182
  br label %if.end4, !dbg !5183

if.else:                                          ; preds = %entry
  %9 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5184
  %counter = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %9, i32 0, i32 5, !dbg !5185
  store %struct.atomic_t* %counter, %struct.atomic_t** %v.addr.i, align 8
  %10 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5186
  %11 = bitcast %struct.atomic_t* %10 to i8*, !dbg !5186
  store i8* %11, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %12 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5187
  %13 = load i64, i64* %size.addr.i.i, align 8, !dbg !5188
  %conv.i.i = trunc i64 %13 to i32, !dbg !5188
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %12, i32 %conv.i.i) #14, !dbg !5189
  %14 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5190
  %15 = load i64, i64* %size.addr.i.i, align 8, !dbg !5190
  call void @kcsan_check_access(i8* %14, i64 %15, i32 4) #14, !dbg !5190
  %16 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5191
  store %struct.atomic_t* %16, %struct.atomic_t** %v.addr.i1.i, align 8
  %17 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5192
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %17, i32 0, i32 0, !dbg !5192
  %18 = load volatile i32, i32* %counter.i.i, align 4, !dbg !5192
  %tobool2 = icmp ne i32 %18, 0, !dbg !5193
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !5194

if.then3:                                         ; preds = %if.else
  store i32 65, i32* %mask, align 4, !dbg !5195
  br label %if.end, !dbg !5196

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  store i32 0, i32* %tmp5, align 4, !dbg !5197
  %19 = load i32, i32* %tmp5, align 4, !dbg !5200
  %20 = load i32, i32* %mask, align 4, !dbg !5201
  ret i32 %20, !dbg !5202
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @phantom_ioctl(%struct.file* %file, i32 %cmd, i64 %arg) #2 !dbg !5203 {
entry:
  %lock.addr.i530 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i530, metadata !5204, metadata !DIExpression()), !dbg !5208
  %flags.addr.i531 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i531, metadata !5211, metadata !DIExpression()), !dbg !5212
  %tmp.i532 = alloca i32, align 4
  %tmp8.i533 = alloca i32, align 4
  %lock.addr.i525 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i525, metadata !5204, metadata !DIExpression()), !dbg !5213
  %flags.addr.i526 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i526, metadata !5211, metadata !DIExpression()), !dbg !5217
  %tmp.i527 = alloca i32, align 4
  %tmp8.i528 = alloca i32, align 4
  %lock.addr.i523 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i523, metadata !4308, metadata !DIExpression()), !dbg !5218
  %retval.i.i472 = alloca i1, align 1
  %addr.addr.i.i473 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i473, metadata !5225, metadata !DIExpression()), !dbg !5230
  %bytes.addr.i.i474 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i474, metadata !5240, metadata !DIExpression()), !dbg !5241
  %is_source.addr.i.i475 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i475, metadata !5242, metadata !DIExpression()), !dbg !5243
  %sz.i.i476 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i476, metadata !5244, metadata !DIExpression()), !dbg !5245
  %__ret_warn_on.i.i477 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i477, metadata !5246, metadata !DIExpression()), !dbg !5249
  %tmp.i.i478 = alloca i64, align 8
  %to.addr.i479 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i479, metadata !5250, metadata !DIExpression()), !dbg !5251
  %from.addr.i480 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i480, metadata !5252, metadata !DIExpression()), !dbg !5253
  %n.addr.i481 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i481, metadata !5254, metadata !DIExpression()), !dbg !5255
  %lock.addr.i467 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i467, metadata !5204, metadata !DIExpression()), !dbg !5256
  %flags.addr.i468 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i468, metadata !5211, metadata !DIExpression()), !dbg !5258
  %tmp.i469 = alloca i32, align 4
  %tmp8.i470 = alloca i32, align 4
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5259, metadata !DIExpression()), !dbg !5263
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5267, metadata !DIExpression()), !dbg !5268
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5269, metadata !DIExpression()), !dbg !5271
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5273, metadata !DIExpression()), !dbg !5274
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5275, metadata !DIExpression()), !dbg !5276
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5277, metadata !DIExpression()), !dbg !5278
  %lock.addr.i464 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i464, metadata !4308, metadata !DIExpression()), !dbg !5279
  %retval.i.i413 = alloca i1, align 1
  %addr.addr.i.i414 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i414, metadata !5225, metadata !DIExpression()), !dbg !5286
  %bytes.addr.i.i415 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i415, metadata !5240, metadata !DIExpression()), !dbg !5292
  %is_source.addr.i.i416 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i416, metadata !5242, metadata !DIExpression()), !dbg !5293
  %sz.i.i417 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i417, metadata !5244, metadata !DIExpression()), !dbg !5294
  %__ret_warn_on.i.i418 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i418, metadata !5246, metadata !DIExpression()), !dbg !5295
  %tmp.i.i419 = alloca i64, align 8
  %to.addr.i420 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i420, metadata !5296, metadata !DIExpression()), !dbg !5297
  %from.addr.i421 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i421, metadata !5298, metadata !DIExpression()), !dbg !5299
  %n.addr.i422 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i422, metadata !5300, metadata !DIExpression()), !dbg !5301
  %retval.i.i363 = alloca i1, align 1
  %addr.addr.i.i364 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i364, metadata !5225, metadata !DIExpression()), !dbg !5302
  %bytes.addr.i.i365 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i365, metadata !5240, metadata !DIExpression()), !dbg !5306
  %is_source.addr.i.i366 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i366, metadata !5242, metadata !DIExpression()), !dbg !5307
  %sz.i.i367 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i367, metadata !5244, metadata !DIExpression()), !dbg !5308
  %__ret_warn_on.i.i368 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i368, metadata !5246, metadata !DIExpression()), !dbg !5309
  %tmp.i.i369 = alloca i64, align 8
  %to.addr.i370 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i370, metadata !5250, metadata !DIExpression()), !dbg !5310
  %from.addr.i371 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i371, metadata !5252, metadata !DIExpression()), !dbg !5311
  %n.addr.i372 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i372, metadata !5254, metadata !DIExpression()), !dbg !5312
  %retval.i.i312 = alloca i1, align 1
  %addr.addr.i.i313 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i313, metadata !5225, metadata !DIExpression()), !dbg !5313
  %bytes.addr.i.i314 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i314, metadata !5240, metadata !DIExpression()), !dbg !5317
  %is_source.addr.i.i315 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i315, metadata !5242, metadata !DIExpression()), !dbg !5318
  %sz.i.i316 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i316, metadata !5244, metadata !DIExpression()), !dbg !5319
  %__ret_warn_on.i.i317 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i317, metadata !5246, metadata !DIExpression()), !dbg !5320
  %tmp.i.i318 = alloca i64, align 8
  %to.addr.i319 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i319, metadata !5296, metadata !DIExpression()), !dbg !5321
  %from.addr.i320 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i320, metadata !5298, metadata !DIExpression()), !dbg !5322
  %n.addr.i321 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i321, metadata !5300, metadata !DIExpression()), !dbg !5323
  %lock.addr.i307 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i307, metadata !5204, metadata !DIExpression()), !dbg !5324
  %flags.addr.i308 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i308, metadata !5211, metadata !DIExpression()), !dbg !5326
  %tmp.i309 = alloca i32, align 4
  %tmp8.i310 = alloca i32, align 4
  %lock.addr.i305 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i305, metadata !4308, metadata !DIExpression()), !dbg !5327
  %retval.i.i254 = alloca i1, align 1
  %addr.addr.i.i255 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i255, metadata !5225, metadata !DIExpression()), !dbg !5334
  %bytes.addr.i.i256 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i256, metadata !5240, metadata !DIExpression()), !dbg !5338
  %is_source.addr.i.i257 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i257, metadata !5242, metadata !DIExpression()), !dbg !5339
  %sz.i.i258 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i258, metadata !5244, metadata !DIExpression()), !dbg !5340
  %__ret_warn_on.i.i259 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i259, metadata !5246, metadata !DIExpression()), !dbg !5341
  %tmp.i.i260 = alloca i64, align 8
  %to.addr.i261 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i261, metadata !5296, metadata !DIExpression()), !dbg !5342
  %from.addr.i262 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i262, metadata !5298, metadata !DIExpression()), !dbg !5343
  %n.addr.i263 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i263, metadata !5300, metadata !DIExpression()), !dbg !5344
  %lock.addr.i249 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i249, metadata !5204, metadata !DIExpression()), !dbg !5345
  %flags.addr.i250 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i250, metadata !5211, metadata !DIExpression()), !dbg !5347
  %tmp.i251 = alloca i32, align 4
  %tmp8.i252 = alloca i32, align 4
  %lock.addr.i247 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i247, metadata !5204, metadata !DIExpression()), !dbg !5348
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5211, metadata !DIExpression()), !dbg !5352
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4308, metadata !DIExpression()), !dbg !5353
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !5225, metadata !DIExpression()), !dbg !5360
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !5240, metadata !DIExpression()), !dbg !5364
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !5242, metadata !DIExpression()), !dbg !5365
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !5244, metadata !DIExpression()), !dbg !5366
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !5246, metadata !DIExpression()), !dbg !5367
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !5296, metadata !DIExpression()), !dbg !5368
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !5298, metadata !DIExpression()), !dbg !5369
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !5300, metadata !DIExpression()), !dbg !5370
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %dev = alloca %struct.phantom_device*, align 8
  %rs = alloca %struct.phm_regs, align 4
  %r = alloca %struct.phm_reg, align 4
  %argp = alloca i8*, align 8
  %flags = alloca i64, align 8
  %i = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %tmp72 = alloca i32, align 4
  %__dummy75 = alloca i64, align 8
  %__dummy276 = alloca i64, align 8
  %tmp79 = alloca i32, align 4
  %__dummy83 = alloca i64, align 8
  %__dummy284 = alloca i64, align 8
  %tmp87 = alloca i32, align 4
  %m = alloca i32, align 4
  %__UNIQUE_ID___x236 = alloca i32, align 4
  %__UNIQUE_ID___y237 = alloca i32, align 4
  %tmp104 = alloca i32, align 4
  %m141 = alloca i32, align 4
  %__UNIQUE_ID___x238 = alloca i32, align 4
  %__UNIQUE_ID___y239 = alloca i32, align 4
  %tmp147 = alloca i32, align 4
  %tmp154 = alloca i32, align 4
  %__dummy157 = alloca i64, align 8
  %__dummy2158 = alloca i64, align 8
  %tmp161 = alloca i32, align 4
  %__dummy165 = alloca i64, align 8
  %__dummy2166 = alloca i64, align 8
  %tmp169 = alloca i32, align 4
  %__dummy212 = alloca i64, align 8
  %__dummy2213 = alloca i64, align 8
  %tmp216 = alloca i32, align 4
  %__dummy220 = alloca i64, align 8
  %__dummy2221 = alloca i64, align 8
  %tmp224 = alloca i32, align 4
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5371, metadata !DIExpression()), !dbg !5372
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !5373, metadata !DIExpression()), !dbg !5374
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !5375, metadata !DIExpression()), !dbg !5376
  call void @llvm.dbg.declare(metadata %struct.phantom_device** %dev, metadata !5377, metadata !DIExpression()), !dbg !5378
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5379
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !5380
  %1 = load i8*, i8** %private_data, align 8, !dbg !5380
  %2 = bitcast i8* %1 to %struct.phantom_device*, !dbg !5379
  store %struct.phantom_device* %2, %struct.phantom_device** %dev, align 8, !dbg !5378
  call void @llvm.dbg.declare(metadata %struct.phm_regs* %rs, metadata !5381, metadata !DIExpression()), !dbg !5382
  call void @llvm.dbg.declare(metadata %struct.phm_reg* %r, metadata !5383, metadata !DIExpression()), !dbg !5388
  call void @llvm.dbg.declare(metadata i8** %argp, metadata !5389, metadata !DIExpression()), !dbg !5390
  %3 = load i64, i64* %arg.addr, align 8, !dbg !5391
  %4 = inttoptr i64 %3 to i8*, !dbg !5392
  store i8* %4, i8** %argp, align 8, !dbg !5390
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5393, metadata !DIExpression()), !dbg !5394
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5395, metadata !DIExpression()), !dbg !5396
  %5 = load i32, i32* %cmd.addr, align 4, !dbg !5397
  switch i32 %5, label %sw.default [
    i32 1074294790, label %sw.bb
    i32 1074294785, label %sw.bb
    i32 1076391944, label %sw.bb67
    i32 1074294787, label %sw.bb67
    i32 -1073188859, label %sw.bb120
    i32 -1073188864, label %sw.bb120
    i32 -1071091705, label %sw.bb140
    i32 -1073188862, label %sw.bb140
    i32 28676, label %sw.bb209
  ], !dbg !5398

sw.bb:                                            ; preds = %entry, %entry
  %6 = bitcast %struct.phm_reg* %r to i8*, !dbg !5399
  %7 = load i8*, i8** %argp, align 8, !dbg !5400
  store i8* %6, i8** %to.addr.i, align 8
  store i8* %7, i8** %from.addr.i, align 8
  store i64 8, i64* %n.addr.i, align 8
  %8 = load i8*, i8** %to.addr.i, align 8, !dbg !5401
  %9 = load i64, i64* %n.addr.i, align 8, !dbg !5401
  store i8* %8, i8** %addr.addr.i.i, align 8
  store i64 %9, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !5366
  %10 = load i32, i32* %sz.i.i, align 4, !dbg !5402
  %cmp.i.i = icmp sge i32 %10, 0, !dbg !5402
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !5402

land.rhs.i.i:                                     ; preds = %sw.bb
  %11 = load i32, i32* %sz.i.i, align 4, !dbg !5402
  %conv.i.i = sext i32 %11 to i64, !dbg !5402
  %12 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5402
  %cmp1.i.i = icmp ult i64 %conv.i.i, %12, !dbg !5402
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %sw.bb
  %13 = phi i1 [ false, %sw.bb ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !5404
  %lnot.i.i = xor i1 %13, true, !dbg !5402
  %lnot.ext.i.i = zext i1 %13 to i32, !dbg !5402
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5402
  br i1 %13, label %if.then.i.i, label %if.end10.i.i, !dbg !5405

if.then.i.i:                                      ; preds = %land.end.i.i
  %14 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5406
  %15 = call i1 @llvm.is.constant.i64(i64 %14) #10, !dbg !5409
  br i1 %15, label %if.else.i.i, label %if.then5.i.i, !dbg !5410

if.then5.i.i:                                     ; preds = %if.then.i.i
  %16 = load i32, i32* %sz.i.i, align 4, !dbg !5411
  %17 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5412
  call void @copy_overflow(i32 %16, i64 %17) #14, !dbg !5413
  br label %if.end9.i.i, !dbg !5413

if.else.i.i:                                      ; preds = %if.then.i.i
  %18 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5414
  %tobool6.i.i = trunc i8 %18 to i1, !dbg !5414
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !5416

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #14, !dbg !5417
  br label %if.end.i.i, !dbg !5417

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #14, !dbg !5418
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5419
  br label %check_copy_size.exit.i, !dbg !5419

if.end10.i.i:                                     ; preds = %land.end.i.i
  %19 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5367
  %cmp11.i.i = icmp ugt i64 %19, 2147483647, !dbg !5367
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !5367
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !5367
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !5367
  %20 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5420
  %tobool17.i.i = icmp ne i32 %20, 0, !dbg !5420
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !5420
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !5420
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !5420
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !5367

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 150, i32 2307, i64 12) #10, !dbg !5422, !srcloc !5425
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #10, !dbg !5426, !srcloc !5428
  br label %if.end31.i.i, !dbg !5429

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %21 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5367
  %tobool32.i.i = icmp ne i32 %21, 0, !dbg !5367
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !5367
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !5367
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !5367
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !5420
  %22 = load i64, i64* %tmp.i.i, align 8, !dbg !5367
  %tobool38.i.i = icmp ne i64 %22, 0, !dbg !5430
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !5431

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5432
  br label %check_copy_size.exit.i, !dbg !5432

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %23 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !5433
  %24 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5434
  %25 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5435
  %tobool41.i.i = trunc i8 %25 to i1, !dbg !5435
  call void @check_object_size(i8* %23, i64 %24, i1 zeroext %tobool41.i.i) #14, !dbg !5436
  store i1 true, i1* %retval.i.i, align 1, !dbg !5437
  br label %check_copy_size.exit.i, !dbg !5437

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %26 = load i1, i1* %retval.i.i, align 1, !dbg !5438
  %lnot.i = xor i1 %26, true, !dbg !5401
  %lnot.ext.i = zext i1 %26 to i32, !dbg !5401
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !5401
  br i1 %26, label %if.then.i, label %copy_from_user.exit, !dbg !5439

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %27 = load i8*, i8** %to.addr.i, align 8, !dbg !5440
  %28 = load i8*, i8** %from.addr.i, align 8, !dbg !5441
  %29 = load i64, i64* %n.addr.i, align 8, !dbg !5442
  %call2.i = call i64 @_copy_from_user(i8* %27, i8* %28, i64 %29) #14, !dbg !5443
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !5444
  br label %copy_from_user.exit, !dbg !5445

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i
  %30 = load i64, i64* %n.addr.i, align 8, !dbg !5446
  %tobool = icmp ne i64 %30, 0, !dbg !5447
  br i1 %tobool, label %if.then, label %if.end, !dbg !5448

if.then:                                          ; preds = %copy_from_user.exit
  store i64 -14, i64* %retval, align 8, !dbg !5449
  br label %return, !dbg !5449

if.end:                                           ; preds = %copy_from_user.exit
  %reg = getelementptr inbounds %struct.phm_reg, %struct.phm_reg* %r, i32 0, i32 0, !dbg !5450
  %31 = load i32, i32* %reg, align 4, !dbg !5450
  %cmp = icmp ugt i32 %31, 7, !dbg !5452
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5453

if.then1:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !5454
  br label %return, !dbg !5454

if.end2:                                          ; preds = %if.end
  br label %do.body, !dbg !5455

do.body:                                          ; preds = %if.end2
  br label %do.body3, !dbg !5456

do.body3:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5457, metadata !DIExpression()), !dbg !5459
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5460, metadata !DIExpression()), !dbg !5459
  %cmp4 = icmp eq i64* %__dummy, %__dummy2, !dbg !5459
  %conv = zext i1 %cmp4 to i32, !dbg !5459
  store i32 1, i32* %tmp, align 4, !dbg !5459
  %32 = load i32, i32* %tmp, align 4, !dbg !5459
  br label %do.body5, !dbg !5461

do.body5:                                         ; preds = %do.body3
  br label %do.body6, !dbg !5462

do.body6:                                         ; preds = %do.body5
  br label %do.body7, !dbg !5463

do.body7:                                         ; preds = %do.body6
  call void @llvm.dbg.declare(metadata i64* %__dummy8, metadata !5465, metadata !DIExpression()), !dbg !5468
  call void @llvm.dbg.declare(metadata i64* %__dummy29, metadata !5469, metadata !DIExpression()), !dbg !5468
  %cmp10 = icmp eq i64* %__dummy8, %__dummy29, !dbg !5468
  %conv11 = zext i1 %cmp10 to i32, !dbg !5468
  store i32 1, i32* %tmp12, align 4, !dbg !5468
  %33 = load i32, i32* %tmp12, align 4, !dbg !5468
  %call13 = call i64 @arch_local_irq_save() #11, !dbg !5470
  store i64 %call13, i64* %flags, align 8, !dbg !5470
  br label %do.end, !dbg !5470

do.end:                                           ; preds = %do.body7
  br label %do.end14, !dbg !5463

do.end14:                                         ; preds = %do.end
  br label %do.body15, !dbg !5462

do.body15:                                        ; preds = %do.end14
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5471, !srcloc !5472
  br label %do.body16, !dbg !5471

do.body16:                                        ; preds = %do.body15
  %34 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5473
  %regs_lock = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %34, i32 0, i32 9, !dbg !5473
  store %struct.spinlock* %regs_lock, %struct.spinlock** %lock.addr.i, align 8
  %35 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5474
  %36 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %35, i32 0, i32 0, !dbg !5475
  %rlock.i = bitcast %union.anon.3* %36 to %struct.raw_spinlock*, !dbg !5475
  br label %do.end18, !dbg !5473

do.end18:                                         ; preds = %do.body16
  br label %do.end19, !dbg !5471

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !5462

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !5461

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !5456

do.end22:                                         ; preds = %do.end21
  %reg23 = getelementptr inbounds %struct.phm_reg, %struct.phm_reg* %r, i32 0, i32 0, !dbg !5476
  %37 = load i32, i32* %reg23, align 4, !dbg !5476
  %cmp24 = icmp eq i32 %37, 6, !dbg !5477
  br i1 %cmp24, label %land.lhs.true, label %if.end32, !dbg !5478

land.lhs.true:                                    ; preds = %do.end22
  %value = getelementptr inbounds %struct.phm_reg, %struct.phm_reg* %r, i32 0, i32 1, !dbg !5479
  %38 = load i32, i32* %value, align 4, !dbg !5479
  %and = and i32 %38, 16, !dbg !5480
  %tobool26 = icmp ne i32 %and, 0, !dbg !5480
  br i1 %tobool26, label %land.lhs.true27, label %if.end32, !dbg !5481

land.lhs.true27:                                  ; preds = %land.lhs.true
  %39 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5482
  %40 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5483
  %status = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %40, i32 0, i32 4, !dbg !5484
  %41 = load i64, i64* %status, align 8, !dbg !5484
  %or = or i64 %41, 1, !dbg !5485
  %call28 = call i32 @phantom_status(%struct.phantom_device* %39, i64 %or) #11, !dbg !5486
  %tobool29 = icmp ne i32 %call28, 0, !dbg !5486
  br i1 %tobool29, label %if.then30, label %if.end32, !dbg !5487

if.then30:                                        ; preds = %land.lhs.true27
  %42 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5488
  %regs_lock31 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %42, i32 0, i32 9, !dbg !5489
  %43 = load i64, i64* %flags, align 8, !dbg !5490
  store %struct.spinlock* %regs_lock31, %struct.spinlock** %lock.addr.i247, align 8
  store i64 %43, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !164, metadata !5491, metadata !DIExpression()) #10, !dbg !5494
  call void @llvm.dbg.declare(metadata !164, metadata !5495, metadata !DIExpression()) #10, !dbg !5494
  store i32 1, i32* %tmp.i, align 4, !dbg !5494
  %44 = load i32, i32* %tmp.i, align 4, !dbg !5494
  call void @llvm.dbg.declare(metadata !164, metadata !5496, metadata !DIExpression()) #10, !dbg !5501
  call void @llvm.dbg.declare(metadata !164, metadata !5502, metadata !DIExpression()) #10, !dbg !5501
  store i32 1, i32* %tmp8.i, align 4, !dbg !5501
  %45 = load i32, i32* %tmp8.i, align 4, !dbg !5501
  %46 = load i64, i64* %flags.addr.i, align 8, !dbg !5503
  call void @arch_local_irq_restore(i64 %46) #14, !dbg !5503
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5504, !srcloc !5506
  %47 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i247, align 8, !dbg !5507
  %48 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %47, i32 0, i32 0, !dbg !5507
  %rlock.i248 = bitcast %union.anon.3* %48 to %struct.raw_spinlock*, !dbg !5507
  store i64 -19, i64* %retval, align 8, !dbg !5509
  br label %return, !dbg !5509

if.end32:                                         ; preds = %land.lhs.true27, %land.lhs.true, %do.end22
  store i32 0, i32* %tmp33, align 4, !dbg !5510
  %49 = load i32, i32* %tmp33, align 4, !dbg !5513
  %reg34 = getelementptr inbounds %struct.phm_reg, %struct.phm_reg* %r, i32 0, i32 0, !dbg !5514
  %50 = load i32, i32* %reg34, align 4, !dbg !5514
  %cmp35 = icmp eq i32 %50, 6, !dbg !5516
  br i1 %cmp35, label %land.lhs.true37, label %if.end49, !dbg !5517

land.lhs.true37:                                  ; preds = %if.end32
  %51 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5518
  %status38 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %51, i32 0, i32 4, !dbg !5519
  %52 = load i64, i64* %status38, align 8, !dbg !5519
  %and39 = and i64 %52, 2, !dbg !5520
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5520
  br i1 %tobool40, label %if.then41, label %if.end49, !dbg !5521

if.then41:                                        ; preds = %land.lhs.true37
  %value42 = getelementptr inbounds %struct.phm_reg, %struct.phm_reg* %r, i32 0, i32 1, !dbg !5522
  %53 = load i32, i32* %value42, align 4, !dbg !5524
  %and43 = and i32 %53, -2, !dbg !5524
  store i32 %and43, i32* %value42, align 4, !dbg !5524
  %54 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5525
  %ctl_reg = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %54, i32 0, i32 11, !dbg !5526
  %55 = load i32, i32* %ctl_reg, align 8, !dbg !5526
  %and44 = and i32 %55, 1, !dbg !5527
  %value45 = getelementptr inbounds %struct.phm_reg, %struct.phm_reg* %r, i32 0, i32 1, !dbg !5528
  %56 = load i32, i32* %value45, align 4, !dbg !5529
  %or46 = or i32 %56, %and44, !dbg !5529
  store i32 %or46, i32* %value45, align 4, !dbg !5529
  %value47 = getelementptr inbounds %struct.phm_reg, %struct.phm_reg* %r, i32 0, i32 1, !dbg !5530
  %57 = load i32, i32* %value47, align 4, !dbg !5530
  %58 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5531
  %ctl_reg48 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %58, i32 0, i32 11, !dbg !5532
  store i32 %57, i32* %ctl_reg48, align 8, !dbg !5533
  br label %if.end49, !dbg !5534

if.end49:                                         ; preds = %if.then41, %land.lhs.true37, %if.end32
  %value50 = getelementptr inbounds %struct.phm_reg, %struct.phm_reg* %r, i32 0, i32 1, !dbg !5535
  %59 = load i32, i32* %value50, align 4, !dbg !5535
  %60 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5536
  %iaddr = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %60, i32 0, i32 2, !dbg !5537
  %61 = load i32*, i32** %iaddr, align 8, !dbg !5537
  %reg51 = getelementptr inbounds %struct.phm_reg, %struct.phm_reg* %r, i32 0, i32 0, !dbg !5538
  %62 = load i32, i32* %reg51, align 4, !dbg !5538
  %idx.ext = zext i32 %62 to i64, !dbg !5539
  %add.ptr = getelementptr i32, i32* %61, i64 %idx.ext, !dbg !5539
  %63 = bitcast i32* %add.ptr to i8*, !dbg !5536
  call void @iowrite32(i32 %59, i8* %63) #11, !dbg !5540
  %64 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5541
  %iaddr52 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %64, i32 0, i32 2, !dbg !5542
  %65 = load i32*, i32** %iaddr52, align 8, !dbg !5542
  %66 = bitcast i32* %65 to i8*, !dbg !5541
  %call53 = call i32 @ioread32(i8* %66) #11, !dbg !5543
  %reg54 = getelementptr inbounds %struct.phm_reg, %struct.phm_reg* %r, i32 0, i32 0, !dbg !5544
  %67 = load i32, i32* %reg54, align 4, !dbg !5544
  %cmp55 = icmp eq i32 %67, 6, !dbg !5546
  br i1 %cmp55, label %land.lhs.true57, label %if.end65, !dbg !5547

land.lhs.true57:                                  ; preds = %if.end49
  %value58 = getelementptr inbounds %struct.phm_reg, %struct.phm_reg* %r, i32 0, i32 1, !dbg !5548
  %68 = load i32, i32* %value58, align 4, !dbg !5548
  %and59 = and i32 %68, 16, !dbg !5549
  %tobool60 = icmp ne i32 %and59, 0, !dbg !5549
  br i1 %tobool60, label %if.end65, label %if.then61, !dbg !5550

if.then61:                                        ; preds = %land.lhs.true57
  %69 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5551
  %70 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5552
  %status62 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %70, i32 0, i32 4, !dbg !5553
  %71 = load i64, i64* %status62, align 8, !dbg !5553
  %and63 = and i64 %71, -2, !dbg !5554
  %call64 = call i32 @phantom_status(%struct.phantom_device* %69, i64 %and63) #11, !dbg !5555
  br label %if.end65, !dbg !5555

if.end65:                                         ; preds = %if.then61, %land.lhs.true57, %if.end49
  %72 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5556
  %regs_lock66 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %72, i32 0, i32 9, !dbg !5557
  %73 = load i64, i64* %flags, align 8, !dbg !5558
  store %struct.spinlock* %regs_lock66, %struct.spinlock** %lock.addr.i249, align 8
  store i64 %73, i64* %flags.addr.i250, align 8
  call void @llvm.dbg.declare(metadata !164, metadata !5491, metadata !DIExpression()) #10, !dbg !5559
  call void @llvm.dbg.declare(metadata !164, metadata !5495, metadata !DIExpression()) #10, !dbg !5559
  store i32 1, i32* %tmp.i251, align 4, !dbg !5559
  %74 = load i32, i32* %tmp.i251, align 4, !dbg !5559
  call void @llvm.dbg.declare(metadata !164, metadata !5496, metadata !DIExpression()) #10, !dbg !5560
  call void @llvm.dbg.declare(metadata !164, metadata !5502, metadata !DIExpression()) #10, !dbg !5560
  store i32 1, i32* %tmp8.i252, align 4, !dbg !5560
  %75 = load i32, i32* %tmp8.i252, align 4, !dbg !5560
  %76 = load i64, i64* %flags.addr.i250, align 8, !dbg !5561
  call void @arch_local_irq_restore(i64 %76) #14, !dbg !5561
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5562, !srcloc !5506
  %77 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i249, align 8, !dbg !5563
  %78 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %77, i32 0, i32 0, !dbg !5563
  %rlock.i253 = bitcast %union.anon.3* %78 to %struct.raw_spinlock*, !dbg !5563
  br label %sw.epilog, !dbg !5564

sw.bb67:                                          ; preds = %entry, %entry
  %79 = bitcast %struct.phm_regs* %rs to i8*, !dbg !5565
  %80 = load i8*, i8** %argp, align 8, !dbg !5566
  store i8* %79, i8** %to.addr.i261, align 8
  store i8* %80, i8** %from.addr.i262, align 8
  store i64 40, i64* %n.addr.i263, align 8
  %81 = load i8*, i8** %to.addr.i261, align 8, !dbg !5567
  %82 = load i64, i64* %n.addr.i263, align 8, !dbg !5567
  store i8* %81, i8** %addr.addr.i.i255, align 8
  store i64 %82, i64* %bytes.addr.i.i256, align 8
  store i8 0, i8* %is_source.addr.i.i257, align 1
  store i32 -1, i32* %sz.i.i258, align 4, !dbg !5340
  %83 = load i32, i32* %sz.i.i258, align 4, !dbg !5568
  %cmp.i.i264 = icmp sge i32 %83, 0, !dbg !5568
  br i1 %cmp.i.i264, label %land.rhs.i.i267, label %land.end.i.i271, !dbg !5568

land.rhs.i.i267:                                  ; preds = %sw.bb67
  %84 = load i32, i32* %sz.i.i258, align 4, !dbg !5568
  %conv.i.i265 = sext i32 %84 to i64, !dbg !5568
  %85 = load i64, i64* %bytes.addr.i.i256, align 8, !dbg !5568
  %cmp1.i.i266 = icmp ult i64 %conv.i.i265, %85, !dbg !5568
  br label %land.end.i.i271

land.end.i.i271:                                  ; preds = %land.rhs.i.i267, %sw.bb67
  %86 = phi i1 [ false, %sw.bb67 ], [ %cmp1.i.i266, %land.rhs.i.i267 ], !dbg !5569
  %lnot.i.i268 = xor i1 %86, true, !dbg !5568
  %lnot.ext.i.i269 = zext i1 %86 to i32, !dbg !5568
  %conv4.i.i270 = sext i32 %lnot.ext.i.i269 to i64, !dbg !5568
  br i1 %86, label %if.then.i.i272, label %if.end10.i.i287, !dbg !5570

if.then.i.i272:                                   ; preds = %land.end.i.i271
  %87 = load i64, i64* %bytes.addr.i.i256, align 8, !dbg !5571
  %88 = call i1 @llvm.is.constant.i64(i64 %87) #10, !dbg !5572
  br i1 %88, label %if.else.i.i275, label %if.then5.i.i273, !dbg !5573

if.then5.i.i273:                                  ; preds = %if.then.i.i272
  %89 = load i32, i32* %sz.i.i258, align 4, !dbg !5574
  %90 = load i64, i64* %bytes.addr.i.i256, align 8, !dbg !5575
  call void @copy_overflow(i32 %89, i64 %90) #14, !dbg !5576
  br label %if.end9.i.i279, !dbg !5576

if.else.i.i275:                                   ; preds = %if.then.i.i272
  %91 = load i8, i8* %is_source.addr.i.i257, align 1, !dbg !5577
  %tobool6.i.i274 = trunc i8 %91 to i1, !dbg !5577
  br i1 %tobool6.i.i274, label %if.then7.i.i276, label %if.else8.i.i277, !dbg !5578

if.then7.i.i276:                                  ; preds = %if.else.i.i275
  call void @__bad_copy_from() #14, !dbg !5579
  br label %if.end.i.i278, !dbg !5579

if.else8.i.i277:                                  ; preds = %if.else.i.i275
  call void @__bad_copy_to() #14, !dbg !5580
  br label %if.end.i.i278

if.end.i.i278:                                    ; preds = %if.else8.i.i277, %if.then7.i.i276
  br label %if.end9.i.i279

if.end9.i.i279:                                   ; preds = %if.end.i.i278, %if.then5.i.i273
  store i1 false, i1* %retval.i.i254, align 1, !dbg !5581
  br label %check_copy_size.exit.i301, !dbg !5581

if.end10.i.i287:                                  ; preds = %land.end.i.i271
  %92 = load i64, i64* %bytes.addr.i.i256, align 8, !dbg !5341
  %cmp11.i.i280 = icmp ugt i64 %92, 2147483647, !dbg !5341
  %lnot13.i.i281 = xor i1 %cmp11.i.i280, true, !dbg !5341
  %lnot.ext16.i.i282 = zext i1 %cmp11.i.i280 to i32, !dbg !5341
  store i32 %lnot.ext16.i.i282, i32* %__ret_warn_on.i.i259, align 4, !dbg !5341
  %93 = load i32, i32* %__ret_warn_on.i.i259, align 4, !dbg !5582
  %tobool17.i.i283 = icmp ne i32 %93, 0, !dbg !5582
  %lnot18.i.i284 = xor i1 %tobool17.i.i283, true, !dbg !5582
  %lnot.ext21.i.i285 = zext i1 %tobool17.i.i283 to i32, !dbg !5582
  %conv22.i.i286 = sext i32 %lnot.ext21.i.i285 to i64, !dbg !5582
  br i1 %tobool17.i.i283, label %if.then24.i.i288, label %if.end31.i.i294, !dbg !5341

if.then24.i.i288:                                 ; preds = %if.end10.i.i287
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 150, i32 2307, i64 12) #10, !dbg !5583, !srcloc !5425
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #10, !dbg !5584, !srcloc !5428
  br label %if.end31.i.i294, !dbg !5585

if.end31.i.i294:                                  ; preds = %if.then24.i.i288, %if.end10.i.i287
  %94 = load i32, i32* %__ret_warn_on.i.i259, align 4, !dbg !5341
  %tobool32.i.i289 = icmp ne i32 %94, 0, !dbg !5341
  %lnot33.i.i290 = xor i1 %tobool32.i.i289, true, !dbg !5341
  %lnot.ext36.i.i291 = zext i1 %tobool32.i.i289 to i32, !dbg !5341
  %conv37.i.i292 = sext i32 %lnot.ext36.i.i291 to i64, !dbg !5341
  store i64 %conv37.i.i292, i64* %tmp.i.i260, align 8, !dbg !5582
  %95 = load i64, i64* %tmp.i.i260, align 8, !dbg !5341
  %tobool38.i.i293 = icmp ne i64 %95, 0, !dbg !5586
  br i1 %tobool38.i.i293, label %if.then39.i.i295, label %if.end40.i.i297, !dbg !5587

if.then39.i.i295:                                 ; preds = %if.end31.i.i294
  store i1 false, i1* %retval.i.i254, align 1, !dbg !5588
  br label %check_copy_size.exit.i301, !dbg !5588

if.end40.i.i297:                                  ; preds = %if.end31.i.i294
  %96 = load i8*, i8** %addr.addr.i.i255, align 8, !dbg !5589
  %97 = load i64, i64* %bytes.addr.i.i256, align 8, !dbg !5590
  %98 = load i8, i8* %is_source.addr.i.i257, align 1, !dbg !5591
  %tobool41.i.i296 = trunc i8 %98 to i1, !dbg !5591
  call void @check_object_size(i8* %96, i64 %97, i1 zeroext %tobool41.i.i296) #14, !dbg !5592
  store i1 true, i1* %retval.i.i254, align 1, !dbg !5593
  br label %check_copy_size.exit.i301, !dbg !5593

check_copy_size.exit.i301:                        ; preds = %if.end40.i.i297, %if.then39.i.i295, %if.end9.i.i279
  %99 = load i1, i1* %retval.i.i254, align 1, !dbg !5594
  %lnot.i298 = xor i1 %99, true, !dbg !5567
  %lnot.ext.i299 = zext i1 %99 to i32, !dbg !5567
  %conv.i300 = sext i32 %lnot.ext.i299 to i64, !dbg !5567
  br i1 %99, label %if.then.i303, label %copy_from_user.exit304, !dbg !5595

if.then.i303:                                     ; preds = %check_copy_size.exit.i301
  %100 = load i8*, i8** %to.addr.i261, align 8, !dbg !5596
  %101 = load i8*, i8** %from.addr.i262, align 8, !dbg !5597
  %102 = load i64, i64* %n.addr.i263, align 8, !dbg !5598
  %call2.i302 = call i64 @_copy_from_user(i8* %100, i8* %101, i64 %102) #14, !dbg !5599
  store i64 %call2.i302, i64* %n.addr.i263, align 8, !dbg !5600
  br label %copy_from_user.exit304, !dbg !5601

copy_from_user.exit304:                           ; preds = %check_copy_size.exit.i301, %if.then.i303
  %103 = load i64, i64* %n.addr.i263, align 8, !dbg !5602
  %tobool69 = icmp ne i64 %103, 0, !dbg !5603
  br i1 %tobool69, label %if.then70, label %if.end71, !dbg !5604

if.then70:                                        ; preds = %copy_from_user.exit304
  store i64 -14, i64* %retval, align 8, !dbg !5605
  br label %return, !dbg !5605

if.end71:                                         ; preds = %copy_from_user.exit304
  store i32 0, i32* %tmp72, align 4, !dbg !5606
  %104 = load i32, i32* %tmp72, align 4, !dbg !5609
  br label %do.body73, !dbg !5610

do.body73:                                        ; preds = %if.end71
  br label %do.body74, !dbg !5611

do.body74:                                        ; preds = %do.body73
  call void @llvm.dbg.declare(metadata i64* %__dummy75, metadata !5612, metadata !DIExpression()), !dbg !5614
  call void @llvm.dbg.declare(metadata i64* %__dummy276, metadata !5615, metadata !DIExpression()), !dbg !5614
  %cmp77 = icmp eq i64* %__dummy75, %__dummy276, !dbg !5614
  %conv78 = zext i1 %cmp77 to i32, !dbg !5614
  store i32 1, i32* %tmp79, align 4, !dbg !5614
  %105 = load i32, i32* %tmp79, align 4, !dbg !5614
  br label %do.body80, !dbg !5616

do.body80:                                        ; preds = %do.body74
  br label %do.body81, !dbg !5617

do.body81:                                        ; preds = %do.body80
  br label %do.body82, !dbg !5618

do.body82:                                        ; preds = %do.body81
  call void @llvm.dbg.declare(metadata i64* %__dummy83, metadata !5620, metadata !DIExpression()), !dbg !5623
  call void @llvm.dbg.declare(metadata i64* %__dummy284, metadata !5624, metadata !DIExpression()), !dbg !5623
  %cmp85 = icmp eq i64* %__dummy83, %__dummy284, !dbg !5623
  %conv86 = zext i1 %cmp85 to i32, !dbg !5623
  store i32 1, i32* %tmp87, align 4, !dbg !5623
  %106 = load i32, i32* %tmp87, align 4, !dbg !5623
  %call88 = call i64 @arch_local_irq_save() #11, !dbg !5625
  store i64 %call88, i64* %flags, align 8, !dbg !5625
  br label %do.end89, !dbg !5625

do.end89:                                         ; preds = %do.body82
  br label %do.end90, !dbg !5618

do.end90:                                         ; preds = %do.end89
  br label %do.body91, !dbg !5617

do.body91:                                        ; preds = %do.end90
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5626, !srcloc !5627
  br label %do.body92, !dbg !5626

do.body92:                                        ; preds = %do.body91
  %107 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5628
  %regs_lock93 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %107, i32 0, i32 9, !dbg !5628
  store %struct.spinlock* %regs_lock93, %struct.spinlock** %lock.addr.i305, align 8
  %108 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i305, align 8, !dbg !5629
  %109 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %108, i32 0, i32 0, !dbg !5630
  %rlock.i306 = bitcast %union.anon.3* %109 to %struct.raw_spinlock*, !dbg !5630
  br label %do.end95, !dbg !5628

do.end95:                                         ; preds = %do.body92
  br label %do.end96, !dbg !5626

do.end96:                                         ; preds = %do.end95
  br label %do.end97, !dbg !5617

do.end97:                                         ; preds = %do.end96
  br label %do.end98, !dbg !5616

do.end98:                                         ; preds = %do.end97
  br label %do.end99, !dbg !5611

do.end99:                                         ; preds = %do.end98
  %110 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5631
  %status100 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %110, i32 0, i32 4, !dbg !5633
  %111 = load i64, i64* %status100, align 8, !dbg !5633
  %and101 = and i64 %111, 2, !dbg !5634
  %tobool102 = icmp ne i64 %and101, 0, !dbg !5634
  br i1 %tobool102, label %if.then103, label %if.else, !dbg !5635

if.then103:                                       ; preds = %do.end99
  %112 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5636
  %oregs = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %112, i32 0, i32 10, !dbg !5637
  %113 = bitcast %struct.phm_regs* %oregs to i8*, !dbg !5638
  %114 = bitcast %struct.phm_regs* %rs to i8*, !dbg !5638
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %113, i8* align 4 %114, i64 40, i1 false), !dbg !5638
  br label %if.end118, !dbg !5638

if.else:                                          ; preds = %do.end99
  call void @llvm.dbg.declare(metadata i32* %m, metadata !5639, metadata !DIExpression()), !dbg !5641
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x236, metadata !5642, metadata !DIExpression()), !dbg !5644
  %count = getelementptr inbounds %struct.phm_regs, %struct.phm_regs* %rs, i32 0, i32 0, !dbg !5644
  %115 = load i32, i32* %count, align 4, !dbg !5644
  store i32 %115, i32* %__UNIQUE_ID___x236, align 4, !dbg !5644
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y237, metadata !5645, metadata !DIExpression()), !dbg !5644
  store i32 8, i32* %__UNIQUE_ID___y237, align 4, !dbg !5644
  %116 = load i32, i32* %__UNIQUE_ID___x236, align 4, !dbg !5644
  %117 = load i32, i32* %__UNIQUE_ID___y237, align 4, !dbg !5644
  %cmp105 = icmp ult i32 %116, %117, !dbg !5644
  br i1 %cmp105, label %cond.true, label %cond.false, !dbg !5644

cond.true:                                        ; preds = %if.else
  %118 = load i32, i32* %__UNIQUE_ID___x236, align 4, !dbg !5644
  br label %cond.end, !dbg !5644

cond.false:                                       ; preds = %if.else
  %119 = load i32, i32* %__UNIQUE_ID___y237, align 4, !dbg !5644
  br label %cond.end, !dbg !5644

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %118, %cond.true ], [ %119, %cond.false ], !dbg !5644
  store i32 %cond, i32* %tmp104, align 4, !dbg !5644
  %120 = load i32, i32* %tmp104, align 4, !dbg !5644
  store i32 %120, i32* %m, align 4, !dbg !5641
  store i32 0, i32* %i, align 4, !dbg !5646
  br label %for.cond, !dbg !5648

for.cond:                                         ; preds = %for.inc, %cond.end
  %121 = load i32, i32* %i, align 4, !dbg !5649
  %122 = load i32, i32* %m, align 4, !dbg !5651
  %cmp107 = icmp ult i32 %121, %122, !dbg !5652
  br i1 %cmp107, label %for.body, label %for.end, !dbg !5653

for.body:                                         ; preds = %for.cond
  %mask = getelementptr inbounds %struct.phm_regs, %struct.phm_regs* %rs, i32 0, i32 1, !dbg !5654
  %123 = load i32, i32* %mask, align 4, !dbg !5654
  %conv109 = zext i32 %123 to i64, !dbg !5656
  %124 = load i32, i32* %i, align 4, !dbg !5657
  %sh_prom = zext i32 %124 to i64, !dbg !5657
  %shl = shl i64 1, %sh_prom, !dbg !5657
  %and110 = and i64 %conv109, %shl, !dbg !5658
  %tobool111 = icmp ne i64 %and110, 0, !dbg !5658
  br i1 %tobool111, label %if.then112, label %if.end115, !dbg !5659

if.then112:                                       ; preds = %for.body
  %values = getelementptr inbounds %struct.phm_regs, %struct.phm_regs* %rs, i32 0, i32 2, !dbg !5660
  %125 = load i32, i32* %i, align 4, !dbg !5661
  %idxprom = zext i32 %125 to i64, !dbg !5662
  %arrayidx = getelementptr [8 x i32], [8 x i32]* %values, i64 0, i64 %idxprom, !dbg !5662
  %126 = load i32, i32* %arrayidx, align 4, !dbg !5662
  %127 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5663
  %oaddr = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %127, i32 0, i32 3, !dbg !5664
  %128 = load i32*, i32** %oaddr, align 8, !dbg !5664
  %129 = load i32, i32* %i, align 4, !dbg !5665
  %idx.ext113 = zext i32 %129 to i64, !dbg !5666
  %add.ptr114 = getelementptr i32, i32* %128, i64 %idx.ext113, !dbg !5666
  %130 = bitcast i32* %add.ptr114 to i8*, !dbg !5663
  call void @iowrite32(i32 %126, i8* %130) #11, !dbg !5667
  br label %if.end115, !dbg !5667

if.end115:                                        ; preds = %if.then112, %for.body
  br label %for.inc, !dbg !5657

for.inc:                                          ; preds = %if.end115
  %131 = load i32, i32* %i, align 4, !dbg !5668
  %inc = add i32 %131, 1, !dbg !5668
  store i32 %inc, i32* %i, align 4, !dbg !5668
  br label %for.cond, !dbg !5669, !llvm.loop !5670

for.end:                                          ; preds = %for.cond
  %132 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5672
  %iaddr116 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %132, i32 0, i32 2, !dbg !5673
  %133 = load i32*, i32** %iaddr116, align 8, !dbg !5673
  %134 = bitcast i32* %133 to i8*, !dbg !5672
  %call117 = call i32 @ioread32(i8* %134) #11, !dbg !5674
  br label %if.end118

if.end118:                                        ; preds = %for.end, %if.then103
  %135 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5675
  %regs_lock119 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %135, i32 0, i32 9, !dbg !5676
  %136 = load i64, i64* %flags, align 8, !dbg !5677
  store %struct.spinlock* %regs_lock119, %struct.spinlock** %lock.addr.i307, align 8
  store i64 %136, i64* %flags.addr.i308, align 8
  call void @llvm.dbg.declare(metadata !164, metadata !5491, metadata !DIExpression()) #10, !dbg !5678
  call void @llvm.dbg.declare(metadata !164, metadata !5495, metadata !DIExpression()) #10, !dbg !5678
  store i32 1, i32* %tmp.i309, align 4, !dbg !5678
  %137 = load i32, i32* %tmp.i309, align 4, !dbg !5678
  call void @llvm.dbg.declare(metadata !164, metadata !5496, metadata !DIExpression()) #10, !dbg !5679
  call void @llvm.dbg.declare(metadata !164, metadata !5502, metadata !DIExpression()) #10, !dbg !5679
  store i32 1, i32* %tmp8.i310, align 4, !dbg !5679
  %138 = load i32, i32* %tmp8.i310, align 4, !dbg !5679
  %139 = load i64, i64* %flags.addr.i308, align 8, !dbg !5680
  call void @arch_local_irq_restore(i64 %139) #14, !dbg !5680
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5681, !srcloc !5506
  %140 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i307, align 8, !dbg !5682
  %141 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %140, i32 0, i32 0, !dbg !5682
  %rlock.i311 = bitcast %union.anon.3* %141 to %struct.raw_spinlock*, !dbg !5682
  br label %sw.epilog, !dbg !5683

sw.bb120:                                         ; preds = %entry, %entry
  %142 = bitcast %struct.phm_reg* %r to i8*, !dbg !5684
  %143 = load i8*, i8** %argp, align 8, !dbg !5685
  store i8* %142, i8** %to.addr.i319, align 8
  store i8* %143, i8** %from.addr.i320, align 8
  store i64 8, i64* %n.addr.i321, align 8
  %144 = load i8*, i8** %to.addr.i319, align 8, !dbg !5686
  %145 = load i64, i64* %n.addr.i321, align 8, !dbg !5686
  store i8* %144, i8** %addr.addr.i.i313, align 8
  store i64 %145, i64* %bytes.addr.i.i314, align 8
  store i8 0, i8* %is_source.addr.i.i315, align 1
  store i32 -1, i32* %sz.i.i316, align 4, !dbg !5319
  %146 = load i32, i32* %sz.i.i316, align 4, !dbg !5687
  %cmp.i.i322 = icmp sge i32 %146, 0, !dbg !5687
  br i1 %cmp.i.i322, label %land.rhs.i.i325, label %land.end.i.i329, !dbg !5687

land.rhs.i.i325:                                  ; preds = %sw.bb120
  %147 = load i32, i32* %sz.i.i316, align 4, !dbg !5687
  %conv.i.i323 = sext i32 %147 to i64, !dbg !5687
  %148 = load i64, i64* %bytes.addr.i.i314, align 8, !dbg !5687
  %cmp1.i.i324 = icmp ult i64 %conv.i.i323, %148, !dbg !5687
  br label %land.end.i.i329

land.end.i.i329:                                  ; preds = %land.rhs.i.i325, %sw.bb120
  %149 = phi i1 [ false, %sw.bb120 ], [ %cmp1.i.i324, %land.rhs.i.i325 ], !dbg !5688
  %lnot.i.i326 = xor i1 %149, true, !dbg !5687
  %lnot.ext.i.i327 = zext i1 %149 to i32, !dbg !5687
  %conv4.i.i328 = sext i32 %lnot.ext.i.i327 to i64, !dbg !5687
  br i1 %149, label %if.then.i.i330, label %if.end10.i.i345, !dbg !5689

if.then.i.i330:                                   ; preds = %land.end.i.i329
  %150 = load i64, i64* %bytes.addr.i.i314, align 8, !dbg !5690
  %151 = call i1 @llvm.is.constant.i64(i64 %150) #10, !dbg !5691
  br i1 %151, label %if.else.i.i333, label %if.then5.i.i331, !dbg !5692

if.then5.i.i331:                                  ; preds = %if.then.i.i330
  %152 = load i32, i32* %sz.i.i316, align 4, !dbg !5693
  %153 = load i64, i64* %bytes.addr.i.i314, align 8, !dbg !5694
  call void @copy_overflow(i32 %152, i64 %153) #14, !dbg !5695
  br label %if.end9.i.i337, !dbg !5695

if.else.i.i333:                                   ; preds = %if.then.i.i330
  %154 = load i8, i8* %is_source.addr.i.i315, align 1, !dbg !5696
  %tobool6.i.i332 = trunc i8 %154 to i1, !dbg !5696
  br i1 %tobool6.i.i332, label %if.then7.i.i334, label %if.else8.i.i335, !dbg !5697

if.then7.i.i334:                                  ; preds = %if.else.i.i333
  call void @__bad_copy_from() #14, !dbg !5698
  br label %if.end.i.i336, !dbg !5698

if.else8.i.i335:                                  ; preds = %if.else.i.i333
  call void @__bad_copy_to() #14, !dbg !5699
  br label %if.end.i.i336

if.end.i.i336:                                    ; preds = %if.else8.i.i335, %if.then7.i.i334
  br label %if.end9.i.i337

if.end9.i.i337:                                   ; preds = %if.end.i.i336, %if.then5.i.i331
  store i1 false, i1* %retval.i.i312, align 1, !dbg !5700
  br label %check_copy_size.exit.i359, !dbg !5700

if.end10.i.i345:                                  ; preds = %land.end.i.i329
  %155 = load i64, i64* %bytes.addr.i.i314, align 8, !dbg !5320
  %cmp11.i.i338 = icmp ugt i64 %155, 2147483647, !dbg !5320
  %lnot13.i.i339 = xor i1 %cmp11.i.i338, true, !dbg !5320
  %lnot.ext16.i.i340 = zext i1 %cmp11.i.i338 to i32, !dbg !5320
  store i32 %lnot.ext16.i.i340, i32* %__ret_warn_on.i.i317, align 4, !dbg !5320
  %156 = load i32, i32* %__ret_warn_on.i.i317, align 4, !dbg !5701
  %tobool17.i.i341 = icmp ne i32 %156, 0, !dbg !5701
  %lnot18.i.i342 = xor i1 %tobool17.i.i341, true, !dbg !5701
  %lnot.ext21.i.i343 = zext i1 %tobool17.i.i341 to i32, !dbg !5701
  %conv22.i.i344 = sext i32 %lnot.ext21.i.i343 to i64, !dbg !5701
  br i1 %tobool17.i.i341, label %if.then24.i.i346, label %if.end31.i.i352, !dbg !5320

if.then24.i.i346:                                 ; preds = %if.end10.i.i345
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 150, i32 2307, i64 12) #10, !dbg !5702, !srcloc !5425
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #10, !dbg !5703, !srcloc !5428
  br label %if.end31.i.i352, !dbg !5704

if.end31.i.i352:                                  ; preds = %if.then24.i.i346, %if.end10.i.i345
  %157 = load i32, i32* %__ret_warn_on.i.i317, align 4, !dbg !5320
  %tobool32.i.i347 = icmp ne i32 %157, 0, !dbg !5320
  %lnot33.i.i348 = xor i1 %tobool32.i.i347, true, !dbg !5320
  %lnot.ext36.i.i349 = zext i1 %tobool32.i.i347 to i32, !dbg !5320
  %conv37.i.i350 = sext i32 %lnot.ext36.i.i349 to i64, !dbg !5320
  store i64 %conv37.i.i350, i64* %tmp.i.i318, align 8, !dbg !5701
  %158 = load i64, i64* %tmp.i.i318, align 8, !dbg !5320
  %tobool38.i.i351 = icmp ne i64 %158, 0, !dbg !5705
  br i1 %tobool38.i.i351, label %if.then39.i.i353, label %if.end40.i.i355, !dbg !5706

if.then39.i.i353:                                 ; preds = %if.end31.i.i352
  store i1 false, i1* %retval.i.i312, align 1, !dbg !5707
  br label %check_copy_size.exit.i359, !dbg !5707

if.end40.i.i355:                                  ; preds = %if.end31.i.i352
  %159 = load i8*, i8** %addr.addr.i.i313, align 8, !dbg !5708
  %160 = load i64, i64* %bytes.addr.i.i314, align 8, !dbg !5709
  %161 = load i8, i8* %is_source.addr.i.i315, align 1, !dbg !5710
  %tobool41.i.i354 = trunc i8 %161 to i1, !dbg !5710
  call void @check_object_size(i8* %159, i64 %160, i1 zeroext %tobool41.i.i354) #14, !dbg !5711
  store i1 true, i1* %retval.i.i312, align 1, !dbg !5712
  br label %check_copy_size.exit.i359, !dbg !5712

check_copy_size.exit.i359:                        ; preds = %if.end40.i.i355, %if.then39.i.i353, %if.end9.i.i337
  %162 = load i1, i1* %retval.i.i312, align 1, !dbg !5713
  %lnot.i356 = xor i1 %162, true, !dbg !5686
  %lnot.ext.i357 = zext i1 %162 to i32, !dbg !5686
  %conv.i358 = sext i32 %lnot.ext.i357 to i64, !dbg !5686
  br i1 %162, label %if.then.i361, label %copy_from_user.exit362, !dbg !5714

if.then.i361:                                     ; preds = %check_copy_size.exit.i359
  %163 = load i8*, i8** %to.addr.i319, align 8, !dbg !5715
  %164 = load i8*, i8** %from.addr.i320, align 8, !dbg !5716
  %165 = load i64, i64* %n.addr.i321, align 8, !dbg !5717
  %call2.i360 = call i64 @_copy_from_user(i8* %163, i8* %164, i64 %165) #14, !dbg !5718
  store i64 %call2.i360, i64* %n.addr.i321, align 8, !dbg !5719
  br label %copy_from_user.exit362, !dbg !5720

copy_from_user.exit362:                           ; preds = %check_copy_size.exit.i359, %if.then.i361
  %166 = load i64, i64* %n.addr.i321, align 8, !dbg !5721
  %tobool122 = icmp ne i64 %166, 0, !dbg !5722
  br i1 %tobool122, label %if.then123, label %if.end124, !dbg !5723

if.then123:                                       ; preds = %copy_from_user.exit362
  store i64 -14, i64* %retval, align 8, !dbg !5724
  br label %return, !dbg !5724

if.end124:                                        ; preds = %copy_from_user.exit362
  %reg125 = getelementptr inbounds %struct.phm_reg, %struct.phm_reg* %r, i32 0, i32 0, !dbg !5725
  %167 = load i32, i32* %reg125, align 4, !dbg !5725
  %cmp126 = icmp ugt i32 %167, 7, !dbg !5727
  br i1 %cmp126, label %if.then128, label %if.end129, !dbg !5728

if.then128:                                       ; preds = %if.end124
  store i64 -22, i64* %retval, align 8, !dbg !5729
  br label %return, !dbg !5729

if.end129:                                        ; preds = %if.end124
  %168 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5730
  %iaddr130 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %168, i32 0, i32 2, !dbg !5731
  %169 = load i32*, i32** %iaddr130, align 8, !dbg !5731
  %reg131 = getelementptr inbounds %struct.phm_reg, %struct.phm_reg* %r, i32 0, i32 0, !dbg !5732
  %170 = load i32, i32* %reg131, align 4, !dbg !5732
  %idx.ext132 = zext i32 %170 to i64, !dbg !5733
  %add.ptr133 = getelementptr i32, i32* %169, i64 %idx.ext132, !dbg !5733
  %171 = bitcast i32* %add.ptr133 to i8*, !dbg !5730
  %call134 = call i32 @ioread32(i8* %171) #11, !dbg !5734
  %value135 = getelementptr inbounds %struct.phm_reg, %struct.phm_reg* %r, i32 0, i32 1, !dbg !5735
  store i32 %call134, i32* %value135, align 4, !dbg !5736
  %172 = load i8*, i8** %argp, align 8, !dbg !5737
  %173 = bitcast %struct.phm_reg* %r to i8*, !dbg !5738
  store i8* %172, i8** %to.addr.i370, align 8
  store i8* %173, i8** %from.addr.i371, align 8
  store i64 8, i64* %n.addr.i372, align 8
  %174 = load i8*, i8** %from.addr.i371, align 8, !dbg !5739
  %175 = load i64, i64* %n.addr.i372, align 8, !dbg !5739
  store i8* %174, i8** %addr.addr.i.i364, align 8
  store i64 %175, i64* %bytes.addr.i.i365, align 8
  store i8 1, i8* %is_source.addr.i.i366, align 1
  store i32 -1, i32* %sz.i.i367, align 4, !dbg !5308
  %176 = load i32, i32* %sz.i.i367, align 4, !dbg !5740
  %cmp.i.i373 = icmp sge i32 %176, 0, !dbg !5740
  br i1 %cmp.i.i373, label %land.rhs.i.i376, label %land.end.i.i380, !dbg !5740

land.rhs.i.i376:                                  ; preds = %if.end129
  %177 = load i32, i32* %sz.i.i367, align 4, !dbg !5740
  %conv.i.i374 = sext i32 %177 to i64, !dbg !5740
  %178 = load i64, i64* %bytes.addr.i.i365, align 8, !dbg !5740
  %cmp1.i.i375 = icmp ult i64 %conv.i.i374, %178, !dbg !5740
  br label %land.end.i.i380

land.end.i.i380:                                  ; preds = %land.rhs.i.i376, %if.end129
  %179 = phi i1 [ false, %if.end129 ], [ %cmp1.i.i375, %land.rhs.i.i376 ], !dbg !5741
  %lnot.i.i377 = xor i1 %179, true, !dbg !5740
  %lnot.ext.i.i378 = zext i1 %179 to i32, !dbg !5740
  %conv4.i.i379 = sext i32 %lnot.ext.i.i378 to i64, !dbg !5740
  br i1 %179, label %if.then.i.i381, label %if.end10.i.i396, !dbg !5742

if.then.i.i381:                                   ; preds = %land.end.i.i380
  %180 = load i64, i64* %bytes.addr.i.i365, align 8, !dbg !5743
  %181 = call i1 @llvm.is.constant.i64(i64 %180) #10, !dbg !5744
  br i1 %181, label %if.else.i.i384, label %if.then5.i.i382, !dbg !5745

if.then5.i.i382:                                  ; preds = %if.then.i.i381
  %182 = load i32, i32* %sz.i.i367, align 4, !dbg !5746
  %183 = load i64, i64* %bytes.addr.i.i365, align 8, !dbg !5747
  call void @copy_overflow(i32 %182, i64 %183) #14, !dbg !5748
  br label %if.end9.i.i388, !dbg !5748

if.else.i.i384:                                   ; preds = %if.then.i.i381
  %184 = load i8, i8* %is_source.addr.i.i366, align 1, !dbg !5749
  %tobool6.i.i383 = trunc i8 %184 to i1, !dbg !5749
  br i1 %tobool6.i.i383, label %if.then7.i.i385, label %if.else8.i.i386, !dbg !5750

if.then7.i.i385:                                  ; preds = %if.else.i.i384
  call void @__bad_copy_from() #14, !dbg !5751
  br label %if.end.i.i387, !dbg !5751

if.else8.i.i386:                                  ; preds = %if.else.i.i384
  call void @__bad_copy_to() #14, !dbg !5752
  br label %if.end.i.i387

if.end.i.i387:                                    ; preds = %if.else8.i.i386, %if.then7.i.i385
  br label %if.end9.i.i388

if.end9.i.i388:                                   ; preds = %if.end.i.i387, %if.then5.i.i382
  store i1 false, i1* %retval.i.i363, align 1, !dbg !5753
  br label %check_copy_size.exit.i410, !dbg !5753

if.end10.i.i396:                                  ; preds = %land.end.i.i380
  %185 = load i64, i64* %bytes.addr.i.i365, align 8, !dbg !5309
  %cmp11.i.i389 = icmp ugt i64 %185, 2147483647, !dbg !5309
  %lnot13.i.i390 = xor i1 %cmp11.i.i389, true, !dbg !5309
  %lnot.ext16.i.i391 = zext i1 %cmp11.i.i389 to i32, !dbg !5309
  store i32 %lnot.ext16.i.i391, i32* %__ret_warn_on.i.i368, align 4, !dbg !5309
  %186 = load i32, i32* %__ret_warn_on.i.i368, align 4, !dbg !5754
  %tobool17.i.i392 = icmp ne i32 %186, 0, !dbg !5754
  %lnot18.i.i393 = xor i1 %tobool17.i.i392, true, !dbg !5754
  %lnot.ext21.i.i394 = zext i1 %tobool17.i.i392 to i32, !dbg !5754
  %conv22.i.i395 = sext i32 %lnot.ext21.i.i394 to i64, !dbg !5754
  br i1 %tobool17.i.i392, label %if.then24.i.i397, label %if.end31.i.i403, !dbg !5309

if.then24.i.i397:                                 ; preds = %if.end10.i.i396
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 150, i32 2307, i64 12) #10, !dbg !5755, !srcloc !5425
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #10, !dbg !5756, !srcloc !5428
  br label %if.end31.i.i403, !dbg !5757

if.end31.i.i403:                                  ; preds = %if.then24.i.i397, %if.end10.i.i396
  %187 = load i32, i32* %__ret_warn_on.i.i368, align 4, !dbg !5309
  %tobool32.i.i398 = icmp ne i32 %187, 0, !dbg !5309
  %lnot33.i.i399 = xor i1 %tobool32.i.i398, true, !dbg !5309
  %lnot.ext36.i.i400 = zext i1 %tobool32.i.i398 to i32, !dbg !5309
  %conv37.i.i401 = sext i32 %lnot.ext36.i.i400 to i64, !dbg !5309
  store i64 %conv37.i.i401, i64* %tmp.i.i369, align 8, !dbg !5754
  %188 = load i64, i64* %tmp.i.i369, align 8, !dbg !5309
  %tobool38.i.i402 = icmp ne i64 %188, 0, !dbg !5758
  br i1 %tobool38.i.i402, label %if.then39.i.i404, label %if.end40.i.i406, !dbg !5759

if.then39.i.i404:                                 ; preds = %if.end31.i.i403
  store i1 false, i1* %retval.i.i363, align 1, !dbg !5760
  br label %check_copy_size.exit.i410, !dbg !5760

if.end40.i.i406:                                  ; preds = %if.end31.i.i403
  %189 = load i8*, i8** %addr.addr.i.i364, align 8, !dbg !5761
  %190 = load i64, i64* %bytes.addr.i.i365, align 8, !dbg !5762
  %191 = load i8, i8* %is_source.addr.i.i366, align 1, !dbg !5763
  %tobool41.i.i405 = trunc i8 %191 to i1, !dbg !5763
  call void @check_object_size(i8* %189, i64 %190, i1 zeroext %tobool41.i.i405) #14, !dbg !5764
  store i1 true, i1* %retval.i.i363, align 1, !dbg !5765
  br label %check_copy_size.exit.i410, !dbg !5765

check_copy_size.exit.i410:                        ; preds = %if.end40.i.i406, %if.then39.i.i404, %if.end9.i.i388
  %192 = load i1, i1* %retval.i.i363, align 1, !dbg !5766
  %lnot.i407 = xor i1 %192, true, !dbg !5739
  %lnot.ext.i408 = zext i1 %192 to i32, !dbg !5739
  %conv.i409 = sext i32 %lnot.ext.i408 to i64, !dbg !5739
  br i1 %192, label %if.then.i412, label %copy_to_user.exit, !dbg !5767

if.then.i412:                                     ; preds = %check_copy_size.exit.i410
  %193 = load i8*, i8** %to.addr.i370, align 8, !dbg !5768
  %194 = load i8*, i8** %from.addr.i371, align 8, !dbg !5769
  %195 = load i64, i64* %n.addr.i372, align 8, !dbg !5770
  %call2.i411 = call i64 @_copy_to_user(i8* %193, i8* %194, i64 %195) #14, !dbg !5771
  store i64 %call2.i411, i64* %n.addr.i372, align 8, !dbg !5772
  br label %copy_to_user.exit, !dbg !5773

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i410, %if.then.i412
  %196 = load i64, i64* %n.addr.i372, align 8, !dbg !5774
  %tobool137 = icmp ne i64 %196, 0, !dbg !5775
  br i1 %tobool137, label %if.then138, label %if.end139, !dbg !5776

if.then138:                                       ; preds = %copy_to_user.exit
  store i64 -14, i64* %retval, align 8, !dbg !5777
  br label %return, !dbg !5777

if.end139:                                        ; preds = %copy_to_user.exit
  br label %sw.epilog, !dbg !5778

sw.bb140:                                         ; preds = %entry, %entry
  call void @llvm.dbg.declare(metadata i32* %m141, metadata !5779, metadata !DIExpression()), !dbg !5780
  %197 = bitcast %struct.phm_regs* %rs to i8*, !dbg !5781
  %198 = load i8*, i8** %argp, align 8, !dbg !5782
  store i8* %197, i8** %to.addr.i420, align 8
  store i8* %198, i8** %from.addr.i421, align 8
  store i64 40, i64* %n.addr.i422, align 8
  %199 = load i8*, i8** %to.addr.i420, align 8, !dbg !5783
  %200 = load i64, i64* %n.addr.i422, align 8, !dbg !5783
  store i8* %199, i8** %addr.addr.i.i414, align 8
  store i64 %200, i64* %bytes.addr.i.i415, align 8
  store i8 0, i8* %is_source.addr.i.i416, align 1
  store i32 -1, i32* %sz.i.i417, align 4, !dbg !5294
  %201 = load i32, i32* %sz.i.i417, align 4, !dbg !5784
  %cmp.i.i423 = icmp sge i32 %201, 0, !dbg !5784
  br i1 %cmp.i.i423, label %land.rhs.i.i426, label %land.end.i.i430, !dbg !5784

land.rhs.i.i426:                                  ; preds = %sw.bb140
  %202 = load i32, i32* %sz.i.i417, align 4, !dbg !5784
  %conv.i.i424 = sext i32 %202 to i64, !dbg !5784
  %203 = load i64, i64* %bytes.addr.i.i415, align 8, !dbg !5784
  %cmp1.i.i425 = icmp ult i64 %conv.i.i424, %203, !dbg !5784
  br label %land.end.i.i430

land.end.i.i430:                                  ; preds = %land.rhs.i.i426, %sw.bb140
  %204 = phi i1 [ false, %sw.bb140 ], [ %cmp1.i.i425, %land.rhs.i.i426 ], !dbg !5785
  %lnot.i.i427 = xor i1 %204, true, !dbg !5784
  %lnot.ext.i.i428 = zext i1 %204 to i32, !dbg !5784
  %conv4.i.i429 = sext i32 %lnot.ext.i.i428 to i64, !dbg !5784
  br i1 %204, label %if.then.i.i431, label %if.end10.i.i446, !dbg !5786

if.then.i.i431:                                   ; preds = %land.end.i.i430
  %205 = load i64, i64* %bytes.addr.i.i415, align 8, !dbg !5787
  %206 = call i1 @llvm.is.constant.i64(i64 %205) #10, !dbg !5788
  br i1 %206, label %if.else.i.i434, label %if.then5.i.i432, !dbg !5789

if.then5.i.i432:                                  ; preds = %if.then.i.i431
  %207 = load i32, i32* %sz.i.i417, align 4, !dbg !5790
  %208 = load i64, i64* %bytes.addr.i.i415, align 8, !dbg !5791
  call void @copy_overflow(i32 %207, i64 %208) #14, !dbg !5792
  br label %if.end9.i.i438, !dbg !5792

if.else.i.i434:                                   ; preds = %if.then.i.i431
  %209 = load i8, i8* %is_source.addr.i.i416, align 1, !dbg !5793
  %tobool6.i.i433 = trunc i8 %209 to i1, !dbg !5793
  br i1 %tobool6.i.i433, label %if.then7.i.i435, label %if.else8.i.i436, !dbg !5794

if.then7.i.i435:                                  ; preds = %if.else.i.i434
  call void @__bad_copy_from() #14, !dbg !5795
  br label %if.end.i.i437, !dbg !5795

if.else8.i.i436:                                  ; preds = %if.else.i.i434
  call void @__bad_copy_to() #14, !dbg !5796
  br label %if.end.i.i437

if.end.i.i437:                                    ; preds = %if.else8.i.i436, %if.then7.i.i435
  br label %if.end9.i.i438

if.end9.i.i438:                                   ; preds = %if.end.i.i437, %if.then5.i.i432
  store i1 false, i1* %retval.i.i413, align 1, !dbg !5797
  br label %check_copy_size.exit.i460, !dbg !5797

if.end10.i.i446:                                  ; preds = %land.end.i.i430
  %210 = load i64, i64* %bytes.addr.i.i415, align 8, !dbg !5295
  %cmp11.i.i439 = icmp ugt i64 %210, 2147483647, !dbg !5295
  %lnot13.i.i440 = xor i1 %cmp11.i.i439, true, !dbg !5295
  %lnot.ext16.i.i441 = zext i1 %cmp11.i.i439 to i32, !dbg !5295
  store i32 %lnot.ext16.i.i441, i32* %__ret_warn_on.i.i418, align 4, !dbg !5295
  %211 = load i32, i32* %__ret_warn_on.i.i418, align 4, !dbg !5798
  %tobool17.i.i442 = icmp ne i32 %211, 0, !dbg !5798
  %lnot18.i.i443 = xor i1 %tobool17.i.i442, true, !dbg !5798
  %lnot.ext21.i.i444 = zext i1 %tobool17.i.i442 to i32, !dbg !5798
  %conv22.i.i445 = sext i32 %lnot.ext21.i.i444 to i64, !dbg !5798
  br i1 %tobool17.i.i442, label %if.then24.i.i447, label %if.end31.i.i453, !dbg !5295

if.then24.i.i447:                                 ; preds = %if.end10.i.i446
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 150, i32 2307, i64 12) #10, !dbg !5799, !srcloc !5425
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #10, !dbg !5800, !srcloc !5428
  br label %if.end31.i.i453, !dbg !5801

if.end31.i.i453:                                  ; preds = %if.then24.i.i447, %if.end10.i.i446
  %212 = load i32, i32* %__ret_warn_on.i.i418, align 4, !dbg !5295
  %tobool32.i.i448 = icmp ne i32 %212, 0, !dbg !5295
  %lnot33.i.i449 = xor i1 %tobool32.i.i448, true, !dbg !5295
  %lnot.ext36.i.i450 = zext i1 %tobool32.i.i448 to i32, !dbg !5295
  %conv37.i.i451 = sext i32 %lnot.ext36.i.i450 to i64, !dbg !5295
  store i64 %conv37.i.i451, i64* %tmp.i.i419, align 8, !dbg !5798
  %213 = load i64, i64* %tmp.i.i419, align 8, !dbg !5295
  %tobool38.i.i452 = icmp ne i64 %213, 0, !dbg !5802
  br i1 %tobool38.i.i452, label %if.then39.i.i454, label %if.end40.i.i456, !dbg !5803

if.then39.i.i454:                                 ; preds = %if.end31.i.i453
  store i1 false, i1* %retval.i.i413, align 1, !dbg !5804
  br label %check_copy_size.exit.i460, !dbg !5804

if.end40.i.i456:                                  ; preds = %if.end31.i.i453
  %214 = load i8*, i8** %addr.addr.i.i414, align 8, !dbg !5805
  %215 = load i64, i64* %bytes.addr.i.i415, align 8, !dbg !5806
  %216 = load i8, i8* %is_source.addr.i.i416, align 1, !dbg !5807
  %tobool41.i.i455 = trunc i8 %216 to i1, !dbg !5807
  call void @check_object_size(i8* %214, i64 %215, i1 zeroext %tobool41.i.i455) #14, !dbg !5808
  store i1 true, i1* %retval.i.i413, align 1, !dbg !5809
  br label %check_copy_size.exit.i460, !dbg !5809

check_copy_size.exit.i460:                        ; preds = %if.end40.i.i456, %if.then39.i.i454, %if.end9.i.i438
  %217 = load i1, i1* %retval.i.i413, align 1, !dbg !5810
  %lnot.i457 = xor i1 %217, true, !dbg !5783
  %lnot.ext.i458 = zext i1 %217 to i32, !dbg !5783
  %conv.i459 = sext i32 %lnot.ext.i458 to i64, !dbg !5783
  br i1 %217, label %if.then.i462, label %copy_from_user.exit463, !dbg !5811

if.then.i462:                                     ; preds = %check_copy_size.exit.i460
  %218 = load i8*, i8** %to.addr.i420, align 8, !dbg !5812
  %219 = load i8*, i8** %from.addr.i421, align 8, !dbg !5813
  %220 = load i64, i64* %n.addr.i422, align 8, !dbg !5814
  %call2.i461 = call i64 @_copy_from_user(i8* %218, i8* %219, i64 %220) #14, !dbg !5815
  store i64 %call2.i461, i64* %n.addr.i422, align 8, !dbg !5816
  br label %copy_from_user.exit463, !dbg !5817

copy_from_user.exit463:                           ; preds = %check_copy_size.exit.i460, %if.then.i462
  %221 = load i64, i64* %n.addr.i422, align 8, !dbg !5818
  %tobool143 = icmp ne i64 %221, 0, !dbg !5819
  br i1 %tobool143, label %if.then144, label %if.end145, !dbg !5820

if.then144:                                       ; preds = %copy_from_user.exit463
  store i64 -14, i64* %retval, align 8, !dbg !5821
  br label %return, !dbg !5821

if.end145:                                        ; preds = %copy_from_user.exit463
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x238, metadata !5822, metadata !DIExpression()), !dbg !5824
  %count146 = getelementptr inbounds %struct.phm_regs, %struct.phm_regs* %rs, i32 0, i32 0, !dbg !5824
  %222 = load i32, i32* %count146, align 4, !dbg !5824
  store i32 %222, i32* %__UNIQUE_ID___x238, align 4, !dbg !5824
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y239, metadata !5825, metadata !DIExpression()), !dbg !5824
  store i32 8, i32* %__UNIQUE_ID___y239, align 4, !dbg !5824
  %223 = load i32, i32* %__UNIQUE_ID___x238, align 4, !dbg !5824
  %224 = load i32, i32* %__UNIQUE_ID___y239, align 4, !dbg !5824
  %cmp148 = icmp ult i32 %223, %224, !dbg !5824
  br i1 %cmp148, label %cond.true150, label %cond.false151, !dbg !5824

cond.true150:                                     ; preds = %if.end145
  %225 = load i32, i32* %__UNIQUE_ID___x238, align 4, !dbg !5824
  br label %cond.end152, !dbg !5824

cond.false151:                                    ; preds = %if.end145
  %226 = load i32, i32* %__UNIQUE_ID___y239, align 4, !dbg !5824
  br label %cond.end152, !dbg !5824

cond.end152:                                      ; preds = %cond.false151, %cond.true150
  %cond153 = phi i32 [ %225, %cond.true150 ], [ %226, %cond.false151 ], !dbg !5824
  store i32 %cond153, i32* %tmp147, align 4, !dbg !5824
  %227 = load i32, i32* %tmp147, align 4, !dbg !5824
  store i32 %227, i32* %m141, align 4, !dbg !5826
  store i32 0, i32* %tmp154, align 4, !dbg !5827
  %228 = load i32, i32* %tmp154, align 4, !dbg !5830
  br label %do.body155, !dbg !5831

do.body155:                                       ; preds = %cond.end152
  br label %do.body156, !dbg !5832

do.body156:                                       ; preds = %do.body155
  call void @llvm.dbg.declare(metadata i64* %__dummy157, metadata !5833, metadata !DIExpression()), !dbg !5835
  call void @llvm.dbg.declare(metadata i64* %__dummy2158, metadata !5836, metadata !DIExpression()), !dbg !5835
  %cmp159 = icmp eq i64* %__dummy157, %__dummy2158, !dbg !5835
  %conv160 = zext i1 %cmp159 to i32, !dbg !5835
  store i32 1, i32* %tmp161, align 4, !dbg !5835
  %229 = load i32, i32* %tmp161, align 4, !dbg !5835
  br label %do.body162, !dbg !5837

do.body162:                                       ; preds = %do.body156
  br label %do.body163, !dbg !5838

do.body163:                                       ; preds = %do.body162
  br label %do.body164, !dbg !5839

do.body164:                                       ; preds = %do.body163
  call void @llvm.dbg.declare(metadata i64* %__dummy165, metadata !5841, metadata !DIExpression()), !dbg !5844
  call void @llvm.dbg.declare(metadata i64* %__dummy2166, metadata !5845, metadata !DIExpression()), !dbg !5844
  %cmp167 = icmp eq i64* %__dummy165, %__dummy2166, !dbg !5844
  %conv168 = zext i1 %cmp167 to i32, !dbg !5844
  store i32 1, i32* %tmp169, align 4, !dbg !5844
  %230 = load i32, i32* %tmp169, align 4, !dbg !5844
  %call170 = call i64 @arch_local_irq_save() #11, !dbg !5846
  store i64 %call170, i64* %flags, align 8, !dbg !5846
  br label %do.end171, !dbg !5846

do.end171:                                        ; preds = %do.body164
  br label %do.end172, !dbg !5839

do.end172:                                        ; preds = %do.end171
  br label %do.body173, !dbg !5838

do.body173:                                       ; preds = %do.end172
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5847, !srcloc !5848
  br label %do.body174, !dbg !5847

do.body174:                                       ; preds = %do.body173
  %231 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5849
  %regs_lock175 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %231, i32 0, i32 9, !dbg !5849
  store %struct.spinlock* %regs_lock175, %struct.spinlock** %lock.addr.i464, align 8
  %232 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i464, align 8, !dbg !5850
  %233 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %232, i32 0, i32 0, !dbg !5851
  %rlock.i465 = bitcast %union.anon.3* %233 to %struct.raw_spinlock*, !dbg !5851
  br label %do.end177, !dbg !5849

do.end177:                                        ; preds = %do.body174
  br label %do.end178, !dbg !5847

do.end178:                                        ; preds = %do.end177
  br label %do.end179, !dbg !5838

do.end179:                                        ; preds = %do.end178
  br label %do.end180, !dbg !5837

do.end180:                                        ; preds = %do.end179
  br label %do.end181, !dbg !5832

do.end181:                                        ; preds = %do.end180
  store i32 0, i32* %i, align 4, !dbg !5852
  br label %for.cond182, !dbg !5854

for.cond182:                                      ; preds = %for.inc201, %do.end181
  %234 = load i32, i32* %i, align 4, !dbg !5855
  %235 = load i32, i32* %m141, align 4, !dbg !5857
  %cmp183 = icmp ult i32 %234, %235, !dbg !5858
  br i1 %cmp183, label %for.body185, label %for.end203, !dbg !5859

for.body185:                                      ; preds = %for.cond182
  %mask186 = getelementptr inbounds %struct.phm_regs, %struct.phm_regs* %rs, i32 0, i32 1, !dbg !5860
  %236 = load i32, i32* %mask186, align 4, !dbg !5860
  %conv187 = zext i32 %236 to i64, !dbg !5862
  %237 = load i32, i32* %i, align 4, !dbg !5863
  %sh_prom188 = zext i32 %237 to i64, !dbg !5863
  %shl189 = shl i64 1, %sh_prom188, !dbg !5863
  %and190 = and i64 %conv187, %shl189, !dbg !5864
  %tobool191 = icmp ne i64 %and190, 0, !dbg !5864
  br i1 %tobool191, label %if.then192, label %if.end200, !dbg !5865

if.then192:                                       ; preds = %for.body185
  %238 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5866
  %iaddr193 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %238, i32 0, i32 2, !dbg !5867
  %239 = load i32*, i32** %iaddr193, align 8, !dbg !5867
  %240 = load i32, i32* %i, align 4, !dbg !5868
  %idx.ext194 = zext i32 %240 to i64, !dbg !5869
  %add.ptr195 = getelementptr i32, i32* %239, i64 %idx.ext194, !dbg !5869
  %241 = bitcast i32* %add.ptr195 to i8*, !dbg !5866
  %call196 = call i32 @ioread32(i8* %241) #11, !dbg !5870
  %values197 = getelementptr inbounds %struct.phm_regs, %struct.phm_regs* %rs, i32 0, i32 2, !dbg !5871
  %242 = load i32, i32* %i, align 4, !dbg !5872
  %idxprom198 = zext i32 %242 to i64, !dbg !5873
  %arrayidx199 = getelementptr [8 x i32], [8 x i32]* %values197, i64 0, i64 %idxprom198, !dbg !5873
  store i32 %call196, i32* %arrayidx199, align 4, !dbg !5874
  br label %if.end200, !dbg !5873

if.end200:                                        ; preds = %if.then192, %for.body185
  br label %for.inc201, !dbg !5863

for.inc201:                                       ; preds = %if.end200
  %243 = load i32, i32* %i, align 4, !dbg !5875
  %inc202 = add i32 %243, 1, !dbg !5875
  store i32 %inc202, i32* %i, align 4, !dbg !5875
  br label %for.cond182, !dbg !5876, !llvm.loop !5877

for.end203:                                       ; preds = %for.cond182
  %244 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5879
  %counter = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %244, i32 0, i32 5, !dbg !5880
  store %struct.atomic_t* %counter, %struct.atomic_t** %v.addr.i, align 8
  store i32 0, i32* %i.addr.i, align 4
  %245 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5881
  %246 = bitcast %struct.atomic_t* %245 to i8*, !dbg !5881
  store i8* %246, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %247 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5882
  %248 = load i64, i64* %size.addr.i.i, align 8, !dbg !5883
  %conv.i.i466 = trunc i64 %248 to i32, !dbg !5883
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %247, i32 %conv.i.i466) #14, !dbg !5884
  %249 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5885
  %250 = load i64, i64* %size.addr.i.i, align 8, !dbg !5885
  call void @kcsan_check_access(i8* %249, i64 %250, i32 5) #14, !dbg !5885
  %251 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5886
  %252 = load i32, i32* %i.addr.i, align 4, !dbg !5887
  store %struct.atomic_t* %251, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %252, i32* %i.addr.i.i, align 4
  %253 = load i32, i32* %i.addr.i.i, align 4, !dbg !5888
  %254 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5888
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %254, i32 0, i32 0, !dbg !5888
  store volatile i32 %253, i32* %counter.i.i, align 4, !dbg !5888
  %255 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5890
  %regs_lock204 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %255, i32 0, i32 9, !dbg !5891
  %256 = load i64, i64* %flags, align 8, !dbg !5892
  store %struct.spinlock* %regs_lock204, %struct.spinlock** %lock.addr.i467, align 8
  store i64 %256, i64* %flags.addr.i468, align 8
  call void @llvm.dbg.declare(metadata !164, metadata !5491, metadata !DIExpression()) #10, !dbg !5893
  call void @llvm.dbg.declare(metadata !164, metadata !5495, metadata !DIExpression()) #10, !dbg !5893
  store i32 1, i32* %tmp.i469, align 4, !dbg !5893
  %257 = load i32, i32* %tmp.i469, align 4, !dbg !5893
  call void @llvm.dbg.declare(metadata !164, metadata !5496, metadata !DIExpression()) #10, !dbg !5894
  call void @llvm.dbg.declare(metadata !164, metadata !5502, metadata !DIExpression()) #10, !dbg !5894
  store i32 1, i32* %tmp8.i470, align 4, !dbg !5894
  %258 = load i32, i32* %tmp8.i470, align 4, !dbg !5894
  %259 = load i64, i64* %flags.addr.i468, align 8, !dbg !5895
  call void @arch_local_irq_restore(i64 %259) #14, !dbg !5895
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5896, !srcloc !5506
  %260 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i467, align 8, !dbg !5897
  %261 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %260, i32 0, i32 0, !dbg !5897
  %rlock.i471 = bitcast %union.anon.3* %261 to %struct.raw_spinlock*, !dbg !5897
  %262 = load i8*, i8** %argp, align 8, !dbg !5898
  %263 = bitcast %struct.phm_regs* %rs to i8*, !dbg !5899
  store i8* %262, i8** %to.addr.i479, align 8
  store i8* %263, i8** %from.addr.i480, align 8
  store i64 40, i64* %n.addr.i481, align 8
  %264 = load i8*, i8** %from.addr.i480, align 8, !dbg !5900
  %265 = load i64, i64* %n.addr.i481, align 8, !dbg !5900
  store i8* %264, i8** %addr.addr.i.i473, align 8
  store i64 %265, i64* %bytes.addr.i.i474, align 8
  store i8 1, i8* %is_source.addr.i.i475, align 1
  store i32 -1, i32* %sz.i.i476, align 4, !dbg !5245
  %266 = load i32, i32* %sz.i.i476, align 4, !dbg !5901
  %cmp.i.i482 = icmp sge i32 %266, 0, !dbg !5901
  br i1 %cmp.i.i482, label %land.rhs.i.i485, label %land.end.i.i489, !dbg !5901

land.rhs.i.i485:                                  ; preds = %for.end203
  %267 = load i32, i32* %sz.i.i476, align 4, !dbg !5901
  %conv.i.i483 = sext i32 %267 to i64, !dbg !5901
  %268 = load i64, i64* %bytes.addr.i.i474, align 8, !dbg !5901
  %cmp1.i.i484 = icmp ult i64 %conv.i.i483, %268, !dbg !5901
  br label %land.end.i.i489

land.end.i.i489:                                  ; preds = %land.rhs.i.i485, %for.end203
  %269 = phi i1 [ false, %for.end203 ], [ %cmp1.i.i484, %land.rhs.i.i485 ], !dbg !5902
  %lnot.i.i486 = xor i1 %269, true, !dbg !5901
  %lnot.ext.i.i487 = zext i1 %269 to i32, !dbg !5901
  %conv4.i.i488 = sext i32 %lnot.ext.i.i487 to i64, !dbg !5901
  br i1 %269, label %if.then.i.i490, label %if.end10.i.i505, !dbg !5903

if.then.i.i490:                                   ; preds = %land.end.i.i489
  %270 = load i64, i64* %bytes.addr.i.i474, align 8, !dbg !5904
  %271 = call i1 @llvm.is.constant.i64(i64 %270) #10, !dbg !5905
  br i1 %271, label %if.else.i.i493, label %if.then5.i.i491, !dbg !5906

if.then5.i.i491:                                  ; preds = %if.then.i.i490
  %272 = load i32, i32* %sz.i.i476, align 4, !dbg !5907
  %273 = load i64, i64* %bytes.addr.i.i474, align 8, !dbg !5908
  call void @copy_overflow(i32 %272, i64 %273) #14, !dbg !5909
  br label %if.end9.i.i497, !dbg !5909

if.else.i.i493:                                   ; preds = %if.then.i.i490
  %274 = load i8, i8* %is_source.addr.i.i475, align 1, !dbg !5910
  %tobool6.i.i492 = trunc i8 %274 to i1, !dbg !5910
  br i1 %tobool6.i.i492, label %if.then7.i.i494, label %if.else8.i.i495, !dbg !5911

if.then7.i.i494:                                  ; preds = %if.else.i.i493
  call void @__bad_copy_from() #14, !dbg !5912
  br label %if.end.i.i496, !dbg !5912

if.else8.i.i495:                                  ; preds = %if.else.i.i493
  call void @__bad_copy_to() #14, !dbg !5913
  br label %if.end.i.i496

if.end.i.i496:                                    ; preds = %if.else8.i.i495, %if.then7.i.i494
  br label %if.end9.i.i497

if.end9.i.i497:                                   ; preds = %if.end.i.i496, %if.then5.i.i491
  store i1 false, i1* %retval.i.i472, align 1, !dbg !5914
  br label %check_copy_size.exit.i519, !dbg !5914

if.end10.i.i505:                                  ; preds = %land.end.i.i489
  %275 = load i64, i64* %bytes.addr.i.i474, align 8, !dbg !5249
  %cmp11.i.i498 = icmp ugt i64 %275, 2147483647, !dbg !5249
  %lnot13.i.i499 = xor i1 %cmp11.i.i498, true, !dbg !5249
  %lnot.ext16.i.i500 = zext i1 %cmp11.i.i498 to i32, !dbg !5249
  store i32 %lnot.ext16.i.i500, i32* %__ret_warn_on.i.i477, align 4, !dbg !5249
  %276 = load i32, i32* %__ret_warn_on.i.i477, align 4, !dbg !5915
  %tobool17.i.i501 = icmp ne i32 %276, 0, !dbg !5915
  %lnot18.i.i502 = xor i1 %tobool17.i.i501, true, !dbg !5915
  %lnot.ext21.i.i503 = zext i1 %tobool17.i.i501 to i32, !dbg !5915
  %conv22.i.i504 = sext i32 %lnot.ext21.i.i503 to i64, !dbg !5915
  br i1 %tobool17.i.i501, label %if.then24.i.i506, label %if.end31.i.i512, !dbg !5249

if.then24.i.i506:                                 ; preds = %if.end10.i.i505
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 150, i32 2307, i64 12) #10, !dbg !5916, !srcloc !5425
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #10, !dbg !5917, !srcloc !5428
  br label %if.end31.i.i512, !dbg !5918

if.end31.i.i512:                                  ; preds = %if.then24.i.i506, %if.end10.i.i505
  %277 = load i32, i32* %__ret_warn_on.i.i477, align 4, !dbg !5249
  %tobool32.i.i507 = icmp ne i32 %277, 0, !dbg !5249
  %lnot33.i.i508 = xor i1 %tobool32.i.i507, true, !dbg !5249
  %lnot.ext36.i.i509 = zext i1 %tobool32.i.i507 to i32, !dbg !5249
  %conv37.i.i510 = sext i32 %lnot.ext36.i.i509 to i64, !dbg !5249
  store i64 %conv37.i.i510, i64* %tmp.i.i478, align 8, !dbg !5915
  %278 = load i64, i64* %tmp.i.i478, align 8, !dbg !5249
  %tobool38.i.i511 = icmp ne i64 %278, 0, !dbg !5919
  br i1 %tobool38.i.i511, label %if.then39.i.i513, label %if.end40.i.i515, !dbg !5920

if.then39.i.i513:                                 ; preds = %if.end31.i.i512
  store i1 false, i1* %retval.i.i472, align 1, !dbg !5921
  br label %check_copy_size.exit.i519, !dbg !5921

if.end40.i.i515:                                  ; preds = %if.end31.i.i512
  %279 = load i8*, i8** %addr.addr.i.i473, align 8, !dbg !5922
  %280 = load i64, i64* %bytes.addr.i.i474, align 8, !dbg !5923
  %281 = load i8, i8* %is_source.addr.i.i475, align 1, !dbg !5924
  %tobool41.i.i514 = trunc i8 %281 to i1, !dbg !5924
  call void @check_object_size(i8* %279, i64 %280, i1 zeroext %tobool41.i.i514) #14, !dbg !5925
  store i1 true, i1* %retval.i.i472, align 1, !dbg !5926
  br label %check_copy_size.exit.i519, !dbg !5926

check_copy_size.exit.i519:                        ; preds = %if.end40.i.i515, %if.then39.i.i513, %if.end9.i.i497
  %282 = load i1, i1* %retval.i.i472, align 1, !dbg !5927
  %lnot.i516 = xor i1 %282, true, !dbg !5900
  %lnot.ext.i517 = zext i1 %282 to i32, !dbg !5900
  %conv.i518 = sext i32 %lnot.ext.i517 to i64, !dbg !5900
  br i1 %282, label %if.then.i521, label %copy_to_user.exit522, !dbg !5928

if.then.i521:                                     ; preds = %check_copy_size.exit.i519
  %283 = load i8*, i8** %to.addr.i479, align 8, !dbg !5929
  %284 = load i8*, i8** %from.addr.i480, align 8, !dbg !5930
  %285 = load i64, i64* %n.addr.i481, align 8, !dbg !5931
  %call2.i520 = call i64 @_copy_to_user(i8* %283, i8* %284, i64 %285) #14, !dbg !5932
  store i64 %call2.i520, i64* %n.addr.i481, align 8, !dbg !5933
  br label %copy_to_user.exit522, !dbg !5934

copy_to_user.exit522:                             ; preds = %check_copy_size.exit.i519, %if.then.i521
  %286 = load i64, i64* %n.addr.i481, align 8, !dbg !5935
  %tobool206 = icmp ne i64 %286, 0, !dbg !5936
  br i1 %tobool206, label %if.then207, label %if.end208, !dbg !5937

if.then207:                                       ; preds = %copy_to_user.exit522
  store i64 -14, i64* %retval, align 8, !dbg !5938
  br label %return, !dbg !5938

if.end208:                                        ; preds = %copy_to_user.exit522
  br label %sw.epilog, !dbg !5939

sw.bb209:                                         ; preds = %entry
  br label %do.body210, !dbg !5940

do.body210:                                       ; preds = %sw.bb209
  br label %do.body211, !dbg !5941

do.body211:                                       ; preds = %do.body210
  call void @llvm.dbg.declare(metadata i64* %__dummy212, metadata !5942, metadata !DIExpression()), !dbg !5944
  call void @llvm.dbg.declare(metadata i64* %__dummy2213, metadata !5945, metadata !DIExpression()), !dbg !5944
  %cmp214 = icmp eq i64* %__dummy212, %__dummy2213, !dbg !5944
  %conv215 = zext i1 %cmp214 to i32, !dbg !5944
  store i32 1, i32* %tmp216, align 4, !dbg !5944
  %287 = load i32, i32* %tmp216, align 4, !dbg !5944
  br label %do.body217, !dbg !5946

do.body217:                                       ; preds = %do.body211
  br label %do.body218, !dbg !5947

do.body218:                                       ; preds = %do.body217
  br label %do.body219, !dbg !5948

do.body219:                                       ; preds = %do.body218
  call void @llvm.dbg.declare(metadata i64* %__dummy220, metadata !5950, metadata !DIExpression()), !dbg !5953
  call void @llvm.dbg.declare(metadata i64* %__dummy2221, metadata !5954, metadata !DIExpression()), !dbg !5953
  %cmp222 = icmp eq i64* %__dummy220, %__dummy2221, !dbg !5953
  %conv223 = zext i1 %cmp222 to i32, !dbg !5953
  store i32 1, i32* %tmp224, align 4, !dbg !5953
  %288 = load i32, i32* %tmp224, align 4, !dbg !5953
  %call225 = call i64 @arch_local_irq_save() #11, !dbg !5955
  store i64 %call225, i64* %flags, align 8, !dbg !5955
  br label %do.end226, !dbg !5955

do.end226:                                        ; preds = %do.body219
  br label %do.end227, !dbg !5948

do.end227:                                        ; preds = %do.end226
  br label %do.body228, !dbg !5947

do.body228:                                       ; preds = %do.end227
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5956, !srcloc !5957
  br label %do.body229, !dbg !5956

do.body229:                                       ; preds = %do.body228
  %289 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5958
  %regs_lock230 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %289, i32 0, i32 9, !dbg !5958
  store %struct.spinlock* %regs_lock230, %struct.spinlock** %lock.addr.i523, align 8
  %290 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i523, align 8, !dbg !5959
  %291 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %290, i32 0, i32 0, !dbg !5960
  %rlock.i524 = bitcast %union.anon.3* %291 to %struct.raw_spinlock*, !dbg !5960
  br label %do.end232, !dbg !5958

do.end232:                                        ; preds = %do.body229
  br label %do.end233, !dbg !5956

do.end233:                                        ; preds = %do.end232
  br label %do.end234, !dbg !5947

do.end234:                                        ; preds = %do.end233
  br label %do.end235, !dbg !5946

do.end235:                                        ; preds = %do.end234
  br label %do.end236, !dbg !5941

do.end236:                                        ; preds = %do.end235
  %292 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5961
  %status237 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %292, i32 0, i32 4, !dbg !5962
  %293 = load i64, i64* %status237, align 8, !dbg !5962
  %and238 = and i64 %293, 1, !dbg !5963
  %tobool239 = icmp ne i64 %and238, 0, !dbg !5963
  br i1 %tobool239, label %if.then240, label %if.end243, !dbg !5964

if.then240:                                       ; preds = %do.end236
  %call241 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.16, i64 0, i64 0)) #12, !dbg !5965
  %294 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5966
  %regs_lock242 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %294, i32 0, i32 9, !dbg !5967
  %295 = load i64, i64* %flags, align 8, !dbg !5968
  store %struct.spinlock* %regs_lock242, %struct.spinlock** %lock.addr.i525, align 8
  store i64 %295, i64* %flags.addr.i526, align 8
  call void @llvm.dbg.declare(metadata !164, metadata !5491, metadata !DIExpression()) #10, !dbg !5969
  call void @llvm.dbg.declare(metadata !164, metadata !5495, metadata !DIExpression()) #10, !dbg !5969
  store i32 1, i32* %tmp.i527, align 4, !dbg !5969
  %296 = load i32, i32* %tmp.i527, align 4, !dbg !5969
  call void @llvm.dbg.declare(metadata !164, metadata !5496, metadata !DIExpression()) #10, !dbg !5970
  call void @llvm.dbg.declare(metadata !164, metadata !5502, metadata !DIExpression()) #10, !dbg !5970
  store i32 1, i32* %tmp8.i528, align 4, !dbg !5970
  %297 = load i32, i32* %tmp8.i528, align 4, !dbg !5970
  %298 = load i64, i64* %flags.addr.i526, align 8, !dbg !5971
  call void @arch_local_irq_restore(i64 %298) #14, !dbg !5971
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5972, !srcloc !5506
  %299 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i525, align 8, !dbg !5973
  %300 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %299, i32 0, i32 0, !dbg !5973
  %rlock.i529 = bitcast %union.anon.3* %300 to %struct.raw_spinlock*, !dbg !5973
  store i64 -22, i64* %retval, align 8, !dbg !5974
  br label %return, !dbg !5974

if.end243:                                        ; preds = %do.end236
  %301 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5975
  %status244 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %301, i32 0, i32 4, !dbg !5976
  %302 = load i64, i64* %status244, align 8, !dbg !5977
  %or245 = or i64 %302, 2, !dbg !5977
  store i64 %or245, i64* %status244, align 8, !dbg !5977
  %303 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !5978
  %regs_lock246 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %303, i32 0, i32 9, !dbg !5979
  %304 = load i64, i64* %flags, align 8, !dbg !5980
  store %struct.spinlock* %regs_lock246, %struct.spinlock** %lock.addr.i530, align 8
  store i64 %304, i64* %flags.addr.i531, align 8
  call void @llvm.dbg.declare(metadata !164, metadata !5491, metadata !DIExpression()) #10, !dbg !5981
  call void @llvm.dbg.declare(metadata !164, metadata !5495, metadata !DIExpression()) #10, !dbg !5981
  store i32 1, i32* %tmp.i532, align 4, !dbg !5981
  %305 = load i32, i32* %tmp.i532, align 4, !dbg !5981
  call void @llvm.dbg.declare(metadata !164, metadata !5496, metadata !DIExpression()) #10, !dbg !5982
  call void @llvm.dbg.declare(metadata !164, metadata !5502, metadata !DIExpression()) #10, !dbg !5982
  store i32 1, i32* %tmp8.i533, align 4, !dbg !5982
  %306 = load i32, i32* %tmp8.i533, align 4, !dbg !5982
  %307 = load i64, i64* %flags.addr.i531, align 8, !dbg !5983
  call void @arch_local_irq_restore(i64 %307) #14, !dbg !5983
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5984, !srcloc !5506
  %308 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i530, align 8, !dbg !5985
  %309 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %308, i32 0, i32 0, !dbg !5985
  %rlock.i534 = bitcast %union.anon.3* %309 to %struct.raw_spinlock*, !dbg !5985
  br label %sw.epilog, !dbg !5986

sw.default:                                       ; preds = %entry
  store i64 -25, i64* %retval, align 8, !dbg !5987
  br label %return, !dbg !5987

sw.epilog:                                        ; preds = %if.end243, %if.end208, %if.end139, %if.end118, %if.end65
  store i64 0, i64* %retval, align 8, !dbg !5988
  br label %return, !dbg !5988

return:                                           ; preds = %sw.epilog, %sw.default, %if.then240, %if.then207, %if.then144, %if.then138, %if.then128, %if.then123, %if.then70, %if.then30, %if.then1, %if.then
  %310 = load i64, i64* %retval, align 8, !dbg !5989
  ret i64 %310, !dbg !5989
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @phantom_open(%struct.inode* %inode, %struct.file* %file) #2 !dbg !5990 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5259, metadata !DIExpression()), !dbg !5991
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5267, metadata !DIExpression()), !dbg !5994
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5269, metadata !DIExpression()), !dbg !5995
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5273, metadata !DIExpression()), !dbg !5997
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5275, metadata !DIExpression()), !dbg !5998
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5277, metadata !DIExpression()), !dbg !5999
  %retval = alloca i32, align 4
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  %dev = alloca %struct.phantom_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.phantom_device*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp24 = alloca i64, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !6000, metadata !DIExpression()), !dbg !6001
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !6002, metadata !DIExpression()), !dbg !6003
  call void @llvm.dbg.declare(metadata %struct.phantom_device** %dev, metadata !6004, metadata !DIExpression()), !dbg !6005
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6006, metadata !DIExpression()), !dbg !6008
  %0 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !6008
  %1 = getelementptr inbounds %struct.inode, %struct.inode* %0, i32 0, i32 40, !dbg !6008
  %i_cdev = bitcast %union.anon.62* %1 to %struct.cdev**, !dbg !6008
  %2 = load %struct.cdev*, %struct.cdev** %i_cdev, align 8, !dbg !6008
  %3 = bitcast %struct.cdev* %2 to i8*, !dbg !6008
  store i8* %3, i8** %__mptr, align 8, !dbg !6008
  br label %do.body, !dbg !6008

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6009

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !6008
  %add.ptr = getelementptr i8, i8* %4, i64 -64, !dbg !6008
  %5 = bitcast i8* %add.ptr to %struct.phantom_device*, !dbg !6008
  store %struct.phantom_device* %5, %struct.phantom_device** %tmp, align 8, !dbg !6009
  %6 = load %struct.phantom_device*, %struct.phantom_device** %tmp, align 8, !dbg !6008
  store %struct.phantom_device* %6, %struct.phantom_device** %dev, align 8, !dbg !6005
  call void @mutex_lock(%struct.mutex* @phantom_mutex) #11, !dbg !6011
  %7 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !6012
  %8 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !6013
  %call = call i32 @nonseekable_open(%struct.inode* %7, %struct.file* %8) #11, !dbg !6014
  %9 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !6015
  %open_lock = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %9, i32 0, i32 8, !dbg !6017
  %call1 = call i32 @mutex_lock_interruptible(%struct.mutex* %open_lock) #11, !dbg !6018
  %tobool = icmp ne i32 %call1, 0, !dbg !6018
  br i1 %tobool, label %if.then, label %if.end, !dbg !6019

if.then:                                          ; preds = %do.end
  call void @mutex_unlock(%struct.mutex* @phantom_mutex) #11, !dbg !6020
  store i32 -512, i32* %retval, align 4, !dbg !6022
  br label %return, !dbg !6022

if.end:                                           ; preds = %do.end
  %10 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !6023
  %opened = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %10, i32 0, i32 0, !dbg !6025
  %11 = load i32, i32* %opened, align 8, !dbg !6025
  %tobool2 = icmp ne i32 %11, 0, !dbg !6023
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !6026

if.then3:                                         ; preds = %if.end
  %12 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !6027
  %open_lock4 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %12, i32 0, i32 8, !dbg !6029
  call void @mutex_unlock(%struct.mutex* %open_lock4) #11, !dbg !6030
  call void @mutex_unlock(%struct.mutex* @phantom_mutex) #11, !dbg !6031
  store i32 -22, i32* %retval, align 4, !dbg !6032
  br label %return, !dbg !6032

if.end5:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6033, metadata !DIExpression()), !dbg !6035
  %13 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !6035
  %status = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %13, i32 0, i32 4, !dbg !6035
  %14 = load i64, i64* %status, align 8, !dbg !6035
  %and = and i64 %14, 2, !dbg !6035
  %tobool6 = icmp ne i64 %and, 0, !dbg !6035
  %lnot = xor i1 %tobool6, true, !dbg !6035
  %lnot7 = xor i1 %lnot, true, !dbg !6035
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !6035
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !6035
  %15 = load i32, i32* %__ret_warn_on, align 4, !dbg !6036
  %tobool8 = icmp ne i32 %15, 0, !dbg !6036
  %lnot9 = xor i1 %tobool8, true, !dbg !6036
  %lnot11 = xor i1 %lnot9, true, !dbg !6036
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6036
  %conv = sext i32 %lnot.ext12 to i64, !dbg !6036
  %tobool13 = icmp ne i64 %conv, 0, !dbg !6036
  br i1 %tobool13, label %if.then14, label %if.end23, !dbg !6035

if.then14:                                        ; preds = %if.end5
  br label %do.body15, !dbg !6036

do.body15:                                        ; preds = %if.then14
  br label %do.body16, !dbg !6038

do.body16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !6040

do.end17:                                         ; preds = %do.body16
  br label %do.body18, !dbg !6038

do.body18:                                        ; preds = %do.end17
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 229, i32 2305, i64 12) #10, !dbg !6042, !srcloc !6044
  br label %do.end19, !dbg !6042

do.end19:                                         ; preds = %do.body18
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 241) #10, !dbg !6045, !srcloc !6047
  br label %do.body20, !dbg !6038

do.body20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6048

do.end21:                                         ; preds = %do.body20
  br label %do.end22, !dbg !6038

do.end22:                                         ; preds = %do.end21
  br label %if.end23, !dbg !6038

if.end23:                                         ; preds = %do.end22, %if.end5
  %16 = load i32, i32* %__ret_warn_on, align 4, !dbg !6035
  %tobool25 = icmp ne i32 %16, 0, !dbg !6035
  %lnot26 = xor i1 %tobool25, true, !dbg !6035
  %lnot28 = xor i1 %lnot26, true, !dbg !6035
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !6035
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !6035
  store i64 %conv30, i64* %tmp24, align 8, !dbg !6036
  %17 = load i64, i64* %tmp24, align 8, !dbg !6035
  %18 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !6050
  %19 = bitcast %struct.phantom_device* %18 to i8*, !dbg !6050
  %20 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !6051
  %private_data = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 15, !dbg !6052
  store i8* %19, i8** %private_data, align 8, !dbg !6053
  %21 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !6054
  %counter = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %21, i32 0, i32 5, !dbg !6055
  store %struct.atomic_t* %counter, %struct.atomic_t** %v.addr.i, align 8
  store i32 0, i32* %i.addr.i, align 4
  %22 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6056
  %23 = bitcast %struct.atomic_t* %22 to i8*, !dbg !6056
  store i8* %23, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %24 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6057
  %25 = load i64, i64* %size.addr.i.i, align 8, !dbg !6058
  %conv.i.i = trunc i64 %25 to i32, !dbg !6058
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %24, i32 %conv.i.i) #14, !dbg !6059
  %26 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6060
  %27 = load i64, i64* %size.addr.i.i, align 8, !dbg !6060
  call void @kcsan_check_access(i8* %26, i64 %27, i32 5) #14, !dbg !6060
  %28 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6061
  %29 = load i32, i32* %i.addr.i, align 4, !dbg !6062
  store %struct.atomic_t* %28, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %29, i32* %i.addr.i.i, align 4
  %30 = load i32, i32* %i.addr.i.i, align 4, !dbg !6063
  %31 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6063
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %31, i32 0, i32 0, !dbg !6063
  store volatile i32 %30, i32* %counter.i.i, align 4, !dbg !6063
  %32 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !6064
  %opened31 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %32, i32 0, i32 0, !dbg !6065
  %33 = load i32, i32* %opened31, align 8, !dbg !6066
  %inc = add i32 %33, 1, !dbg !6066
  store i32 %inc, i32* %opened31, align 8, !dbg !6066
  %34 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !6067
  %open_lock32 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %34, i32 0, i32 8, !dbg !6068
  call void @mutex_unlock(%struct.mutex* %open_lock32) #11, !dbg !6069
  call void @mutex_unlock(%struct.mutex* @phantom_mutex) #11, !dbg !6070
  store i32 0, i32* %retval, align 4, !dbg !6071
  br label %return, !dbg !6071

return:                                           ; preds = %if.end23, %if.then3, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !6072
  ret i32 %35, !dbg !6072
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @phantom_release(%struct.inode* %inode, %struct.file* %file) #2 !dbg !6073 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  %dev = alloca %struct.phantom_device*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !6074, metadata !DIExpression()), !dbg !6075
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !6076, metadata !DIExpression()), !dbg !6077
  call void @llvm.dbg.declare(metadata %struct.phantom_device** %dev, metadata !6078, metadata !DIExpression()), !dbg !6079
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !6080
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !6081
  %1 = load i8*, i8** %private_data, align 8, !dbg !6081
  %2 = bitcast i8* %1 to %struct.phantom_device*, !dbg !6080
  store %struct.phantom_device* %2, %struct.phantom_device** %dev, align 8, !dbg !6079
  %3 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !6082
  %open_lock = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %3, i32 0, i32 8, !dbg !6083
  call void @mutex_lock(%struct.mutex* %open_lock) #11, !dbg !6084
  %4 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !6085
  %opened = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %4, i32 0, i32 0, !dbg !6086
  store i32 0, i32* %opened, align 8, !dbg !6087
  %5 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !6088
  %6 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !6089
  %status = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %6, i32 0, i32 4, !dbg !6090
  %7 = load i64, i64* %status, align 8, !dbg !6090
  %and = and i64 %7, -2, !dbg !6091
  %call = call i32 @phantom_status(%struct.phantom_device* %5, i64 %and) #11, !dbg !6092
  %8 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !6093
  %status1 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %8, i32 0, i32 4, !dbg !6094
  %9 = load i64, i64* %status1, align 8, !dbg !6095
  %and2 = and i64 %9, -3, !dbg !6095
  store i64 %and2, i64* %status1, align 8, !dbg !6095
  %10 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !6096
  %open_lock3 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %10, i32 0, i32 8, !dbg !6097
  call void @mutex_unlock(%struct.mutex* %open_lock3) #11, !dbg !6098
  ret i32 0, !dbg !6099
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @poll_wait(%struct.file* %filp, %struct.wait_queue_head* %wait_address, %struct.poll_table_struct* %p) #2 !dbg !6100 {
entry:
  %filp.addr = alloca %struct.file*, align 8
  %wait_address.addr = alloca %struct.wait_queue_head*, align 8
  %p.addr = alloca %struct.poll_table_struct*, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !6103, metadata !DIExpression()), !dbg !6104
  store %struct.wait_queue_head* %wait_address, %struct.wait_queue_head** %wait_address.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.wait_queue_head** %wait_address.addr, metadata !6105, metadata !DIExpression()), !dbg !6106
  store %struct.poll_table_struct* %p, %struct.poll_table_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.poll_table_struct** %p.addr, metadata !6107, metadata !DIExpression()), !dbg !6108
  %0 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !6109
  %tobool = icmp ne %struct.poll_table_struct* %0, null, !dbg !6109
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6111

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !6112
  %_qproc = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %1, i32 0, i32 0, !dbg !6113
  %2 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc, align 8, !dbg !6113
  %tobool1 = icmp ne void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* %2, null, !dbg !6112
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !6114

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load %struct.wait_queue_head*, %struct.wait_queue_head** %wait_address.addr, align 8, !dbg !6115
  %tobool3 = icmp ne %struct.wait_queue_head* %3, null, !dbg !6115
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6116

if.then:                                          ; preds = %land.lhs.true2
  %4 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !6117
  %_qproc4 = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %4, i32 0, i32 0, !dbg !6118
  %5 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc4, align 8, !dbg !6118
  %6 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !6119
  %7 = load %struct.wait_queue_head*, %struct.wait_queue_head** %wait_address.addr, align 8, !dbg !6120
  %8 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !6121
  call void %5(%struct.file* %6, %struct.wait_queue_head* %7, %struct.poll_table_struct* %8) #11, !dbg !6117
  br label %if.end, !dbg !6117

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !6122
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #2 !dbg !6123 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6127, metadata !DIExpression()), !dbg !6128
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6129, metadata !DIExpression()), !dbg !6130
  ret i1 true, !dbg !6131
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !6132 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6136, metadata !DIExpression()), !dbg !6137
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6138, metadata !DIExpression()), !dbg !6139
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6140, metadata !DIExpression()), !dbg !6141
  ret void, !dbg !6142
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #2 !dbg !6143 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !6147, metadata !DIExpression()), !dbg !6148
  %call = call i64 @arch_local_save_flags() #11, !dbg !6149
  store i64 %call, i64* %f, align 8, !dbg !6150
  call void @arch_local_irq_disable() #11, !dbg !6151
  %0 = load i64, i64* %f, align 8, !dbg !6152
  ret i64 %0, !dbg !6153
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @phantom_status(%struct.phantom_device* %dev, i64 %newstat) #2 !dbg !6154 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5259, metadata !DIExpression()), !dbg !6157
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5267, metadata !DIExpression()), !dbg !6162
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5269, metadata !DIExpression()), !dbg !6163
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5273, metadata !DIExpression()), !dbg !6165
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5275, metadata !DIExpression()), !dbg !6166
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5277, metadata !DIExpression()), !dbg !6167
  %dev.addr = alloca %struct.phantom_device*, align 8
  %newstat.addr = alloca i64, align 8
  %tmp = alloca i32, align 4
  store %struct.phantom_device* %dev, %struct.phantom_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.phantom_device** %dev.addr, metadata !6168, metadata !DIExpression()), !dbg !6169
  store i64 %newstat, i64* %newstat.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %newstat.addr, metadata !6170, metadata !DIExpression()), !dbg !6171
  store i32 0, i32* %tmp, align 4, !dbg !6172
  %0 = load i32, i32* %tmp, align 4, !dbg !6175
  %1 = load %struct.phantom_device*, %struct.phantom_device** %dev.addr, align 8, !dbg !6176
  %status = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %1, i32 0, i32 4, !dbg !6177
  %2 = load i64, i64* %status, align 8, !dbg !6177
  %and = and i64 %2, 1, !dbg !6178
  %tobool = icmp ne i64 %and, 0, !dbg !6178
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !6179

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, i64* %newstat.addr, align 8, !dbg !6180
  %and1 = and i64 %3, 1, !dbg !6181
  %tobool2 = icmp ne i64 %and1, 0, !dbg !6181
  br i1 %tobool2, label %if.then, label %if.else, !dbg !6182

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.phantom_device*, %struct.phantom_device** %dev.addr, align 8, !dbg !6183
  %counter = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %4, i32 0, i32 5, !dbg !6184
  store %struct.atomic_t* %counter, %struct.atomic_t** %v.addr.i, align 8
  store i32 0, i32* %i.addr.i, align 4
  %5 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6185
  %6 = bitcast %struct.atomic_t* %5 to i8*, !dbg !6185
  store i8* %6, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %7 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6186
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !6187
  %conv.i.i = trunc i64 %8 to i32, !dbg !6187
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %7, i32 %conv.i.i) #14, !dbg !6188
  %9 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6189
  %10 = load i64, i64* %size.addr.i.i, align 8, !dbg !6189
  call void @kcsan_check_access(i8* %9, i64 %10, i32 5) #14, !dbg !6189
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6190
  %12 = load i32, i32* %i.addr.i, align 4, !dbg !6191
  store %struct.atomic_t* %11, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %12, i32* %i.addr.i.i, align 4
  %13 = load i32, i32* %i.addr.i.i, align 4, !dbg !6192
  %14 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6192
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %14, i32 0, i32 0, !dbg !6192
  store volatile i32 %13, i32* %counter.i.i, align 4, !dbg !6192
  %15 = load %struct.phantom_device*, %struct.phantom_device** %dev.addr, align 8, !dbg !6193
  %iaddr = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %15, i32 0, i32 2, !dbg !6194
  %16 = load i32*, i32** %iaddr, align 8, !dbg !6194
  %add.ptr = getelementptr i32, i32* %16, i64 6, !dbg !6195
  %17 = bitcast i32* %add.ptr to i8*, !dbg !6193
  call void @iowrite32(i32 16, i8* %17) #11, !dbg !6196
  %18 = load %struct.phantom_device*, %struct.phantom_device** %dev.addr, align 8, !dbg !6197
  %caddr = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %18, i32 0, i32 1, !dbg !6198
  %19 = load i8*, i8** %caddr, align 8, !dbg !6198
  %add.ptr3 = getelementptr i8, i8* %19, i64 76, !dbg !6199
  call void @iowrite32(i32 67, i8* %add.ptr3) #11, !dbg !6200
  %20 = load %struct.phantom_device*, %struct.phantom_device** %dev.addr, align 8, !dbg !6201
  %caddr4 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %20, i32 0, i32 1, !dbg !6202
  %21 = load i8*, i8** %caddr4, align 8, !dbg !6202
  %add.ptr5 = getelementptr i8, i8* %21, i64 76, !dbg !6203
  %call = call i32 @ioread32(i8* %add.ptr5) #11, !dbg !6204
  br label %if.end18, !dbg !6205

if.else:                                          ; preds = %land.lhs.true, %entry
  %22 = load %struct.phantom_device*, %struct.phantom_device** %dev.addr, align 8, !dbg !6206
  %status6 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %22, i32 0, i32 4, !dbg !6208
  %23 = load i64, i64* %status6, align 8, !dbg !6208
  %and7 = and i64 %23, 1, !dbg !6209
  %tobool8 = icmp ne i64 %and7, 0, !dbg !6209
  br i1 %tobool8, label %land.lhs.true9, label %if.end, !dbg !6210

land.lhs.true9:                                   ; preds = %if.else
  %24 = load i64, i64* %newstat.addr, align 8, !dbg !6211
  %and10 = and i64 %24, 1, !dbg !6212
  %tobool11 = icmp ne i64 %and10, 0, !dbg !6212
  br i1 %tobool11, label %if.end, label %if.then12, !dbg !6213

if.then12:                                        ; preds = %land.lhs.true9
  %25 = load %struct.phantom_device*, %struct.phantom_device** %dev.addr, align 8, !dbg !6214
  %caddr13 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %25, i32 0, i32 1, !dbg !6216
  %26 = load i8*, i8** %caddr13, align 8, !dbg !6216
  %add.ptr14 = getelementptr i8, i8* %26, i64 76, !dbg !6217
  call void @iowrite32(i32 0, i8* %add.ptr14) #11, !dbg !6218
  %27 = load %struct.phantom_device*, %struct.phantom_device** %dev.addr, align 8, !dbg !6219
  %caddr15 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %27, i32 0, i32 1, !dbg !6220
  %28 = load i8*, i8** %caddr15, align 8, !dbg !6220
  %add.ptr16 = getelementptr i8, i8* %28, i64 76, !dbg !6221
  %call17 = call i32 @ioread32(i8* %add.ptr16) #11, !dbg !6222
  br label %if.end, !dbg !6223

if.end:                                           ; preds = %if.then12, %land.lhs.true9, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %29 = load i64, i64* %newstat.addr, align 8, !dbg !6224
  %30 = load %struct.phantom_device*, %struct.phantom_device** %dev.addr, align 8, !dbg !6225
  %status19 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %30, i32 0, i32 4, !dbg !6226
  store i64 %29, i64* %status19, align 8, !dbg !6227
  ret i32 0, !dbg !6228
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i64 @_copy_from_user(i8*, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #2 !dbg !6229 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6232, metadata !DIExpression()), !dbg !6233
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !6234, metadata !DIExpression()), !dbg !6235
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6236, metadata !DIExpression()), !dbg !6238
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !6238
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !6239
  %tobool = icmp ne i32 %0, 0, !dbg !6239
  %lnot = xor i1 %tobool, true, !dbg !6239
  %lnot1 = xor i1 %lnot, true, !dbg !6239
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6239
  %conv = sext i32 %lnot.ext to i64, !dbg !6239
  %tobool2 = icmp ne i64 %conv, 0, !dbg !6239
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6238

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6239

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !6241

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !6243

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !6241
  %2 = load i64, i64* %count.addr, align 8, !dbg !6241
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0), i32 %1, i64 %2) #11, !dbg !6241
  br label %do.body4, !dbg !6241

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !6245

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6247

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !6245

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 134, i32 2313, i64 12) #10, !dbg !6249, !srcloc !6251
  br label %do.end8, !dbg !6249

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #10, !dbg !6252, !srcloc !6254
  br label %do.body9, !dbg !6245

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6255

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !6245

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !6241

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !6257

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !6241

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !6241

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !6238
  %tobool15 = icmp ne i32 %3, 0, !dbg !6238
  %lnot16 = xor i1 %tobool15, true, !dbg !6238
  %lnot18 = xor i1 %lnot16, true, !dbg !6238
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !6238
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !6238
  store i64 %conv20, i64* %tmp, align 8, !dbg !6239
  %4 = load i64, i64* %tmp, align 8, !dbg !6238
  ret void, !dbg !6259
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #1

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #2 !dbg !6260 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6263, metadata !DIExpression()), !dbg !6264
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6265, metadata !DIExpression()), !dbg !6266
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !6267, metadata !DIExpression()), !dbg !6268
  ret void, !dbg !6269
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #2 !dbg !6270 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !6271, metadata !DIExpression()), !dbg !6273
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6274, metadata !DIExpression()), !dbg !6273
  %0 = load i64, i64* %__edi, align 8, !dbg !6273
  store i64 %0, i64* %__edi, align 8, !dbg !6273
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6275, metadata !DIExpression()), !dbg !6273
  %1 = load i64, i64* %__esi, align 8, !dbg !6273
  store i64 %1, i64* %__esi, align 8, !dbg !6273
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6276, metadata !DIExpression()), !dbg !6273
  %2 = load i64, i64* %__edx, align 8, !dbg !6273
  store i64 %2, i64* %__edx, align 8, !dbg !6273
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6277, metadata !DIExpression()), !dbg !6273
  %3 = load i64, i64* %__ecx, align 8, !dbg !6273
  store i64 %3, i64* %__ecx, align 8, !dbg !6273
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6278, metadata !DIExpression()), !dbg !6273
  %4 = load i64, i64* %__eax, align 8, !dbg !6273
  store i64 %4, i64* %__eax, align 8, !dbg !6273
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !6273
  %6 = call i64 @llvm.read_register.i64(metadata !4213), !dbg !6279
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #10, !dbg !6279, !srcloc !6282
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6279
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6279
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6279
  call void @llvm.write_register.i64(metadata !4213, i64 %asmresult1), !dbg !6279
  %8 = load i64, i64* %__eax, align 8, !dbg !6279
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !6283, metadata !DIExpression()), !dbg !6285
  store i64 -1, i64* %__mask, align 8, !dbg !6285
  %9 = load i64, i64* %__mask, align 8, !dbg !6285
  store i64 %9, i64* %tmp, align 8, !dbg !6285
  %10 = load i64, i64* %tmp, align 8, !dbg !6285
  %and = and i64 %8, %10, !dbg !6279
  store i64 %and, i64* %__ret, align 8, !dbg !6279
  %11 = load i64, i64* %__ret, align 8, !dbg !6273
  store i64 %11, i64* %tmp2, align 8, !dbg !6286
  %12 = load i64, i64* %tmp2, align 8, !dbg !6273
  ret i64 %12, !dbg !6287
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #2 !dbg !6288 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6289, metadata !DIExpression()), !dbg !6291
  %0 = load i64, i64* %__edi, align 8, !dbg !6291
  store i64 %0, i64* %__edi, align 8, !dbg !6291
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6292, metadata !DIExpression()), !dbg !6291
  %1 = load i64, i64* %__esi, align 8, !dbg !6291
  store i64 %1, i64* %__esi, align 8, !dbg !6291
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6293, metadata !DIExpression()), !dbg !6291
  %2 = load i64, i64* %__edx, align 8, !dbg !6291
  store i64 %2, i64* %__edx, align 8, !dbg !6291
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6294, metadata !DIExpression()), !dbg !6291
  %3 = load i64, i64* %__ecx, align 8, !dbg !6291
  store i64 %3, i64* %__ecx, align 8, !dbg !6291
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6295, metadata !DIExpression()), !dbg !6291
  %4 = load i64, i64* %__eax, align 8, !dbg !6291
  store i64 %4, i64* %__eax, align 8, !dbg !6291
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !6291
  %6 = call i64 @llvm.read_register.i64(metadata !4213), !dbg !6291
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #10, !dbg !6291, !srcloc !6296
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6291
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6291
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6291
  call void @llvm.write_register.i64(metadata !4213, i64 %asmresult1), !dbg !6291
  ret void, !dbg !6297
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #2 !dbg !6298 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !6301, metadata !DIExpression()), !dbg !6302
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6303, metadata !DIExpression()), !dbg !6305
  %0 = load i64, i64* %__edi, align 8, !dbg !6305
  store i64 %0, i64* %__edi, align 8, !dbg !6305
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6306, metadata !DIExpression()), !dbg !6305
  %1 = load i64, i64* %__esi, align 8, !dbg !6305
  store i64 %1, i64* %__esi, align 8, !dbg !6305
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6307, metadata !DIExpression()), !dbg !6305
  %2 = load i64, i64* %__edx, align 8, !dbg !6305
  store i64 %2, i64* %__edx, align 8, !dbg !6305
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6308, metadata !DIExpression()), !dbg !6305
  %3 = load i64, i64* %__ecx, align 8, !dbg !6305
  store i64 %3, i64* %__ecx, align 8, !dbg !6305
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6309, metadata !DIExpression()), !dbg !6305
  %4 = load i64, i64* %__eax, align 8, !dbg !6305
  store i64 %4, i64* %__eax, align 8, !dbg !6305
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !6305
  %6 = call i64 @llvm.read_register.i64(metadata !4213), !dbg !6305
  %7 = load i64, i64* %f.addr, align 8, !dbg !6305
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #10, !dbg !6305, !srcloc !6310
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !6305
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !6305
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6305
  call void @llvm.write_register.i64(metadata !4213, i64 %asmresult1), !dbg !6305
  ret void, !dbg !6311
}

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !6312 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6313, metadata !DIExpression()), !dbg !6314
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6315, metadata !DIExpression()), !dbg !6316
  ret i1 true, !dbg !6317
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

; Function Attrs: noredzone
declare dso_local i32 @mutex_lock_interruptible(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noredzone
declare dso_local void @__wake_up(%struct.wait_queue_head*, i32, i32, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !6318 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6321, metadata !DIExpression()), !dbg !6322
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6323, metadata !DIExpression()), !dbg !6324
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6325
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6326
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !6327
  store i8* %0, i8** %driver_data, align 8, !dbg !6328
  ret void, !dbg !6329
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_get_drvdata(%struct.pci_dev* %pdev) #2 !dbg !6330 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !6333, metadata !DIExpression()), !dbg !6334
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !6335
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !6336
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #11, !dbg !6337
  ret i8* %call, !dbg !6338
}

; Function Attrs: noredzone
declare dso_local void @device_destroy(%struct.class*, i32) #1

; Function Attrs: noredzone
declare dso_local void @cdev_del(%struct.cdev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !6339 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6342, metadata !DIExpression()), !dbg !6343
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6344
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6345
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6345
  ret i8* %1, !dbg !6346
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @phantom_suspend(%struct.device* %dev_d) #2 !dbg !6347 {
entry:
  %dev_d.addr = alloca %struct.device*, align 8
  %dev = alloca %struct.phantom_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  store %struct.device* %dev_d, %struct.device** %dev_d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev_d.addr, metadata !6348, metadata !DIExpression()), !dbg !6349
  call void @llvm.dbg.declare(metadata %struct.phantom_device** %dev, metadata !6350, metadata !DIExpression()), !dbg !6351
  %0 = load %struct.device*, %struct.device** %dev_d.addr, align 8, !dbg !6352
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #11, !dbg !6353
  %1 = bitcast i8* %call to %struct.phantom_device*, !dbg !6353
  store %struct.phantom_device* %1, %struct.phantom_device** %dev, align 8, !dbg !6351
  %2 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !6354
  %caddr = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %2, i32 0, i32 1, !dbg !6355
  %3 = load i8*, i8** %caddr, align 8, !dbg !6355
  %add.ptr = getelementptr i8, i8* %3, i64 76, !dbg !6356
  call void @iowrite32(i32 0, i8* %add.ptr) #11, !dbg !6357
  %4 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !6358
  %caddr1 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %4, i32 0, i32 1, !dbg !6359
  %5 = load i8*, i8** %caddr1, align 8, !dbg !6359
  %add.ptr2 = getelementptr i8, i8* %5, i64 76, !dbg !6360
  %call3 = call i32 @ioread32(i8* %add.ptr2) #11, !dbg !6361
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6362, metadata !DIExpression()), !dbg !6364
  %6 = load %struct.device*, %struct.device** %dev_d.addr, align 8, !dbg !6364
  %7 = bitcast %struct.device* %6 to i8*, !dbg !6364
  store i8* %7, i8** %__mptr, align 8, !dbg !6364
  br label %do.body, !dbg !6364

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6365

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !6364
  %add.ptr4 = getelementptr i8, i8* %8, i64 -176, !dbg !6364
  %9 = bitcast i8* %add.ptr4 to %struct.pci_dev*, !dbg !6364
  store %struct.pci_dev* %9, %struct.pci_dev** %tmp, align 8, !dbg !6365
  %10 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !6364
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 43, !dbg !6367
  %11 = load i32, i32* %irq, align 4, !dbg !6367
  call void @synchronize_irq(i32 %11) #11, !dbg !6368
  ret i32 0, !dbg !6369
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @phantom_resume(%struct.device* %dev_d) #2 !dbg !6370 {
entry:
  %dev_d.addr = alloca %struct.device*, align 8
  %dev = alloca %struct.phantom_device*, align 8
  store %struct.device* %dev_d, %struct.device** %dev_d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev_d.addr, metadata !6371, metadata !DIExpression()), !dbg !6372
  call void @llvm.dbg.declare(metadata %struct.phantom_device** %dev, metadata !6373, metadata !DIExpression()), !dbg !6374
  %0 = load %struct.device*, %struct.device** %dev_d.addr, align 8, !dbg !6375
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #11, !dbg !6376
  %1 = bitcast i8* %call to %struct.phantom_device*, !dbg !6376
  store %struct.phantom_device* %1, %struct.phantom_device** %dev, align 8, !dbg !6374
  %2 = load %struct.phantom_device*, %struct.phantom_device** %dev, align 8, !dbg !6377
  %caddr = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %2, i32 0, i32 1, !dbg !6378
  %3 = load i8*, i8** %caddr, align 8, !dbg !6378
  %add.ptr = getelementptr i8, i8* %3, i64 76, !dbg !6379
  call void @iowrite32(i32 0, i8* %add.ptr) #11, !dbg !6380
  ret i32 0, !dbg !6381
}

; Function Attrs: noredzone
declare dso_local void @synchronize_irq(i32) #1

; Function Attrs: noredzone
declare dso_local void @class_remove_file_ns(%struct.class*, %struct.class_attribute*, i8*) #1

; Function Attrs: noredzone
declare dso_local i64 @show_class_attr_string(%struct.class*, %struct.class_attribute*, i8*) #1

; Function Attrs: noredzone
declare dso_local %struct.class* @__class_create(%struct.module*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !6382 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6385, metadata !DIExpression()), !dbg !6386
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !6387
  %1 = ptrtoint i8* %0 to i64, !dbg !6388
  ret i64 %1, !dbg !6389
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @class_create_file(%struct.class* %class, %struct.class_attribute* %attr) #2 !dbg !6390 {
entry:
  %class.addr = alloca %struct.class*, align 8
  %attr.addr = alloca %struct.class_attribute*, align 8
  store %struct.class* %class, %struct.class** %class.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class** %class.addr, metadata !6393, metadata !DIExpression()), !dbg !6394
  store %struct.class_attribute* %attr, %struct.class_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class_attribute** %attr.addr, metadata !6395, metadata !DIExpression()), !dbg !6396
  %0 = load %struct.class*, %struct.class** %class.addr, align 8, !dbg !6397
  %1 = load %struct.class_attribute*, %struct.class_attribute** %attr.addr, align 8, !dbg !6398
  %call = call i32 @class_create_file_ns(%struct.class* %0, %struct.class_attribute* %1, i8* null) #11, !dbg !6399
  ret i32 %call, !dbg !6400
}

; Function Attrs: noredzone
declare dso_local i32 @alloc_chrdev_region(i32*, i32, i32, i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @__pci_register_driver(%struct.pci_driver*, %struct.module*, i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @class_create_file_ns(%struct.class*, %struct.class_attribute*, i8*) #1

; Function Attrs: noredzone
declare dso_local i64 @__modver_version_show(%struct.module_attribute*, %struct.module_kobject*, i8*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }
attributes #13 = { noredzone nounwind readnone }
attributes #14 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4213}
!llvm.module.flags = !{!4214, !4215, !4216, !4217}
!llvm.ident = !{!4218}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "phantom_pci_driver", scope: !2, file: !3, line: 491, type: !3927, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !111, globals: !4093, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/misc/phantom.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !105}
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !94, line: 305, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 10, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104}
!103 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !106, line: 11, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!110 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!111 = !{!112, !114, !115, !118, !120, !123, !124, !125, !126, !7, !3364, !253}
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !113, line: 148, baseType: !7)
!113 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !117, line: 76, flags: DIFlagFwdDecl)
!117 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !119, line: 52, baseType: !7)
!119 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !123)
!123 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!124 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phantom_device", file: !3, line: 41, size: 1920, elements: !128)
!128 = !{!129, !130, !131, !137, !138, !139, !144, !171, !3353, !3354, !3355, !3363}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !127, file: !3, line: 42, baseType: !7, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "caddr", scope: !127, file: !3, line: 43, baseType: !114, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "iaddr", scope: !127, file: !3, line: 44, baseType: !132, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !134, line: 21, baseType: !135)
!134 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !136, line: 27, baseType: !7)
!136 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!137 = !DIDerivedType(tag: DW_TAG_member, name: "oaddr", scope: !127, file: !3, line: 45, baseType: !132, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !127, file: !3, line: 46, baseType: !124, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !127, file: !3, line: 47, baseType: !140, size: 32, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !113, line: 168, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 166, size: 32, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !141, file: !113, line: 167, baseType: !123, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !127, file: !3, line: 49, baseType: !145, size: 128, offset: 384)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !146, line: 40, baseType: !147)
!146 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !146, line: 36, size: 128, elements: !148)
!148 = !{!149, !165}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !147, file: !146, line: 37, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !151, line: 83, baseType: !152)
!151 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !151, line: 71, elements: !153)
!153 = !{!154}
!154 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !151, line: 72, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !152, file: !151, line: 72, elements: !156)
!156 = !{!157}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !155, file: !151, line: 73, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !151, line: 20, elements: !159)
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !158, file: !151, line: 21, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !162, line: 25, baseType: !163)
!162 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !162, line: 25, elements: !164)
!164 = !{}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !147, file: !146, line: 38, baseType: !166, size: 128)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !113, line: 178, size: 128, elements: !167)
!167 = !{!168, !170}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !166, file: !113, line: 179, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !166, file: !113, line: 179, baseType: !169, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !127, file: !3, line: 50, baseType: !172, size: 832, offset: 512)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !173, line: 14, size: 832, elements: !174)
!173 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!174 = !{!175, !3348, !3349, !3350, !3351, !3352}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !172, file: !173, line: 15, baseType: !176, size: 512)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !177, line: 64, size: 512, elements: !178)
!177 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!178 = !{!179, !183, !184, !186, !231, !3198, !3338, !3343, !3344, !3345, !3346, !3347}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !176, file: !177, line: 65, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !176, file: !177, line: 66, baseType: !166, size: 128, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !176, file: !177, line: 67, baseType: !185, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !176, file: !177, line: 68, baseType: !187, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !177, line: 192, size: 704, elements: !189)
!189 = !{!190, !191, !192, !193}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !188, file: !177, line: 193, baseType: !166, size: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !188, file: !177, line: 194, baseType: !150, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !188, file: !177, line: 195, baseType: !176, size: 512, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !188, file: !177, line: 196, baseType: !194, size: 64, offset: 640)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !177, line: 156, size: 192, elements: !197)
!197 = !{!198, !203, !208}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !196, file: !177, line: 157, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!123, !187, !185}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !177, line: 158, baseType: !204, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!180, !187, !185}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !196, file: !177, line: 159, baseType: !209, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!123, !187, !185, !213}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !177, line: 148, size: 20736, elements: !215)
!215 = !{!216, !221, !225, !226, !230}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !214, file: !177, line: 149, baseType: !217, size: 192)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 192, elements: !219)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!219 = !{!220}
!220 = !DISubrange(count: 3)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !214, file: !177, line: 150, baseType: !222, size: 4096, offset: 192)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 4096, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !214, file: !177, line: 151, baseType: !123, size: 32, offset: 4288)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !214, file: !177, line: 152, baseType: !227, size: 16384, offset: 4320)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 16384, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 2048)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !214, file: !177, line: 153, baseType: !123, size: 32, offset: 20704)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !176, file: !177, line: 69, baseType: !232, size: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !177, line: 138, size: 448, elements: !234)
!234 = !{!235, !239, !268, !270, !3160, !3188, !3192}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !233, file: !177, line: 139, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !185}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !233, file: !177, line: 140, baseType: !240, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !243, line: 230, size: 128, elements: !244)
!243 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!244 = !{!245, !261}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !242, file: !243, line: 231, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!249, !185, !254, !218}
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !113, line: 60, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !251, line: 73, baseType: !252)
!251 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !251, line: 15, baseType: !253)
!253 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !243, line: 30, size: 128, elements: !256)
!256 = !{!257, !258}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !255, file: !243, line: 31, baseType: !180, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !255, file: !243, line: 32, baseType: !259, size: 16, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !113, line: 19, baseType: !260)
!260 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !242, file: !243, line: 232, baseType: !262, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!249, !185, !254, !180, !265}
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 55, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !251, line: 72, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !251, line: 16, baseType: !124)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !233, file: !177, line: 141, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !233, file: !177, line: 142, baseType: !271, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !243, line: 84, size: 320, elements: !275)
!275 = !{!276, !277, !281, !3157, !3158}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !274, file: !243, line: 85, baseType: !180, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !274, file: !243, line: 86, baseType: !278, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!259, !185, !254, !123}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !274, file: !243, line: 88, baseType: !282, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!259, !185, !285, !123}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !243, line: 168, size: 448, elements: !287)
!287 = !{!288, !289, !290, !291, !3152, !3153}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !286, file: !243, line: 169, baseType: !255, size: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !286, file: !243, line: 170, baseType: !265, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !286, file: !243, line: 171, baseType: !114, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !286, file: !243, line: 172, baseType: !292, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!249, !295, !185, !285, !218, !470, !265}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !297)
!297 = !{!298, !316, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3135, !3136, !3145, !3146, !3147, !3148, !3149, !3150, !3151}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !296, file: !44, line: 920, baseType: !299, size: 128)
!299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !296, file: !44, line: 917, size: 128, elements: !300)
!300 = !{!301, !307}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !299, file: !44, line: 918, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !303, line: 58, size: 64, elements: !304)
!303 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !302, file: !303, line: 59, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !299, file: !44, line: 919, baseType: !308, size: 128, align: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !113, line: 216, size: 128, align: 64, elements: !309)
!309 = !{!310, !312}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !308, file: !113, line: 217, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !308, file: !113, line: 218, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !311}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !296, file: !44, line: 921, baseType: !317, size: 128, offset: 128)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !318, line: 8, size: 128, elements: !319)
!318 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!319 = !{!320, !324}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !317, file: !318, line: 9, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !323, line: 18, flags: DIFlagFwdDecl)
!323 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!324 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !317, file: !318, line: 10, baseType: !325, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !323, line: 89, size: 1536, elements: !327)
!327 = !{!328, !329, !339, !347, !348, !367, !3086, !3088, !3100, !3101, !3102, !3103, !3104, !3109, !3110, !3111}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !326, file: !323, line: 91, baseType: !7, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !326, file: !323, line: 92, baseType: !330, size: 32, offset: 32)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !331, line: 277, baseType: !332)
!331 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !331, line: 277, size: 32, elements: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !332, file: !331, line: 277, baseType: !335, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !331, line: 70, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !331, line: 65, size: 32, elements: !337)
!337 = !{!338}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !336, file: !331, line: 66, baseType: !7, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !326, file: !323, line: 93, baseType: !340, size: 128, offset: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !341, line: 38, size: 128, elements: !342)
!341 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!342 = !{!343, !345}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !340, file: !341, line: 39, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !340, file: !341, line: 39, baseType: !346, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !326, file: !323, line: 94, baseType: !325, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !326, file: !323, line: 95, baseType: !349, size: 128, offset: 256)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !323, line: 47, size: 128, elements: !350)
!350 = !{!351, !363}
!351 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !323, line: 48, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !349, file: !323, line: 48, size: 64, elements: !353)
!353 = !{!354, !359}
!354 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !323, line: 49, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !352, file: !323, line: 49, size: 64, elements: !356)
!356 = !{!357, !358}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !355, file: !323, line: 50, baseType: !133, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !355, file: !323, line: 50, baseType: !133, size: 32, offset: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !352, file: !323, line: 52, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !134, line: 23, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !136, line: 31, baseType: !362)
!362 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !349, file: !323, line: 54, baseType: !364, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!366 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !326, file: !323, line: 96, baseType: !368, size: 64, offset: 384)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !370)
!370 = !{!371, !372, !373, !381, !388, !389, !537, !2791, !2792, !2793, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !3063, !3071, !3072, !3073, !3082, !3083, !3084, !3085}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !369, file: !44, line: 611, baseType: !259, size: 16)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !369, file: !44, line: 612, baseType: !260, size: 16, offset: 16)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !369, file: !44, line: 613, baseType: !374, size: 32, offset: 32)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !375, line: 23, baseType: !376)
!375 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !375, line: 21, size: 32, elements: !377)
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !376, file: !375, line: 22, baseType: !379, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !113, line: 32, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !251, line: 49, baseType: !7)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !369, file: !44, line: 614, baseType: !382, size: 32, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !375, line: 28, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !375, line: 26, size: 32, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !383, file: !375, line: 27, baseType: !386, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !113, line: 33, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !251, line: 50, baseType: !7)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !369, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !369, file: !44, line: 622, baseType: !390, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !393)
!393 = !{!394, !398, !411, !415, !421, !425, !431, !435, !439, !443, !447, !448, !454, !458, !484, !513, !517, !523, !528, !532, !533}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !392, file: !44, line: 1865, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!325, !368, !325, !7}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !392, file: !44, line: 1866, baseType: !399, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!180, !325, !368, !402}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !404, line: 10, size: 128, elements: !405)
!404 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!405 = !{!406, !410}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !403, file: !404, line: 11, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !114}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !403, file: !404, line: 12, baseType: !114, size: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !392, file: !44, line: 1867, baseType: !412, size: 64, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!123, !368, !123}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !392, file: !44, line: 1868, baseType: !416, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!419, !368, !123}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !392, file: !44, line: 1870, baseType: !422, size: 64, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!123, !325, !218, !123}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !392, file: !44, line: 1872, baseType: !426, size: 64, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!123, !368, !325, !259, !429}
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !113, line: 30, baseType: !430)
!430 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !392, file: !44, line: 1873, baseType: !432, size: 64, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!123, !325, !368, !325}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !392, file: !44, line: 1874, baseType: !436, size: 64, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!123, !368, !325}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !392, file: !44, line: 1875, baseType: !440, size: 64, offset: 512)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!123, !368, !325, !180}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !392, file: !44, line: 1876, baseType: !444, size: 64, offset: 576)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!123, !368, !325, !259}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !392, file: !44, line: 1877, baseType: !436, size: 64, offset: 640)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !392, file: !44, line: 1878, baseType: !449, size: 64, offset: 704)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!123, !368, !325, !259, !452}
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !113, line: 16, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !113, line: 13, baseType: !133)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !392, file: !44, line: 1879, baseType: !455, size: 64, offset: 768)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!123, !368, !325, !368, !325, !7}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !392, file: !44, line: 1881, baseType: !459, size: 64, offset: 832)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!123, !325, !462}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !473, !481, !482, !483}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !463, file: !44, line: 220, baseType: !7, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !463, file: !44, line: 221, baseType: !259, size: 16, offset: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !463, file: !44, line: 222, baseType: !374, size: 32, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !463, file: !44, line: 223, baseType: !382, size: 32, offset: 96)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !463, file: !44, line: 224, baseType: !470, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !113, line: 46, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !251, line: 88, baseType: !472)
!472 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !463, file: !44, line: 225, baseType: !474, size: 128, offset: 192)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !475, line: 13, size: 128, elements: !476)
!475 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!476 = !{!477, !480}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !474, file: !475, line: 14, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !475, line: 8, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !136, line: 30, baseType: !472)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !474, file: !475, line: 15, baseType: !253, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !463, file: !44, line: 226, baseType: !474, size: 128, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !463, file: !44, line: 227, baseType: !474, size: 128, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !463, file: !44, line: 234, baseType: !295, size: 64, offset: 576)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !392, file: !44, line: 1882, baseType: !485, size: 64, offset: 896)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!123, !488, !490, !133, !7}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !492, line: 22, size: 1152, elements: !493)
!492 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!493 = !{!494, !495, !496, !497, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !491, file: !492, line: 23, baseType: !133, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !491, file: !492, line: 24, baseType: !259, size: 16, offset: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !491, file: !492, line: 25, baseType: !7, size: 32, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !491, file: !492, line: 26, baseType: !498, size: 32, offset: 96)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !113, line: 104, baseType: !133)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !491, file: !492, line: 27, baseType: !360, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !491, file: !492, line: 28, baseType: !360, size: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !491, file: !492, line: 37, baseType: !360, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !491, file: !492, line: 38, baseType: !452, size: 32, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !491, file: !492, line: 39, baseType: !452, size: 32, offset: 352)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !491, file: !492, line: 40, baseType: !374, size: 32, offset: 384)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !491, file: !492, line: 41, baseType: !382, size: 32, offset: 416)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !491, file: !492, line: 42, baseType: !470, size: 64, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !491, file: !492, line: 43, baseType: !474, size: 128, offset: 512)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !491, file: !492, line: 44, baseType: !474, size: 128, offset: 640)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !491, file: !492, line: 45, baseType: !474, size: 128, offset: 768)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !491, file: !492, line: 46, baseType: !474, size: 128, offset: 896)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !491, file: !492, line: 47, baseType: !360, size: 64, offset: 1024)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !491, file: !492, line: 48, baseType: !360, size: 64, offset: 1088)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !392, file: !44, line: 1883, baseType: !514, size: 64, offset: 960)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!249, !325, !218, !265}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !392, file: !44, line: 1884, baseType: !518, size: 64, offset: 1024)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!123, !368, !521, !360, !360}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !392, file: !44, line: 1886, baseType: !524, size: 64, offset: 1088)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!123, !368, !527, !123}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !392, file: !44, line: 1887, baseType: !529, size: 64, offset: 1152)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!123, !368, !325, !295, !7, !259}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !392, file: !44, line: 1890, baseType: !444, size: 64, offset: 1216)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !392, file: !44, line: 1891, baseType: !534, size: 64, offset: 1280)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!123, !368, !419, !123}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !369, file: !44, line: 623, baseType: !538, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !540)
!540 = !{!541, !542, !543, !544, !545, !546, !592, !2398, !2480, !2563, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2579, !2583, !2584, !2587, !2588, !2591, !2592, !2593, !2634, !2661, !2662, !2663, !2664, !2665, !2666, !2669, !2671, !2678, !2679, !2681, !2682, !2683, !2742, !2743, !2758, !2759, !2760, !2761, !2762, !2765, !2766, !2767, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !539, file: !44, line: 1417, baseType: !166, size: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !539, file: !44, line: 1418, baseType: !452, size: 32, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !539, file: !44, line: 1419, baseType: !366, size: 8, offset: 160)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !539, file: !44, line: 1420, baseType: !124, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !539, file: !44, line: 1421, baseType: !470, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !539, file: !44, line: 1422, baseType: !547, size: 64, offset: 320)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !549)
!549 = !{!550, !551, !552, !558, !562, !566, !570, !571, !572, !582, !585, !586, !587, !589, !590, !591}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !548, file: !44, line: 2229, baseType: !180, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !548, file: !44, line: 2230, baseType: !123, size: 32, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !548, file: !44, line: 2238, baseType: !553, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!123, !556}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !44, line: 69, flags: DIFlagFwdDecl)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !548, file: !44, line: 2239, baseType: !559, size: 64, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!561 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !548, file: !44, line: 2240, baseType: !563, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!325, !547, !123, !180, !114}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !548, file: !44, line: 2242, baseType: !567, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !538}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !548, file: !44, line: 2243, baseType: !115, size: 64, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !548, file: !44, line: 2244, baseType: !547, size: 64, offset: 448)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !548, file: !44, line: 2245, baseType: !573, size: 64, offset: 512)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !113, line: 182, size: 64, elements: !574)
!574 = !{!575}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !573, file: !113, line: 183, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !113, line: 186, size: 128, elements: !578)
!578 = !{!579, !580}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !577, file: !113, line: 187, baseType: !576, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !577, file: !113, line: 187, baseType: !581, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !548, file: !44, line: 2247, baseType: !583, offset: 576)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !584, line: 187, elements: !164)
!584 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!585 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !548, file: !44, line: 2248, baseType: !583, offset: 576)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !548, file: !44, line: 2249, baseType: !583, offset: 576)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !548, file: !44, line: 2250, baseType: !588, offset: 576)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, elements: !219)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !548, file: !44, line: 2252, baseType: !583, offset: 576)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !548, file: !44, line: 2253, baseType: !583, offset: 576)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !548, file: !44, line: 2254, baseType: !583, offset: 576)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !539, file: !44, line: 1423, baseType: !593, size: 64, offset: 384)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !596)
!596 = !{!597, !601, !605, !606, !610, !616, !620, !621, !622, !626, !630, !631, !632, !633, !639, !644, !645, !652, !653, !654, !655, !2382, !2397}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !595, file: !44, line: 1936, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!368, !538}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !595, file: !44, line: 1937, baseType: !602, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !368}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !595, file: !44, line: 1938, baseType: !602, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !595, file: !44, line: 1940, baseType: !607, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !368, !123}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !595, file: !44, line: 1941, baseType: !611, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!123, !368, !614}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 289, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !595, file: !44, line: 1942, baseType: !617, size: 64, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!123, !368}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !595, file: !44, line: 1943, baseType: !602, size: 64, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !595, file: !44, line: 1944, baseType: !567, size: 64, offset: 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !595, file: !44, line: 1945, baseType: !623, size: 64, offset: 512)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!123, !538, !123}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !595, file: !44, line: 1946, baseType: !627, size: 64, offset: 576)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!123, !538}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !595, file: !44, line: 1947, baseType: !627, size: 64, offset: 640)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !595, file: !44, line: 1948, baseType: !627, size: 64, offset: 704)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !595, file: !44, line: 1949, baseType: !627, size: 64, offset: 768)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !595, file: !44, line: 1950, baseType: !634, size: 64, offset: 832)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!123, !325, !637}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !595, file: !44, line: 1951, baseType: !640, size: 64, offset: 896)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!123, !538, !643, !218}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !595, file: !44, line: 1952, baseType: !567, size: 64, offset: 960)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !595, file: !44, line: 1954, baseType: !646, size: 64, offset: 1024)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!123, !649, !325}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !651, line: 539, flags: DIFlagFwdDecl)
!651 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!652 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !595, file: !44, line: 1955, baseType: !646, size: 64, offset: 1088)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !595, file: !44, line: 1956, baseType: !646, size: 64, offset: 1152)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !595, file: !44, line: 1957, baseType: !646, size: 64, offset: 1216)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !595, file: !44, line: 1963, baseType: !656, size: 64, offset: 1280)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!123, !538, !659, !112}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !661, line: 68, size: 512, align: 128, elements: !662)
!661 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!662 = !{!663, !664, !2374, !2381}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !660, file: !661, line: 69, baseType: !124, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !661, line: 77, baseType: !665, size: 320, offset: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !660, file: !661, line: 77, size: 320, elements: !666)
!666 = !{!667, !889, !894, !922, !930, !936, !2305, !2373}
!667 = !DIDerivedType(tag: DW_TAG_member, scope: !665, file: !661, line: 78, baseType: !668, size: 320)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !665, file: !661, line: 78, size: 320, elements: !669)
!669 = !{!670, !671, !887, !888}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !668, file: !661, line: 84, baseType: !166, size: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !668, file: !661, line: 86, baseType: !672, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !674)
!674 = !{!675, !676, !683, !684, !685, !700, !716, !717, !718, !719, !880, !881, !884, !885, !886}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !673, file: !44, line: 452, baseType: !368, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !673, file: !44, line: 453, baseType: !677, size: 128, offset: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !678, line: 292, size: 128, elements: !679)
!678 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!679 = !{!680, !681, !682}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !677, file: !678, line: 293, baseType: !150)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !677, file: !678, line: 295, baseType: !112, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !677, file: !678, line: 296, baseType: !114, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !673, file: !44, line: 454, baseType: !112, size: 32, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !673, file: !44, line: 455, baseType: !140, size: 32, offset: 224)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !673, file: !44, line: 460, baseType: !686, size: 128, offset: 256)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !687, line: 125, size: 128, elements: !688)
!687 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!688 = !{!689, !699}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !686, file: !687, line: 126, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !687, line: 31, size: 64, elements: !691)
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !690, file: !687, line: 32, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !687, line: 24, size: 192, align: 64, elements: !695)
!695 = !{!696, !697, !698}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !694, file: !687, line: 25, baseType: !124, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !694, file: !687, line: 26, baseType: !693, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !694, file: !687, line: 27, baseType: !693, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !686, file: !687, line: 127, baseType: !693, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !673, file: !44, line: 461, baseType: !701, size: 256, offset: 384)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !702, line: 35, size: 256, elements: !703)
!702 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!703 = !{!704, !712, !713, !715}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !701, file: !702, line: 36, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !706, line: 13, baseType: !707)
!706 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !113, line: 175, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 173, size: 64, elements: !709)
!709 = !{!710}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !708, file: !113, line: 174, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !134, line: 22, baseType: !479)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !701, file: !702, line: 42, baseType: !705, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !701, file: !702, line: 46, baseType: !714, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !151, line: 29, baseType: !158)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !701, file: !702, line: 47, baseType: !166, size: 128, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !673, file: !44, line: 462, baseType: !124, size: 64, offset: 640)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !673, file: !44, line: 463, baseType: !124, size: 64, offset: 704)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !673, file: !44, line: 464, baseType: !124, size: 64, offset: 768)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !673, file: !44, line: 465, baseType: !720, size: 64, offset: 832)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !723)
!723 = !{!724, !728, !732, !736, !740, !744, !750, !756, !760, !765, !769, !773, !777, !844, !848, !854, !855, !856, !860, !865, !869, !876}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !722, file: !44, line: 368, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!123, !659, !614}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !722, file: !44, line: 369, baseType: !729, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!123, !295, !659}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !722, file: !44, line: 372, baseType: !733, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!123, !672, !614}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !722, file: !44, line: 375, baseType: !737, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!123, !659}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !722, file: !44, line: 381, baseType: !741, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!123, !295, !672, !169, !7}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !722, file: !44, line: 383, baseType: !745, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !748}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !722, file: !44, line: 385, baseType: !751, size: 64, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!123, !295, !672, !470, !7, !7, !754, !755}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !722, file: !44, line: 388, baseType: !757, size: 64, offset: 448)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!123, !295, !672, !470, !7, !7, !659, !114}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !722, file: !44, line: 393, baseType: !761, size: 64, offset: 512)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!764, !672, !764}
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !113, line: 125, baseType: !360)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !722, file: !44, line: 394, baseType: !766, size: 64, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !659, !7, !7}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !722, file: !44, line: 395, baseType: !770, size: 64, offset: 640)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!123, !659, !112}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !722, file: !44, line: 396, baseType: !774, size: 64, offset: 704)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !659}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !722, file: !44, line: 397, baseType: !778, size: 64, offset: 768)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!249, !781, !803}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !783)
!783 = !{!784, !785, !786, !790, !791, !792, !795, !796}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !782, file: !44, line: 321, baseType: !295, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !782, file: !44, line: 326, baseType: !470, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !782, file: !44, line: 327, baseType: !787, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !781, !253, !253}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !782, file: !44, line: 328, baseType: !114, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !782, file: !44, line: 329, baseType: !123, size: 32, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !782, file: !44, line: 330, baseType: !793, size: 16, offset: 288)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !134, line: 19, baseType: !794)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !136, line: 24, baseType: !260)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !782, file: !44, line: 331, baseType: !793, size: 16, offset: 304)
!796 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !44, line: 332, baseType: !797, size: 64, offset: 320)
!797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !782, file: !44, line: 332, size: 64, elements: !798)
!798 = !{!799, !800}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !797, file: !44, line: 333, baseType: !7, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !797, file: !44, line: 334, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !805, line: 29, size: 320, elements: !806)
!805 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!806 = !{!807, !808, !809, !810, !835}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !804, file: !805, line: 35, baseType: !7, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !804, file: !805, line: 36, baseType: !265, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !804, file: !805, line: 37, baseType: !265, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !805, line: 38, baseType: !811, size: 64, offset: 192)
!811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !804, file: !805, line: 38, size: 64, elements: !812)
!812 = !{!813, !821, !828, !832}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !811, file: !805, line: 39, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !816)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !817, line: 17, size: 128, elements: !818)
!817 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!818 = !{!819, !820}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !816, file: !817, line: 19, baseType: !114, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !816, file: !817, line: 20, baseType: !266, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !811, file: !805, line: 40, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !805, line: 15, size: 128, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !824, file: !805, line: 16, baseType: !114, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !824, file: !805, line: 17, baseType: !265, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !811, file: !805, line: 41, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !805, line: 41, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !811, file: !805, line: 42, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !805, line: 13, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !805, line: 44, baseType: !836, size: 64, offset: 256)
!836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !804, file: !805, line: 44, size: 64, elements: !837)
!837 = !{!838, !839}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !836, file: !805, line: 45, baseType: !124, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !805, line: 46, baseType: !840, size: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !836, file: !805, line: 46, size: 64, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !840, file: !805, line: 47, baseType: !7, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "start_head", scope: !840, file: !805, line: 48, baseType: !7, size: 32, offset: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !722, file: !44, line: 402, baseType: !845, size: 64, offset: 832)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!123, !672, !659, !659, !5}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !722, file: !44, line: 404, baseType: !849, size: 64, offset: 896)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!429, !659, !852}
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !853, line: 305, baseType: !7)
!853 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!854 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !722, file: !44, line: 405, baseType: !774, size: 64, offset: 960)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !722, file: !44, line: 406, baseType: !737, size: 64, offset: 1024)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !722, file: !44, line: 407, baseType: !857, size: 64, offset: 1088)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!123, !659, !124, !124}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !722, file: !44, line: 409, baseType: !861, size: 64, offset: 1152)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !659, !864, !864}
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !722, file: !44, line: 410, baseType: !866, size: 64, offset: 1216)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!123, !672, !659}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !722, file: !44, line: 413, baseType: !870, size: 64, offset: 1280)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!123, !873, !295, !875}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !722, file: !44, line: 415, baseType: !877, size: 64, offset: 1344)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !295}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !673, file: !44, line: 466, baseType: !124, size: 64, offset: 896)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !673, file: !44, line: 467, baseType: !882, size: 32, offset: 960)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !883, line: 8, baseType: !133)
!883 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!884 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !673, file: !44, line: 468, baseType: !150, offset: 992)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !673, file: !44, line: 469, baseType: !166, size: 128, offset: 1024)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !673, file: !44, line: 470, baseType: !114, size: 64, offset: 1152)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !668, file: !661, line: 87, baseType: !124, size: 64, offset: 192)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !668, file: !661, line: 94, baseType: !124, size: 64, offset: 256)
!889 = !DIDerivedType(tag: DW_TAG_member, scope: !665, file: !661, line: 96, baseType: !890, size: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !665, file: !661, line: 96, size: 64, elements: !891)
!891 = !{!892}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !890, file: !661, line: 101, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !113, line: 143, baseType: !360)
!894 = !DIDerivedType(tag: DW_TAG_member, scope: !665, file: !661, line: 103, baseType: !895, size: 320)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !665, file: !661, line: 103, size: 320, elements: !896)
!896 = !{!897, !907, !910, !911}
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !661, line: 104, baseType: !898, size: 128)
!898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !895, file: !661, line: 104, size: 128, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !898, file: !661, line: 105, baseType: !166, size: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !661, line: 106, baseType: !902, size: 128)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !898, file: !661, line: 106, size: 128, elements: !903)
!903 = !{!904, !905, !906}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !902, file: !661, line: 107, baseType: !659, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !902, file: !661, line: 109, baseType: !123, size: 32, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !902, file: !661, line: 110, baseType: !123, size: 32, offset: 96)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !895, file: !661, line: 117, baseType: !908, size: 64, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !661, line: 117, flags: DIFlagFwdDecl)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !895, file: !661, line: 119, baseType: !114, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !661, line: 120, baseType: !912, size: 64, offset: 256)
!912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !895, file: !661, line: 120, size: 64, elements: !913)
!913 = !{!914, !915, !916}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !912, file: !661, line: 121, baseType: !114, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !912, file: !661, line: 122, baseType: !124, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, scope: !912, file: !661, line: 123, baseType: !917, size: 32)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !912, file: !661, line: 123, size: 32, elements: !918)
!918 = !{!919, !920, !921}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !917, file: !661, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !917, file: !661, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !917, file: !661, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!922 = !DIDerivedType(tag: DW_TAG_member, scope: !665, file: !661, line: 130, baseType: !923, size: 192)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !665, file: !661, line: 130, size: 192, elements: !924)
!924 = !{!925, !926, !927, !928, !929}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !923, file: !661, line: 131, baseType: !124, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !923, file: !661, line: 134, baseType: !366, size: 8, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !923, file: !661, line: 135, baseType: !366, size: 8, offset: 72)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !923, file: !661, line: 136, baseType: !140, size: 32, offset: 96)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !923, file: !661, line: 137, baseType: !7, size: 32, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, scope: !665, file: !661, line: 139, baseType: !931, size: 256)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !665, file: !661, line: 139, size: 256, elements: !932)
!932 = !{!933, !934, !935}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !931, file: !661, line: 140, baseType: !124, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !931, file: !661, line: 141, baseType: !140, size: 32, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !931, file: !661, line: 143, baseType: !166, size: 128, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, scope: !665, file: !661, line: 145, baseType: !937, size: 256)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !665, file: !661, line: 145, size: 256, elements: !938)
!938 = !{!939, !940, !942, !943, !2304}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !937, file: !661, line: 146, baseType: !124, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !937, file: !661, line: 147, baseType: !941, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !651, line: 509, baseType: !659)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !937, file: !661, line: 148, baseType: !124, size: 64, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, scope: !937, file: !661, line: 149, baseType: !944, size: 64, offset: 192)
!944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !937, file: !661, line: 149, size: 64, elements: !945)
!945 = !{!946, !2303}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !944, file: !661, line: 150, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !661, line: 388, size: 7296, elements: !949)
!949 = !{!950, !2299}
!950 = !DIDerivedType(tag: DW_TAG_member, scope: !948, file: !661, line: 389, baseType: !951, size: 7296)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !948, file: !661, line: 389, size: 7296, elements: !952)
!952 = !{!953, !1071, !1072, !1073, !1077, !1078, !1079, !1080, !1081, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1122, !1130, !1133, !1179, !1180, !2283, !2284, !2287, !2288, !2289, !2292, !2293, !2294, !2297, !2298}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !951, file: !661, line: 390, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !661, line: 305, size: 1472, elements: !956)
!956 = !{!957, !958, !959, !960, !961, !962, !963, !964, !971, !972, !977, !978, !981, !1065, !1066, !1067, !1068, !1069}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !955, file: !661, line: 308, baseType: !124, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !955, file: !661, line: 309, baseType: !124, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !955, file: !661, line: 313, baseType: !954, size: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !955, file: !661, line: 313, baseType: !954, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !955, file: !661, line: 315, baseType: !694, size: 192, align: 64, offset: 256)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !955, file: !661, line: 323, baseType: !124, size: 64, offset: 448)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !955, file: !661, line: 327, baseType: !947, size: 64, offset: 512)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !955, file: !661, line: 333, baseType: !965, size: 64, offset: 576)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !651, line: 284, baseType: !966)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !651, line: 284, size: 64, elements: !967)
!967 = !{!968}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !966, file: !651, line: 284, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !970, line: 19, baseType: !124)
!970 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!971 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !955, file: !661, line: 334, baseType: !124, size: 64, offset: 640)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !955, file: !661, line: 343, baseType: !973, size: 256, offset: 704)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !955, file: !661, line: 340, size: 256, elements: !974)
!974 = !{!975, !976}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !973, file: !661, line: 341, baseType: !694, size: 192, align: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !973, file: !661, line: 342, baseType: !124, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !955, file: !661, line: 351, baseType: !166, size: 128, offset: 960)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !955, file: !661, line: 353, baseType: !979, size: 64, offset: 1088)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !661, line: 353, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !955, file: !661, line: 356, baseType: !982, size: 64, offset: 1152)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !985)
!985 = !{!986, !990, !991, !995, !999, !1039, !1043, !1047, !1051, !1052, !1053, !1057, !1061}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !984, file: !14, line: 558, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{null, !954}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !984, file: !14, line: 559, baseType: !987, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !984, file: !14, line: 560, baseType: !992, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!123, !954, !124}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !984, file: !14, line: 561, baseType: !996, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!123, !954}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !984, file: !14, line: 562, baseType: !1000, size: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!1003, !1004}
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !661, line: 682, baseType: !7)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1006)
!1006 = !{!1007, !1008, !1009, !1010, !1011, !1012, !1019, !1026, !1032, !1033, !1034, !1036, !1038}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1005, file: !14, line: 509, baseType: !954, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1005, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1005, file: !14, line: 511, baseType: !112, size: 32, offset: 96)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1005, file: !14, line: 512, baseType: !124, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1005, file: !14, line: 513, baseType: !124, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1005, file: !14, line: 514, baseType: !1013, size: 64, offset: 256)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !651, line: 385, baseType: !1015)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !651, line: 385, size: 64, elements: !1016)
!1016 = !{!1017}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1015, file: !651, line: 385, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !970, line: 15, baseType: !124)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1005, file: !14, line: 516, baseType: !1020, size: 64, offset: 320)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !651, line: 359, baseType: !1022)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !651, line: 359, size: 64, elements: !1023)
!1023 = !{!1024}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1022, file: !651, line: 359, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !970, line: 16, baseType: !124)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1005, file: !14, line: 519, baseType: !1027, size: 64, offset: 384)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !970, line: 21, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !970, line: 21, size: 64, elements: !1029)
!1029 = !{!1030}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1028, file: !970, line: 21, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !970, line: 14, baseType: !124)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1005, file: !14, line: 521, baseType: !659, size: 64, offset: 448)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1005, file: !14, line: 522, baseType: !659, size: 64, offset: 512)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1005, file: !14, line: 528, baseType: !1035, size: 64, offset: 576)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1005, file: !14, line: 532, baseType: !1037, size: 64, offset: 640)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1005, file: !14, line: 536, baseType: !941, size: 64, offset: 704)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !984, file: !14, line: 563, baseType: !1040, size: 64, offset: 320)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!1003, !1004, !13}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !984, file: !14, line: 565, baseType: !1044, size: 64, offset: 384)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{null, !1004, !124, !124}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !984, file: !14, line: 567, baseType: !1048, size: 64, offset: 448)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!124, !954}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !984, file: !14, line: 571, baseType: !1000, size: 64, offset: 512)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !984, file: !14, line: 574, baseType: !1000, size: 64, offset: 576)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !984, file: !14, line: 579, baseType: !1054, size: 64, offset: 640)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!123, !954, !124, !114, !123, !123}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !984, file: !14, line: 585, baseType: !1058, size: 64, offset: 704)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!180, !954}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !984, file: !14, line: 615, baseType: !1062, size: 64, offset: 768)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!659, !954, !124}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !955, file: !661, line: 359, baseType: !124, size: 64, offset: 1216)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !955, file: !661, line: 361, baseType: !295, size: 64, offset: 1280)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !955, file: !661, line: 362, baseType: !114, size: 64, offset: 1344)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !955, file: !661, line: 365, baseType: !705, size: 64, offset: 1408)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !955, file: !661, line: 373, baseType: !1070, offset: 1472)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !661, line: 296, elements: !164)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !951, file: !661, line: 391, baseType: !690, size: 64, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !951, file: !661, line: 392, baseType: !360, size: 64, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !951, file: !661, line: 394, baseType: !1074, size: 64, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!124, !295, !124, !124, !124, !124}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !951, file: !661, line: 398, baseType: !124, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !951, file: !661, line: 399, baseType: !124, size: 64, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !951, file: !661, line: 405, baseType: !124, size: 64, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !951, file: !661, line: 406, baseType: !124, size: 64, offset: 448)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !951, file: !661, line: 407, baseType: !1082, size: 64, offset: 512)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !651, line: 286, baseType: !1084)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !651, line: 286, size: 64, elements: !1085)
!1085 = !{!1086}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1084, file: !651, line: 286, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !970, line: 18, baseType: !124)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !951, file: !661, line: 416, baseType: !140, size: 32, offset: 576)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !951, file: !661, line: 428, baseType: !140, size: 32, offset: 608)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !951, file: !661, line: 437, baseType: !140, size: 32, offset: 640)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !951, file: !661, line: 447, baseType: !140, size: 32, offset: 672)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !951, file: !661, line: 450, baseType: !705, size: 64, offset: 704)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !951, file: !661, line: 452, baseType: !123, size: 32, offset: 768)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !951, file: !661, line: 454, baseType: !150, offset: 800)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !951, file: !661, line: 457, baseType: !701, size: 256, offset: 832)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !951, file: !661, line: 459, baseType: !166, size: 128, offset: 1088)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !951, file: !661, line: 466, baseType: !124, size: 64, offset: 1216)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !951, file: !661, line: 467, baseType: !124, size: 64, offset: 1280)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !951, file: !661, line: 469, baseType: !124, size: 64, offset: 1344)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !951, file: !661, line: 470, baseType: !124, size: 64, offset: 1408)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !951, file: !661, line: 471, baseType: !707, size: 64, offset: 1472)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !951, file: !661, line: 472, baseType: !124, size: 64, offset: 1536)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !951, file: !661, line: 473, baseType: !124, size: 64, offset: 1600)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !951, file: !661, line: 474, baseType: !124, size: 64, offset: 1664)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !951, file: !661, line: 475, baseType: !124, size: 64, offset: 1728)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !951, file: !661, line: 477, baseType: !150, offset: 1792)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !951, file: !661, line: 478, baseType: !124, size: 64, offset: 1792)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !951, file: !661, line: 478, baseType: !124, size: 64, offset: 1856)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !951, file: !661, line: 478, baseType: !124, size: 64, offset: 1920)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !951, file: !661, line: 478, baseType: !124, size: 64, offset: 1984)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !951, file: !661, line: 479, baseType: !124, size: 64, offset: 2048)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !951, file: !661, line: 479, baseType: !124, size: 64, offset: 2112)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !951, file: !661, line: 479, baseType: !124, size: 64, offset: 2176)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !951, file: !661, line: 480, baseType: !124, size: 64, offset: 2240)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !951, file: !661, line: 480, baseType: !124, size: 64, offset: 2304)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !951, file: !661, line: 480, baseType: !124, size: 64, offset: 2368)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !951, file: !661, line: 480, baseType: !124, size: 64, offset: 2432)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !951, file: !661, line: 482, baseType: !1119, size: 2816, offset: 2496)
!1119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 2816, elements: !1120)
!1120 = !{!1121}
!1121 = !DISubrange(count: 44)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !951, file: !661, line: 488, baseType: !1123, size: 256, offset: 5312)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1124, line: 60, size: 256, elements: !1125)
!1124 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1125 = !{!1126}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1123, file: !1124, line: 61, baseType: !1127, size: 256)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !705, size: 256, elements: !1128)
!1128 = !{!1129}
!1129 = !DISubrange(count: 4)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !951, file: !661, line: 490, baseType: !1131, size: 64, offset: 5568)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !661, line: 490, flags: DIFlagFwdDecl)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !951, file: !661, line: 493, baseType: !1134, size: 896, offset: 5632)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1135, line: 53, baseType: !1136)
!1135 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1135, line: 13, size: 896, elements: !1137)
!1137 = !{!1138, !1139, !1140, !1141, !1144, !1145, !1152, !1153, !1173, !1174, !1175}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1136, file: !1135, line: 18, baseType: !360, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1136, file: !1135, line: 28, baseType: !707, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1136, file: !1135, line: 31, baseType: !701, size: 256, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1136, file: !1135, line: 32, baseType: !1142, size: 64, offset: 384)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1135, line: 32, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1136, file: !1135, line: 37, baseType: !260, size: 16, offset: 448)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1136, file: !1135, line: 40, baseType: !1146, size: 192, offset: 512)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1147, line: 53, size: 192, elements: !1148)
!1147 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1148 = !{!1149, !1150, !1151}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1146, file: !1147, line: 54, baseType: !705, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1146, file: !1147, line: 55, baseType: !150, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1146, file: !1147, line: 59, baseType: !166, size: 128, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1136, file: !1135, line: 41, baseType: !114, size: 64, offset: 704)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1136, file: !1135, line: 42, baseType: !1154, size: 64, offset: 768)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1156)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1157, line: 13, size: 896, elements: !1158)
!1157 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1158 = !{!1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1156, file: !1157, line: 14, baseType: !114, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1156, file: !1157, line: 15, baseType: !124, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1156, file: !1157, line: 17, baseType: !124, size: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1156, file: !1157, line: 17, baseType: !124, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1156, file: !1157, line: 19, baseType: !253, size: 64, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1156, file: !1157, line: 21, baseType: !253, size: 64, offset: 320)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1156, file: !1157, line: 22, baseType: !253, size: 64, offset: 384)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1156, file: !1157, line: 23, baseType: !253, size: 64, offset: 448)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1156, file: !1157, line: 24, baseType: !253, size: 64, offset: 512)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1156, file: !1157, line: 25, baseType: !253, size: 64, offset: 576)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1156, file: !1157, line: 26, baseType: !253, size: 64, offset: 640)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1156, file: !1157, line: 27, baseType: !253, size: 64, offset: 704)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1156, file: !1157, line: 28, baseType: !253, size: 64, offset: 768)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1156, file: !1157, line: 29, baseType: !253, size: 64, offset: 832)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1136, file: !1135, line: 44, baseType: !140, size: 32, offset: 832)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1136, file: !1135, line: 50, baseType: !793, size: 16, offset: 864)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1136, file: !1135, line: 51, baseType: !1176, size: 16, offset: 880)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !134, line: 18, baseType: !1177)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !136, line: 23, baseType: !1178)
!1178 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !951, file: !661, line: 495, baseType: !124, size: 64, offset: 6528)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !951, file: !661, line: 497, baseType: !1181, size: 64, offset: 6592)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !661, line: 381, size: 384, elements: !1183)
!1183 = !{!1184, !1185, !2282}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1182, file: !661, line: 382, baseType: !140, size: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1182, file: !661, line: 383, baseType: !1186, size: 128, offset: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !661, line: 376, size: 128, elements: !1187)
!1187 = !{!1188, !2280}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1186, file: !661, line: 377, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1191, line: 640, size: 48640, elements: !1192)
!1191 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1192 = !{!1193, !1199, !1201, !1202, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1219, !1237, !1248, !1333, !1334, !1335, !1346, !1347, !1349, !1350, !1351, !1352, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1435, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1467, !1469, !1470, !1471, !1483, !1484, !1485, !1486, !1487, !1488, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1512, !1517, !1701, !1702, !1703, !1704, !1708, !1711, !1714, !1717, !1720, !1723, !1824, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1870, !1871, !1872, !1873, !1874, !1879, !1880, !1881, !1884, !1885, !1888, !1891, !1894, !1897, !1940, !1943, !1944, !2023, !2024, !2027, !2028, !2031, !2032, !2033, !2037, !2038, !2039, !2052, !2053, !2054, !2064, !2069, !2070, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1190, file: !1191, line: 646, baseType: !1194, size: 128)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1195, line: 56, size: 128, elements: !1196)
!1195 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1196 = !{!1197, !1198}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1194, file: !1195, line: 57, baseType: !124, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1194, file: !1195, line: 58, baseType: !133, size: 32, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1190, file: !1191, line: 649, baseType: !1200, size: 64, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !253)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1190, file: !1191, line: 657, baseType: !114, size: 64, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1190, file: !1191, line: 658, baseType: !1203, size: 32, offset: 256)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1204, line: 113, baseType: !1205)
!1204 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1204, line: 111, size: 32, elements: !1206)
!1206 = !{!1207}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1205, file: !1204, line: 112, baseType: !140, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1190, file: !1191, line: 660, baseType: !7, size: 32, offset: 288)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1190, file: !1191, line: 661, baseType: !7, size: 32, offset: 320)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1190, file: !1191, line: 684, baseType: !123, size: 32, offset: 352)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1190, file: !1191, line: 686, baseType: !123, size: 32, offset: 384)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1190, file: !1191, line: 687, baseType: !123, size: 32, offset: 416)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1190, file: !1191, line: 688, baseType: !123, size: 32, offset: 448)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1190, file: !1191, line: 689, baseType: !7, size: 32, offset: 480)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1190, file: !1191, line: 691, baseType: !1216, size: 64, offset: 512)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1218)
!1218 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1191, line: 691, flags: DIFlagFwdDecl)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1190, file: !1191, line: 692, baseType: !1220, size: 832, offset: 576)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1191, line: 451, size: 832, elements: !1221)
!1221 = !{!1222, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1220, file: !1191, line: 453, baseType: !1223, size: 128)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1191, line: 325, size: 128, elements: !1224)
!1224 = !{!1225, !1226}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1223, file: !1191, line: 326, baseType: !124, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1223, file: !1191, line: 327, baseType: !133, size: 32, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1220, file: !1191, line: 454, baseType: !694, size: 192, align: 64, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1220, file: !1191, line: 455, baseType: !166, size: 128, offset: 320)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1220, file: !1191, line: 456, baseType: !7, size: 32, offset: 448)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1220, file: !1191, line: 458, baseType: !360, size: 64, offset: 512)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1220, file: !1191, line: 459, baseType: !360, size: 64, offset: 576)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1220, file: !1191, line: 460, baseType: !360, size: 64, offset: 640)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1220, file: !1191, line: 461, baseType: !360, size: 64, offset: 704)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1220, file: !1191, line: 463, baseType: !360, size: 64, offset: 768)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1220, file: !1191, line: 465, baseType: !1236, offset: 832)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1191, line: 415, elements: !164)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1190, file: !1191, line: 693, baseType: !1238, size: 384, offset: 1408)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1191, line: 489, size: 384, elements: !1239)
!1239 = !{!1240, !1241, !1242, !1243, !1244, !1245, !1246}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1238, file: !1191, line: 490, baseType: !166, size: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1238, file: !1191, line: 491, baseType: !124, size: 64, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1238, file: !1191, line: 492, baseType: !124, size: 64, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1238, file: !1191, line: 493, baseType: !7, size: 32, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1238, file: !1191, line: 494, baseType: !260, size: 16, offset: 288)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1238, file: !1191, line: 495, baseType: !260, size: 16, offset: 304)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1238, file: !1191, line: 497, baseType: !1247, size: 64, offset: 320)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1190, file: !1191, line: 697, baseType: !1249, size: 1792, offset: 1792)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1191, line: 507, size: 1792, elements: !1250)
!1250 = !{!1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1330, !1331}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1249, file: !1191, line: 508, baseType: !694, size: 192, align: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1249, file: !1191, line: 515, baseType: !360, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1249, file: !1191, line: 516, baseType: !360, size: 64, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1249, file: !1191, line: 517, baseType: !360, size: 64, offset: 320)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1249, file: !1191, line: 518, baseType: !360, size: 64, offset: 384)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1249, file: !1191, line: 519, baseType: !360, size: 64, offset: 448)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1249, file: !1191, line: 526, baseType: !711, size: 64, offset: 512)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1249, file: !1191, line: 527, baseType: !360, size: 64, offset: 576)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1249, file: !1191, line: 528, baseType: !7, size: 32, offset: 640)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1249, file: !1191, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1249, file: !1191, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1249, file: !1191, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1249, file: !1191, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1249, file: !1191, line: 563, baseType: !1265, size: 512, offset: 704)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1266)
!1266 = !{!1267, !1275, !1276, !1281, !1324, !1327, !1328, !1329}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1265, file: !20, line: 119, baseType: !1268, size: 256)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1269, line: 9, size: 256, elements: !1270)
!1269 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1270 = !{!1271, !1272}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1268, file: !1269, line: 10, baseType: !694, size: 192, align: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1268, file: !1269, line: 11, baseType: !1273, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1274, line: 29, baseType: !711)
!1274 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1265, file: !20, line: 120, baseType: !1273, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1265, file: !20, line: 121, baseType: !1277, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!19, !1280}
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1265, file: !20, line: 122, baseType: !1282, size: 64, offset: 384)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1284)
!1284 = !{!1285, !1305, !1306, !1309, !1314, !1315, !1319, !1323}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1283, file: !20, line: 160, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1288)
!1288 = !{!1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1287, file: !20, line: 215, baseType: !714)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1287, file: !20, line: 216, baseType: !7, size: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1287, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1287, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1287, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1287, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1287, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1287, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1287, file: !20, line: 233, baseType: !1273, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1287, file: !20, line: 234, baseType: !1280, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1287, file: !20, line: 235, baseType: !1273, size: 64, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1287, file: !20, line: 236, baseType: !1280, size: 64, offset: 320)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1287, file: !20, line: 237, baseType: !1302, size: 4096, offset: 512)
!1302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1283, size: 4096, elements: !1303)
!1303 = !{!1304}
!1304 = !DISubrange(count: 8)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1283, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1283, file: !20, line: 162, baseType: !1307, size: 32, offset: 96)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !113, line: 27, baseType: !1308)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !251, line: 96, baseType: !123)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1283, file: !20, line: 163, baseType: !1310, size: 32, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !331, line: 276, baseType: !1311)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !331, line: 276, size: 32, elements: !1312)
!1312 = !{!1313}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1311, file: !331, line: 276, baseType: !335, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1283, file: !20, line: 164, baseType: !1280, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1283, file: !20, line: 165, baseType: !1316, size: 128, offset: 256)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1269, line: 14, size: 128, elements: !1317)
!1317 = !{!1318}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1316, file: !1269, line: 15, baseType: !686, size: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1283, file: !20, line: 166, baseType: !1320, size: 64, offset: 384)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!1273}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1283, file: !20, line: 167, baseType: !1273, size: 64, offset: 448)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1265, file: !20, line: 123, baseType: !1325, size: 8, offset: 448)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !134, line: 17, baseType: !1326)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !136, line: 21, baseType: !366)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1265, file: !20, line: 124, baseType: !1325, size: 8, offset: 456)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1265, file: !20, line: 125, baseType: !1325, size: 8, offset: 464)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1265, file: !20, line: 126, baseType: !1325, size: 8, offset: 472)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1249, file: !1191, line: 572, baseType: !1265, size: 512, offset: 1216)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1249, file: !1191, line: 580, baseType: !1332, size: 64, offset: 1728)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1190, file: !1191, line: 721, baseType: !7, size: 32, offset: 3584)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1190, file: !1191, line: 722, baseType: !123, size: 32, offset: 3616)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1190, file: !1191, line: 723, baseType: !1336, size: 64, offset: 3648)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1338)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1339, line: 17, baseType: !1340)
!1339 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1339, line: 17, size: 64, elements: !1341)
!1341 = !{!1342}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1340, file: !1339, line: 17, baseType: !1343, size: 64)
!1343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 64, elements: !1344)
!1344 = !{!1345}
!1345 = !DISubrange(count: 1)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1190, file: !1191, line: 724, baseType: !1338, size: 64, offset: 3712)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1190, file: !1191, line: 749, baseType: !1348, offset: 3776)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1191, line: 290, elements: !164)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1190, file: !1191, line: 751, baseType: !166, size: 128, offset: 3776)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1190, file: !1191, line: 757, baseType: !947, size: 64, offset: 3904)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1190, file: !1191, line: 758, baseType: !947, size: 64, offset: 3968)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1190, file: !1191, line: 761, baseType: !1353, size: 320, offset: 4032)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1124, line: 34, size: 320, elements: !1354)
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1353, file: !1124, line: 35, baseType: !360, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1353, file: !1124, line: 36, baseType: !1357, size: 256, offset: 64)
!1357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !954, size: 256, elements: !1128)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1190, file: !1191, line: 766, baseType: !123, size: 32, offset: 4352)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1190, file: !1191, line: 767, baseType: !123, size: 32, offset: 4384)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1190, file: !1191, line: 768, baseType: !123, size: 32, offset: 4416)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1190, file: !1191, line: 770, baseType: !123, size: 32, offset: 4448)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1190, file: !1191, line: 772, baseType: !124, size: 64, offset: 4480)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1190, file: !1191, line: 775, baseType: !7, size: 32, offset: 4544)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1190, file: !1191, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1190, file: !1191, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1190, file: !1191, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1190, file: !1191, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1190, file: !1191, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1190, file: !1191, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1190, file: !1191, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1190, file: !1191, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1190, file: !1191, line: 831, baseType: !124, size: 64, offset: 4672)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1190, file: !1191, line: 833, baseType: !1374, size: 384, offset: 4736)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1375)
!1375 = !{!1376, !1381}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1374, file: !25, line: 26, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!253, !1380}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !25, line: 27, baseType: !1382, size: 320, offset: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1374, file: !25, line: 27, size: 320, elements: !1383)
!1383 = !{!1384, !1393, !1420}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1382, file: !25, line: 36, baseType: !1385, size: 320)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1382, file: !25, line: 29, size: 320, elements: !1386)
!1386 = !{!1387, !1388, !1389, !1390, !1391, !1392}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1385, file: !25, line: 30, baseType: !132, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1385, file: !25, line: 31, baseType: !133, size: 32, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1385, file: !25, line: 32, baseType: !133, size: 32, offset: 96)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1385, file: !25, line: 33, baseType: !133, size: 32, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1385, file: !25, line: 34, baseType: !360, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1385, file: !25, line: 35, baseType: !132, size: 64, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1382, file: !25, line: 46, baseType: !1394, size: 192)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1382, file: !25, line: 38, size: 192, elements: !1395)
!1395 = !{!1396, !1397, !1398, !1419}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1394, file: !25, line: 39, baseType: !1307, size: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1394, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, scope: !1394, file: !25, line: 41, baseType: !1399, size: 64, offset: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1394, file: !25, line: 41, size: 64, elements: !1400)
!1400 = !{!1401, !1409}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1399, file: !25, line: 42, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1404, line: 7, size: 128, elements: !1405)
!1404 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1405 = !{!1406, !1408}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1403, file: !1404, line: 8, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !251, line: 93, baseType: !472)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1403, file: !1404, line: 9, baseType: !472, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1399, file: !25, line: 43, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1412, line: 7, size: 64, elements: !1413)
!1412 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1413 = !{!1414, !1418}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1411, file: !1412, line: 8, baseType: !1415, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1412, line: 5, baseType: !1416)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !134, line: 20, baseType: !1417)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !136, line: 26, baseType: !123)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1411, file: !1412, line: 9, baseType: !1416, size: 32, offset: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1394, file: !25, line: 45, baseType: !360, size: 64, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1382, file: !25, line: 54, baseType: !1421, size: 256)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1382, file: !25, line: 48, size: 256, elements: !1422)
!1422 = !{!1423, !1431, !1432, !1433, !1434}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1421, file: !25, line: 49, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1426, line: 36, size: 64, elements: !1427)
!1426 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1427 = !{!1428, !1429, !1430}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1425, file: !1426, line: 37, baseType: !123, size: 32)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1425, file: !1426, line: 38, baseType: !1178, size: 16, offset: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1425, file: !1426, line: 39, baseType: !1178, size: 16, offset: 48)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1421, file: !25, line: 50, baseType: !123, size: 32, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1421, file: !25, line: 51, baseType: !123, size: 32, offset: 96)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1421, file: !25, line: 52, baseType: !124, size: 64, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1421, file: !25, line: 53, baseType: !124, size: 64, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1190, file: !1191, line: 835, baseType: !1436, size: 32, offset: 5120)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !113, line: 22, baseType: !1437)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !251, line: 28, baseType: !123)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1190, file: !1191, line: 836, baseType: !1436, size: 32, offset: 5152)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1190, file: !1191, line: 840, baseType: !124, size: 64, offset: 5184)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1190, file: !1191, line: 849, baseType: !1189, size: 64, offset: 5248)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1190, file: !1191, line: 852, baseType: !1189, size: 64, offset: 5312)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1190, file: !1191, line: 857, baseType: !166, size: 128, offset: 5376)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1190, file: !1191, line: 858, baseType: !166, size: 128, offset: 5504)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1190, file: !1191, line: 859, baseType: !1189, size: 64, offset: 5632)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1190, file: !1191, line: 867, baseType: !166, size: 128, offset: 5696)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1190, file: !1191, line: 868, baseType: !166, size: 128, offset: 5824)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1190, file: !1191, line: 871, baseType: !1448, size: 64, offset: 5952)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1450)
!1450 = !{!1451, !1452, !1453, !1454, !1456, !1457, !1458, !1459}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1449, file: !53, line: 61, baseType: !1203, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1449, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1449, file: !53, line: 63, baseType: !150, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1449, file: !53, line: 65, baseType: !1455, size: 256, offset: 64)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 256, elements: !1128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1449, file: !53, line: 66, baseType: !573, size: 64, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1449, file: !53, line: 68, baseType: !145, size: 128, offset: 384)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1449, file: !53, line: 69, baseType: !308, size: 128, align: 64, offset: 512)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1449, file: !53, line: 70, baseType: !1460, size: 128, offset: 640)
!1460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1461, size: 128, elements: !1344)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1462)
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1461, file: !53, line: 55, baseType: !123, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1461, file: !53, line: 56, baseType: !1465, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1190, file: !1191, line: 872, baseType: !1468, size: 512, offset: 6016)
!1468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 512, elements: !1128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1190, file: !1191, line: 873, baseType: !166, size: 128, offset: 6528)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1190, file: !1191, line: 874, baseType: !166, size: 128, offset: 6656)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1190, file: !1191, line: 876, baseType: !1472, size: 64, offset: 6784)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1474, line: 26, size: 192, elements: !1475)
!1474 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1475 = !{!1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1473, file: !1474, line: 27, baseType: !7, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1473, file: !1474, line: 28, baseType: !1478, size: 128, offset: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1479, line: 43, size: 128, elements: !1480)
!1479 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1478, file: !1479, line: 44, baseType: !714)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1478, file: !1479, line: 45, baseType: !166, size: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1190, file: !1191, line: 879, baseType: !643, size: 64, offset: 6848)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1190, file: !1191, line: 882, baseType: !643, size: 64, offset: 6912)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1190, file: !1191, line: 884, baseType: !360, size: 64, offset: 6976)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1190, file: !1191, line: 885, baseType: !360, size: 64, offset: 7040)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1190, file: !1191, line: 890, baseType: !360, size: 64, offset: 7104)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1190, file: !1191, line: 891, baseType: !1489, size: 128, offset: 7168)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1191, line: 242, size: 128, elements: !1490)
!1490 = !{!1491, !1492, !1493}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1489, file: !1191, line: 244, baseType: !360, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1489, file: !1191, line: 245, baseType: !360, size: 64, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1489, file: !1191, line: 246, baseType: !714, offset: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1190, file: !1191, line: 900, baseType: !124, size: 64, offset: 7296)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1190, file: !1191, line: 901, baseType: !124, size: 64, offset: 7360)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1190, file: !1191, line: 904, baseType: !360, size: 64, offset: 7424)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1190, file: !1191, line: 907, baseType: !360, size: 64, offset: 7488)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1190, file: !1191, line: 910, baseType: !124, size: 64, offset: 7552)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1190, file: !1191, line: 911, baseType: !124, size: 64, offset: 7616)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1190, file: !1191, line: 914, baseType: !1501, size: 640, offset: 7680)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1502, line: 123, size: 640, elements: !1503)
!1502 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1503 = !{!1504, !1510, !1511}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1501, file: !1502, line: 124, baseType: !1505, size: 576)
!1505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1506, size: 576, elements: !219)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1502, line: 108, size: 192, elements: !1507)
!1507 = !{!1508, !1509}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1506, file: !1502, line: 109, baseType: !360, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1506, file: !1502, line: 110, baseType: !1316, size: 128, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1501, file: !1502, line: 125, baseType: !7, size: 32, offset: 576)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1501, file: !1502, line: 126, baseType: !7, size: 32, offset: 608)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1190, file: !1191, line: 917, baseType: !1513, size: 192, offset: 8320)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1502, line: 134, size: 192, elements: !1514)
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1513, file: !1502, line: 135, baseType: !308, size: 128, align: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1513, file: !1502, line: 136, baseType: !7, size: 32, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1190, file: !1191, line: 923, baseType: !1518, size: 64, offset: 8512)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1520)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1521, line: 111, size: 1280, elements: !1522)
!1521 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1522 = !{!1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1542, !1543, !1544, !1545, !1546, !1547, !1654, !1655, !1656, !1657, !1683, !1686, !1696}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1520, file: !1521, line: 112, baseType: !140, size: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1520, file: !1521, line: 120, baseType: !374, size: 32, offset: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1520, file: !1521, line: 121, baseType: !382, size: 32, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1520, file: !1521, line: 122, baseType: !374, size: 32, offset: 96)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1520, file: !1521, line: 123, baseType: !382, size: 32, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1520, file: !1521, line: 124, baseType: !374, size: 32, offset: 160)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1520, file: !1521, line: 125, baseType: !382, size: 32, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1520, file: !1521, line: 126, baseType: !374, size: 32, offset: 224)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1520, file: !1521, line: 127, baseType: !382, size: 32, offset: 256)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1520, file: !1521, line: 128, baseType: !7, size: 32, offset: 288)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1520, file: !1521, line: 129, baseType: !1534, size: 64, offset: 320)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1535, line: 26, baseType: !1536)
!1535 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1535, line: 24, size: 64, elements: !1537)
!1537 = !{!1538}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1536, file: !1535, line: 25, baseType: !1539, size: 64)
!1539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 64, elements: !1540)
!1540 = !{!1541}
!1541 = !DISubrange(count: 2)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1520, file: !1521, line: 130, baseType: !1534, size: 64, offset: 384)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1520, file: !1521, line: 131, baseType: !1534, size: 64, offset: 448)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1520, file: !1521, line: 132, baseType: !1534, size: 64, offset: 512)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1520, file: !1521, line: 133, baseType: !1534, size: 64, offset: 576)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1520, file: !1521, line: 135, baseType: !366, size: 8, offset: 640)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1520, file: !1521, line: 137, baseType: !1548, size: 64, offset: 704)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1550, line: 189, size: 1664, elements: !1551)
!1550 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1551 = !{!1552, !1553, !1556, !1561, !1562, !1565, !1566, !1571, !1572, !1573, !1574, !1576, !1577, !1578, !1579, !1580, !1618, !1639}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1549, file: !1550, line: 190, baseType: !1203, size: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1549, file: !1550, line: 191, baseType: !1554, size: 32, offset: 32)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1550, line: 28, baseType: !1555)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !113, line: 98, baseType: !1416)
!1556 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !1550, line: 192, baseType: !1557, size: 192, offset: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1549, file: !1550, line: 192, size: 192, elements: !1558)
!1558 = !{!1559, !1560}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1557, file: !1550, line: 193, baseType: !166, size: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1557, file: !1550, line: 194, baseType: !694, size: 192, align: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1549, file: !1550, line: 199, baseType: !701, size: 256, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1549, file: !1550, line: 200, baseType: !1563, size: 64, offset: 512)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1550, line: 200, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1549, file: !1550, line: 201, baseType: !114, size: 64, offset: 576)
!1566 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !1550, line: 202, baseType: !1567, size: 64, offset: 640)
!1567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1549, file: !1550, line: 202, size: 64, elements: !1568)
!1568 = !{!1569, !1570}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1567, file: !1550, line: 203, baseType: !478, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1567, file: !1550, line: 204, baseType: !478, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1549, file: !1550, line: 206, baseType: !478, size: 64, offset: 704)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1549, file: !1550, line: 207, baseType: !374, size: 32, offset: 768)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1549, file: !1550, line: 208, baseType: !382, size: 32, offset: 800)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1549, file: !1550, line: 209, baseType: !1575, size: 32, offset: 832)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1550, line: 31, baseType: !498)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1549, file: !1550, line: 210, baseType: !260, size: 16, offset: 864)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1549, file: !1550, line: 211, baseType: !260, size: 16, offset: 880)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1549, file: !1550, line: 215, baseType: !1178, size: 16, offset: 896)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1549, file: !1550, line: 222, baseType: !124, size: 64, offset: 960)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !1550, line: 239, baseType: !1581, size: 320, offset: 1024)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1549, file: !1550, line: 239, size: 320, elements: !1582)
!1582 = !{!1583, !1610}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1581, file: !1550, line: 240, baseType: !1584, size: 320)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1550, line: 108, size: 320, elements: !1585)
!1585 = !{!1586, !1587, !1599, !1602, !1609}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1584, file: !1550, line: 110, baseType: !124, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !1550, line: 111, baseType: !1588, size: 64, offset: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !1550, line: 111, size: 64, elements: !1589)
!1589 = !{!1590, !1598}
!1590 = !DIDerivedType(tag: DW_TAG_member, scope: !1588, file: !1550, line: 112, baseType: !1591, size: 64)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1588, file: !1550, line: 112, size: 64, elements: !1592)
!1592 = !{!1593, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1591, file: !1550, line: 114, baseType: !793, size: 16)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1591, file: !1550, line: 115, baseType: !1595, size: 48, offset: 16)
!1595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 48, elements: !1596)
!1596 = !{!1597}
!1597 = !DISubrange(count: 6)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1588, file: !1550, line: 121, baseType: !124, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1584, file: !1550, line: 123, baseType: !1600, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1550, line: 96, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1584, file: !1550, line: 124, baseType: !1603, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1550, line: 102, size: 192, elements: !1605)
!1605 = !{!1606, !1607, !1608}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1604, file: !1550, line: 103, baseType: !308, size: 128, align: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1604, file: !1550, line: 104, baseType: !1203, size: 32, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1604, file: !1550, line: 105, baseType: !429, size: 8, offset: 160)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1584, file: !1550, line: 125, baseType: !180, size: 64, offset: 256)
!1610 = !DIDerivedType(tag: DW_TAG_member, scope: !1581, file: !1550, line: 241, baseType: !1611, size: 320)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1581, file: !1550, line: 241, size: 320, elements: !1612)
!1612 = !{!1613, !1614, !1615, !1616, !1617}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1611, file: !1550, line: 242, baseType: !124, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1611, file: !1550, line: 243, baseType: !124, size: 64, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1611, file: !1550, line: 244, baseType: !1600, size: 64, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1611, file: !1550, line: 245, baseType: !1603, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1611, file: !1550, line: 246, baseType: !218, size: 64, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !1550, line: 254, baseType: !1619, size: 256, offset: 1344)
!1619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1549, file: !1550, line: 254, size: 256, elements: !1620)
!1620 = !{!1621, !1627}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1619, file: !1550, line: 255, baseType: !1622, size: 256)
!1622 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1550, line: 128, size: 256, elements: !1623)
!1623 = !{!1624, !1625}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1622, file: !1550, line: 129, baseType: !114, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1622, file: !1550, line: 130, baseType: !1626, size: 256)
!1626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 256, elements: !1128)
!1627 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !1550, line: 256, baseType: !1628, size: 256)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1619, file: !1550, line: 256, size: 256, elements: !1629)
!1629 = !{!1630, !1631}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1628, file: !1550, line: 258, baseType: !166, size: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1628, file: !1550, line: 259, baseType: !1632, size: 128, offset: 128)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1633, line: 22, size: 128, elements: !1634)
!1633 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1634 = !{!1635, !1638}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1632, file: !1633, line: 23, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1633, line: 23, flags: DIFlagFwdDecl)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1632, file: !1633, line: 24, baseType: !124, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1549, file: !1550, line: 274, baseType: !1640, size: 64, offset: 1600)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1550, line: 170, size: 192, elements: !1642)
!1642 = !{!1643, !1652, !1653}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1641, file: !1550, line: 171, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1550, line: 165, baseType: !1645)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!123, !1548, !1648, !1650, !1548}
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1601)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1622)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1641, file: !1550, line: 172, baseType: !1548, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1641, file: !1550, line: 173, baseType: !1600, size: 64, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1520, file: !1521, line: 138, baseType: !1548, size: 64, offset: 768)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1520, file: !1521, line: 139, baseType: !1548, size: 64, offset: 832)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1520, file: !1521, line: 140, baseType: !1548, size: 64, offset: 896)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1520, file: !1521, line: 145, baseType: !1658, size: 64, offset: 960)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1660, line: 13, size: 896, elements: !1661)
!1660 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1661 = !{!1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1659, file: !1660, line: 14, baseType: !1203, size: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1659, file: !1660, line: 15, baseType: !140, size: 32, offset: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1659, file: !1660, line: 16, baseType: !140, size: 32, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1659, file: !1660, line: 21, baseType: !705, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1659, file: !1660, line: 27, baseType: !124, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1659, file: !1660, line: 28, baseType: !124, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1659, file: !1660, line: 29, baseType: !705, size: 64, offset: 320)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1659, file: !1660, line: 32, baseType: !577, size: 128, offset: 384)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1659, file: !1660, line: 33, baseType: !374, size: 32, offset: 512)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1659, file: !1660, line: 37, baseType: !705, size: 64, offset: 576)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1659, file: !1660, line: 44, baseType: !1673, size: 256, offset: 640)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1674, line: 15, size: 256, elements: !1675)
!1674 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1675 = !{!1676, !1677, !1678, !1679, !1680, !1681, !1682}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1673, file: !1674, line: 16, baseType: !714)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1673, file: !1674, line: 18, baseType: !123, size: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1673, file: !1674, line: 19, baseType: !123, size: 32, offset: 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1673, file: !1674, line: 20, baseType: !123, size: 32, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1673, file: !1674, line: 21, baseType: !123, size: 32, offset: 96)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1673, file: !1674, line: 22, baseType: !124, size: 64, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1673, file: !1674, line: 23, baseType: !124, size: 64, offset: 192)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1520, file: !1521, line: 146, baseType: !1684, size: 64, offset: 1024)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !375, line: 18, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1520, file: !1521, line: 147, baseType: !1687, size: 64, offset: 1088)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1521, line: 25, size: 64, elements: !1689)
!1689 = !{!1690, !1691, !1692}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1688, file: !1521, line: 26, baseType: !140, size: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1688, file: !1521, line: 27, baseType: !123, size: 32, offset: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1688, file: !1521, line: 28, baseType: !1693, offset: 64)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, elements: !1694)
!1694 = !{!1695}
!1695 = !DISubrange(count: 0)
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1520, file: !1521, line: 149, baseType: !1697, size: 128, offset: 1152)
!1697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1520, file: !1521, line: 149, size: 128, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1697, file: !1521, line: 150, baseType: !123, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1697, file: !1521, line: 151, baseType: !308, size: 128, align: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1190, file: !1191, line: 926, baseType: !1518, size: 64, offset: 8576)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1190, file: !1191, line: 929, baseType: !1518, size: 64, offset: 8640)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1190, file: !1191, line: 933, baseType: !1548, size: 64, offset: 8704)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1190, file: !1191, line: 943, baseType: !1705, size: 128, offset: 8768)
!1705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 128, elements: !1706)
!1706 = !{!1707}
!1707 = !DISubrange(count: 16)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1190, file: !1191, line: 945, baseType: !1709, size: 64, offset: 8896)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1191, line: 49, flags: DIFlagFwdDecl)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1190, file: !1191, line: 956, baseType: !1712, size: 64, offset: 8960)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1191, line: 45, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1190, file: !1191, line: 959, baseType: !1715, size: 64, offset: 9024)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1191, line: 959, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1190, file: !1191, line: 962, baseType: !1718, size: 64, offset: 9088)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1191, line: 66, flags: DIFlagFwdDecl)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1190, file: !1191, line: 966, baseType: !1721, size: 64, offset: 9152)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1191, line: 50, flags: DIFlagFwdDecl)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1190, file: !1191, line: 969, baseType: !1724, size: 64, offset: 9216)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1726, line: 82, size: 7296, elements: !1727)
!1726 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1727 = !{!1728, !1729, !1730, !1731, !1732, !1733, !1734, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1763, !1772, !1773, !1775, !1776, !1777, !1780, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1810, !1811, !1818, !1819, !1820, !1821, !1822, !1823}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1725, file: !1726, line: 83, baseType: !1203, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1725, file: !1726, line: 84, baseType: !140, size: 32, offset: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1725, file: !1726, line: 85, baseType: !123, size: 32, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1725, file: !1726, line: 86, baseType: !166, size: 128, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1725, file: !1726, line: 88, baseType: !145, size: 128, offset: 256)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1725, file: !1726, line: 91, baseType: !1189, size: 64, offset: 384)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1725, file: !1726, line: 94, baseType: !1735, size: 192, offset: 448)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1736, line: 30, size: 192, elements: !1737)
!1736 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1737 = !{!1738, !1739}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1735, file: !1736, line: 31, baseType: !166, size: 128)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1735, file: !1736, line: 32, baseType: !1740, size: 64, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1741, line: 25, baseType: !1742)
!1741 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1741, line: 23, size: 64, elements: !1743)
!1743 = !{!1744}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1742, file: !1741, line: 24, baseType: !1343, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1725, file: !1726, line: 97, baseType: !573, size: 64, offset: 640)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1725, file: !1726, line: 100, baseType: !123, size: 32, offset: 704)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1725, file: !1726, line: 106, baseType: !123, size: 32, offset: 736)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1725, file: !1726, line: 107, baseType: !1189, size: 64, offset: 768)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1725, file: !1726, line: 110, baseType: !123, size: 32, offset: 832)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1725, file: !1726, line: 111, baseType: !7, size: 32, offset: 864)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1725, file: !1726, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1725, file: !1726, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1725, file: !1726, line: 128, baseType: !123, size: 32, offset: 928)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1725, file: !1726, line: 129, baseType: !166, size: 128, offset: 960)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1725, file: !1726, line: 132, baseType: !1265, size: 512, offset: 1088)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1725, file: !1726, line: 133, baseType: !1273, size: 64, offset: 1600)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1725, file: !1726, line: 140, baseType: !1758, size: 256, offset: 1664)
!1758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1759, size: 256, elements: !1540)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1726, line: 38, size: 128, elements: !1760)
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1759, file: !1726, line: 39, baseType: !360, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1759, file: !1726, line: 40, baseType: !360, size: 64, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1725, file: !1726, line: 146, baseType: !1764, size: 192, offset: 1920)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1726, line: 66, size: 192, elements: !1765)
!1765 = !{!1766}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1764, file: !1726, line: 67, baseType: !1767, size: 192)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1726, line: 47, size: 192, elements: !1768)
!1768 = !{!1769, !1770, !1771}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1767, file: !1726, line: 48, baseType: !707, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1767, file: !1726, line: 49, baseType: !707, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1767, file: !1726, line: 50, baseType: !707, size: 64, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1725, file: !1726, line: 150, baseType: !1501, size: 640, offset: 2112)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1725, file: !1726, line: 153, baseType: !1774, size: 256, offset: 2752)
!1774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1448, size: 256, elements: !1128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1725, file: !1726, line: 159, baseType: !1448, size: 64, offset: 3008)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1725, file: !1726, line: 162, baseType: !123, size: 32, offset: 3072)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1725, file: !1726, line: 164, baseType: !1778, size: 64, offset: 3136)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1726, line: 164, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1725, file: !1726, line: 175, baseType: !1781, size: 32, offset: 3200)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !331, line: 805, baseType: !1782)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !331, line: 798, size: 32, elements: !1783)
!1783 = !{!1784, !1785}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1782, file: !331, line: 803, baseType: !330, size: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1782, file: !331, line: 804, baseType: !150, offset: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1725, file: !1726, line: 176, baseType: !360, size: 64, offset: 3264)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1725, file: !1726, line: 176, baseType: !360, size: 64, offset: 3328)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1725, file: !1726, line: 176, baseType: !360, size: 64, offset: 3392)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1725, file: !1726, line: 176, baseType: !360, size: 64, offset: 3456)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1725, file: !1726, line: 177, baseType: !360, size: 64, offset: 3520)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1725, file: !1726, line: 178, baseType: !360, size: 64, offset: 3584)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1725, file: !1726, line: 179, baseType: !1489, size: 128, offset: 3648)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1725, file: !1726, line: 180, baseType: !124, size: 64, offset: 3776)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1725, file: !1726, line: 180, baseType: !124, size: 64, offset: 3840)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1725, file: !1726, line: 180, baseType: !124, size: 64, offset: 3904)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1725, file: !1726, line: 180, baseType: !124, size: 64, offset: 3968)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1725, file: !1726, line: 181, baseType: !124, size: 64, offset: 4032)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1725, file: !1726, line: 181, baseType: !124, size: 64, offset: 4096)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1725, file: !1726, line: 181, baseType: !124, size: 64, offset: 4160)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1725, file: !1726, line: 181, baseType: !124, size: 64, offset: 4224)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1725, file: !1726, line: 182, baseType: !124, size: 64, offset: 4288)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1725, file: !1726, line: 182, baseType: !124, size: 64, offset: 4352)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1725, file: !1726, line: 182, baseType: !124, size: 64, offset: 4416)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1725, file: !1726, line: 182, baseType: !124, size: 64, offset: 4480)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1725, file: !1726, line: 183, baseType: !124, size: 64, offset: 4544)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1725, file: !1726, line: 183, baseType: !124, size: 64, offset: 4608)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1725, file: !1726, line: 184, baseType: !1808, offset: 4672)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1809, line: 12, elements: !164)
!1809 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1725, file: !1726, line: 192, baseType: !362, size: 64, offset: 4672)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1725, file: !1726, line: 203, baseType: !1812, size: 2048, offset: 4736)
!1812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1813, size: 2048, elements: !1706)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1814, line: 43, size: 128, elements: !1815)
!1814 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1815 = !{!1816, !1817}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1813, file: !1814, line: 44, baseType: !267, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1813, file: !1814, line: 45, baseType: !267, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1725, file: !1726, line: 220, baseType: !429, size: 8, offset: 6784)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1725, file: !1726, line: 221, baseType: !1178, size: 16, offset: 6800)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1725, file: !1726, line: 222, baseType: !1178, size: 16, offset: 6816)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1725, file: !1726, line: 224, baseType: !947, size: 64, offset: 6848)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1725, file: !1726, line: 227, baseType: !1146, size: 192, offset: 6912)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1725, file: !1726, line: 233, baseType: !1146, size: 192, offset: 7104)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1190, file: !1191, line: 970, baseType: !1825, size: 64, offset: 9280)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1726, line: 20, size: 16576, elements: !1827)
!1827 = !{!1828, !1829, !1830, !1831}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1826, file: !1726, line: 21, baseType: !150)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1826, file: !1726, line: 22, baseType: !1203, size: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1826, file: !1726, line: 23, baseType: !145, size: 128, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1826, file: !1726, line: 24, baseType: !1832, size: 16384, offset: 192)
!1832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1833, size: 16384, elements: !223)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1736, line: 49, size: 256, elements: !1834)
!1834 = !{!1835}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1833, file: !1736, line: 50, baseType: !1836, size: 256)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1736, line: 35, size: 256, elements: !1837)
!1837 = !{!1838, !1845, !1846, !1852}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1836, file: !1736, line: 37, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1840, line: 19, baseType: !1841)
!1840 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1840, line: 18, baseType: !1843)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{null, !123}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1836, file: !1736, line: 38, baseType: !124, size: 64, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1836, file: !1736, line: 44, baseType: !1847, size: 64, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1840, line: 22, baseType: !1848)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1840, line: 21, baseType: !1850)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{null}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1836, file: !1736, line: 46, baseType: !1740, size: 64, offset: 192)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1190, file: !1191, line: 971, baseType: !1740, size: 64, offset: 9344)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1190, file: !1191, line: 972, baseType: !1740, size: 64, offset: 9408)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1190, file: !1191, line: 974, baseType: !1740, size: 64, offset: 9472)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1190, file: !1191, line: 975, baseType: !1735, size: 192, offset: 9536)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1190, file: !1191, line: 976, baseType: !124, size: 64, offset: 9728)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1190, file: !1191, line: 977, baseType: !265, size: 64, offset: 9792)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1190, file: !1191, line: 978, baseType: !7, size: 32, offset: 9856)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1190, file: !1191, line: 980, baseType: !311, size: 64, offset: 9920)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1190, file: !1191, line: 989, baseType: !1862, size: 128, offset: 9984)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1863, line: 35, size: 128, elements: !1864)
!1863 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1864 = !{!1865, !1866, !1867}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1862, file: !1863, line: 36, baseType: !123, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1862, file: !1863, line: 37, baseType: !140, size: 32, offset: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1862, file: !1863, line: 38, baseType: !1868, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1863, line: 23, flags: DIFlagFwdDecl)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1190, file: !1191, line: 992, baseType: !360, size: 64, offset: 10112)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1190, file: !1191, line: 993, baseType: !360, size: 64, offset: 10176)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1190, file: !1191, line: 996, baseType: !150, offset: 10240)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1190, file: !1191, line: 999, baseType: !714, offset: 10240)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1190, file: !1191, line: 1001, baseType: !1875, size: 64, offset: 10240)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1191, line: 636, size: 64, elements: !1876)
!1876 = !{!1877}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1875, file: !1191, line: 637, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1190, file: !1191, line: 1005, baseType: !686, size: 128, offset: 10304)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1190, file: !1191, line: 1007, baseType: !1189, size: 64, offset: 10432)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1190, file: !1191, line: 1009, baseType: !1882, size: 64, offset: 10496)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1191, line: 1009, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1190, file: !1191, line: 1043, baseType: !114, size: 64, offset: 10560)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1190, file: !1191, line: 1046, baseType: !1886, size: 64, offset: 10624)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1191, line: 41, flags: DIFlagFwdDecl)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1190, file: !1191, line: 1050, baseType: !1889, size: 64, offset: 10688)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1191, line: 42, flags: DIFlagFwdDecl)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1190, file: !1191, line: 1054, baseType: !1892, size: 64, offset: 10752)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1191, line: 55, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1190, file: !1191, line: 1056, baseType: !1895, size: 64, offset: 10816)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1191, line: 40, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1190, file: !1191, line: 1058, baseType: !1898, size: 64, offset: 10880)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1900, line: 99, size: 704, elements: !1901)
!1900 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1901 = !{!1902, !1903, !1904, !1905, !1906, !1907, !1908, !1927, !1928}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1899, file: !1900, line: 100, baseType: !705, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1899, file: !1900, line: 101, baseType: !140, size: 32, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1899, file: !1900, line: 102, baseType: !140, size: 32, offset: 96)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1899, file: !1900, line: 105, baseType: !150, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1899, file: !1900, line: 107, baseType: !260, size: 16, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1899, file: !1900, line: 109, baseType: !677, size: 128, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1899, file: !1900, line: 110, baseType: !1909, size: 64, offset: 320)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1900, line: 73, size: 448, elements: !1911)
!1911 = !{!1912, !1915, !1916, !1921, !1926}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1910, file: !1900, line: 74, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1900, line: 74, flags: DIFlagFwdDecl)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1910, file: !1900, line: 75, baseType: !1898, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, scope: !1910, file: !1900, line: 83, baseType: !1917, size: 128, offset: 128)
!1917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1910, file: !1900, line: 83, size: 128, elements: !1918)
!1918 = !{!1919, !1920}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1917, file: !1900, line: 84, baseType: !166, size: 128)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1917, file: !1900, line: 85, baseType: !908, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, scope: !1910, file: !1900, line: 87, baseType: !1922, size: 128, offset: 256)
!1922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1910, file: !1900, line: 87, size: 128, elements: !1923)
!1923 = !{!1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1922, file: !1900, line: 88, baseType: !577, size: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1922, file: !1900, line: 89, baseType: !308, size: 128, align: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1910, file: !1900, line: 92, baseType: !7, size: 32, offset: 384)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1899, file: !1900, line: 111, baseType: !573, size: 64, offset: 384)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1899, file: !1900, line: 113, baseType: !1929, size: 256, offset: 448)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1930, line: 102, size: 256, elements: !1931)
!1930 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1931 = !{!1932, !1933, !1934}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1929, file: !1930, line: 103, baseType: !705, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1929, file: !1930, line: 104, baseType: !166, size: 128, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1929, file: !1930, line: 105, baseType: !1935, size: 64, offset: 192)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1930, line: 21, baseType: !1936)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !1939}
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1190, file: !1191, line: 1061, baseType: !1941, size: 64, offset: 10944)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1191, line: 43, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1190, file: !1191, line: 1064, baseType: !124, size: 64, offset: 11008)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1190, file: !1191, line: 1065, baseType: !1945, size: 64, offset: 11072)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1736, line: 14, baseType: !1947)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1736, line: 12, size: 384, elements: !1948)
!1948 = !{!1949}
!1949 = !DIDerivedType(tag: DW_TAG_member, scope: !1947, file: !1736, line: 13, baseType: !1950, size: 384)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1947, file: !1736, line: 13, size: 384, elements: !1951)
!1951 = !{!1952, !1953, !1954, !1955}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1950, file: !1736, line: 13, baseType: !123, size: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1950, file: !1736, line: 13, baseType: !123, size: 32, offset: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1950, file: !1736, line: 13, baseType: !123, size: 32, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1950, file: !1736, line: 13, baseType: !1956, size: 256, offset: 128)
!1956 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1957, line: 32, size: 256, elements: !1958)
!1957 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1958 = !{!1959, !1964, !1977, !1983, !1992, !2012, !2017}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1956, file: !1957, line: 37, baseType: !1960, size: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !1957, line: 34, size: 64, elements: !1961)
!1961 = !{!1962, !1963}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1960, file: !1957, line: 35, baseType: !1437, size: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1960, file: !1957, line: 36, baseType: !380, size: 32, offset: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1956, file: !1957, line: 45, baseType: !1965, size: 192)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !1957, line: 40, size: 192, elements: !1966)
!1966 = !{!1967, !1969, !1970, !1976}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1965, file: !1957, line: 41, baseType: !1968, size: 32)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !251, line: 95, baseType: !123)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1965, file: !1957, line: 42, baseType: !123, size: 32, offset: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1965, file: !1957, line: 43, baseType: !1971, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1957, line: 11, baseType: !1972)
!1972 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1957, line: 8, size: 64, elements: !1973)
!1973 = !{!1974, !1975}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1972, file: !1957, line: 9, baseType: !123, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1972, file: !1957, line: 10, baseType: !114, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1965, file: !1957, line: 44, baseType: !123, size: 32, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1956, file: !1957, line: 52, baseType: !1978, size: 128)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !1957, line: 48, size: 128, elements: !1979)
!1979 = !{!1980, !1981, !1982}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1978, file: !1957, line: 49, baseType: !1437, size: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1978, file: !1957, line: 50, baseType: !380, size: 32, offset: 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1978, file: !1957, line: 51, baseType: !1971, size: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1956, file: !1957, line: 61, baseType: !1984, size: 256)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !1957, line: 55, size: 256, elements: !1985)
!1985 = !{!1986, !1987, !1988, !1989, !1991}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1984, file: !1957, line: 56, baseType: !1437, size: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1984, file: !1957, line: 57, baseType: !380, size: 32, offset: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1984, file: !1957, line: 58, baseType: !123, size: 32, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1984, file: !1957, line: 59, baseType: !1990, size: 64, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !251, line: 94, baseType: !252)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1984, file: !1957, line: 60, baseType: !1990, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1956, file: !1957, line: 95, baseType: !1993, size: 256)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !1957, line: 64, size: 256, elements: !1994)
!1994 = !{!1995, !1996}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1993, file: !1957, line: 65, baseType: !114, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, scope: !1993, file: !1957, line: 77, baseType: !1997, size: 192, offset: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1993, file: !1957, line: 77, size: 192, elements: !1998)
!1998 = !{!1999, !2000, !2007}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1997, file: !1957, line: 82, baseType: !1178, size: 16)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1997, file: !1957, line: 88, baseType: !2001, size: 192)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1997, file: !1957, line: 84, size: 192, elements: !2002)
!2002 = !{!2003, !2005, !2006}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2001, file: !1957, line: 85, baseType: !2004, size: 64)
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 64, elements: !1303)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2001, file: !1957, line: 86, baseType: !114, size: 64, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2001, file: !1957, line: 87, baseType: !114, size: 64, offset: 128)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1997, file: !1957, line: 93, baseType: !2008, size: 96)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1997, file: !1957, line: 90, size: 96, elements: !2009)
!2009 = !{!2010, !2011}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2008, file: !1957, line: 91, baseType: !2004, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2008, file: !1957, line: 92, baseType: !135, size: 32, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1956, file: !1957, line: 101, baseType: !2013, size: 128)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !1957, line: 98, size: 128, elements: !2014)
!2014 = !{!2015, !2016}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2013, file: !1957, line: 99, baseType: !253, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2013, file: !1957, line: 100, baseType: !123, size: 32, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1956, file: !1957, line: 108, baseType: !2018, size: 128)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !1957, line: 104, size: 128, elements: !2019)
!2019 = !{!2020, !2021, !2022}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2018, file: !1957, line: 105, baseType: !114, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2018, file: !1957, line: 106, baseType: !123, size: 32, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2018, file: !1957, line: 107, baseType: !7, size: 32, offset: 96)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1190, file: !1191, line: 1067, baseType: !1808, offset: 11136)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1190, file: !1191, line: 1099, baseType: !2025, size: 64, offset: 11136)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1191, line: 56, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1190, file: !1191, line: 1103, baseType: !166, size: 128, offset: 11200)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1190, file: !1191, line: 1104, baseType: !2029, size: 64, offset: 11328)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1191, line: 46, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1190, file: !1191, line: 1105, baseType: !1146, size: 192, offset: 11392)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1190, file: !1191, line: 1106, baseType: !7, size: 32, offset: 11584)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1190, file: !1191, line: 1109, baseType: !2034, size: 128, offset: 11648)
!2034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2035, size: 128, elements: !1540)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1191, line: 51, flags: DIFlagFwdDecl)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1190, file: !1191, line: 1110, baseType: !1146, size: 192, offset: 11776)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1190, file: !1191, line: 1111, baseType: !166, size: 128, offset: 11968)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1190, file: !1191, line: 1173, baseType: !2040, size: 64, offset: 12096)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2042, line: 62, size: 256, align: 256, elements: !2043)
!2042 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2043 = !{!2044, !2045, !2046, !2051}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2041, file: !2042, line: 75, baseType: !135, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2041, file: !2042, line: 90, baseType: !135, size: 32, offset: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2041, file: !2042, line: 124, baseType: !2047, size: 64, offset: 64)
!2047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2041, file: !2042, line: 109, size: 64, elements: !2048)
!2048 = !{!2049, !2050}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2047, file: !2042, line: 110, baseType: !361, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2047, file: !2042, line: 112, baseType: !361, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2041, file: !2042, line: 144, baseType: !135, size: 32, offset: 128)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1190, file: !1191, line: 1174, baseType: !133, size: 32, offset: 12160)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1190, file: !1191, line: 1179, baseType: !124, size: 64, offset: 12224)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1190, file: !1191, line: 1182, baseType: !2055, size: 128, offset: 12288)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1124, line: 76, size: 128, elements: !2056)
!2056 = !{!2057, !2062, !2063}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2055, file: !1124, line: 85, baseType: !2058, size: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2059, line: 7, size: 64, elements: !2060)
!2059 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2060 = !{!2061}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2058, file: !2059, line: 12, baseType: !1340, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2055, file: !1124, line: 88, baseType: !429, size: 8, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2055, file: !1124, line: 95, baseType: !429, size: 8, offset: 72)
!2064 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !1191, line: 1184, baseType: !2065, size: 128, offset: 12416)
!2065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1190, file: !1191, line: 1184, size: 128, elements: !2066)
!2066 = !{!2067, !2068}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2065, file: !1191, line: 1185, baseType: !1203, size: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2065, file: !1191, line: 1186, baseType: !308, size: 128, align: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1190, file: !1191, line: 1190, baseType: !833, size: 64, offset: 12544)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1190, file: !1191, line: 1192, baseType: !2071, size: 128, offset: 12608)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1124, line: 64, size: 128, elements: !2072)
!2072 = !{!2073, !2074, !2075}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2071, file: !1124, line: 65, baseType: !659, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2071, file: !1124, line: 67, baseType: !135, size: 32, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2071, file: !1124, line: 68, baseType: !135, size: 32, offset: 96)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1190, file: !1191, line: 1206, baseType: !123, size: 32, offset: 12736)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1190, file: !1191, line: 1207, baseType: !123, size: 32, offset: 12768)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1190, file: !1191, line: 1209, baseType: !124, size: 64, offset: 12800)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1190, file: !1191, line: 1219, baseType: !360, size: 64, offset: 12864)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1190, file: !1191, line: 1220, baseType: !360, size: 64, offset: 12928)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1190, file: !1191, line: 1317, baseType: !123, size: 32, offset: 12992)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1190, file: !1191, line: 1319, baseType: !1189, size: 64, offset: 13056)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1190, file: !1191, line: 1322, baseType: !2084, size: 64, offset: 13120)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2086, line: 56, size: 512, elements: !2087)
!2086 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2087 = !{!2088, !2089, !2090, !2091, !2092, !2093, !2094, !2096}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2085, file: !2086, line: 57, baseType: !2084, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2085, file: !2086, line: 58, baseType: !114, size: 64, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2085, file: !2086, line: 59, baseType: !124, size: 64, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2085, file: !2086, line: 60, baseType: !124, size: 64, offset: 192)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2085, file: !2086, line: 61, baseType: !754, size: 64, offset: 256)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2085, file: !2086, line: 62, baseType: !7, size: 32, offset: 320)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2085, file: !2086, line: 63, baseType: !2095, size: 64, offset: 384)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !113, line: 153, baseType: !360)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2085, file: !2086, line: 64, baseType: !2097, size: 64, offset: 448)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1190, file: !1191, line: 1326, baseType: !1203, size: 32, offset: 13184)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1190, file: !1191, line: 1342, baseType: !114, size: 64, offset: 13248)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1190, file: !1191, line: 1343, baseType: !361, size: 64, offset: 13312)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1190, file: !1191, line: 1344, baseType: !360, size: 64, offset: 13376)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1190, file: !1191, line: 1345, baseType: !361, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1190, file: !1191, line: 1346, baseType: !361, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1190, file: !1191, line: 1347, baseType: !361, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1190, file: !1191, line: 1348, baseType: !308, size: 128, align: 64, offset: 13504)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1190, file: !1191, line: 1358, baseType: !2108, size: 34816, offset: 13824)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2109, line: 485, size: 34816, elements: !2110)
!2109 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2110 = !{!2111, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2140, !2141, !2142, !2143, !2144, !2145, !2148, !2149, !2150}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2108, file: !2109, line: 487, baseType: !2112, size: 192)
!2112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2113, size: 192, elements: !219)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2114, line: 16, size: 64, elements: !2115)
!2114 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2115 = !{!2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2113, file: !2114, line: 17, baseType: !793, size: 16)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2113, file: !2114, line: 18, baseType: !793, size: 16, offset: 16)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2113, file: !2114, line: 19, baseType: !793, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2113, file: !2114, line: 19, baseType: !793, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2113, file: !2114, line: 19, baseType: !793, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2113, file: !2114, line: 19, baseType: !793, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2113, file: !2114, line: 19, baseType: !793, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2113, file: !2114, line: 20, baseType: !793, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2113, file: !2114, line: 20, baseType: !793, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2113, file: !2114, line: 20, baseType: !793, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2113, file: !2114, line: 20, baseType: !793, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2113, file: !2114, line: 20, baseType: !793, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2113, file: !2114, line: 20, baseType: !793, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2108, file: !2109, line: 491, baseType: !124, size: 64, offset: 192)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2108, file: !2109, line: 495, baseType: !260, size: 16, offset: 256)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2108, file: !2109, line: 496, baseType: !260, size: 16, offset: 272)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2108, file: !2109, line: 497, baseType: !260, size: 16, offset: 288)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2108, file: !2109, line: 498, baseType: !260, size: 16, offset: 304)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2108, file: !2109, line: 502, baseType: !124, size: 64, offset: 320)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2108, file: !2109, line: 503, baseType: !124, size: 64, offset: 384)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2108, file: !2109, line: 514, baseType: !2137, size: 256, offset: 448)
!2137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2138, size: 256, elements: !1128)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2109, line: 483, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2108, file: !2109, line: 516, baseType: !124, size: 64, offset: 704)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2108, file: !2109, line: 518, baseType: !124, size: 64, offset: 768)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2108, file: !2109, line: 520, baseType: !124, size: 64, offset: 832)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2108, file: !2109, line: 521, baseType: !124, size: 64, offset: 896)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2108, file: !2109, line: 522, baseType: !124, size: 64, offset: 960)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2108, file: !2109, line: 528, baseType: !2146, size: 64, offset: 1024)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2109, line: 10, flags: DIFlagFwdDecl)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2108, file: !2109, line: 535, baseType: !124, size: 64, offset: 1088)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2108, file: !2109, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2108, file: !2109, line: 540, baseType: !2151, size: 33280, offset: 1536)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2152, line: 317, size: 33280, elements: !2153)
!2152 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2153 = !{!2154, !2155, !2156}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2151, file: !2152, line: 330, baseType: !7, size: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2151, file: !2152, line: 337, baseType: !124, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2151, file: !2152, line: 348, baseType: !2157, size: 32768, offset: 512)
!2157 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2152, line: 304, size: 32768, elements: !2158)
!2158 = !{!2159, !2174, !2213, !2263, !2276}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2157, file: !2152, line: 305, baseType: !2160, size: 896)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2152, line: 12, size: 896, elements: !2161)
!2161 = !{!2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2173}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2160, file: !2152, line: 13, baseType: !133, size: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2160, file: !2152, line: 14, baseType: !133, size: 32, offset: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2160, file: !2152, line: 15, baseType: !133, size: 32, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2160, file: !2152, line: 16, baseType: !133, size: 32, offset: 96)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2160, file: !2152, line: 17, baseType: !133, size: 32, offset: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2160, file: !2152, line: 18, baseType: !133, size: 32, offset: 160)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2160, file: !2152, line: 19, baseType: !133, size: 32, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2160, file: !2152, line: 22, baseType: !2170, size: 640, offset: 224)
!2170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 640, elements: !2171)
!2171 = !{!2172}
!2172 = !DISubrange(count: 20)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2160, file: !2152, line: 25, baseType: !133, size: 32, offset: 864)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2157, file: !2152, line: 306, baseType: !2175, size: 4096, align: 128)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2152, line: 34, size: 4096, align: 128, elements: !2176)
!2176 = !{!2177, !2178, !2179, !2180, !2181, !2196, !2197, !2198, !2202, !2204, !2208}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2175, file: !2152, line: 35, baseType: !793, size: 16)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2175, file: !2152, line: 36, baseType: !793, size: 16, offset: 16)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2175, file: !2152, line: 37, baseType: !793, size: 16, offset: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2175, file: !2152, line: 38, baseType: !793, size: 16, offset: 48)
!2181 = !DIDerivedType(tag: DW_TAG_member, scope: !2175, file: !2152, line: 39, baseType: !2182, size: 128, offset: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2175, file: !2152, line: 39, size: 128, elements: !2183)
!2183 = !{!2184, !2189}
!2184 = !DIDerivedType(tag: DW_TAG_member, scope: !2182, file: !2152, line: 40, baseType: !2185, size: 128)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2182, file: !2152, line: 40, size: 128, elements: !2186)
!2186 = !{!2187, !2188}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2185, file: !2152, line: 41, baseType: !360, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2185, file: !2152, line: 42, baseType: !360, size: 64, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, scope: !2182, file: !2152, line: 44, baseType: !2190, size: 128)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2182, file: !2152, line: 44, size: 128, elements: !2191)
!2191 = !{!2192, !2193, !2194, !2195}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2190, file: !2152, line: 45, baseType: !133, size: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2190, file: !2152, line: 46, baseType: !133, size: 32, offset: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2190, file: !2152, line: 47, baseType: !133, size: 32, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2190, file: !2152, line: 48, baseType: !133, size: 32, offset: 96)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2175, file: !2152, line: 51, baseType: !133, size: 32, offset: 192)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2175, file: !2152, line: 52, baseType: !133, size: 32, offset: 224)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2175, file: !2152, line: 55, baseType: !2199, size: 1024, offset: 256)
!2199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 1024, elements: !2200)
!2200 = !{!2201}
!2201 = !DISubrange(count: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2175, file: !2152, line: 58, baseType: !2203, size: 2048, offset: 1280)
!2203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 2048, elements: !223)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2175, file: !2152, line: 60, baseType: !2205, size: 384, offset: 3328)
!2205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 384, elements: !2206)
!2206 = !{!2207}
!2207 = !DISubrange(count: 12)
!2208 = !DIDerivedType(tag: DW_TAG_member, scope: !2175, file: !2152, line: 62, baseType: !2209, size: 384, offset: 3712)
!2209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2175, file: !2152, line: 62, size: 384, elements: !2210)
!2210 = !{!2211, !2212}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2209, file: !2152, line: 63, baseType: !2205, size: 384)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2209, file: !2152, line: 64, baseType: !2205, size: 384)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2157, file: !2152, line: 307, baseType: !2214, size: 1088)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2152, line: 79, size: 1088, elements: !2215)
!2215 = !{!2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2262}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2214, file: !2152, line: 80, baseType: !133, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2214, file: !2152, line: 81, baseType: !133, size: 32, offset: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2214, file: !2152, line: 82, baseType: !133, size: 32, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2214, file: !2152, line: 83, baseType: !133, size: 32, offset: 96)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2214, file: !2152, line: 84, baseType: !133, size: 32, offset: 128)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2214, file: !2152, line: 85, baseType: !133, size: 32, offset: 160)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2214, file: !2152, line: 86, baseType: !133, size: 32, offset: 192)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2214, file: !2152, line: 88, baseType: !2170, size: 640, offset: 224)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2214, file: !2152, line: 89, baseType: !1325, size: 8, offset: 864)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2214, file: !2152, line: 90, baseType: !1325, size: 8, offset: 872)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2214, file: !2152, line: 91, baseType: !1325, size: 8, offset: 880)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2214, file: !2152, line: 92, baseType: !1325, size: 8, offset: 888)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2214, file: !2152, line: 93, baseType: !1325, size: 8, offset: 896)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2214, file: !2152, line: 94, baseType: !1325, size: 8, offset: 904)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2214, file: !2152, line: 95, baseType: !2231, size: 64, offset: 960)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2233, line: 11, size: 128, elements: !2234)
!2233 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2234 = !{!2235, !2236}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2232, file: !2233, line: 12, baseType: !253, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2232, file: !2233, line: 13, baseType: !2237, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2239, line: 56, size: 1344, elements: !2240)
!2239 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2240 = !{!2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2238, file: !2239, line: 61, baseType: !124, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2238, file: !2239, line: 62, baseType: !124, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2238, file: !2239, line: 63, baseType: !124, size: 64, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2238, file: !2239, line: 64, baseType: !124, size: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2238, file: !2239, line: 65, baseType: !124, size: 64, offset: 256)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2238, file: !2239, line: 66, baseType: !124, size: 64, offset: 320)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2238, file: !2239, line: 68, baseType: !124, size: 64, offset: 384)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2238, file: !2239, line: 69, baseType: !124, size: 64, offset: 448)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2238, file: !2239, line: 70, baseType: !124, size: 64, offset: 512)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2238, file: !2239, line: 71, baseType: !124, size: 64, offset: 576)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2238, file: !2239, line: 72, baseType: !124, size: 64, offset: 640)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2238, file: !2239, line: 73, baseType: !124, size: 64, offset: 704)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2238, file: !2239, line: 74, baseType: !124, size: 64, offset: 768)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2238, file: !2239, line: 75, baseType: !124, size: 64, offset: 832)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2238, file: !2239, line: 76, baseType: !124, size: 64, offset: 896)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2238, file: !2239, line: 81, baseType: !124, size: 64, offset: 960)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2238, file: !2239, line: 83, baseType: !124, size: 64, offset: 1024)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2238, file: !2239, line: 84, baseType: !124, size: 64, offset: 1088)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2238, file: !2239, line: 85, baseType: !124, size: 64, offset: 1152)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2238, file: !2239, line: 86, baseType: !124, size: 64, offset: 1216)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2238, file: !2239, line: 87, baseType: !124, size: 64, offset: 1280)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2214, file: !2152, line: 96, baseType: !133, size: 32, offset: 1024)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2157, file: !2152, line: 308, baseType: !2264, size: 4608, align: 512)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2152, line: 289, size: 4608, align: 512, elements: !2265)
!2265 = !{!2266, !2267, !2274}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2264, file: !2152, line: 290, baseType: !2175, size: 4096, align: 128)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2264, file: !2152, line: 291, baseType: !2268, size: 512, offset: 4096)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2152, line: 268, size: 512, elements: !2269)
!2269 = !{!2270, !2271, !2272}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2268, file: !2152, line: 269, baseType: !360, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2268, file: !2152, line: 270, baseType: !360, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2268, file: !2152, line: 271, baseType: !2273, size: 384, offset: 128)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 384, elements: !1596)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2264, file: !2152, line: 292, baseType: !2275, offset: 4608)
!2275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1325, elements: !1694)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2157, file: !2152, line: 309, baseType: !2277, size: 32768)
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1325, size: 32768, elements: !2278)
!2278 = !{!2279}
!2279 = !DISubrange(count: 4096)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1186, file: !661, line: 378, baseType: !2281, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1182, file: !661, line: 384, baseType: !1473, size: 192, offset: 192)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !951, file: !661, line: 500, baseType: !150, offset: 6656)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !951, file: !661, line: 501, baseType: !2285, size: 64, offset: 6656)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !661, line: 387, flags: DIFlagFwdDecl)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !951, file: !661, line: 516, baseType: !1684, size: 64, offset: 6720)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !951, file: !661, line: 519, baseType: !295, size: 64, offset: 6784)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !951, file: !661, line: 521, baseType: !2290, size: 64, offset: 6848)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !661, line: 521, flags: DIFlagFwdDecl)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !951, file: !661, line: 545, baseType: !140, size: 32, offset: 6912)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !951, file: !661, line: 548, baseType: !429, size: 8, offset: 6944)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !951, file: !661, line: 550, baseType: !2295, offset: 6952)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2296, line: 142, elements: !164)
!2296 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !951, file: !661, line: 554, baseType: !1929, size: 256, offset: 6976)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !951, file: !661, line: 557, baseType: !133, size: 32, offset: 7232)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !948, file: !661, line: 565, baseType: !2300, offset: 7296)
!2300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, elements: !2301)
!2301 = !{!2302}
!2302 = !DISubrange(count: -1)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !944, file: !661, line: 151, baseType: !140, size: 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !937, file: !661, line: 156, baseType: !150, offset: 256)
!2305 = !DIDerivedType(tag: DW_TAG_member, scope: !665, file: !661, line: 159, baseType: !2306, size: 128)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !665, file: !661, line: 159, size: 128, elements: !2307)
!2307 = !{!2308, !2372}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2306, file: !661, line: 161, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2311)
!2311 = !{!2312, !2322, !2343, !2344, !2345, !2346, !2347, !2359, !2360, !2361}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2310, file: !31, line: 111, baseType: !2313, size: 384)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2314)
!2314 = !{!2315, !2317, !2318, !2319, !2320, !2321}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2313, file: !31, line: 20, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2313, file: !31, line: 21, baseType: !2316, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2313, file: !31, line: 22, baseType: !2316, size: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2313, file: !31, line: 23, baseType: !124, size: 64, offset: 192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2313, file: !31, line: 24, baseType: !124, size: 64, offset: 256)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2313, file: !31, line: 25, baseType: !124, size: 64, offset: 320)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2310, file: !31, line: 112, baseType: !2323, size: 64, offset: 384)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2325, line: 105, size: 128, elements: !2326)
!2325 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2326 = !{!2327, !2328}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2324, file: !2325, line: 110, baseType: !124, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2324, file: !2325, line: 118, baseType: !2329, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2325, line: 95, size: 448, elements: !2331)
!2331 = !{!2332, !2333, !2338, !2339, !2340, !2341, !2342}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2330, file: !2325, line: 96, baseType: !705, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2330, file: !2325, line: 97, baseType: !2334, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2325, line: 60, baseType: !2336)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{null, !2323}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2330, file: !2325, line: 98, baseType: !2334, size: 64, offset: 128)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2330, file: !2325, line: 99, baseType: !429, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2330, file: !2325, line: 100, baseType: !429, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2330, file: !2325, line: 101, baseType: !308, size: 128, align: 64, offset: 256)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2330, file: !2325, line: 102, baseType: !2323, size: 64, offset: 384)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2310, file: !31, line: 113, baseType: !2324, size: 128, offset: 448)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2310, file: !31, line: 114, baseType: !1473, size: 192, offset: 576)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2310, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2310, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2310, file: !31, line: 117, baseType: !2348, size: 64, offset: 832)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2350)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2351)
!2351 = !{!2352, !2353, !2357, !2358}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2350, file: !31, line: 73, baseType: !774, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2350, file: !31, line: 78, baseType: !2354, size: 64, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null, !2309}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2350, file: !31, line: 83, baseType: !2354, size: 64, offset: 128)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2350, file: !31, line: 89, baseType: !1000, size: 64, offset: 192)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2310, file: !31, line: 118, baseType: !114, size: 64, offset: 896)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2310, file: !31, line: 119, baseType: !123, size: 32, offset: 960)
!2361 = !DIDerivedType(tag: DW_TAG_member, scope: !2310, file: !31, line: 120, baseType: !2362, size: 128, offset: 1024)
!2362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2310, file: !31, line: 120, size: 128, elements: !2363)
!2363 = !{!2364, !2370}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2362, file: !31, line: 121, baseType: !2365, size: 128)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2366, line: 6, size: 128, elements: !2367)
!2366 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2367 = !{!2368, !2369}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2365, file: !2366, line: 7, baseType: !360, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2365, file: !2366, line: 8, baseType: !360, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2362, file: !31, line: 122, baseType: !2371)
!2371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2365, elements: !1694)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2306, file: !661, line: 162, baseType: !114, size: 64, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !665, file: !661, line: 176, baseType: !308, size: 128, align: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !661, line: 179, baseType: !2375, size: 32, offset: 384)
!2375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !660, file: !661, line: 179, size: 32, elements: !2376)
!2376 = !{!2377, !2378, !2379, !2380}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2375, file: !661, line: 184, baseType: !140, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2375, file: !661, line: 192, baseType: !7, size: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2375, file: !661, line: 194, baseType: !7, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2375, file: !661, line: 195, baseType: !123, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !660, file: !661, line: 199, baseType: !140, size: 32, offset: 416)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !595, file: !44, line: 1964, baseType: !2383, size: 64, offset: 1344)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!253, !538, !2386}
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2388, line: 12, size: 256, elements: !2389)
!2388 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2389 = !{!2390, !2391, !2392, !2393, !2394}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2387, file: !2388, line: 13, baseType: !112, size: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2387, file: !2388, line: 16, baseType: !123, size: 32, offset: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2387, file: !2388, line: 23, baseType: !124, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2387, file: !2388, line: 30, baseType: !124, size: 64, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2387, file: !2388, line: 33, baseType: !2395, size: 64, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2388, line: 33, flags: DIFlagFwdDecl)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !595, file: !44, line: 1966, baseType: !2383, size: 64, offset: 1408)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !539, file: !44, line: 1424, baseType: !2399, size: 64, offset: 448)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2401)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2402)
!2402 = !{!2403, !2449, !2453, !2457, !2458, !2459, !2460, !2461, !2466, !2471, !2475}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2401, file: !38, line: 323, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!123, !2407}
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2409)
!2409 = !{!2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2434, !2435, !2436}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2408, file: !38, line: 295, baseType: !577, size: 128)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2408, file: !38, line: 296, baseType: !166, size: 128, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2408, file: !38, line: 297, baseType: !166, size: 128, offset: 256)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2408, file: !38, line: 298, baseType: !166, size: 128, offset: 384)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2408, file: !38, line: 299, baseType: !1146, size: 192, offset: 512)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2408, file: !38, line: 300, baseType: !150, offset: 704)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2408, file: !38, line: 301, baseType: !140, size: 32, offset: 704)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2408, file: !38, line: 302, baseType: !538, size: 64, offset: 768)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2408, file: !38, line: 303, baseType: !2419, size: 64, offset: 832)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2420)
!2420 = !{!2421, !2433}
!2421 = !DIDerivedType(tag: DW_TAG_member, scope: !2419, file: !38, line: 69, baseType: !2422, size: 32)
!2422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2419, file: !38, line: 69, size: 32, elements: !2423)
!2423 = !{!2424, !2425, !2426}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2422, file: !38, line: 70, baseType: !374, size: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2422, file: !38, line: 71, baseType: !382, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2422, file: !38, line: 72, baseType: !2427, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2428, line: 24, baseType: !2429)
!2428 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2428, line: 22, size: 32, elements: !2430)
!2430 = !{!2431}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2429, file: !2428, line: 23, baseType: !2432, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2428, line: 20, baseType: !380)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2419, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2408, file: !38, line: 304, baseType: !470, size: 64, offset: 896)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2408, file: !38, line: 305, baseType: !124, size: 64, offset: 960)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2408, file: !38, line: 306, baseType: !2437, size: 576, offset: 1024)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2438)
!2438 = !{!2439, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2437, file: !38, line: 206, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !472)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2437, file: !38, line: 207, baseType: !2440, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2437, file: !38, line: 208, baseType: !2440, size: 64, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2437, file: !38, line: 209, baseType: !2440, size: 64, offset: 192)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2437, file: !38, line: 210, baseType: !2440, size: 64, offset: 256)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2437, file: !38, line: 211, baseType: !2440, size: 64, offset: 320)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2437, file: !38, line: 212, baseType: !2440, size: 64, offset: 384)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2437, file: !38, line: 213, baseType: !478, size: 64, offset: 448)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2437, file: !38, line: 214, baseType: !478, size: 64, offset: 512)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2401, file: !38, line: 324, baseType: !2450, size: 64, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!2407, !538, !123}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2401, file: !38, line: 325, baseType: !2454, size: 64, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{null, !2407}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2401, file: !38, line: 326, baseType: !2404, size: 64, offset: 192)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2401, file: !38, line: 327, baseType: !2404, size: 64, offset: 256)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2401, file: !38, line: 328, baseType: !2404, size: 64, offset: 320)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2401, file: !38, line: 329, baseType: !623, size: 64, offset: 384)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2401, file: !38, line: 332, baseType: !2462, size: 64, offset: 448)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!2465, !368}
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2401, file: !38, line: 333, baseType: !2467, size: 64, offset: 512)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!123, !368, !2470}
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2401, file: !38, line: 335, baseType: !2472, size: 64, offset: 576)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!123, !368, !2465}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2401, file: !38, line: 337, baseType: !2476, size: 64, offset: 640)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!123, !538, !2479}
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !539, file: !44, line: 1425, baseType: !2481, size: 64, offset: 512)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2483)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2484)
!2484 = !{!2485, !2489, !2490, !2494, !2495, !2496, !2511, !2534, !2538, !2539, !2562}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2483, file: !38, line: 429, baseType: !2486, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!123, !538, !123, !123, !488}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2483, file: !38, line: 430, baseType: !623, size: 64, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2483, file: !38, line: 431, baseType: !2491, size: 64, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!123, !538, !7}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2483, file: !38, line: 432, baseType: !2491, size: 64, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2483, file: !38, line: 433, baseType: !623, size: 64, offset: 256)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2483, file: !38, line: 434, baseType: !2497, size: 64, offset: 320)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!123, !538, !123, !2500}
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2502)
!2502 = !{!2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2501, file: !38, line: 416, baseType: !123, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2501, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2501, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2501, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2501, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2501, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2501, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2501, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2483, file: !38, line: 435, baseType: !2512, size: 64, offset: 384)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!123, !538, !2419, !2515}
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2517)
!2517 = !{!2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2516, file: !38, line: 344, baseType: !123, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2516, file: !38, line: 345, baseType: !360, size: 64, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2516, file: !38, line: 346, baseType: !360, size: 64, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2516, file: !38, line: 347, baseType: !360, size: 64, offset: 192)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2516, file: !38, line: 348, baseType: !360, size: 64, offset: 256)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2516, file: !38, line: 349, baseType: !360, size: 64, offset: 320)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2516, file: !38, line: 350, baseType: !360, size: 64, offset: 384)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2516, file: !38, line: 351, baseType: !711, size: 64, offset: 448)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2516, file: !38, line: 353, baseType: !711, size: 64, offset: 512)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2516, file: !38, line: 354, baseType: !123, size: 32, offset: 576)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2516, file: !38, line: 355, baseType: !123, size: 32, offset: 608)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2516, file: !38, line: 356, baseType: !360, size: 64, offset: 640)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2516, file: !38, line: 357, baseType: !360, size: 64, offset: 704)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2516, file: !38, line: 358, baseType: !360, size: 64, offset: 768)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2516, file: !38, line: 359, baseType: !711, size: 64, offset: 832)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2516, file: !38, line: 360, baseType: !123, size: 32, offset: 896)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2483, file: !38, line: 436, baseType: !2535, size: 64, offset: 448)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!123, !538, !2479, !2515}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2483, file: !38, line: 438, baseType: !2512, size: 64, offset: 512)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2483, file: !38, line: 439, baseType: !2540, size: 64, offset: 576)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!123, !538, !2543}
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2545)
!2545 = !{!2546, !2547}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2544, file: !38, line: 410, baseType: !7, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2544, file: !38, line: 411, baseType: !2548, size: 1344, offset: 64)
!2548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2549, size: 1344, elements: !219)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2550)
!2550 = !{!2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2561}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2549, file: !38, line: 396, baseType: !7, size: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2549, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2549, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2549, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2549, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2549, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2549, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2549, file: !38, line: 404, baseType: !362, size: 64, offset: 256)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2549, file: !38, line: 405, baseType: !2560, size: 64, offset: 320)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !113, line: 126, baseType: !360)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2549, file: !38, line: 406, baseType: !2560, size: 64, offset: 384)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2483, file: !38, line: 440, baseType: !2491, size: 64, offset: 640)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !539, file: !44, line: 1426, baseType: !2564, size: 64, offset: 576)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2566)
!2566 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !539, file: !44, line: 1427, baseType: !124, size: 64, offset: 640)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !539, file: !44, line: 1428, baseType: !124, size: 64, offset: 704)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !539, file: !44, line: 1429, baseType: !124, size: 64, offset: 768)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !539, file: !44, line: 1430, baseType: !325, size: 64, offset: 832)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !539, file: !44, line: 1431, baseType: !701, size: 256, offset: 896)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !539, file: !44, line: 1432, baseType: !123, size: 32, offset: 1152)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !539, file: !44, line: 1433, baseType: !140, size: 32, offset: 1184)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !539, file: !44, line: 1437, baseType: !2575, size: 64, offset: 1216)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2578)
!2578 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !539, file: !44, line: 1449, baseType: !2580, size: 64, offset: 1280)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !341, line: 34, size: 64, elements: !2581)
!2581 = !{!2582}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2580, file: !341, line: 35, baseType: !344, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !539, file: !44, line: 1450, baseType: !166, size: 128, offset: 1344)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !539, file: !44, line: 1451, baseType: !2585, size: 64, offset: 1472)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !539, file: !44, line: 1452, baseType: !1895, size: 64, offset: 1536)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !539, file: !44, line: 1453, baseType: !2589, size: 64, offset: 1600)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !539, file: !44, line: 1454, baseType: !577, size: 128, offset: 1664)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !539, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !539, file: !44, line: 1456, baseType: !2594, size: 2432, offset: 1856)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2595)
!2595 = !{!2596, !2597, !2598, !2600, !2632}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2594, file: !38, line: 519, baseType: !7, size: 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2594, file: !38, line: 520, baseType: !701, size: 256, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2594, file: !38, line: 521, baseType: !2599, size: 192, offset: 320)
!2599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 192, elements: !219)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2594, file: !38, line: 522, baseType: !2601, size: 1728, offset: 512)
!2601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2602, size: 1728, elements: !219)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2603)
!2603 = !{!2604, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2602, file: !38, line: 223, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2607)
!2607 = !{!2608, !2609, !2622, !2623}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2606, file: !38, line: 444, baseType: !123, size: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2606, file: !38, line: 445, baseType: !2610, size: 64, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2612)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2613)
!2613 = !{!2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2612, file: !38, line: 311, baseType: !623, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2612, file: !38, line: 312, baseType: !623, size: 64, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2612, file: !38, line: 313, baseType: !623, size: 64, offset: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2612, file: !38, line: 314, baseType: !623, size: 64, offset: 192)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2612, file: !38, line: 315, baseType: !2404, size: 64, offset: 256)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2612, file: !38, line: 316, baseType: !2404, size: 64, offset: 320)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2612, file: !38, line: 317, baseType: !2404, size: 64, offset: 384)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2612, file: !38, line: 318, baseType: !2476, size: 64, offset: 448)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2606, file: !38, line: 446, baseType: !115, size: 64, offset: 128)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2606, file: !38, line: 447, baseType: !2605, size: 64, offset: 192)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2602, file: !38, line: 224, baseType: !123, size: 32, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2602, file: !38, line: 226, baseType: !166, size: 128, offset: 128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2602, file: !38, line: 227, baseType: !124, size: 64, offset: 256)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2602, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2602, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2602, file: !38, line: 230, baseType: !2440, size: 64, offset: 384)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2602, file: !38, line: 231, baseType: !2440, size: 64, offset: 448)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2602, file: !38, line: 232, baseType: !114, size: 64, offset: 512)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2594, file: !38, line: 523, baseType: !2633, size: 192, offset: 2240)
!2633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2610, size: 192, elements: !219)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !539, file: !44, line: 1458, baseType: !2635, size: 2112, offset: 4288)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2636)
!2636 = !{!2637, !2638, !2639}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2635, file: !44, line: 1411, baseType: !123, size: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2635, file: !44, line: 1412, baseType: !145, size: 128, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2635, file: !44, line: 1413, baseType: !2640, size: 1920, offset: 192)
!2640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2641, size: 1920, elements: !219)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2642, line: 12, size: 640, elements: !2643)
!2642 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2643 = !{!2644, !2652, !2654, !2659, !2660}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2641, file: !2642, line: 13, baseType: !2645, size: 320)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2646, line: 17, size: 320, elements: !2647)
!2646 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2647 = !{!2648, !2649, !2650, !2651}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2645, file: !2646, line: 18, baseType: !123, size: 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2645, file: !2646, line: 19, baseType: !123, size: 32, offset: 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2645, file: !2646, line: 20, baseType: !145, size: 128, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2645, file: !2646, line: 22, baseType: !308, size: 128, align: 64, offset: 192)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2641, file: !2642, line: 14, baseType: !2653, size: 64, offset: 320)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2641, file: !2642, line: 15, baseType: !2655, size: 64, offset: 384)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2656, line: 16, size: 64, elements: !2657)
!2656 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2657 = !{!2658}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2655, file: !2656, line: 17, baseType: !1189, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2641, file: !2642, line: 16, baseType: !145, size: 128, offset: 448)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2641, file: !2642, line: 17, baseType: !140, size: 32, offset: 576)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !539, file: !44, line: 1465, baseType: !114, size: 64, offset: 6400)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !539, file: !44, line: 1468, baseType: !133, size: 32, offset: 6464)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !539, file: !44, line: 1470, baseType: !478, size: 64, offset: 6528)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !539, file: !44, line: 1471, baseType: !478, size: 64, offset: 6592)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !539, file: !44, line: 1473, baseType: !135, size: 32, offset: 6656)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !539, file: !44, line: 1474, baseType: !2667, size: 64, offset: 6720)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !539, file: !44, line: 1477, baseType: !2670, size: 256, offset: 6784)
!2670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 256, elements: !2200)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !539, file: !44, line: 1478, baseType: !2672, size: 128, offset: 7040)
!2672 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2673, line: 18, baseType: !2674)
!2673 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2673, line: 16, size: 128, elements: !2675)
!2675 = !{!2676}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2674, file: !2673, line: 17, baseType: !2677, size: 128)
!2677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1326, size: 128, elements: !1706)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !539, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !539, file: !44, line: 1481, baseType: !2680, size: 32, offset: 7200)
!2680 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !113, line: 150, baseType: !7)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !539, file: !44, line: 1487, baseType: !1146, size: 192, offset: 7232)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !539, file: !44, line: 1493, baseType: !180, size: 64, offset: 7424)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !539, file: !44, line: 1495, baseType: !2684, size: 64, offset: 7488)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2686)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !323, line: 135, size: 1024, align: 512, elements: !2687)
!2687 = !{!2688, !2692, !2693, !2700, !2706, !2710, !2714, !2718, !2719, !2723, !2727, !2732, !2736}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2686, file: !323, line: 136, baseType: !2689, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!123, !325, !7}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2686, file: !323, line: 137, baseType: !2689, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2686, file: !323, line: 138, baseType: !2694, size: 64, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!123, !2697, !2699}
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2686, file: !323, line: 139, baseType: !2701, size: 64, offset: 192)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!123, !2697, !7, !180, !2704}
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2686, file: !323, line: 141, baseType: !2707, size: 64, offset: 256)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!123, !2697}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2686, file: !323, line: 142, baseType: !2711, size: 64, offset: 320)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!123, !325}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2686, file: !323, line: 143, baseType: !2715, size: 64, offset: 384)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{null, !325}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2686, file: !323, line: 144, baseType: !2715, size: 64, offset: 448)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2686, file: !323, line: 145, baseType: !2720, size: 64, offset: 512)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{null, !325, !368}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2686, file: !323, line: 146, baseType: !2724, size: 64, offset: 576)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!218, !325, !218, !123}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2686, file: !323, line: 147, baseType: !2728, size: 64, offset: 640)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!321, !2731}
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2686, file: !323, line: 148, baseType: !2733, size: 64, offset: 704)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!123, !488, !429}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2686, file: !323, line: 149, baseType: !2737, size: 64, offset: 768)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!325, !325, !2740}
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !539, file: !44, line: 1500, baseType: !123, size: 32, offset: 7552)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !539, file: !44, line: 1502, baseType: !2744, size: 448, offset: 7616)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2388, line: 60, size: 448, elements: !2745)
!2745 = !{!2746, !2751, !2752, !2753, !2754, !2755, !2756}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2744, file: !2388, line: 61, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!124, !2750, !2386}
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2744, file: !2388, line: 63, baseType: !2747, size: 64, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2744, file: !2388, line: 66, baseType: !253, size: 64, offset: 128)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2744, file: !2388, line: 67, baseType: !123, size: 32, offset: 192)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2744, file: !2388, line: 68, baseType: !7, size: 32, offset: 224)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2744, file: !2388, line: 71, baseType: !166, size: 128, offset: 256)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2744, file: !2388, line: 77, baseType: !2757, size: 64, offset: 384)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !539, file: !44, line: 1505, baseType: !705, size: 64, offset: 8064)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !539, file: !44, line: 1508, baseType: !705, size: 64, offset: 8128)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !539, file: !44, line: 1511, baseType: !123, size: 32, offset: 8192)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !539, file: !44, line: 1514, baseType: !882, size: 32, offset: 8224)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !539, file: !44, line: 1517, baseType: !2763, size: 64, offset: 8256)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1930, line: 18, flags: DIFlagFwdDecl)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !539, file: !44, line: 1518, baseType: !573, size: 64, offset: 8320)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !539, file: !44, line: 1525, baseType: !1684, size: 64, offset: 8384)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !539, file: !44, line: 1532, baseType: !2768, size: 64, offset: 8448)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2769, line: 52, size: 64, elements: !2770)
!2769 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2770 = !{!2771}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2768, file: !2769, line: 53, baseType: !2772, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2769, line: 40, size: 256, elements: !2774)
!2774 = !{!2775, !2776, !2781}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2773, file: !2769, line: 42, baseType: !150)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2773, file: !2769, line: 44, baseType: !2777, size: 192)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2769, line: 28, size: 192, elements: !2778)
!2778 = !{!2779, !2780}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2777, file: !2769, line: 29, baseType: !166, size: 128)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2777, file: !2769, line: 31, baseType: !253, size: 64, offset: 128)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2773, file: !2769, line: 49, baseType: !253, size: 64, offset: 192)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !539, file: !44, line: 1533, baseType: !2768, size: 64, offset: 8512)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !539, file: !44, line: 1534, baseType: !308, size: 128, align: 64, offset: 8576)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !539, file: !44, line: 1535, baseType: !1929, size: 256, offset: 8704)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !539, file: !44, line: 1537, baseType: !1146, size: 192, offset: 8960)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !539, file: !44, line: 1542, baseType: !123, size: 32, offset: 9152)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !539, file: !44, line: 1545, baseType: !150, offset: 9184)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !539, file: !44, line: 1546, baseType: !166, size: 128, offset: 9216)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !539, file: !44, line: 1548, baseType: !150, offset: 9344)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !539, file: !44, line: 1549, baseType: !166, size: 128, offset: 9344)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !369, file: !44, line: 624, baseType: !672, size: 64, offset: 256)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !369, file: !44, line: 631, baseType: !124, size: 64, offset: 320)
!2793 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !44, line: 639, baseType: !2794, size: 32, offset: 384)
!2794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !44, line: 639, size: 32, elements: !2795)
!2795 = !{!2796, !2798}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2794, file: !44, line: 640, baseType: !2797, size: 32)
!2797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2794, file: !44, line: 641, baseType: !7, size: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !369, file: !44, line: 643, baseType: !452, size: 32, offset: 416)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !369, file: !44, line: 644, baseType: !470, size: 64, offset: 448)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !369, file: !44, line: 645, baseType: !474, size: 128, offset: 512)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !369, file: !44, line: 646, baseType: !474, size: 128, offset: 640)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !369, file: !44, line: 647, baseType: !474, size: 128, offset: 768)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !369, file: !44, line: 648, baseType: !150, offset: 896)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !369, file: !44, line: 649, baseType: !260, size: 16, offset: 896)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !369, file: !44, line: 650, baseType: !1325, size: 8, offset: 912)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !369, file: !44, line: 651, baseType: !1325, size: 8, offset: 920)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !369, file: !44, line: 652, baseType: !2560, size: 64, offset: 960)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !369, file: !44, line: 659, baseType: !124, size: 64, offset: 1024)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !369, file: !44, line: 660, baseType: !701, size: 256, offset: 1088)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !369, file: !44, line: 662, baseType: !124, size: 64, offset: 1344)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !369, file: !44, line: 663, baseType: !124, size: 64, offset: 1408)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !369, file: !44, line: 665, baseType: !577, size: 128, offset: 1472)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !369, file: !44, line: 666, baseType: !166, size: 128, offset: 1600)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !369, file: !44, line: 675, baseType: !166, size: 128, offset: 1728)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !369, file: !44, line: 676, baseType: !166, size: 128, offset: 1856)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !369, file: !44, line: 677, baseType: !166, size: 128, offset: 1984)
!2818 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !44, line: 678, baseType: !2819, size: 128, offset: 2112)
!2819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !44, line: 678, size: 128, elements: !2820)
!2820 = !{!2821, !2822}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2819, file: !44, line: 679, baseType: !573, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2819, file: !44, line: 680, baseType: !308, size: 128, align: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !369, file: !44, line: 682, baseType: !707, size: 64, offset: 2240)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !369, file: !44, line: 683, baseType: !707, size: 64, offset: 2304)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !369, file: !44, line: 684, baseType: !140, size: 32, offset: 2368)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !369, file: !44, line: 685, baseType: !140, size: 32, offset: 2400)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !369, file: !44, line: 686, baseType: !140, size: 32, offset: 2432)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !369, file: !44, line: 688, baseType: !140, size: 32, offset: 2464)
!2829 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !44, line: 690, baseType: !2830, size: 64, offset: 2496)
!2830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !44, line: 690, size: 64, elements: !2831)
!2831 = !{!2832, !3062}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2830, file: !44, line: 691, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2835)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2836)
!2836 = !{!2837, !2838, !2842, !2847, !2851, !2852, !2853, !2857, !2870, !2871, !2886, !2890, !2891, !2895, !2896, !2900, !2905, !2906, !2910, !2914, !3022, !3026, !3027, !3031, !3032, !3036, !3040, !3045, !3049, !3053, !3057, !3061}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2835, file: !44, line: 1823, baseType: !115, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2835, file: !44, line: 1824, baseType: !2839, size: 64, offset: 64)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!470, !295, !470, !123}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2835, file: !44, line: 1825, baseType: !2843, size: 64, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!249, !295, !218, !265, !2846}
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2835, file: !44, line: 1826, baseType: !2848, size: 64, offset: 192)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!249, !295, !180, !265, !2846}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2835, file: !44, line: 1827, baseType: !778, size: 64, offset: 256)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2835, file: !44, line: 1828, baseType: !778, size: 64, offset: 320)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2835, file: !44, line: 1829, baseType: !2854, size: 64, offset: 384)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!123, !781, !429}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2835, file: !44, line: 1830, baseType: !2858, size: 64, offset: 448)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!123, !295, !2861}
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2863)
!2863 = !{!2864, !2869}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2862, file: !44, line: 1777, baseType: !2865, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2866)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!123, !2861, !180, !123, !470, !360, !7}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2862, file: !44, line: 1778, baseType: !470, size: 64, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2835, file: !44, line: 1831, baseType: !2858, size: 64, offset: 512)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2835, file: !44, line: 1832, baseType: !2872, size: 64, offset: 576)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!118, !295, !2875}
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2877, line: 43, size: 128, elements: !2878)
!2877 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!2878 = !{!2879, !2885}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2876, file: !2877, line: 44, baseType: !2880, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2877, line: 37, baseType: !2881)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{null, !295, !2884, !2875}
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2876, file: !2877, line: 45, baseType: !118, size: 32, offset: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2835, file: !44, line: 1833, baseType: !2887, size: 64, offset: 640)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!253, !295, !7, !124}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2835, file: !44, line: 1834, baseType: !2887, size: 64, offset: 704)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2835, file: !44, line: 1835, baseType: !2892, size: 64, offset: 768)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!123, !295, !954}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2835, file: !44, line: 1836, baseType: !124, size: 64, offset: 832)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2835, file: !44, line: 1837, baseType: !2897, size: 64, offset: 896)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!123, !368, !295}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2835, file: !44, line: 1838, baseType: !2901, size: 64, offset: 960)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!123, !295, !2904}
!2904 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !114)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2835, file: !44, line: 1839, baseType: !2897, size: 64, offset: 1024)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2835, file: !44, line: 1840, baseType: !2907, size: 64, offset: 1088)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!123, !295, !470, !470, !123}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2835, file: !44, line: 1841, baseType: !2911, size: 64, offset: 1152)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!123, !123, !295, !123}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2835, file: !44, line: 1842, baseType: !2915, size: 64, offset: 1216)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!123, !295, !123, !2918}
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2920)
!2920 = !{!2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2952, !2953, !2954, !2967, !2998}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2919, file: !44, line: 1063, baseType: !2918, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2919, file: !44, line: 1064, baseType: !166, size: 128, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2919, file: !44, line: 1065, baseType: !577, size: 128, offset: 192)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2919, file: !44, line: 1066, baseType: !166, size: 128, offset: 320)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2919, file: !44, line: 1069, baseType: !166, size: 128, offset: 448)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2919, file: !44, line: 1072, baseType: !2904, size: 64, offset: 576)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2919, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2919, file: !44, line: 1074, baseType: !366, size: 8, offset: 672)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2919, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2919, file: !44, line: 1076, baseType: !123, size: 32, offset: 736)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2919, file: !44, line: 1077, baseType: !145, size: 128, offset: 768)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2919, file: !44, line: 1078, baseType: !295, size: 64, offset: 896)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2919, file: !44, line: 1079, baseType: !470, size: 64, offset: 960)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2919, file: !44, line: 1080, baseType: !470, size: 64, offset: 1024)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2919, file: !44, line: 1082, baseType: !2936, size: 64, offset: 1088)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2938)
!2938 = !{!2939, !2947, !2948, !2949, !2950, !2951}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2937, file: !44, line: 1315, baseType: !2940)
!2940 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2941, line: 20, baseType: !2942)
!2941 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2941, line: 11, elements: !2943)
!2943 = !{!2944}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2942, file: !2941, line: 12, baseType: !2945)
!2945 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !162, line: 33, baseType: !2946)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !162, line: 31, elements: !164)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2937, file: !44, line: 1316, baseType: !123, size: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2937, file: !44, line: 1317, baseType: !123, size: 32, offset: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2937, file: !44, line: 1318, baseType: !2936, size: 64, offset: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2937, file: !44, line: 1319, baseType: !295, size: 64, offset: 128)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2937, file: !44, line: 1320, baseType: !308, size: 128, align: 64, offset: 192)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2919, file: !44, line: 1084, baseType: !124, size: 64, offset: 1152)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2919, file: !44, line: 1085, baseType: !124, size: 64, offset: 1216)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2919, file: !44, line: 1087, baseType: !2955, size: 64, offset: 1280)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2957)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2958)
!2958 = !{!2959, !2963}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2957, file: !44, line: 1012, baseType: !2960, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{null, !2918, !2918}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2957, file: !44, line: 1013, baseType: !2964, size: 64, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{null, !2918}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2919, file: !44, line: 1088, baseType: !2968, size: 64, offset: 1344)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2970)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2971)
!2971 = !{!2972, !2976, !2980, !2981, !2985, !2989, !2993, !2997}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2970, file: !44, line: 1017, baseType: !2973, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!2904, !2904}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2970, file: !44, line: 1018, baseType: !2977, size: 64, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{null, !2904}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2970, file: !44, line: 1019, baseType: !2964, size: 64, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2970, file: !44, line: 1020, baseType: !2982, size: 64, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!123, !2918, !123}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2970, file: !44, line: 1021, baseType: !2986, size: 64, offset: 256)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!429, !2918}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2970, file: !44, line: 1022, baseType: !2990, size: 64, offset: 320)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!123, !2918, !123, !169}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2970, file: !44, line: 1023, baseType: !2994, size: 64, offset: 384)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{null, !2918, !755}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2970, file: !44, line: 1024, baseType: !2986, size: 64, offset: 448)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2919, file: !44, line: 1097, baseType: !2999, size: 256, offset: 1408)
!2999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2919, file: !44, line: 1089, size: 256, elements: !3000)
!3000 = !{!3001, !3010, !3016}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2999, file: !44, line: 1090, baseType: !3002, size: 256)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3003, line: 10, size: 256, elements: !3004)
!3003 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3004 = !{!3005, !3006, !3009}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3002, file: !3003, line: 11, baseType: !133, size: 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3002, file: !3003, line: 12, baseType: !3007, size: 64, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3003, line: 5, flags: DIFlagFwdDecl)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3002, file: !3003, line: 13, baseType: !166, size: 128, offset: 128)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2999, file: !44, line: 1091, baseType: !3011, size: 64)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3003, line: 17, size: 64, elements: !3012)
!3012 = !{!3013}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3011, file: !3003, line: 18, baseType: !3014, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3003, line: 16, flags: DIFlagFwdDecl)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2999, file: !44, line: 1096, baseType: !3017, size: 192)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2999, file: !44, line: 1092, size: 192, elements: !3018)
!3018 = !{!3019, !3020, !3021}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3017, file: !44, line: 1093, baseType: !166, size: 128)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3017, file: !44, line: 1094, baseType: !123, size: 32, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3017, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2835, file: !44, line: 1843, baseType: !3023, size: 64, offset: 1280)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!249, !295, !659, !123, !265, !2846, !123}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2835, file: !44, line: 1844, baseType: !1074, size: 64, offset: 1344)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2835, file: !44, line: 1845, baseType: !3028, size: 64, offset: 1408)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!123, !123}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2835, file: !44, line: 1846, baseType: !2915, size: 64, offset: 1472)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2835, file: !44, line: 1847, baseType: !3033, size: 64, offset: 1536)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!249, !833, !295, !2846, !265, !7}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2835, file: !44, line: 1848, baseType: !3037, size: 64, offset: 1600)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!249, !295, !2846, !833, !265, !7}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2835, file: !44, line: 1849, baseType: !3041, size: 64, offset: 1664)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!123, !295, !253, !3044, !755}
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2835, file: !44, line: 1850, baseType: !3046, size: 64, offset: 1728)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!253, !295, !123, !470, !470}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2835, file: !44, line: 1852, baseType: !3050, size: 64, offset: 1792)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{null, !649, !295}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2835, file: !44, line: 1856, baseType: !3054, size: 64, offset: 1856)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!249, !295, !470, !295, !470, !265, !7}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2835, file: !44, line: 1858, baseType: !3058, size: 64, offset: 1920)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!470, !295, !470, !295, !470, !470, !7}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2835, file: !44, line: 1861, baseType: !2907, size: 64, offset: 1984)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2830, file: !44, line: 692, baseType: !602, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !369, file: !44, line: 694, baseType: !3064, size: 64, offset: 2560)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3066)
!3066 = !{!3067, !3068, !3069, !3070}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3065, file: !44, line: 1101, baseType: !150)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3065, file: !44, line: 1102, baseType: !166, size: 128)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3065, file: !44, line: 1103, baseType: !166, size: 128, offset: 128)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3065, file: !44, line: 1104, baseType: !166, size: 128, offset: 256)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !369, file: !44, line: 695, baseType: !673, size: 1216, align: 64, offset: 2624)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !369, file: !44, line: 696, baseType: !166, size: 128, offset: 3840)
!3073 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !44, line: 697, baseType: !3074, size: 64, offset: 3968)
!3074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !44, line: 697, size: 64, elements: !3075)
!3075 = !{!3076, !3077, !3078, !3080, !3081}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3074, file: !44, line: 698, baseType: !833, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3074, file: !44, line: 699, baseType: !2585, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3074, file: !44, line: 700, baseType: !3079, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3074, file: !44, line: 701, baseType: !218, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3074, file: !44, line: 702, baseType: !7, size: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !369, file: !44, line: 705, baseType: !135, size: 32, offset: 4032)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !369, file: !44, line: 708, baseType: !135, size: 32, offset: 4064)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !369, file: !44, line: 709, baseType: !2667, size: 64, offset: 4096)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !369, file: !44, line: 720, baseType: !114, size: 64, offset: 4160)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !326, file: !323, line: 98, baseType: !3087, size: 256, offset: 448)
!3087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 256, elements: !2200)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !326, file: !323, line: 101, baseType: !3089, size: 32, offset: 704)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3090, line: 25, size: 32, elements: !3091)
!3090 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3091 = !{!3092}
!3092 = !DIDerivedType(tag: DW_TAG_member, scope: !3089, file: !3090, line: 26, baseType: !3093, size: 32)
!3093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3089, file: !3090, line: 26, size: 32, elements: !3094)
!3094 = !{!3095}
!3095 = !DIDerivedType(tag: DW_TAG_member, scope: !3093, file: !3090, line: 30, baseType: !3096, size: 32)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3093, file: !3090, line: 30, size: 32, elements: !3097)
!3097 = !{!3098, !3099}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3096, file: !3090, line: 31, baseType: !150)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3096, file: !3090, line: 32, baseType: !123, size: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !326, file: !323, line: 102, baseType: !2684, size: 64, offset: 768)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !326, file: !323, line: 103, baseType: !538, size: 64, offset: 832)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !326, file: !323, line: 104, baseType: !124, size: 64, offset: 896)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !326, file: !323, line: 105, baseType: !114, size: 64, offset: 960)
!3104 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !323, line: 107, baseType: !3105, size: 128, offset: 1024)
!3105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !326, file: !323, line: 107, size: 128, elements: !3106)
!3106 = !{!3107, !3108}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3105, file: !323, line: 108, baseType: !166, size: 128)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3105, file: !323, line: 109, baseType: !2884, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !326, file: !323, line: 111, baseType: !166, size: 128, offset: 1152)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !326, file: !323, line: 112, baseType: !166, size: 128, offset: 1280)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !326, file: !323, line: 120, baseType: !3112, size: 128, offset: 1408)
!3112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !326, file: !323, line: 116, size: 128, elements: !3113)
!3113 = !{!3114, !3115, !3116}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3112, file: !323, line: 117, baseType: !577, size: 128)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3112, file: !323, line: 118, baseType: !340, size: 128)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3112, file: !323, line: 119, baseType: !308, size: 128, align: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !296, file: !44, line: 922, baseType: !368, size: 64, offset: 256)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !296, file: !44, line: 923, baseType: !2833, size: 64, offset: 320)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !296, file: !44, line: 929, baseType: !150, offset: 384)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !296, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !296, file: !44, line: 931, baseType: !705, size: 64, offset: 448)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !296, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !296, file: !44, line: 933, baseType: !2680, size: 32, offset: 544)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !296, file: !44, line: 934, baseType: !1146, size: 192, offset: 576)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !296, file: !44, line: 935, baseType: !470, size: 64, offset: 768)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !296, file: !44, line: 936, baseType: !3127, size: 192, offset: 832)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3128)
!3128 = !{!3129, !3130, !3131, !3132, !3133, !3134}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3127, file: !44, line: 886, baseType: !2940)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3127, file: !44, line: 887, baseType: !1448, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3127, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3127, file: !44, line: 889, baseType: !374, size: 32, offset: 96)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3127, file: !44, line: 889, baseType: !374, size: 32, offset: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3127, file: !44, line: 890, baseType: !123, size: 32, offset: 160)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !296, file: !44, line: 937, baseType: !1518, size: 64, offset: 1024)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !296, file: !44, line: 938, baseType: !3137, size: 256, offset: 1088)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3138)
!3138 = !{!3139, !3140, !3141, !3142, !3143, !3144}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3137, file: !44, line: 897, baseType: !124, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3137, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3137, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3137, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3137, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3137, file: !44, line: 904, baseType: !470, size: 64, offset: 192)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !296, file: !44, line: 940, baseType: !360, size: 64, offset: 1344)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !296, file: !44, line: 945, baseType: !114, size: 64, offset: 1408)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !296, file: !44, line: 949, baseType: !166, size: 128, offset: 1472)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !296, file: !44, line: 950, baseType: !166, size: 128, offset: 1600)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !296, file: !44, line: 952, baseType: !672, size: 64, offset: 1728)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !296, file: !44, line: 953, baseType: !882, size: 32, offset: 1792)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !296, file: !44, line: 954, baseType: !882, size: 32, offset: 1824)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !286, file: !243, line: 174, baseType: !292, size: 64, offset: 320)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !286, file: !243, line: 176, baseType: !3154, size: 64, offset: 384)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!123, !295, !185, !285, !954}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !274, file: !243, line: 90, baseType: !269, size: 64, offset: 192)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !274, file: !243, line: 91, baseType: !3159, size: 64, offset: 256)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !233, file: !177, line: 143, baseType: !3161, size: 64, offset: 256)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!3164, !185}
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3166)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3167)
!3167 = !{!3168, !3169, !3173, !3177, !3183, !3187}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3166, file: !61, line: 40, baseType: !60, size: 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3166, file: !61, line: 41, baseType: !3170, size: 64, offset: 64)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!429}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3166, file: !61, line: 42, baseType: !3174, size: 64, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!114}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3166, file: !61, line: 43, baseType: !3178, size: 64, offset: 192)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!2097, !3181}
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3166, file: !61, line: 44, baseType: !3184, size: 64, offset: 256)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!2097}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3166, file: !61, line: 45, baseType: !407, size: 64, offset: 320)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !233, file: !177, line: 144, baseType: !3189, size: 64, offset: 320)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!2097, !185}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !233, file: !177, line: 145, baseType: !3193, size: 64, offset: 384)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{null, !185, !3196, !3197}
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !176, file: !177, line: 70, baseType: !3199, size: 64, offset: 384)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3201, line: 123, size: 1024, elements: !3202)
!3201 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!3202 = !{!3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3331, !3332, !3333, !3334, !3335}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3200, file: !3201, line: 124, baseType: !140, size: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3200, file: !3201, line: 125, baseType: !140, size: 32, offset: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3200, file: !3201, line: 135, baseType: !3199, size: 64, offset: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3200, file: !3201, line: 136, baseType: !180, size: 64, offset: 128)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3200, file: !3201, line: 138, baseType: !694, size: 192, align: 64, offset: 192)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3200, file: !3201, line: 140, baseType: !2097, size: 64, offset: 384)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3200, file: !3201, line: 141, baseType: !7, size: 32, offset: 448)
!3210 = !DIDerivedType(tag: DW_TAG_member, scope: !3200, file: !3201, line: 142, baseType: !3211, size: 256, offset: 512)
!3211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3200, file: !3201, line: 142, size: 256, elements: !3212)
!3212 = !{!3213, !3259, !3263}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3211, file: !3201, line: 143, baseType: !3214, size: 192)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3201, line: 91, size: 192, elements: !3215)
!3215 = !{!3216, !3217, !3218}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3214, file: !3201, line: 92, baseType: !124, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3214, file: !3201, line: 94, baseType: !690, size: 64, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3214, file: !3201, line: 100, baseType: !3219, size: 64, offset: 128)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3201, line: 180, size: 704, elements: !3221)
!3221 = !{!3222, !3223, !3224, !3231, !3232, !3233, !3257, !3258}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3220, file: !3201, line: 182, baseType: !3199, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3220, file: !3201, line: 183, baseType: !7, size: 32, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3220, file: !3201, line: 186, baseType: !3225, size: 192, offset: 128)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3226, line: 19, size: 192, elements: !3227)
!3226 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3227 = !{!3228, !3229, !3230}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3225, file: !3226, line: 20, baseType: !677, size: 128)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3225, file: !3226, line: 21, baseType: !7, size: 32, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3225, file: !3226, line: 22, baseType: !7, size: 32, offset: 160)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3220, file: !3201, line: 187, baseType: !133, size: 32, offset: 320)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3220, file: !3201, line: 188, baseType: !133, size: 32, offset: 352)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3220, file: !3201, line: 189, baseType: !3234, size: 64, offset: 384)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !3201, line: 168, size: 320, elements: !3236)
!3236 = !{!3237, !3241, !3245, !3249, !3253}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3235, file: !3201, line: 169, baseType: !3238, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!123, !649, !3219}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3235, file: !3201, line: 171, baseType: !3242, size: 64, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!123, !3199, !180, !259}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3235, file: !3201, line: 173, baseType: !3246, size: 64, offset: 128)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!123, !3199}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3235, file: !3201, line: 174, baseType: !3250, size: 64, offset: 192)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!123, !3199, !3199, !180}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3235, file: !3201, line: 176, baseType: !3254, size: 64, offset: 256)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!123, !649, !3199, !3219}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3220, file: !3201, line: 192, baseType: !166, size: 128, offset: 448)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3220, file: !3201, line: 194, baseType: !145, size: 128, offset: 576)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3211, file: !3201, line: 144, baseType: !3260, size: 64)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3201, line: 103, size: 64, elements: !3261)
!3261 = !{!3262}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3260, file: !3201, line: 104, baseType: !3199, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3211, file: !3201, line: 145, baseType: !3264, size: 256)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3201, line: 107, size: 256, elements: !3265)
!3265 = !{!3266, !3326, !3329, !3330}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3264, file: !3201, line: 108, baseType: !3267, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3269)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3201, line: 217, size: 768, elements: !3270)
!3270 = !{!3271, !3291, !3295, !3299, !3303, !3307, !3311, !3315, !3316, !3317, !3318, !3322}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3269, file: !3201, line: 222, baseType: !3272, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!123, !3275}
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3201, line: 197, size: 1088, elements: !3277)
!3277 = !{!3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3276, file: !3201, line: 199, baseType: !3199, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3276, file: !3201, line: 200, baseType: !295, size: 64, offset: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3276, file: !3201, line: 201, baseType: !649, size: 64, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3276, file: !3201, line: 202, baseType: !114, size: 64, offset: 192)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3276, file: !3201, line: 205, baseType: !1146, size: 192, offset: 256)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3276, file: !3201, line: 206, baseType: !1146, size: 192, offset: 448)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3276, file: !3201, line: 207, baseType: !123, size: 32, offset: 640)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3276, file: !3201, line: 208, baseType: !166, size: 128, offset: 704)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3276, file: !3201, line: 209, baseType: !218, size: 64, offset: 832)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3276, file: !3201, line: 211, baseType: !265, size: 64, offset: 896)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3276, file: !3201, line: 212, baseType: !429, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3276, file: !3201, line: 213, baseType: !429, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3276, file: !3201, line: 214, baseType: !982, size: 64, offset: 1024)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3269, file: !3201, line: 223, baseType: !3292, size: 64, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{null, !3275}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3269, file: !3201, line: 236, baseType: !3296, size: 64, offset: 128)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!123, !649, !114}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3269, file: !3201, line: 238, baseType: !3300, size: 64, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!114, !649, !2846}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3269, file: !3201, line: 239, baseType: !3304, size: 64, offset: 256)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!114, !649, !114, !2846}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3269, file: !3201, line: 240, baseType: !3308, size: 64, offset: 320)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{null, !649, !114}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3269, file: !3201, line: 242, baseType: !3312, size: 64, offset: 384)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!249, !3275, !218, !265, !470}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3269, file: !3201, line: 252, baseType: !265, size: 64, offset: 448)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3269, file: !3201, line: 259, baseType: !429, size: 8, offset: 512)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3269, file: !3201, line: 260, baseType: !3312, size: 64, offset: 576)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3269, file: !3201, line: 263, baseType: !3319, size: 64, offset: 640)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!118, !3275, !2875}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3269, file: !3201, line: 266, baseType: !3323, size: 64, offset: 704)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!123, !3275, !954}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3264, file: !3201, line: 109, baseType: !3327, size: 64, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3201, line: 31, flags: DIFlagFwdDecl)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3264, file: !3201, line: 110, baseType: !470, size: 64, offset: 128)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3264, file: !3201, line: 111, baseType: !3199, size: 64, offset: 192)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3200, file: !3201, line: 148, baseType: !114, size: 64, offset: 768)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3200, file: !3201, line: 154, baseType: !360, size: 64, offset: 832)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3200, file: !3201, line: 156, baseType: !260, size: 16, offset: 896)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3200, file: !3201, line: 157, baseType: !259, size: 16, offset: 912)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3200, file: !3201, line: 158, baseType: !3336, size: 64, offset: 960)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3201, line: 32, flags: DIFlagFwdDecl)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !176, file: !177, line: 71, baseType: !3339, size: 32, offset: 448)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3340, line: 19, size: 32, elements: !3341)
!3340 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3341 = !{!3342}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3339, file: !3340, line: 20, baseType: !1203, size: 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !176, file: !177, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !176, file: !177, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !176, file: !177, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !176, file: !177, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !176, file: !177, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !172, file: !173, line: 16, baseType: !115, size: 64, offset: 512)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !172, file: !173, line: 17, baseType: !2833, size: 64, offset: 576)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !172, file: !173, line: 18, baseType: !166, size: 128, offset: 640)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !172, file: !173, line: 19, baseType: !452, size: 32, offset: 768)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !172, file: !173, line: 20, baseType: !7, size: 32, offset: 800)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "open_lock", scope: !127, file: !3, line: 52, baseType: !1146, size: 192, offset: 1344)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "regs_lock", scope: !127, file: !3, line: 53, baseType: !150, offset: 1536)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "oregs", scope: !127, file: !3, line: 56, baseType: !3356, size: 320, offset: 1536)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phm_regs", file: !3357, line: 23, size: 320, elements: !3358)
!3357 = !DIFile(filename: "./include/uapi/linux/phantom.h", directory: "/home/lizy2001/genbc/linux")
!3358 = !{!3359, !3360, !3361}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3356, file: !3357, line: 24, baseType: !135, size: 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3356, file: !3357, line: 25, baseType: !135, size: 32, offset: 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !3356, file: !3357, line: 26, baseType: !3362, size: 256, offset: 64)
!3362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 256, elements: !1303)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_reg", scope: !127, file: !3, line: 57, baseType: !133, size: 32, offset: 1856)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !3366, line: 309, size: 19264, elements: !3367)
!3366 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!3367 = !{!3368, !3369, !3894, !3895, !3896, !3897, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3925, !3990, !3991, !3992, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4066, !4067, !4069, !4070, !4071, !4072, !4074, !4075, !4076, !4079, !4086, !4087, !4088, !4089, !4090, !4091, !4092}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !3365, file: !3366, line: 310, baseType: !166, size: 128)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3365, file: !3366, line: 311, baseType: !3370, size: 64, offset: 128)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !3366, line: 605, size: 8064, elements: !3372)
!3372 = !{!3373, !3374, !3375, !3376, !3377, !3378, !3379, !3394, !3395, !3396, !3420, !3423, !3424, !3428, !3429, !3430, !3431, !3432, !3436, !3437, !3439, !3890, !3891, !3892, !3893}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3371, file: !3366, line: 606, baseType: !166, size: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3371, file: !3366, line: 607, baseType: !3370, size: 64, offset: 128)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3371, file: !3366, line: 608, baseType: !166, size: 128, offset: 192)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !3371, file: !3366, line: 609, baseType: !166, size: 128, offset: 320)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3371, file: !3366, line: 610, baseType: !3364, size: 64, offset: 448)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !3371, file: !3366, line: 611, baseType: !166, size: 128, offset: 512)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !3371, file: !3366, line: 613, baseType: !3380, size: 256, offset: 640)
!3380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3381, size: 256, elements: !1128)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !3383, line: 20, size: 512, elements: !3384)
!3383 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!3384 = !{!3385, !3387, !3388, !3389, !3390, !3391, !3392, !3393}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3382, file: !3383, line: 21, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !113, line: 158, baseType: !2095)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3382, file: !3383, line: 22, baseType: !3386, size: 64, offset: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3382, file: !3383, line: 23, baseType: !180, size: 64, offset: 128)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3382, file: !3383, line: 24, baseType: !124, size: 64, offset: 192)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3382, file: !3383, line: 25, baseType: !124, size: 64, offset: 256)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3382, file: !3383, line: 26, baseType: !3381, size: 64, offset: 320)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3382, file: !3383, line: 26, baseType: !3381, size: 64, offset: 384)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3382, file: !3383, line: 26, baseType: !3381, size: 64, offset: 448)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3371, file: !3366, line: 614, baseType: !166, size: 128, offset: 896)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !3371, file: !3366, line: 615, baseType: !3382, size: 512, offset: 1024)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3371, file: !3366, line: 617, baseType: !3397, size: 64, offset: 1536)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !3366, line: 731, size: 320, elements: !3399)
!3399 = !{!3400, !3404, !3408, !3412, !3416}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !3398, file: !3366, line: 732, baseType: !3401, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!123, !3370}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !3398, file: !3366, line: 733, baseType: !3405, size: 64, offset: 64)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{null, !3370}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !3398, file: !3366, line: 734, baseType: !3409, size: 64, offset: 128)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!114, !3370, !7, !123}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3398, file: !3366, line: 735, baseType: !3413, size: 64, offset: 192)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!123, !3370, !7, !123, !123, !132}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3398, file: !3366, line: 736, baseType: !3417, size: 64, offset: 256)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!123, !3370, !7, !123, !123, !133}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3371, file: !3366, line: 618, baseType: !3421, size: 64, offset: 1600)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !3366, line: 537, flags: DIFlagFwdDecl)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !3371, file: !3366, line: 619, baseType: !114, size: 64, offset: 1664)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !3371, file: !3366, line: 620, baseType: !3425, size: 64, offset: 1728)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3427, line: 123, flags: DIFlagFwdDecl)
!3427 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3371, file: !3366, line: 622, baseType: !366, size: 8, offset: 1792)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !3371, file: !3366, line: 623, baseType: !366, size: 8, offset: 1800)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !3371, file: !3366, line: 624, baseType: !366, size: 8, offset: 1808)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !3371, file: !3366, line: 625, baseType: !366, size: 8, offset: 1816)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3371, file: !3366, line: 630, baseType: !3433, size: 384, offset: 1824)
!3433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 384, elements: !3434)
!3434 = !{!3435}
!3435 = !DISubrange(count: 48)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !3371, file: !3366, line: 632, baseType: !260, size: 16, offset: 2208)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !3371, file: !3366, line: 633, baseType: !3438, size: 16, offset: 2224)
!3438 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !3366, line: 237, baseType: !260)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !3371, file: !3366, line: 634, baseType: !3440, size: 64, offset: 2240)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !3442)
!3442 = !{!3443, !3444, !3445, !3448, !3449, !3500, !3591, !3592, !3593, !3594, !3595, !3604, !3709, !3722, !3725, !3726, !3730, !3732, !3733, !3734, !3738, !3744, !3745, !3748, !3752, !3842, !3843, !3844, !3845, !3846, !3878, !3879, !3880, !3883, !3886, !3887, !3888, !3889}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3441, file: !73, line: 462, baseType: !176, size: 512)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3441, file: !73, line: 463, baseType: !3440, size: 64, offset: 512)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3441, file: !73, line: 465, baseType: !3446, size: 64, offset: 576)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3441, file: !73, line: 467, baseType: !180, size: 64, offset: 640)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3441, file: !73, line: 468, baseType: !3450, size: 64, offset: 704)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3452)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3453)
!3453 = !{!3454, !3455, !3456, !3460, !3465, !3469}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3452, file: !73, line: 88, baseType: !180, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3452, file: !73, line: 89, baseType: !271, size: 64, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3452, file: !73, line: 90, baseType: !3457, size: 64, offset: 128)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!123, !3440, !213}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3452, file: !73, line: 91, baseType: !3461, size: 64, offset: 192)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!218, !3440, !3464, !3196, !3197}
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3452, file: !73, line: 93, baseType: !3466, size: 64, offset: 256)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{null, !3440}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3452, file: !73, line: 95, baseType: !3470, size: 64, offset: 320)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3472)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3473)
!3473 = !{!3474, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3472, file: !80, line: 279, baseType: !3475, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!123, !3440}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3472, file: !80, line: 280, baseType: !3466, size: 64, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3472, file: !80, line: 281, baseType: !3475, size: 64, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3472, file: !80, line: 282, baseType: !3475, size: 64, offset: 192)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3472, file: !80, line: 283, baseType: !3475, size: 64, offset: 256)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3472, file: !80, line: 284, baseType: !3475, size: 64, offset: 320)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3472, file: !80, line: 285, baseType: !3475, size: 64, offset: 384)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3472, file: !80, line: 286, baseType: !3475, size: 64, offset: 448)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3472, file: !80, line: 287, baseType: !3475, size: 64, offset: 512)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3472, file: !80, line: 288, baseType: !3475, size: 64, offset: 576)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3472, file: !80, line: 289, baseType: !3475, size: 64, offset: 640)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3472, file: !80, line: 290, baseType: !3475, size: 64, offset: 704)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3472, file: !80, line: 291, baseType: !3475, size: 64, offset: 768)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3472, file: !80, line: 292, baseType: !3475, size: 64, offset: 832)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3472, file: !80, line: 293, baseType: !3475, size: 64, offset: 896)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3472, file: !80, line: 294, baseType: !3475, size: 64, offset: 960)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3472, file: !80, line: 295, baseType: !3475, size: 64, offset: 1024)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3472, file: !80, line: 296, baseType: !3475, size: 64, offset: 1088)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3472, file: !80, line: 297, baseType: !3475, size: 64, offset: 1152)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3472, file: !80, line: 298, baseType: !3475, size: 64, offset: 1216)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3472, file: !80, line: 299, baseType: !3475, size: 64, offset: 1280)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3472, file: !80, line: 300, baseType: !3475, size: 64, offset: 1344)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3472, file: !80, line: 301, baseType: !3475, size: 64, offset: 1408)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3441, file: !73, line: 470, baseType: !3501, size: 64, offset: 768)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3503, line: 82, size: 1408, elements: !3504)
!3503 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3504 = !{!3505, !3506, !3507, !3508, !3509, !3510, !3511, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3586, !3589, !3590}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3502, file: !3503, line: 83, baseType: !180, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3502, file: !3503, line: 84, baseType: !180, size: 64, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3502, file: !3503, line: 85, baseType: !3440, size: 64, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3502, file: !3503, line: 86, baseType: !271, size: 64, offset: 192)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3502, file: !3503, line: 87, baseType: !271, size: 64, offset: 256)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3502, file: !3503, line: 88, baseType: !271, size: 64, offset: 320)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3502, file: !3503, line: 90, baseType: !3512, size: 64, offset: 384)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!123, !3440, !3515}
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3517)
!3517 = !{!3518, !3519, !3520, !3521, !3522, !3523, !3524, !3537, !3550, !3551, !3552, !3553, !3554, !3562, !3563, !3564, !3565, !3566, !3567}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3516, file: !67, line: 96, baseType: !180, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3516, file: !67, line: 97, baseType: !3501, size: 64, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3516, file: !67, line: 99, baseType: !115, size: 64, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3516, file: !67, line: 100, baseType: !180, size: 64, offset: 192)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3516, file: !67, line: 102, baseType: !429, size: 8, offset: 256)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3516, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3516, file: !67, line: 105, baseType: !3525, size: 64, offset: 320)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3527)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3528, line: 262, size: 1600, elements: !3529)
!3528 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3529 = !{!3530, !3531, !3532, !3536}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3527, file: !3528, line: 263, baseType: !2670, size: 256)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3527, file: !3528, line: 264, baseType: !2670, size: 256, offset: 256)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3527, file: !3528, line: 265, baseType: !3533, size: 1024, offset: 512)
!3533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 1024, elements: !3534)
!3534 = !{!3535}
!3535 = !DISubrange(count: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3527, file: !3528, line: 266, baseType: !2097, size: 64, offset: 1536)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3516, file: !67, line: 106, baseType: !3538, size: 64, offset: 384)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3540)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3528, line: 210, size: 256, elements: !3541)
!3541 = !{!3542, !3546, !3548, !3549}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3540, file: !3528, line: 211, baseType: !3543, size: 72)
!3543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1326, size: 72, elements: !3544)
!3544 = !{!3545}
!3545 = !DISubrange(count: 9)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3540, file: !3528, line: 212, baseType: !3547, size: 64, offset: 128)
!3547 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3528, line: 14, baseType: !124)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3540, file: !3528, line: 213, baseType: !135, size: 32, offset: 192)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3540, file: !3528, line: 214, baseType: !135, size: 32, offset: 224)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3516, file: !67, line: 108, baseType: !3475, size: 64, offset: 448)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3516, file: !67, line: 109, baseType: !3466, size: 64, offset: 512)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3516, file: !67, line: 110, baseType: !3475, size: 64, offset: 576)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3516, file: !67, line: 111, baseType: !3466, size: 64, offset: 640)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3516, file: !67, line: 112, baseType: !3555, size: 64, offset: 704)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!123, !3440, !3558}
!3558 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3559)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3560)
!3560 = !{!3561}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3559, file: !80, line: 51, baseType: !123, size: 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3516, file: !67, line: 113, baseType: !3475, size: 64, offset: 768)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3516, file: !67, line: 114, baseType: !271, size: 64, offset: 832)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3516, file: !67, line: 115, baseType: !271, size: 64, offset: 896)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3516, file: !67, line: 117, baseType: !3470, size: 64, offset: 960)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3516, file: !67, line: 118, baseType: !3466, size: 64, offset: 1024)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3516, file: !67, line: 120, baseType: !3568, size: 64, offset: 1088)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3502, file: !3503, line: 91, baseType: !3457, size: 64, offset: 448)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3502, file: !3503, line: 92, baseType: !3475, size: 64, offset: 512)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3502, file: !3503, line: 93, baseType: !3466, size: 64, offset: 576)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3502, file: !3503, line: 94, baseType: !3475, size: 64, offset: 640)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3502, file: !3503, line: 95, baseType: !3466, size: 64, offset: 704)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3502, file: !3503, line: 97, baseType: !3475, size: 64, offset: 768)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3502, file: !3503, line: 98, baseType: !3475, size: 64, offset: 832)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3502, file: !3503, line: 100, baseType: !3555, size: 64, offset: 896)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3502, file: !3503, line: 101, baseType: !3475, size: 64, offset: 960)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3502, file: !3503, line: 103, baseType: !3475, size: 64, offset: 1024)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3502, file: !3503, line: 105, baseType: !3475, size: 64, offset: 1088)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3502, file: !3503, line: 107, baseType: !3470, size: 64, offset: 1152)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3502, file: !3503, line: 109, baseType: !3583, size: 64, offset: 1216)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3585)
!3585 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3503, line: 109, flags: DIFlagFwdDecl)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3502, file: !3503, line: 111, baseType: !3587, size: 64, offset: 1280)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3503, line: 111, flags: DIFlagFwdDecl)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3502, file: !3503, line: 112, baseType: !583, offset: 1344)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3502, file: !3503, line: 114, baseType: !429, size: 8, offset: 1344)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3441, file: !73, line: 471, baseType: !3515, size: 64, offset: 832)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3441, file: !73, line: 473, baseType: !114, size: 64, offset: 896)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3441, file: !73, line: 475, baseType: !114, size: 64, offset: 960)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3441, file: !73, line: 480, baseType: !1146, size: 192, offset: 1024)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3441, file: !73, line: 484, baseType: !3596, size: 576, offset: 1216)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3597)
!3597 = !{!3598, !3599, !3600, !3601, !3602, !3603}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3596, file: !73, line: 362, baseType: !166, size: 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3596, file: !73, line: 363, baseType: !166, size: 128, offset: 128)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3596, file: !73, line: 364, baseType: !166, size: 128, offset: 256)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3596, file: !73, line: 365, baseType: !166, size: 128, offset: 384)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3596, file: !73, line: 366, baseType: !429, size: 8, offset: 512)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3596, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3441, file: !73, line: 485, baseType: !3605, size: 2304, offset: 1792)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3606)
!3606 = !{!3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3702, !3706}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3605, file: !80, line: 566, baseType: !3558, size: 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3605, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3605, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3605, file: !80, line: 569, baseType: !429, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3605, file: !80, line: 570, baseType: !429, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3605, file: !80, line: 571, baseType: !429, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3605, file: !80, line: 572, baseType: !429, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3605, file: !80, line: 573, baseType: !429, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3605, file: !80, line: 574, baseType: !429, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3605, file: !80, line: 575, baseType: !429, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3605, file: !80, line: 576, baseType: !429, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3605, file: !80, line: 577, baseType: !133, size: 32, offset: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3605, file: !80, line: 578, baseType: !150, offset: 96)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3605, file: !80, line: 580, baseType: !166, size: 128, offset: 128)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3605, file: !80, line: 581, baseType: !1473, size: 192, offset: 256)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3605, file: !80, line: 582, baseType: !3623, size: 64, offset: 448)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3625, line: 43, size: 1472, elements: !3626)
!3625 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3626 = !{!3627, !3628, !3629, !3630, !3631, !3634, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3624, file: !3625, line: 44, baseType: !180, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3624, file: !3625, line: 45, baseType: !123, size: 32, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3624, file: !3625, line: 46, baseType: !166, size: 128, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3624, file: !3625, line: 47, baseType: !150, offset: 256)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3624, file: !3625, line: 48, baseType: !3632, size: 64, offset: 256)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3624, file: !3625, line: 49, baseType: !3635, size: 320, offset: 320)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3636, line: 11, size: 320, elements: !3637)
!3636 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3637 = !{!3638, !3639, !3640, !3645}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3635, file: !3636, line: 16, baseType: !577, size: 128)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3635, file: !3636, line: 17, baseType: !124, size: 64, offset: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3635, file: !3636, line: 18, baseType: !3641, size: 64, offset: 192)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{null, !3644}
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3635, file: !3636, line: 19, baseType: !133, size: 32, offset: 256)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3624, file: !3625, line: 50, baseType: !124, size: 64, offset: 640)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3624, file: !3625, line: 51, baseType: !1273, size: 64, offset: 704)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3624, file: !3625, line: 52, baseType: !1273, size: 64, offset: 768)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3624, file: !3625, line: 53, baseType: !1273, size: 64, offset: 832)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3624, file: !3625, line: 54, baseType: !1273, size: 64, offset: 896)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3624, file: !3625, line: 55, baseType: !1273, size: 64, offset: 960)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3624, file: !3625, line: 56, baseType: !124, size: 64, offset: 1024)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3624, file: !3625, line: 57, baseType: !124, size: 64, offset: 1088)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3624, file: !3625, line: 58, baseType: !124, size: 64, offset: 1152)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3624, file: !3625, line: 59, baseType: !124, size: 64, offset: 1216)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3624, file: !3625, line: 60, baseType: !124, size: 64, offset: 1280)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3624, file: !3625, line: 61, baseType: !3440, size: 64, offset: 1344)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3624, file: !3625, line: 62, baseType: !429, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3624, file: !3625, line: 63, baseType: !429, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3605, file: !80, line: 583, baseType: !429, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3605, file: !80, line: 584, baseType: !429, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3605, file: !80, line: 585, baseType: !429, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3605, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3605, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3605, file: !80, line: 592, baseType: !1265, size: 512, offset: 576)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3605, file: !80, line: 593, baseType: !360, size: 64, offset: 1088)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3605, file: !80, line: 594, baseType: !1929, size: 256, offset: 1152)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3605, file: !80, line: 595, baseType: !145, size: 128, offset: 1408)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3605, file: !80, line: 596, baseType: !3632, size: 64, offset: 1536)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3605, file: !80, line: 597, baseType: !140, size: 32, offset: 1600)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3605, file: !80, line: 598, baseType: !140, size: 32, offset: 1632)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3605, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3605, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3605, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3605, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3605, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3605, file: !80, line: 604, baseType: !429, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3605, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3605, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3605, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3605, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3605, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3605, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3605, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3605, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3605, file: !80, line: 613, baseType: !123, size: 32, offset: 1792)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3605, file: !80, line: 614, baseType: !123, size: 32, offset: 1824)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3605, file: !80, line: 615, baseType: !360, size: 64, offset: 1856)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3605, file: !80, line: 616, baseType: !360, size: 64, offset: 1920)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3605, file: !80, line: 617, baseType: !360, size: 64, offset: 1984)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3605, file: !80, line: 618, baseType: !360, size: 64, offset: 2048)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3605, file: !80, line: 620, baseType: !3693, size: 64, offset: 2112)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3695)
!3695 = !{!3696, !3697, !3698, !3699}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3694, file: !80, line: 537, baseType: !150)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3694, file: !80, line: 538, baseType: !7, size: 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3694, file: !80, line: 540, baseType: !166, size: 128, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3694, file: !80, line: 543, baseType: !3700, size: 64, offset: 192)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3605, file: !80, line: 621, baseType: !3703, size: 64, offset: 2176)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{null, !3440, !1416}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3605, file: !80, line: 622, baseType: !3707, size: 64, offset: 2240)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3441, file: !73, line: 486, baseType: !3710, size: 64, offset: 4096)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3712)
!3712 = !{!3713, !3714, !3715, !3719, !3720, !3721}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3711, file: !80, line: 643, baseType: !3472, size: 1472)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3711, file: !80, line: 644, baseType: !3475, size: 64, offset: 1472)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3711, file: !80, line: 645, baseType: !3716, size: 64, offset: 1536)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{null, !3440, !429}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3711, file: !80, line: 646, baseType: !3475, size: 64, offset: 1600)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3711, file: !80, line: 647, baseType: !3466, size: 64, offset: 1664)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3711, file: !80, line: 648, baseType: !3466, size: 64, offset: 1728)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3441, file: !73, line: 493, baseType: !3723, size: 64, offset: 4160)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3441, file: !73, line: 499, baseType: !166, size: 128, offset: 4224)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3441, file: !73, line: 502, baseType: !3727, size: 64, offset: 4352)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3729)
!3729 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3441, file: !73, line: 504, baseType: !3731, size: 64, offset: 4416)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3441, file: !73, line: 505, baseType: !360, size: 64, offset: 4480)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3441, file: !73, line: 510, baseType: !360, size: 64, offset: 4544)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3441, file: !73, line: 511, baseType: !3735, size: 64, offset: 4608)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3737)
!3737 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3441, file: !73, line: 513, baseType: !3739, size: 64, offset: 4672)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3741)
!3741 = !{!3742, !3743}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3740, file: !73, line: 293, baseType: !7, size: 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3740, file: !73, line: 294, baseType: !124, size: 64, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3441, file: !73, line: 515, baseType: !166, size: 128, offset: 4736)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3441, file: !73, line: 526, baseType: !3746, offset: 4864)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3747, line: 5, elements: !164)
!3747 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3441, file: !73, line: 528, baseType: !3749, size: 64, offset: 4864)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3751, line: 14, flags: DIFlagFwdDecl)
!3751 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3441, file: !73, line: 529, baseType: !3753, size: 64, offset: 4928)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3755, line: 17, size: 192, elements: !3756)
!3755 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3756 = !{!3757, !3758, !3841}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3754, file: !3755, line: 18, baseType: !3753, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3754, file: !3755, line: 19, baseType: !3759, size: 64, offset: 64)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3761)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3755, line: 110, size: 1152, elements: !3762)
!3762 = !{!3763, !3767, !3771, !3777, !3783, !3787, !3791, !3796, !3800, !3801, !3805, !3809, !3813, !3824, !3825, !3826, !3827, !3837}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3761, file: !3755, line: 111, baseType: !3764, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!3753, !3753}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3761, file: !3755, line: 112, baseType: !3768, size: 64, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{null, !3753}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3761, file: !3755, line: 113, baseType: !3772, size: 64, offset: 128)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!429, !3775}
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3754)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3761, file: !3755, line: 114, baseType: !3778, size: 64, offset: 192)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!2097, !3775, !3781}
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3441)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3761, file: !3755, line: 116, baseType: !3784, size: 64, offset: 256)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!429, !3775, !180}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3761, file: !3755, line: 118, baseType: !3788, size: 64, offset: 320)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!123, !3775, !180, !7, !114, !265}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3761, file: !3755, line: 123, baseType: !3792, size: 64, offset: 384)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!123, !3775, !180, !3795, !265}
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3761, file: !3755, line: 126, baseType: !3797, size: 64, offset: 448)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!180, !3775}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3761, file: !3755, line: 127, baseType: !3797, size: 64, offset: 512)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3761, file: !3755, line: 128, baseType: !3802, size: 64, offset: 576)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!3753, !3775}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3761, file: !3755, line: 130, baseType: !3806, size: 64, offset: 640)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!3753, !3775, !3753}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3761, file: !3755, line: 133, baseType: !3810, size: 64, offset: 704)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!3753, !3775, !180}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3761, file: !3755, line: 135, baseType: !3814, size: 64, offset: 768)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!123, !3775, !180, !180, !7, !7, !3817}
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3755, line: 43, size: 640, elements: !3819)
!3819 = !{!3820, !3821, !3822}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3818, file: !3755, line: 44, baseType: !3753, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3818, file: !3755, line: 45, baseType: !7, size: 32, offset: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3818, file: !3755, line: 46, baseType: !3823, size: 512, offset: 128)
!3823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 512, elements: !1303)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3761, file: !3755, line: 140, baseType: !3806, size: 64, offset: 832)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3761, file: !3755, line: 143, baseType: !3802, size: 64, offset: 896)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3761, file: !3755, line: 145, baseType: !3764, size: 64, offset: 960)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3761, file: !3755, line: 146, baseType: !3828, size: 64, offset: 1024)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!123, !3775, !3831}
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3755, line: 29, size: 128, elements: !3833)
!3833 = !{!3834, !3835, !3836}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3832, file: !3755, line: 30, baseType: !7, size: 32)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3832, file: !3755, line: 31, baseType: !7, size: 32, offset: 32)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3832, file: !3755, line: 32, baseType: !3775, size: 64, offset: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3761, file: !3755, line: 148, baseType: !3838, size: 64, offset: 1088)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!123, !3775, !3440}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3754, file: !3755, line: 20, baseType: !3440, size: 64, offset: 128)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3441, file: !73, line: 534, baseType: !452, size: 32, offset: 4992)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3441, file: !73, line: 535, baseType: !133, size: 32, offset: 5024)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3441, file: !73, line: 537, baseType: !150, offset: 5056)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3441, file: !73, line: 538, baseType: !166, size: 128, offset: 5056)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3441, file: !73, line: 540, baseType: !3847, size: 64, offset: 5184)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3849, line: 54, size: 960, elements: !3850)
!3849 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3850 = !{!3851, !3852, !3853, !3854, !3855, !3856, !3857, !3861, !3865, !3866, !3867, !3868, !3872, !3876, !3877}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3848, file: !3849, line: 55, baseType: !180, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3848, file: !3849, line: 56, baseType: !115, size: 64, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3848, file: !3849, line: 58, baseType: !271, size: 64, offset: 128)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3848, file: !3849, line: 59, baseType: !271, size: 64, offset: 192)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3848, file: !3849, line: 60, baseType: !185, size: 64, offset: 256)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3848, file: !3849, line: 62, baseType: !3457, size: 64, offset: 320)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3848, file: !3849, line: 63, baseType: !3858, size: 64, offset: 384)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!218, !3440, !3464}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3848, file: !3849, line: 65, baseType: !3862, size: 64, offset: 448)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{null, !3847}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3848, file: !3849, line: 66, baseType: !3466, size: 64, offset: 512)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3848, file: !3849, line: 68, baseType: !3475, size: 64, offset: 576)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3848, file: !3849, line: 70, baseType: !3164, size: 64, offset: 640)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3848, file: !3849, line: 71, baseType: !3869, size: 64, offset: 704)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!2097, !3440}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3848, file: !3849, line: 73, baseType: !3873, size: 64, offset: 768)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{null, !3440, !3196, !3197}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3848, file: !3849, line: 75, baseType: !3470, size: 64, offset: 832)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3848, file: !3849, line: 77, baseType: !3587, size: 64, offset: 896)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3441, file: !73, line: 541, baseType: !271, size: 64, offset: 5248)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3441, file: !73, line: 543, baseType: !3466, size: 64, offset: 5312)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3441, file: !73, line: 544, baseType: !3881, size: 64, offset: 5376)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3441, file: !73, line: 545, baseType: !3884, size: 64, offset: 5440)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3441, file: !73, line: 547, baseType: !429, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3441, file: !73, line: 548, baseType: !429, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3441, file: !73, line: 549, baseType: !429, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3441, file: !73, line: 550, baseType: !429, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3371, file: !3366, line: 635, baseType: !3441, size: 5568, offset: 2304)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !3371, file: !3366, line: 636, baseType: !285, size: 64, offset: 7872)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !3371, file: !3366, line: 637, baseType: !285, size: 64, offset: 7936)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !3371, file: !3366, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !3365, file: !3366, line: 312, baseType: !3370, size: 64, offset: 192)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !3365, file: !3366, line: 314, baseType: !114, size: 64, offset: 256)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !3365, file: !3366, line: 315, baseType: !3425, size: 64, offset: 320)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !3365, file: !3366, line: 316, baseType: !3898, size: 64, offset: 384)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !3366, line: 69, size: 832, elements: !3900)
!3900 = !{!3901, !3902, !3903, !3906, !3907}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3899, file: !3366, line: 70, baseType: !3370, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3899, file: !3366, line: 71, baseType: !166, size: 128, offset: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !3899, file: !3366, line: 72, baseType: !3904, size: 64, offset: 192)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !3366, line: 72, flags: DIFlagFwdDecl)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3899, file: !3366, line: 73, baseType: !366, size: 8, offset: 256)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3899, file: !3366, line: 74, baseType: !176, size: 512, offset: 320)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !3365, file: !3366, line: 318, baseType: !7, size: 32, offset: 448)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3365, file: !3366, line: 319, baseType: !260, size: 16, offset: 480)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3365, file: !3366, line: 320, baseType: !260, size: 16, offset: 496)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !3365, file: !3366, line: 321, baseType: !260, size: 16, offset: 512)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !3365, file: !3366, line: 322, baseType: !260, size: 16, offset: 528)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3365, file: !3366, line: 323, baseType: !7, size: 32, offset: 544)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !3365, file: !3366, line: 324, baseType: !1325, size: 8, offset: 576)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !3365, file: !3366, line: 325, baseType: !1325, size: 8, offset: 584)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !3365, file: !3366, line: 330, baseType: !1325, size: 8, offset: 592)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !3365, file: !3366, line: 331, baseType: !1325, size: 8, offset: 600)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !3365, file: !3366, line: 332, baseType: !1325, size: 8, offset: 608)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !3365, file: !3366, line: 333, baseType: !1325, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !3365, file: !3366, line: 334, baseType: !1325, size: 8, offset: 624)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !3365, file: !3366, line: 335, baseType: !1325, size: 8, offset: 632)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !3365, file: !3366, line: 336, baseType: !793, size: 16, offset: 640)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !3365, file: !3366, line: 337, baseType: !3924, size: 64, offset: 704)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3365, file: !3366, line: 339, baseType: !3926, size: 64, offset: 768)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !3366, line: 858, size: 2048, elements: !3928)
!3928 = !{!3929, !3930, !3931, !3943, !3947, !3951, !3955, !3959, !3960, !3964, !3983, !3984, !3985}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3927, file: !3366, line: 859, baseType: !166, size: 128)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3927, file: !3366, line: 860, baseType: !180, size: 64, offset: 128)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3927, file: !3366, line: 861, baseType: !3932, size: 64, offset: 192)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3934)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3528, line: 38, size: 256, elements: !3935)
!3935 = !{!3936, !3937, !3938, !3939, !3940, !3941, !3942}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3934, file: !3528, line: 39, baseType: !135, size: 32)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3934, file: !3528, line: 39, baseType: !135, size: 32, offset: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !3934, file: !3528, line: 40, baseType: !135, size: 32, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !3934, file: !3528, line: 40, baseType: !135, size: 32, offset: 96)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3934, file: !3528, line: 41, baseType: !135, size: 32, offset: 128)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !3934, file: !3528, line: 41, baseType: !135, size: 32, offset: 160)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3934, file: !3528, line: 42, baseType: !3547, size: 64, offset: 192)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3927, file: !3366, line: 862, baseType: !3944, size: 64, offset: 256)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!123, !3364, !3932}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3927, file: !3366, line: 863, baseType: !3948, size: 64, offset: 320)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{null, !3364}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3927, file: !3366, line: 864, baseType: !3952, size: 64, offset: 384)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!123, !3364, !3558}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3927, file: !3366, line: 865, baseType: !3956, size: 64, offset: 448)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!123, !3364}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3927, file: !3366, line: 866, baseType: !3948, size: 64, offset: 512)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !3927, file: !3366, line: 867, baseType: !3961, size: 64, offset: 576)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!123, !3364, !123}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !3927, file: !3366, line: 868, baseType: !3965, size: 64, offset: 640)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3967)
!3967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !3366, line: 795, size: 384, elements: !3968)
!3968 = !{!3969, !3975, !3979, !3980, !3981, !3982}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !3967, file: !3366, line: 797, baseType: !3970, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!3973, !3364, !3974}
!3973 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !3366, line: 772, baseType: !7)
!3974 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !3366, line: 180, baseType: !7)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !3967, file: !3366, line: 801, baseType: !3976, size: 64, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!3973, !3364}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !3967, file: !3366, line: 804, baseType: !3976, size: 64, offset: 128)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !3967, file: !3366, line: 807, baseType: !3948, size: 64, offset: 192)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !3967, file: !3366, line: 808, baseType: !3948, size: 64, offset: 256)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3967, file: !3366, line: 811, baseType: !3948, size: 64, offset: 320)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3927, file: !3366, line: 869, baseType: !271, size: 64, offset: 704)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3927, file: !3366, line: 870, baseType: !3516, size: 1152, offset: 768)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3927, file: !3366, line: 871, baseType: !3986, size: 128, offset: 1920)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !3366, line: 759, size: 128, elements: !3987)
!3987 = !{!3988, !3989}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3986, file: !3366, line: 760, baseType: !150)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3986, file: !3366, line: 761, baseType: !166, size: 128)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3365, file: !3366, line: 340, baseType: !360, size: 64, offset: 832)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3365, file: !3366, line: 346, baseType: !3740, size: 128, offset: 896)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !3365, file: !3366, line: 348, baseType: !3993, size: 32, offset: 1024)
!3993 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !3366, line: 155, baseType: !123)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !3365, file: !3366, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !3365, file: !3366, line: 352, baseType: !1325, size: 8, offset: 1064)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !3365, file: !3366, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !3365, file: !3366, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !3365, file: !3366, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !3365, file: !3366, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !3365, file: !3366, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !3365, file: !3366, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !3365, file: !3366, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !3365, file: !3366, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !3365, file: !3366, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !3365, file: !3366, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !3365, file: !3366, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !3365, file: !3366, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !3365, file: !3366, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !3365, file: !3366, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !3365, file: !3366, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !3365, file: !3366, line: 376, baseType: !7, size: 32, offset: 1120)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !3365, file: !3366, line: 377, baseType: !7, size: 32, offset: 1152)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !3365, file: !3366, line: 380, baseType: !4014, size: 64, offset: 1216)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !3366, line: 303, flags: DIFlagFwdDecl)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !3365, file: !3366, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !3365, file: !3366, line: 383, baseType: !123, size: 32, offset: 1312)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !3365, file: !3366, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !3365, file: !3366, line: 387, baseType: !3974, size: 32, offset: 1376)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3365, file: !3366, line: 388, baseType: !3441, size: 5568, offset: 1408)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !3365, file: !3366, line: 390, baseType: !123, size: 32, offset: 6976)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3365, file: !3366, line: 396, baseType: !7, size: 32, offset: 7008)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !3365, file: !3366, line: 397, baseType: !4024, size: 8704, offset: 7040)
!4024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3382, size: 8704, elements: !4025)
!4025 = !{!4026}
!4026 = !DISubrange(count: 17)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !3365, file: !3366, line: 399, baseType: !429, size: 8, offset: 15744)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !3365, file: !3366, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !3365, file: !3366, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !3365, file: !3366, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !3365, file: !3366, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !3365, file: !3366, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !3365, file: !3366, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !3365, file: !3366, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !3365, file: !3366, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !3365, file: !3366, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !3365, file: !3366, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !3365, file: !3366, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !3365, file: !3366, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !3365, file: !3366, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !3365, file: !3366, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !3365, file: !3366, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !3365, file: !3366, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !3365, file: !3366, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !3365, file: !3366, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !3365, file: !3366, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !3365, file: !3366, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !3365, file: !3366, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !3365, file: !3366, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !3365, file: !3366, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !3365, file: !3366, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !3365, file: !3366, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !3365, file: !3366, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !3365, file: !3366, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !3365, file: !3366, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !3365, file: !3366, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !3365, file: !3366, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !3365, file: !3366, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !3365, file: !3366, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !3365, file: !3366, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !3365, file: !3366, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !3365, file: !3366, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !3365, file: !3366, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !3365, file: !3366, line: 450, baseType: !4065, size: 16, offset: 15792)
!4065 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !3366, line: 206, baseType: !260)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !3365, file: !3366, line: 451, baseType: !140, size: 32, offset: 15808)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !3365, file: !3366, line: 453, baseType: !4068, size: 512, offset: 15840)
!4068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 512, elements: !1706)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !3365, file: !3366, line: 454, baseType: !573, size: 64, offset: 16384)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !3365, file: !3366, line: 455, baseType: !285, size: 64, offset: 16448)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !3365, file: !3366, line: 456, baseType: !123, size: 32, offset: 16512)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !3365, file: !3366, line: 457, baseType: !4073, size: 1088, offset: 16576)
!4073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 1088, elements: !4025)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !3365, file: !3366, line: 458, baseType: !4073, size: 1088, offset: 17664)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !3365, file: !3366, line: 469, baseType: !271, size: 64, offset: 18752)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !3365, file: !3366, line: 471, baseType: !4077, size: 64, offset: 18816)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !3366, line: 304, flags: DIFlagFwdDecl)
!4079 = !DIDerivedType(tag: DW_TAG_member, scope: !3365, file: !3366, line: 478, baseType: !4080, size: 64, offset: 18880)
!4080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3365, file: !3366, line: 478, size: 64, elements: !4081)
!4081 = !{!4082, !4085}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4080, file: !3366, line: 479, baseType: !4083, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !3366, line: 305, flags: DIFlagFwdDecl)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4080, file: !3366, line: 480, baseType: !3364, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !3365, file: !3366, line: 482, baseType: !793, size: 16, offset: 18944)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !3365, file: !3366, line: 483, baseType: !1325, size: 8, offset: 18960)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !3365, file: !3366, line: 497, baseType: !793, size: 16, offset: 18976)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !3365, file: !3366, line: 498, baseType: !2095, size: 64, offset: 19008)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !3365, file: !3366, line: 499, baseType: !265, size: 64, offset: 19072)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !3365, file: !3366, line: 500, baseType: !218, size: 64, offset: 19136)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !3365, file: !3366, line: 502, baseType: !124, size: 64, offset: 19200)
!4093 = !{!4094, !4096, !4101, !4104, !4109, !4114, !4117, !4122, !4167, !4169, !0, !4171, !4174, !4177, !4179, !4182, !4184, !4186, !4188, !4206, !4211}
!4094 = !DIGlobalVariableExpression(var: !4095, expr: !DIExpression())
!4095 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_phantom_init245", scope: !2, file: !3, line: 557, type: !114, isLocal: true, isDefinition: true)
!4096 = !DIGlobalVariableExpression(var: !4097, expr: !DIExpression())
!4097 = distinct !DIGlobalVariable(name: "__exitcall_phantom_exit", scope: !2, file: !3, line: 558, type: !4098, isLocal: true, isDefinition: true)
!4098 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4099, line: 117, baseType: !4100)
!4099 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!4101 = !DIGlobalVariableExpression(var: !4102, expr: !DIExpression())
!4102 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author246", scope: !2, file: !3, line: 560, type: !4103, isLocal: true, isDefinition: true, align: 8)
!4103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 384, elements: !3434)
!4104 = !DIGlobalVariableExpression(var: !4105, expr: !DIExpression())
!4105 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description247", scope: !2, file: !3, line: 561, type: !4106, isLocal: true, isDefinition: true, align: 8)
!4106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 464, elements: !4107)
!4107 = !{!4108}
!4108 = !DISubrange(count: 58)
!4109 = !DIGlobalVariableExpression(var: !4110, expr: !DIExpression())
!4110 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file248", scope: !2, file: !3, line: 562, type: !4111, isLocal: true, isDefinition: true, align: 8)
!4111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 272, elements: !4112)
!4112 = !{!4113}
!4113 = !DISubrange(count: 34)
!4114 = !DIGlobalVariableExpression(var: !4115, expr: !DIExpression())
!4115 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license249", scope: !2, file: !3, line: 562, type: !4116, isLocal: true, isDefinition: true, align: 8)
!4116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 160, elements: !2171)
!4117 = !DIGlobalVariableExpression(var: !4118, expr: !DIExpression())
!4118 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_version250", scope: !2, file: !3, line: 563, type: !4119, isLocal: true, isDefinition: true, align: 8)
!4119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 184, elements: !4120)
!4120 = !{!4121}
!4121 = !DISubrange(count: 23)
!4122 = !DIGlobalVariableExpression(var: !4123, expr: !DIExpression())
!4123 = distinct !DIGlobalVariable(name: "__modver_attr", scope: !2, file: !3, line: 563, type: !4124, isLocal: true, isDefinition: true)
!4124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4125)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4127)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_version_attribute", file: !4128, line: 65, size: 576, align: 64, elements: !4129)
!4128 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!4129 = !{!4130, !4165, !4166}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "mattr", scope: !4127, file: !4128, line: 66, baseType: !4131, size: 448)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !4128, line: 54, size: 448, elements: !4132)
!4132 = !{!4133, !4134, !4149, !4153, !4157, !4161}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4131, file: !4128, line: 55, baseType: !255, size: 128)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4131, file: !4128, line: 56, baseType: !4135, size: 64, offset: 128)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!249, !4138, !4139, !218}
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !4128, line: 46, size: 768, elements: !4141)
!4141 = !{!4142, !4143, !4144, !4145, !4148}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4140, file: !4128, line: 47, baseType: !176, size: 512)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4140, file: !4128, line: 48, baseType: !115, size: 64, offset: 512)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !4140, file: !4128, line: 49, baseType: !185, size: 64, offset: 576)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !4140, file: !4128, line: 50, baseType: !4146, size: 64, offset: 640)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !4128, line: 50, flags: DIFlagFwdDecl)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !4140, file: !4128, line: 51, baseType: !1472, size: 64, offset: 704)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4131, file: !4128, line: 58, baseType: !4150, size: 64, offset: 192)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!249, !4138, !4139, !180, !265}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4131, file: !4128, line: 60, baseType: !4154, size: 64, offset: 256)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{null, !115, !180}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4131, file: !4128, line: 61, baseType: !4158, size: 64, offset: 320)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!123, !115}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4131, file: !4128, line: 62, baseType: !4162, size: 64, offset: 384)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{null, !115}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "module_name", scope: !4127, file: !4128, line: 67, baseType: !180, size: 64, offset: 448)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4127, file: !4128, line: 68, baseType: !180, size: 64, offset: 512)
!4167 = !DIGlobalVariableExpression(var: !4168, expr: !DIExpression())
!4168 = distinct !DIGlobalVariable(name: "phantom_class", scope: !2, file: !3, line: 38, type: !3847, isLocal: true, isDefinition: true)
!4169 = !DIGlobalVariableExpression(var: !4170, expr: !DIExpression())
!4170 = distinct !DIGlobalVariable(name: "phantom_major", scope: !2, file: !3, line: 39, type: !123, isLocal: true, isDefinition: true)
!4171 = !DIGlobalVariableExpression(var: !4172, expr: !DIExpression())
!4172 = distinct !DIGlobalVariable(name: "phantom_pci_tbl", scope: !2, file: !3, line: 481, type: !4173, isLocal: true, isDefinition: true)
!4173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3934, size: 512, elements: !1540)
!4174 = !DIGlobalVariableExpression(var: !4175, expr: !DIExpression())
!4175 = distinct !DIGlobalVariable(name: "__key", scope: !4176, file: !3, line: 385, type: !583, isLocal: true, isDefinition: true)
!4176 = distinct !DISubprogram(name: "phantom_probe", scope: !3, file: !3, line: 334, type: !3945, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4177 = !DIGlobalVariableExpression(var: !4178, expr: !DIExpression())
!4178 = distinct !DIGlobalVariable(name: "__key", scope: !4176, file: !3, line: 387, type: !583, isLocal: true, isDefinition: true)
!4179 = !DIGlobalVariableExpression(var: !4180, expr: !DIExpression())
!4180 = distinct !DIGlobalVariable(name: "phantom_devices", scope: !2, file: !3, line: 60, type: !4181, isLocal: true, isDefinition: true)
!4181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 64, elements: !1303)
!4182 = !DIGlobalVariableExpression(var: !4183, expr: !DIExpression())
!4183 = distinct !DIGlobalVariable(name: "phantom_file_ops", scope: !2, file: !3, line: 273, type: !2834, isLocal: true, isDefinition: true)
!4184 = !DIGlobalVariableExpression(var: !4185, expr: !DIExpression())
!4185 = distinct !DIGlobalVariable(name: "phantom_mutex", scope: !2, file: !3, line: 37, type: !1146, isLocal: true, isDefinition: true)
!4186 = !DIGlobalVariableExpression(var: !4187, expr: !DIExpression())
!4187 = distinct !DIGlobalVariable(name: "phantom_pm_ops", scope: !2, file: !3, line: 489, type: !3471, isLocal: true, isDefinition: true)
!4188 = !DIGlobalVariableExpression(var: !4189, expr: !DIExpression())
!4189 = distinct !DIGlobalVariable(name: "class_attr_version", scope: !2, file: !3, line: 499, type: !4190, isLocal: true, isDefinition: true)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class_attribute_string", file: !3849, line: 226, size: 320, elements: !4191)
!4191 = !{!4192, !4205}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4190, file: !3849, line: 227, baseType: !4193, size: 256)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class_attribute", file: !3849, line: 191, size: 256, elements: !4194)
!4194 = !{!4195, !4196, !4201}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4193, file: !3849, line: 192, baseType: !255, size: 128)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4193, file: !3849, line: 193, baseType: !4197, size: 64, offset: 128)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!249, !3847, !4200, !218}
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4193, file: !3849, line: 195, baseType: !4202, size: 64, offset: 192)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!249, !3847, !4200, !180, !265}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4190, file: !3849, line: 228, baseType: !218, size: 64, offset: 256)
!4206 = !DIGlobalVariableExpression(var: !4207, expr: !DIExpression())
!4207 = distinct !DIGlobalVariable(name: "__key", scope: !4208, file: !3, line: 506, type: !583, isLocal: true, isDefinition: true)
!4208 = distinct !DISubprogram(name: "phantom_init", scope: !3, file: !3, line: 501, type: !4209, scopeLine: 502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!123}
!4211 = !DIGlobalVariableExpression(var: !4212, expr: !DIExpression())
!4212 = distinct !DIGlobalVariable(name: "___modver_attr", scope: !2, file: !3, line: 563, type: !4127, isLocal: true, isDefinition: true)
!4213 = !{!"rsp"}
!4214 = !{i32 7, !"Dwarf Version", i32 4}
!4215 = !{i32 2, !"Debug Info Version", i32 3}
!4216 = !{i32 1, !"wchar_size", i32 2}
!4217 = !{i32 1, !"Code Model", i32 2}
!4218 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4219 = distinct !DISubprogram(name: "phantom_exit", scope: !3, file: !3, line: 545, type: !1850, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4220 = !DILocation(line: 547, column: 2, scope: !4219)
!4221 = !DILocation(line: 549, column: 27, scope: !4219)
!4222 = !DILocation(line: 549, column: 2, scope: !4219)
!4223 = !DILocation(line: 551, column: 20, scope: !4219)
!4224 = !DILocation(line: 551, column: 2, scope: !4219)
!4225 = !DILocation(line: 552, column: 16, scope: !4219)
!4226 = !DILocation(line: 552, column: 2, scope: !4219)
!4227 = !DILocation(line: 554, column: 2, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4229, file: !3, line: 554, column: 2)
!4229 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 554, column: 2)
!4230 = !DILocation(line: 554, column: 2, scope: !4229)
!4231 = !DILocation(line: 555, column: 1, scope: !4219)
!4232 = distinct !DISubprogram(name: "class_remove_file", scope: !3849, file: !3849, line: 219, type: !4233, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{null, !3847, !4235}
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4193)
!4237 = !DILocalVariable(name: "class", arg: 1, scope: !4232, file: !3849, line: 219, type: !3847)
!4238 = !DILocation(line: 219, column: 52, scope: !4232)
!4239 = !DILocalVariable(name: "attr", arg: 2, scope: !4232, file: !3849, line: 220, type: !4235)
!4240 = !DILocation(line: 220, column: 40, scope: !4232)
!4241 = !DILocation(line: 222, column: 30, scope: !4232)
!4242 = !DILocation(line: 222, column: 37, scope: !4232)
!4243 = !DILocation(line: 222, column: 9, scope: !4232)
!4244 = !DILocation(line: 222, column: 2, scope: !4232)
!4245 = !DILocalVariable(name: "retval", scope: !4208, file: !3, line: 503, type: !123)
!4246 = !DILocation(line: 503, column: 6, scope: !4208)
!4247 = !DILocalVariable(name: "dev", scope: !4208, file: !3, line: 504, type: !452)
!4248 = !DILocation(line: 504, column: 8, scope: !4208)
!4249 = !DILocation(line: 506, column: 18, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 506, column: 18)
!4251 = !DILocation(line: 506, column: 16, scope: !4208)
!4252 = !DILocation(line: 507, column: 13, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 507, column: 6)
!4254 = !DILocation(line: 507, column: 6, scope: !4253)
!4255 = !DILocation(line: 507, column: 6, scope: !4208)
!4256 = !DILocation(line: 508, column: 20, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 507, column: 29)
!4258 = !DILocation(line: 508, column: 12, scope: !4257)
!4259 = !DILocation(line: 508, column: 10, scope: !4257)
!4260 = !DILocation(line: 509, column: 3, scope: !4257)
!4261 = !DILocation(line: 510, column: 3, scope: !4257)
!4262 = !DILocation(line: 512, column: 29, scope: !4208)
!4263 = !DILocation(line: 512, column: 11, scope: !4208)
!4264 = !DILocation(line: 512, column: 9, scope: !4208)
!4265 = !DILocation(line: 513, column: 6, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 513, column: 6)
!4267 = !DILocation(line: 513, column: 6, scope: !4208)
!4268 = !DILocation(line: 514, column: 3, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 513, column: 14)
!4270 = !DILocation(line: 515, column: 3, scope: !4269)
!4271 = !DILocation(line: 518, column: 11, scope: !4208)
!4272 = !DILocation(line: 518, column: 9, scope: !4208)
!4273 = !DILocation(line: 519, column: 6, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 519, column: 6)
!4275 = !DILocation(line: 519, column: 6, scope: !4208)
!4276 = !DILocation(line: 520, column: 3, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 519, column: 14)
!4278 = !DILocation(line: 521, column: 3, scope: !4277)
!4279 = !DILocation(line: 523, column: 18, scope: !4208)
!4280 = !DILocation(line: 523, column: 16, scope: !4208)
!4281 = !DILocation(line: 525, column: 11, scope: !4208)
!4282 = !DILocation(line: 525, column: 9, scope: !4208)
!4283 = !DILocation(line: 526, column: 6, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 526, column: 6)
!4285 = !DILocation(line: 526, column: 6, scope: !4208)
!4286 = !DILocation(line: 527, column: 3, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 526, column: 14)
!4288 = !DILocation(line: 528, column: 3, scope: !4287)
!4289 = !DILocation(line: 531, column: 2, scope: !4208)
!4290 = !DILocation(line: 534, column: 2, scope: !4208)
!4291 = !DILabel(scope: !4208, name: "err_unchr", file: !3, line: 535)
!4292 = !DILocation(line: 535, column: 1, scope: !4208)
!4293 = !DILocation(line: 536, column: 27, scope: !4208)
!4294 = !DILocation(line: 536, column: 2, scope: !4208)
!4295 = !DILabel(scope: !4208, name: "err_attr", file: !3, line: 537)
!4296 = !DILocation(line: 537, column: 1, scope: !4208)
!4297 = !DILocation(line: 538, column: 20, scope: !4208)
!4298 = !DILocation(line: 538, column: 2, scope: !4208)
!4299 = !DILabel(scope: !4208, name: "err_class", file: !3, line: 539)
!4300 = !DILocation(line: 539, column: 1, scope: !4208)
!4301 = !DILocation(line: 540, column: 16, scope: !4208)
!4302 = !DILocation(line: 540, column: 2, scope: !4208)
!4303 = !DILabel(scope: !4208, name: "err", file: !3, line: 541)
!4304 = !DILocation(line: 541, column: 1, scope: !4208)
!4305 = !DILocation(line: 542, column: 9, scope: !4208)
!4306 = !DILocation(line: 542, column: 2, scope: !4208)
!4307 = !DILocation(line: 543, column: 1, scope: !4208)
!4308 = !DILocalVariable(name: "lock", arg: 1, scope: !4309, file: !4310, line: 327, type: !1037)
!4309 = distinct !DISubprogram(name: "spinlock_check", scope: !4310, file: !4310, line: 327, type: !4311, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4310 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!4313, !1037}
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!4314 = !DILocation(line: 327, column: 67, scope: !4309, inlinedAt: !4315)
!4315 = distinct !DILocation(line: 386, column: 2, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 386, column: 2)
!4317 = !DILocalVariable(name: "pdev", arg: 1, scope: !4176, file: !3, line: 334, type: !3364)
!4318 = !DILocation(line: 334, column: 42, scope: !4176)
!4319 = !DILocalVariable(name: "pci_id", arg: 2, scope: !4176, file: !3, line: 335, type: !3932)
!4320 = !DILocation(line: 335, column: 30, scope: !4176)
!4321 = !DILocalVariable(name: "pht", scope: !4176, file: !3, line: 337, type: !126)
!4322 = !DILocation(line: 337, column: 25, scope: !4176)
!4323 = !DILocalVariable(name: "minor", scope: !4176, file: !3, line: 338, type: !7)
!4324 = !DILocation(line: 338, column: 15, scope: !4176)
!4325 = !DILocalVariable(name: "retval", scope: !4176, file: !3, line: 339, type: !123)
!4326 = !DILocation(line: 339, column: 6, scope: !4176)
!4327 = !DILocation(line: 341, column: 29, scope: !4176)
!4328 = !DILocation(line: 341, column: 11, scope: !4176)
!4329 = !DILocation(line: 341, column: 9, scope: !4176)
!4330 = !DILocation(line: 342, column: 6, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 342, column: 6)
!4332 = !DILocation(line: 342, column: 6, scope: !4176)
!4333 = !DILocation(line: 343, column: 3, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 342, column: 14)
!4335 = !DILocation(line: 344, column: 3, scope: !4334)
!4336 = !DILocation(line: 347, column: 10, scope: !4176)
!4337 = !DILocation(line: 347, column: 8, scope: !4176)
!4338 = !DILocation(line: 348, column: 6, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 348, column: 6)
!4340 = !DILocation(line: 348, column: 12, scope: !4339)
!4341 = !DILocation(line: 348, column: 6, scope: !4176)
!4342 = !DILocation(line: 349, column: 3, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 348, column: 35)
!4344 = !DILocation(line: 350, column: 10, scope: !4343)
!4345 = !DILocation(line: 351, column: 3, scope: !4343)
!4346 = !DILocation(line: 354, column: 18, scope: !4176)
!4347 = !DILocation(line: 354, column: 2, scope: !4176)
!4348 = !DILocation(line: 354, column: 25, scope: !4176)
!4349 = !DILocation(line: 356, column: 31, scope: !4176)
!4350 = !DILocation(line: 356, column: 11, scope: !4176)
!4351 = !DILocation(line: 356, column: 9, scope: !4176)
!4352 = !DILocation(line: 357, column: 6, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 357, column: 6)
!4354 = !DILocation(line: 357, column: 6, scope: !4176)
!4355 = !DILocation(line: 358, column: 3, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4353, file: !3, line: 357, column: 14)
!4357 = !DILocation(line: 359, column: 3, scope: !4356)
!4358 = !DILocation(line: 362, column: 9, scope: !4176)
!4359 = !DILocation(line: 363, column: 8, scope: !4176)
!4360 = !DILocation(line: 363, column: 6, scope: !4176)
!4361 = !DILocation(line: 364, column: 6, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 364, column: 6)
!4363 = !DILocation(line: 364, column: 10, scope: !4362)
!4364 = !DILocation(line: 364, column: 6, scope: !4176)
!4365 = !DILocation(line: 365, column: 3, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 364, column: 19)
!4367 = !DILocation(line: 366, column: 3, scope: !4366)
!4368 = !DILocation(line: 369, column: 25, scope: !4176)
!4369 = !DILocation(line: 369, column: 15, scope: !4176)
!4370 = !DILocation(line: 369, column: 2, scope: !4176)
!4371 = !DILocation(line: 369, column: 7, scope: !4176)
!4372 = !DILocation(line: 369, column: 13, scope: !4176)
!4373 = !DILocation(line: 370, column: 6, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 370, column: 6)
!4375 = !DILocation(line: 370, column: 11, scope: !4374)
!4376 = !DILocation(line: 370, column: 17, scope: !4374)
!4377 = !DILocation(line: 370, column: 6, scope: !4176)
!4378 = !DILocation(line: 371, column: 3, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4374, file: !3, line: 370, column: 26)
!4380 = !DILocation(line: 372, column: 3, scope: !4379)
!4381 = !DILocation(line: 374, column: 25, scope: !4176)
!4382 = !DILocation(line: 374, column: 15, scope: !4176)
!4383 = !DILocation(line: 374, column: 2, scope: !4176)
!4384 = !DILocation(line: 374, column: 7, scope: !4176)
!4385 = !DILocation(line: 374, column: 13, scope: !4176)
!4386 = !DILocation(line: 375, column: 6, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 375, column: 6)
!4388 = !DILocation(line: 375, column: 11, scope: !4387)
!4389 = !DILocation(line: 375, column: 17, scope: !4387)
!4390 = !DILocation(line: 375, column: 6, scope: !4176)
!4391 = !DILocation(line: 376, column: 3, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4387, file: !3, line: 375, column: 26)
!4393 = !DILocation(line: 377, column: 3, scope: !4392)
!4394 = !DILocation(line: 379, column: 25, scope: !4176)
!4395 = !DILocation(line: 379, column: 15, scope: !4176)
!4396 = !DILocation(line: 379, column: 2, scope: !4176)
!4397 = !DILocation(line: 379, column: 7, scope: !4176)
!4398 = !DILocation(line: 379, column: 13, scope: !4176)
!4399 = !DILocation(line: 380, column: 6, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 380, column: 6)
!4401 = !DILocation(line: 380, column: 11, scope: !4400)
!4402 = !DILocation(line: 380, column: 17, scope: !4400)
!4403 = !DILocation(line: 380, column: 6, scope: !4176)
!4404 = !DILocation(line: 381, column: 3, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4400, file: !3, line: 380, column: 26)
!4406 = !DILocation(line: 382, column: 3, scope: !4405)
!4407 = !DILocation(line: 385, column: 2, scope: !4176)
!4408 = !DILocation(line: 385, column: 2, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 385, column: 2)
!4410 = !DILocation(line: 386, column: 2, scope: !4176)
!4411 = !DILocation(line: 386, column: 2, scope: !4316)
!4412 = !DILocation(line: 329, column: 10, scope: !4309, inlinedAt: !4315)
!4413 = !DILocation(line: 329, column: 16, scope: !4309, inlinedAt: !4315)
!4414 = !DILocation(line: 387, column: 2, scope: !4176)
!4415 = !DILocation(line: 387, column: 2, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 387, column: 2)
!4417 = !DILocation(line: 388, column: 13, scope: !4176)
!4418 = !DILocation(line: 388, column: 18, scope: !4176)
!4419 = !DILocation(line: 388, column: 2, scope: !4176)
!4420 = !DILocation(line: 389, column: 2, scope: !4176)
!4421 = !DILocation(line: 389, column: 7, scope: !4176)
!4422 = !DILocation(line: 389, column: 12, scope: !4176)
!4423 = !DILocation(line: 389, column: 18, scope: !4176)
!4424 = !DILocation(line: 391, column: 15, scope: !4176)
!4425 = !DILocation(line: 391, column: 20, scope: !4176)
!4426 = !DILocation(line: 391, column: 26, scope: !4176)
!4427 = !DILocation(line: 391, column: 2, scope: !4176)
!4428 = !DILocation(line: 392, column: 11, scope: !4176)
!4429 = !DILocation(line: 392, column: 16, scope: !4176)
!4430 = !DILocation(line: 392, column: 22, scope: !4176)
!4431 = !DILocation(line: 392, column: 2, scope: !4176)
!4432 = !DILocation(line: 393, column: 23, scope: !4176)
!4433 = !DILocation(line: 393, column: 29, scope: !4176)
!4434 = !DILocation(line: 394, column: 28, scope: !4176)
!4435 = !DILocation(line: 393, column: 11, scope: !4176)
!4436 = !DILocation(line: 393, column: 9, scope: !4176)
!4437 = !DILocation(line: 395, column: 6, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 395, column: 6)
!4439 = !DILocation(line: 395, column: 6, scope: !4176)
!4440 = !DILocation(line: 396, column: 3, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 395, column: 14)
!4442 = !DILocation(line: 397, column: 3, scope: !4441)
!4443 = !DILocation(line: 400, column: 21, scope: !4176)
!4444 = !DILocation(line: 400, column: 26, scope: !4176)
!4445 = !DILocation(line: 400, column: 32, scope: !4176)
!4446 = !DILocation(line: 400, column: 11, scope: !4176)
!4447 = !DILocation(line: 400, column: 9, scope: !4176)
!4448 = !DILocation(line: 401, column: 6, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 401, column: 6)
!4450 = !DILocation(line: 401, column: 6, scope: !4176)
!4451 = !DILocation(line: 402, column: 3, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4449, file: !3, line: 401, column: 14)
!4453 = !DILocation(line: 403, column: 3, scope: !4452)
!4454 = !DILocation(line: 406, column: 27, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 406, column: 6)
!4456 = !DILocation(line: 406, column: 43, scope: !4455)
!4457 = !DILocation(line: 406, column: 49, scope: !4455)
!4458 = !DILocation(line: 407, column: 6, scope: !4455)
!4459 = !DILocation(line: 408, column: 19, scope: !4455)
!4460 = !DILocation(line: 406, column: 13, scope: !4455)
!4461 = !DILocation(line: 406, column: 6, scope: !4455)
!4462 = !DILocation(line: 406, column: 6, scope: !4176)
!4463 = !DILocation(line: 409, column: 3, scope: !4455)
!4464 = !DILocation(line: 411, column: 18, scope: !4176)
!4465 = !DILocation(line: 411, column: 24, scope: !4176)
!4466 = !DILocation(line: 411, column: 2, scope: !4176)
!4467 = !DILocation(line: 413, column: 2, scope: !4176)
!4468 = !DILabel(scope: !4176, name: "err_irq", file: !3, line: 414)
!4469 = !DILocation(line: 414, column: 1, scope: !4176)
!4470 = !DILocation(line: 415, column: 11, scope: !4176)
!4471 = !DILocation(line: 415, column: 17, scope: !4176)
!4472 = !DILocation(line: 415, column: 22, scope: !4176)
!4473 = !DILocation(line: 415, column: 2, scope: !4176)
!4474 = !DILabel(scope: !4176, name: "err_unmo", file: !3, line: 416)
!4475 = !DILocation(line: 416, column: 1, scope: !4176)
!4476 = !DILocation(line: 417, column: 14, scope: !4176)
!4477 = !DILocation(line: 417, column: 20, scope: !4176)
!4478 = !DILocation(line: 417, column: 25, scope: !4176)
!4479 = !DILocation(line: 417, column: 2, scope: !4176)
!4480 = !DILabel(scope: !4176, name: "err_unmi", file: !3, line: 418)
!4481 = !DILocation(line: 418, column: 1, scope: !4176)
!4482 = !DILocation(line: 419, column: 14, scope: !4176)
!4483 = !DILocation(line: 419, column: 20, scope: !4176)
!4484 = !DILocation(line: 419, column: 25, scope: !4176)
!4485 = !DILocation(line: 419, column: 2, scope: !4176)
!4486 = !DILabel(scope: !4176, name: "err_unmc", file: !3, line: 420)
!4487 = !DILocation(line: 420, column: 1, scope: !4176)
!4488 = !DILocation(line: 421, column: 14, scope: !4176)
!4489 = !DILocation(line: 421, column: 20, scope: !4176)
!4490 = !DILocation(line: 421, column: 25, scope: !4176)
!4491 = !DILocation(line: 421, column: 2, scope: !4176)
!4492 = !DILabel(scope: !4176, name: "err_fr", file: !3, line: 422)
!4493 = !DILocation(line: 422, column: 1, scope: !4176)
!4494 = !DILocation(line: 423, column: 8, scope: !4176)
!4495 = !DILocation(line: 423, column: 2, scope: !4176)
!4496 = !DILabel(scope: !4176, name: "err_reg", file: !3, line: 424)
!4497 = !DILocation(line: 424, column: 1, scope: !4176)
!4498 = !DILocation(line: 425, column: 22, scope: !4176)
!4499 = !DILocation(line: 425, column: 2, scope: !4176)
!4500 = !DILabel(scope: !4176, name: "err_null", file: !3, line: 426)
!4501 = !DILocation(line: 426, column: 1, scope: !4176)
!4502 = !DILocation(line: 427, column: 18, scope: !4176)
!4503 = !DILocation(line: 427, column: 2, scope: !4176)
!4504 = !DILocation(line: 427, column: 25, scope: !4176)
!4505 = !DILabel(scope: !4176, name: "err_dis", file: !3, line: 428)
!4506 = !DILocation(line: 428, column: 1, scope: !4176)
!4507 = !DILocation(line: 429, column: 21, scope: !4176)
!4508 = !DILocation(line: 429, column: 2, scope: !4176)
!4509 = !DILabel(scope: !4176, name: "err", file: !3, line: 430)
!4510 = !DILocation(line: 430, column: 1, scope: !4176)
!4511 = !DILocation(line: 431, column: 9, scope: !4176)
!4512 = !DILocation(line: 431, column: 2, scope: !4176)
!4513 = !DILocation(line: 432, column: 1, scope: !4176)
!4514 = distinct !DISubprogram(name: "phantom_remove", scope: !3, file: !3, line: 434, type: !3949, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4515 = !DILocalVariable(name: "pdev", arg: 1, scope: !4514, file: !3, line: 434, type: !3364)
!4516 = !DILocation(line: 434, column: 44, scope: !4514)
!4517 = !DILocalVariable(name: "pht", scope: !4514, file: !3, line: 436, type: !126)
!4518 = !DILocation(line: 436, column: 25, scope: !4514)
!4519 = !DILocation(line: 436, column: 47, scope: !4514)
!4520 = !DILocation(line: 436, column: 31, scope: !4514)
!4521 = !DILocalVariable(name: "minor", scope: !4514, file: !3, line: 437, type: !7)
!4522 = !DILocation(line: 437, column: 15, scope: !4514)
!4523 = !DILocation(line: 437, column: 23, scope: !4514)
!4524 = !DILocation(line: 439, column: 17, scope: !4514)
!4525 = !DILocation(line: 439, column: 32, scope: !4514)
!4526 = !DILocation(line: 439, column: 2, scope: !4514)
!4527 = !DILocation(line: 441, column: 12, scope: !4514)
!4528 = !DILocation(line: 441, column: 17, scope: !4514)
!4529 = !DILocation(line: 441, column: 2, scope: !4514)
!4530 = !DILocation(line: 443, column: 15, scope: !4514)
!4531 = !DILocation(line: 443, column: 20, scope: !4514)
!4532 = !DILocation(line: 443, column: 26, scope: !4514)
!4533 = !DILocation(line: 443, column: 2, scope: !4514)
!4534 = !DILocation(line: 444, column: 11, scope: !4514)
!4535 = !DILocation(line: 444, column: 16, scope: !4514)
!4536 = !DILocation(line: 444, column: 22, scope: !4514)
!4537 = !DILocation(line: 444, column: 2, scope: !4514)
!4538 = !DILocation(line: 445, column: 11, scope: !4514)
!4539 = !DILocation(line: 445, column: 17, scope: !4514)
!4540 = !DILocation(line: 445, column: 22, scope: !4514)
!4541 = !DILocation(line: 445, column: 2, scope: !4514)
!4542 = !DILocation(line: 447, column: 14, scope: !4514)
!4543 = !DILocation(line: 447, column: 20, scope: !4514)
!4544 = !DILocation(line: 447, column: 25, scope: !4514)
!4545 = !DILocation(line: 447, column: 2, scope: !4514)
!4546 = !DILocation(line: 448, column: 14, scope: !4514)
!4547 = !DILocation(line: 448, column: 20, scope: !4514)
!4548 = !DILocation(line: 448, column: 25, scope: !4514)
!4549 = !DILocation(line: 448, column: 2, scope: !4514)
!4550 = !DILocation(line: 449, column: 14, scope: !4514)
!4551 = !DILocation(line: 449, column: 20, scope: !4514)
!4552 = !DILocation(line: 449, column: 25, scope: !4514)
!4553 = !DILocation(line: 449, column: 2, scope: !4514)
!4554 = !DILocation(line: 451, column: 8, scope: !4514)
!4555 = !DILocation(line: 451, column: 2, scope: !4514)
!4556 = !DILocation(line: 453, column: 22, scope: !4514)
!4557 = !DILocation(line: 453, column: 2, scope: !4514)
!4558 = !DILocation(line: 455, column: 18, scope: !4514)
!4559 = !DILocation(line: 455, column: 2, scope: !4514)
!4560 = !DILocation(line: 455, column: 25, scope: !4514)
!4561 = !DILocation(line: 457, column: 21, scope: !4514)
!4562 = !DILocation(line: 457, column: 2, scope: !4514)
!4563 = !DILocation(line: 458, column: 1, scope: !4514)
!4564 = distinct !DISubprogram(name: "phantom_get_free", scope: !3, file: !3, line: 323, type: !4565, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!7}
!4567 = !DILocalVariable(name: "i", scope: !4564, file: !3, line: 325, type: !7)
!4568 = !DILocation(line: 325, column: 15, scope: !4564)
!4569 = !DILocation(line: 327, column: 9, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 327, column: 2)
!4571 = !DILocation(line: 327, column: 7, scope: !4570)
!4572 = !DILocation(line: 327, column: 14, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 327, column: 2)
!4574 = !DILocation(line: 327, column: 16, scope: !4573)
!4575 = !DILocation(line: 327, column: 2, scope: !4570)
!4576 = !DILocation(line: 328, column: 23, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 328, column: 7)
!4578 = !DILocation(line: 328, column: 7, scope: !4577)
!4579 = !DILocation(line: 328, column: 26, scope: !4577)
!4580 = !DILocation(line: 328, column: 7, scope: !4573)
!4581 = !DILocation(line: 329, column: 4, scope: !4577)
!4582 = !DILocation(line: 328, column: 29, scope: !4577)
!4583 = !DILocation(line: 327, column: 39, scope: !4573)
!4584 = !DILocation(line: 327, column: 2, scope: !4573)
!4585 = distinct !{!4585, !4575, !4586}
!4586 = !DILocation(line: 329, column: 4, scope: !4570)
!4587 = !DILocation(line: 331, column: 9, scope: !4564)
!4588 = !DILocation(line: 331, column: 2, scope: !4564)
!4589 = distinct !DISubprogram(name: "kzalloc", scope: !94, file: !94, line: 662, type: !4590, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!114, !265, !112}
!4592 = !DILocalVariable(name: "s", arg: 1, scope: !4593, file: !94, line: 445, type: !908)
!4593 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !94, file: !94, line: 445, type: !4594, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!114, !908, !112, !265}
!4596 = !DILocation(line: 445, column: 72, scope: !4593, inlinedAt: !4597)
!4597 = distinct !DILocation(line: 552, column: 10, scope: !4598, inlinedAt: !4601)
!4598 = distinct !DILexicalBlock(scope: !4599, file: !94, line: 540, column: 34)
!4599 = distinct !DILexicalBlock(scope: !4600, file: !94, line: 540, column: 6)
!4600 = distinct !DISubprogram(name: "kmalloc", scope: !94, file: !94, line: 538, type: !4590, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4601 = distinct !DILocation(line: 664, column: 9, scope: !4589)
!4602 = !DILocalVariable(name: "flags", arg: 2, scope: !4593, file: !94, line: 446, type: !112)
!4603 = !DILocation(line: 446, column: 9, scope: !4593, inlinedAt: !4597)
!4604 = !DILocalVariable(name: "size", arg: 3, scope: !4593, file: !94, line: 446, type: !265)
!4605 = !DILocation(line: 446, column: 23, scope: !4593, inlinedAt: !4597)
!4606 = !DILocalVariable(name: "ret", scope: !4593, file: !94, line: 448, type: !114)
!4607 = !DILocation(line: 448, column: 8, scope: !4593, inlinedAt: !4597)
!4608 = !DILocalVariable(name: "flags", arg: 1, scope: !4609, file: !94, line: 318, type: !112)
!4609 = distinct !DISubprogram(name: "kmalloc_type", scope: !94, file: !94, line: 318, type: !4610, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!93, !112}
!4612 = !DILocation(line: 318, column: 67, scope: !4609, inlinedAt: !4613)
!4613 = distinct !DILocation(line: 553, column: 20, scope: !4598, inlinedAt: !4601)
!4614 = !DILocalVariable(name: "size", arg: 1, scope: !4615, file: !94, line: 346, type: !265)
!4615 = distinct !DISubprogram(name: "kmalloc_index", scope: !94, file: !94, line: 346, type: !4616, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!7, !265}
!4618 = !DILocation(line: 346, column: 58, scope: !4615, inlinedAt: !4619)
!4619 = distinct !DILocation(line: 547, column: 11, scope: !4598, inlinedAt: !4601)
!4620 = !DILocalVariable(name: "size", arg: 1, scope: !4621, file: !94, line: 472, type: !265)
!4621 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !94, file: !94, line: 472, type: !4622, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!114, !265, !112, !7}
!4624 = !DILocation(line: 472, column: 28, scope: !4621, inlinedAt: !4625)
!4625 = distinct !DILocation(line: 481, column: 9, scope: !4626, inlinedAt: !4627)
!4626 = distinct !DISubprogram(name: "kmalloc_large", scope: !94, file: !94, line: 478, type: !4590, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4627 = distinct !DILocation(line: 545, column: 11, scope: !4628, inlinedAt: !4601)
!4628 = distinct !DILexicalBlock(scope: !4598, file: !94, line: 544, column: 7)
!4629 = !DILocalVariable(name: "flags", arg: 2, scope: !4621, file: !94, line: 472, type: !112)
!4630 = !DILocation(line: 472, column: 40, scope: !4621, inlinedAt: !4625)
!4631 = !DILocalVariable(name: "order", arg: 3, scope: !4621, file: !94, line: 472, type: !7)
!4632 = !DILocation(line: 472, column: 60, scope: !4621, inlinedAt: !4625)
!4633 = !DILocalVariable(name: "size", arg: 1, scope: !4626, file: !94, line: 478, type: !265)
!4634 = !DILocation(line: 478, column: 51, scope: !4626, inlinedAt: !4627)
!4635 = !DILocalVariable(name: "flags", arg: 2, scope: !4626, file: !94, line: 478, type: !112)
!4636 = !DILocation(line: 478, column: 63, scope: !4626, inlinedAt: !4627)
!4637 = !DILocalVariable(name: "order", scope: !4626, file: !94, line: 480, type: !7)
!4638 = !DILocation(line: 480, column: 15, scope: !4626, inlinedAt: !4627)
!4639 = !DILocalVariable(name: "size", arg: 1, scope: !4600, file: !94, line: 538, type: !265)
!4640 = !DILocation(line: 538, column: 45, scope: !4600, inlinedAt: !4601)
!4641 = !DILocalVariable(name: "flags", arg: 2, scope: !4600, file: !94, line: 538, type: !112)
!4642 = !DILocation(line: 538, column: 57, scope: !4600, inlinedAt: !4601)
!4643 = !DILocalVariable(name: "index", scope: !4598, file: !94, line: 542, type: !7)
!4644 = !DILocation(line: 542, column: 16, scope: !4598, inlinedAt: !4601)
!4645 = !DILocalVariable(name: "size", arg: 1, scope: !4589, file: !94, line: 662, type: !265)
!4646 = !DILocation(line: 662, column: 36, scope: !4589)
!4647 = !DILocalVariable(name: "flags", arg: 2, scope: !4589, file: !94, line: 662, type: !112)
!4648 = !DILocation(line: 662, column: 48, scope: !4589)
!4649 = !DILocation(line: 664, column: 17, scope: !4589)
!4650 = !DILocation(line: 664, column: 23, scope: !4589)
!4651 = !DILocation(line: 664, column: 29, scope: !4589)
!4652 = !DILocation(line: 540, column: 27, scope: !4599, inlinedAt: !4601)
!4653 = !DILocation(line: 540, column: 6, scope: !4599, inlinedAt: !4601)
!4654 = !DILocation(line: 540, column: 6, scope: !4600, inlinedAt: !4601)
!4655 = !DILocation(line: 544, column: 7, scope: !4628, inlinedAt: !4601)
!4656 = !DILocation(line: 544, column: 12, scope: !4628, inlinedAt: !4601)
!4657 = !DILocation(line: 544, column: 7, scope: !4598, inlinedAt: !4601)
!4658 = !DILocation(line: 545, column: 25, scope: !4628, inlinedAt: !4601)
!4659 = !DILocation(line: 545, column: 31, scope: !4628, inlinedAt: !4601)
!4660 = !DILocation(line: 480, column: 33, scope: !4626, inlinedAt: !4627)
!4661 = !DILocation(line: 480, column: 23, scope: !4626, inlinedAt: !4627)
!4662 = !DILocation(line: 481, column: 29, scope: !4626, inlinedAt: !4627)
!4663 = !DILocation(line: 481, column: 35, scope: !4626, inlinedAt: !4627)
!4664 = !DILocation(line: 481, column: 42, scope: !4626, inlinedAt: !4627)
!4665 = !DILocation(line: 474, column: 23, scope: !4621, inlinedAt: !4625)
!4666 = !DILocation(line: 474, column: 29, scope: !4621, inlinedAt: !4625)
!4667 = !DILocation(line: 474, column: 36, scope: !4621, inlinedAt: !4625)
!4668 = !DILocation(line: 474, column: 9, scope: !4621, inlinedAt: !4625)
!4669 = !DILocation(line: 545, column: 4, scope: !4628, inlinedAt: !4601)
!4670 = !DILocation(line: 547, column: 25, scope: !4598, inlinedAt: !4601)
!4671 = !DILocation(line: 348, column: 7, scope: !4672, inlinedAt: !4619)
!4672 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 348, column: 6)
!4673 = !DILocation(line: 348, column: 6, scope: !4615, inlinedAt: !4619)
!4674 = !DILocation(line: 349, column: 3, scope: !4672, inlinedAt: !4619)
!4675 = !DILocation(line: 351, column: 6, scope: !4676, inlinedAt: !4619)
!4676 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 351, column: 6)
!4677 = !DILocation(line: 351, column: 11, scope: !4676, inlinedAt: !4619)
!4678 = !DILocation(line: 351, column: 6, scope: !4615, inlinedAt: !4619)
!4679 = !DILocation(line: 352, column: 3, scope: !4676, inlinedAt: !4619)
!4680 = !DILocation(line: 354, column: 32, scope: !4681, inlinedAt: !4619)
!4681 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 354, column: 6)
!4682 = !DILocation(line: 354, column: 37, scope: !4681, inlinedAt: !4619)
!4683 = !DILocation(line: 354, column: 42, scope: !4681, inlinedAt: !4619)
!4684 = !DILocation(line: 354, column: 45, scope: !4681, inlinedAt: !4619)
!4685 = !DILocation(line: 354, column: 50, scope: !4681, inlinedAt: !4619)
!4686 = !DILocation(line: 354, column: 6, scope: !4615, inlinedAt: !4619)
!4687 = !DILocation(line: 355, column: 3, scope: !4681, inlinedAt: !4619)
!4688 = !DILocation(line: 356, column: 32, scope: !4689, inlinedAt: !4619)
!4689 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 356, column: 6)
!4690 = !DILocation(line: 356, column: 37, scope: !4689, inlinedAt: !4619)
!4691 = !DILocation(line: 356, column: 43, scope: !4689, inlinedAt: !4619)
!4692 = !DILocation(line: 356, column: 46, scope: !4689, inlinedAt: !4619)
!4693 = !DILocation(line: 356, column: 51, scope: !4689, inlinedAt: !4619)
!4694 = !DILocation(line: 356, column: 6, scope: !4615, inlinedAt: !4619)
!4695 = !DILocation(line: 357, column: 3, scope: !4689, inlinedAt: !4619)
!4696 = !DILocation(line: 358, column: 6, scope: !4697, inlinedAt: !4619)
!4697 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 358, column: 6)
!4698 = !DILocation(line: 358, column: 11, scope: !4697, inlinedAt: !4619)
!4699 = !DILocation(line: 358, column: 6, scope: !4615, inlinedAt: !4619)
!4700 = !DILocation(line: 358, column: 26, scope: !4697, inlinedAt: !4619)
!4701 = !DILocation(line: 359, column: 6, scope: !4702, inlinedAt: !4619)
!4702 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 359, column: 6)
!4703 = !DILocation(line: 359, column: 11, scope: !4702, inlinedAt: !4619)
!4704 = !DILocation(line: 359, column: 6, scope: !4615, inlinedAt: !4619)
!4705 = !DILocation(line: 359, column: 26, scope: !4702, inlinedAt: !4619)
!4706 = !DILocation(line: 360, column: 6, scope: !4707, inlinedAt: !4619)
!4707 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 360, column: 6)
!4708 = !DILocation(line: 360, column: 11, scope: !4707, inlinedAt: !4619)
!4709 = !DILocation(line: 360, column: 6, scope: !4615, inlinedAt: !4619)
!4710 = !DILocation(line: 360, column: 26, scope: !4707, inlinedAt: !4619)
!4711 = !DILocation(line: 361, column: 6, scope: !4712, inlinedAt: !4619)
!4712 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 361, column: 6)
!4713 = !DILocation(line: 361, column: 11, scope: !4712, inlinedAt: !4619)
!4714 = !DILocation(line: 361, column: 6, scope: !4615, inlinedAt: !4619)
!4715 = !DILocation(line: 361, column: 26, scope: !4712, inlinedAt: !4619)
!4716 = !DILocation(line: 362, column: 6, scope: !4717, inlinedAt: !4619)
!4717 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 362, column: 6)
!4718 = !DILocation(line: 362, column: 11, scope: !4717, inlinedAt: !4619)
!4719 = !DILocation(line: 362, column: 6, scope: !4615, inlinedAt: !4619)
!4720 = !DILocation(line: 362, column: 26, scope: !4717, inlinedAt: !4619)
!4721 = !DILocation(line: 363, column: 6, scope: !4722, inlinedAt: !4619)
!4722 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 363, column: 6)
!4723 = !DILocation(line: 363, column: 11, scope: !4722, inlinedAt: !4619)
!4724 = !DILocation(line: 363, column: 6, scope: !4615, inlinedAt: !4619)
!4725 = !DILocation(line: 363, column: 26, scope: !4722, inlinedAt: !4619)
!4726 = !DILocation(line: 364, column: 6, scope: !4727, inlinedAt: !4619)
!4727 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 364, column: 6)
!4728 = !DILocation(line: 364, column: 11, scope: !4727, inlinedAt: !4619)
!4729 = !DILocation(line: 364, column: 6, scope: !4615, inlinedAt: !4619)
!4730 = !DILocation(line: 364, column: 26, scope: !4727, inlinedAt: !4619)
!4731 = !DILocation(line: 365, column: 6, scope: !4732, inlinedAt: !4619)
!4732 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 365, column: 6)
!4733 = !DILocation(line: 365, column: 11, scope: !4732, inlinedAt: !4619)
!4734 = !DILocation(line: 365, column: 6, scope: !4615, inlinedAt: !4619)
!4735 = !DILocation(line: 365, column: 26, scope: !4732, inlinedAt: !4619)
!4736 = !DILocation(line: 366, column: 6, scope: !4737, inlinedAt: !4619)
!4737 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 366, column: 6)
!4738 = !DILocation(line: 366, column: 11, scope: !4737, inlinedAt: !4619)
!4739 = !DILocation(line: 366, column: 6, scope: !4615, inlinedAt: !4619)
!4740 = !DILocation(line: 366, column: 26, scope: !4737, inlinedAt: !4619)
!4741 = !DILocation(line: 367, column: 6, scope: !4742, inlinedAt: !4619)
!4742 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 367, column: 6)
!4743 = !DILocation(line: 367, column: 11, scope: !4742, inlinedAt: !4619)
!4744 = !DILocation(line: 367, column: 6, scope: !4615, inlinedAt: !4619)
!4745 = !DILocation(line: 367, column: 26, scope: !4742, inlinedAt: !4619)
!4746 = !DILocation(line: 368, column: 6, scope: !4747, inlinedAt: !4619)
!4747 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 368, column: 6)
!4748 = !DILocation(line: 368, column: 11, scope: !4747, inlinedAt: !4619)
!4749 = !DILocation(line: 368, column: 6, scope: !4615, inlinedAt: !4619)
!4750 = !DILocation(line: 368, column: 26, scope: !4747, inlinedAt: !4619)
!4751 = !DILocation(line: 369, column: 6, scope: !4752, inlinedAt: !4619)
!4752 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 369, column: 6)
!4753 = !DILocation(line: 369, column: 11, scope: !4752, inlinedAt: !4619)
!4754 = !DILocation(line: 369, column: 6, scope: !4615, inlinedAt: !4619)
!4755 = !DILocation(line: 369, column: 26, scope: !4752, inlinedAt: !4619)
!4756 = !DILocation(line: 370, column: 6, scope: !4757, inlinedAt: !4619)
!4757 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 370, column: 6)
!4758 = !DILocation(line: 370, column: 11, scope: !4757, inlinedAt: !4619)
!4759 = !DILocation(line: 370, column: 6, scope: !4615, inlinedAt: !4619)
!4760 = !DILocation(line: 370, column: 26, scope: !4757, inlinedAt: !4619)
!4761 = !DILocation(line: 371, column: 6, scope: !4762, inlinedAt: !4619)
!4762 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 371, column: 6)
!4763 = !DILocation(line: 371, column: 11, scope: !4762, inlinedAt: !4619)
!4764 = !DILocation(line: 371, column: 6, scope: !4615, inlinedAt: !4619)
!4765 = !DILocation(line: 371, column: 26, scope: !4762, inlinedAt: !4619)
!4766 = !DILocation(line: 372, column: 6, scope: !4767, inlinedAt: !4619)
!4767 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 372, column: 6)
!4768 = !DILocation(line: 372, column: 11, scope: !4767, inlinedAt: !4619)
!4769 = !DILocation(line: 372, column: 6, scope: !4615, inlinedAt: !4619)
!4770 = !DILocation(line: 372, column: 26, scope: !4767, inlinedAt: !4619)
!4771 = !DILocation(line: 373, column: 6, scope: !4772, inlinedAt: !4619)
!4772 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 373, column: 6)
!4773 = !DILocation(line: 373, column: 11, scope: !4772, inlinedAt: !4619)
!4774 = !DILocation(line: 373, column: 6, scope: !4615, inlinedAt: !4619)
!4775 = !DILocation(line: 373, column: 26, scope: !4772, inlinedAt: !4619)
!4776 = !DILocation(line: 374, column: 6, scope: !4777, inlinedAt: !4619)
!4777 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 374, column: 6)
!4778 = !DILocation(line: 374, column: 11, scope: !4777, inlinedAt: !4619)
!4779 = !DILocation(line: 374, column: 6, scope: !4615, inlinedAt: !4619)
!4780 = !DILocation(line: 374, column: 26, scope: !4777, inlinedAt: !4619)
!4781 = !DILocation(line: 375, column: 6, scope: !4782, inlinedAt: !4619)
!4782 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 375, column: 6)
!4783 = !DILocation(line: 375, column: 11, scope: !4782, inlinedAt: !4619)
!4784 = !DILocation(line: 375, column: 6, scope: !4615, inlinedAt: !4619)
!4785 = !DILocation(line: 375, column: 27, scope: !4782, inlinedAt: !4619)
!4786 = !DILocation(line: 376, column: 6, scope: !4787, inlinedAt: !4619)
!4787 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 376, column: 6)
!4788 = !DILocation(line: 376, column: 11, scope: !4787, inlinedAt: !4619)
!4789 = !DILocation(line: 376, column: 6, scope: !4615, inlinedAt: !4619)
!4790 = !DILocation(line: 376, column: 32, scope: !4787, inlinedAt: !4619)
!4791 = !DILocation(line: 377, column: 6, scope: !4792, inlinedAt: !4619)
!4792 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 377, column: 6)
!4793 = !DILocation(line: 377, column: 11, scope: !4792, inlinedAt: !4619)
!4794 = !DILocation(line: 377, column: 6, scope: !4615, inlinedAt: !4619)
!4795 = !DILocation(line: 377, column: 32, scope: !4792, inlinedAt: !4619)
!4796 = !DILocation(line: 378, column: 6, scope: !4797, inlinedAt: !4619)
!4797 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 378, column: 6)
!4798 = !DILocation(line: 378, column: 11, scope: !4797, inlinedAt: !4619)
!4799 = !DILocation(line: 378, column: 6, scope: !4615, inlinedAt: !4619)
!4800 = !DILocation(line: 378, column: 32, scope: !4797, inlinedAt: !4619)
!4801 = !DILocation(line: 379, column: 6, scope: !4802, inlinedAt: !4619)
!4802 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 379, column: 6)
!4803 = !DILocation(line: 379, column: 11, scope: !4802, inlinedAt: !4619)
!4804 = !DILocation(line: 379, column: 6, scope: !4615, inlinedAt: !4619)
!4805 = !DILocation(line: 379, column: 33, scope: !4802, inlinedAt: !4619)
!4806 = !DILocation(line: 380, column: 6, scope: !4807, inlinedAt: !4619)
!4807 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 380, column: 6)
!4808 = !DILocation(line: 380, column: 11, scope: !4807, inlinedAt: !4619)
!4809 = !DILocation(line: 380, column: 6, scope: !4615, inlinedAt: !4619)
!4810 = !DILocation(line: 380, column: 33, scope: !4807, inlinedAt: !4619)
!4811 = !DILocation(line: 381, column: 6, scope: !4812, inlinedAt: !4619)
!4812 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 381, column: 6)
!4813 = !DILocation(line: 381, column: 11, scope: !4812, inlinedAt: !4619)
!4814 = !DILocation(line: 381, column: 6, scope: !4615, inlinedAt: !4619)
!4815 = !DILocation(line: 381, column: 33, scope: !4812, inlinedAt: !4619)
!4816 = !DILocation(line: 382, column: 2, scope: !4817, inlinedAt: !4619)
!4817 = distinct !DILexicalBlock(scope: !4818, file: !94, line: 382, column: 2)
!4818 = distinct !DILexicalBlock(scope: !4615, file: !94, line: 382, column: 2)
!4819 = !{i32 -2142497476, i32 -2142497447, i32 -2142497401, i32 -2142497343, i32 -2142497289, i32 -2142497235, i32 -2142497180, i32 -2142497149}
!4820 = !DILocation(line: 382, column: 2, scope: !4821, inlinedAt: !4619)
!4821 = distinct !DILexicalBlock(scope: !4822, file: !94, line: 382, column: 2)
!4822 = distinct !DILexicalBlock(scope: !4818, file: !94, line: 382, column: 2)
!4823 = !{i32 -2142496706, i32 -2142496699, i32 -2142496645, i32 -2142496614, i32 -2142496584}
!4824 = !DILocation(line: 382, column: 2, scope: !4822, inlinedAt: !4619)
!4825 = !DILocation(line: 386, column: 1, scope: !4615, inlinedAt: !4619)
!4826 = !DILocation(line: 547, column: 9, scope: !4598, inlinedAt: !4601)
!4827 = !DILocation(line: 549, column: 8, scope: !4828, inlinedAt: !4601)
!4828 = distinct !DILexicalBlock(scope: !4598, file: !94, line: 549, column: 7)
!4829 = !DILocation(line: 549, column: 7, scope: !4598, inlinedAt: !4601)
!4830 = !DILocation(line: 550, column: 4, scope: !4828, inlinedAt: !4601)
!4831 = !DILocation(line: 553, column: 33, scope: !4598, inlinedAt: !4601)
!4832 = !DILocation(line: 325, column: 6, scope: !4833, inlinedAt: !4613)
!4833 = distinct !DILexicalBlock(scope: !4609, file: !94, line: 325, column: 6)
!4834 = !DILocation(line: 325, column: 6, scope: !4609, inlinedAt: !4613)
!4835 = !DILocation(line: 326, column: 3, scope: !4833, inlinedAt: !4613)
!4836 = !DILocation(line: 332, column: 9, scope: !4609, inlinedAt: !4613)
!4837 = !DILocation(line: 332, column: 15, scope: !4609, inlinedAt: !4613)
!4838 = !DILocation(line: 332, column: 2, scope: !4609, inlinedAt: !4613)
!4839 = !DILocation(line: 336, column: 1, scope: !4609, inlinedAt: !4613)
!4840 = !DILocation(line: 553, column: 5, scope: !4598, inlinedAt: !4601)
!4841 = !DILocation(line: 553, column: 41, scope: !4598, inlinedAt: !4601)
!4842 = !DILocation(line: 554, column: 5, scope: !4598, inlinedAt: !4601)
!4843 = !DILocation(line: 554, column: 12, scope: !4598, inlinedAt: !4601)
!4844 = !DILocation(line: 448, column: 31, scope: !4593, inlinedAt: !4597)
!4845 = !DILocation(line: 448, column: 34, scope: !4593, inlinedAt: !4597)
!4846 = !DILocation(line: 448, column: 14, scope: !4593, inlinedAt: !4597)
!4847 = !DILocation(line: 450, column: 22, scope: !4593, inlinedAt: !4597)
!4848 = !DILocation(line: 450, column: 25, scope: !4593, inlinedAt: !4597)
!4849 = !DILocation(line: 450, column: 30, scope: !4593, inlinedAt: !4597)
!4850 = !DILocation(line: 450, column: 36, scope: !4593, inlinedAt: !4597)
!4851 = !DILocation(line: 450, column: 8, scope: !4593, inlinedAt: !4597)
!4852 = !DILocation(line: 450, column: 6, scope: !4593, inlinedAt: !4597)
!4853 = !DILocation(line: 451, column: 9, scope: !4593, inlinedAt: !4597)
!4854 = !DILocation(line: 552, column: 3, scope: !4598, inlinedAt: !4601)
!4855 = !DILocation(line: 557, column: 19, scope: !4600, inlinedAt: !4601)
!4856 = !DILocation(line: 557, column: 25, scope: !4600, inlinedAt: !4601)
!4857 = !DILocation(line: 557, column: 9, scope: !4600, inlinedAt: !4601)
!4858 = !DILocation(line: 557, column: 2, scope: !4600, inlinedAt: !4601)
!4859 = !DILocation(line: 558, column: 1, scope: !4600, inlinedAt: !4601)
!4860 = !DILocation(line: 664, column: 2, scope: !4589)
!4861 = distinct !DISubprogram(name: "request_irq", scope: !3427, file: !3427, line: 157, type: !4862, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!123, !7, !4864, !124, !180, !114}
!4864 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !3427, line: 92, baseType: !4865)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!4868, !123, !114}
!4868 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !106, line: 17, baseType: !105)
!4869 = !DILocalVariable(name: "irq", arg: 1, scope: !4861, file: !3427, line: 157, type: !7)
!4870 = !DILocation(line: 157, column: 26, scope: !4861)
!4871 = !DILocalVariable(name: "handler", arg: 2, scope: !4861, file: !3427, line: 157, type: !4864)
!4872 = !DILocation(line: 157, column: 45, scope: !4861)
!4873 = !DILocalVariable(name: "flags", arg: 3, scope: !4861, file: !3427, line: 157, type: !124)
!4874 = !DILocation(line: 157, column: 68, scope: !4861)
!4875 = !DILocalVariable(name: "name", arg: 4, scope: !4861, file: !3427, line: 158, type: !180)
!4876 = !DILocation(line: 158, column: 18, scope: !4861)
!4877 = !DILocalVariable(name: "dev", arg: 5, scope: !4861, file: !3427, line: 158, type: !114)
!4878 = !DILocation(line: 158, column: 30, scope: !4861)
!4879 = !DILocation(line: 160, column: 30, scope: !4861)
!4880 = !DILocation(line: 160, column: 35, scope: !4861)
!4881 = !DILocation(line: 160, column: 50, scope: !4861)
!4882 = !DILocation(line: 160, column: 57, scope: !4861)
!4883 = !DILocation(line: 160, column: 63, scope: !4861)
!4884 = !DILocation(line: 160, column: 9, scope: !4861)
!4885 = !DILocation(line: 160, column: 2, scope: !4861)
!4886 = distinct !DISubprogram(name: "phantom_isr", scope: !3, file: !3, line: 282, type: !4866, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4887 = !DILocalVariable(name: "v", arg: 1, scope: !4888, file: !4889, line: 93, type: !4892)
!4888 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !4889, file: !4889, line: 93, type: !4890, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4889 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!4890 = !DISubroutineType(types: !4891)
!4891 = !{null, !4892}
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!4893 = !DILocation(line: 93, column: 55, scope: !4888, inlinedAt: !4894)
!4894 = distinct !DILocation(line: 241, column: 2, scope: !4895, inlinedAt: !4897)
!4895 = distinct !DISubprogram(name: "atomic_inc", scope: !4896, file: !4896, line: 238, type: !4890, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4896 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4897 = distinct !DILocation(line: 313, column: 2, scope: !4886)
!4898 = !DILocalVariable(name: "v", arg: 1, scope: !4899, file: !4900, line: 99, type: !4903)
!4899 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4900, file: !4900, line: 99, type: !4901, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4900 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4901 = !DISubroutineType(types: !4902)
!4902 = !{null, !4903, !265}
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4905)
!4905 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4906 = !DILocation(line: 99, column: 79, scope: !4899, inlinedAt: !4907)
!4907 = distinct !DILocation(line: 240, column: 2, scope: !4895, inlinedAt: !4897)
!4908 = !DILocalVariable(name: "size", arg: 2, scope: !4899, file: !4900, line: 99, type: !265)
!4909 = !DILocation(line: 99, column: 89, scope: !4899, inlinedAt: !4907)
!4910 = !DILocalVariable(name: "v", arg: 1, scope: !4895, file: !4896, line: 238, type: !4892)
!4911 = !DILocation(line: 238, column: 22, scope: !4895, inlinedAt: !4897)
!4912 = !DILocalVariable(name: "lock", arg: 1, scope: !4913, file: !4310, line: 392, type: !1037)
!4913 = distinct !DISubprogram(name: "spin_unlock", scope: !4310, file: !4310, line: 392, type: !4914, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{null, !1037}
!4916 = !DILocation(line: 392, column: 53, scope: !4913, inlinedAt: !4917)
!4917 = distinct !DILocation(line: 309, column: 2, scope: !4886)
!4918 = !DILocation(line: 392, column: 53, scope: !4913, inlinedAt: !4919)
!4919 = distinct !DILocation(line: 291, column: 3, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4921, file: !3, line: 290, column: 28)
!4921 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 290, column: 6)
!4922 = !DILocalVariable(name: "lock", arg: 1, scope: !4923, file: !4310, line: 352, type: !1037)
!4923 = distinct !DISubprogram(name: "spin_lock", scope: !4310, file: !4310, line: 352, type: !4914, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4924 = !DILocation(line: 352, column: 51, scope: !4923, inlinedAt: !4925)
!4925 = distinct !DILocation(line: 288, column: 2, scope: !4886)
!4926 = !DILocalVariable(name: "irq", arg: 1, scope: !4886, file: !3, line: 282, type: !123)
!4927 = !DILocation(line: 282, column: 36, scope: !4886)
!4928 = !DILocalVariable(name: "data", arg: 2, scope: !4886, file: !3, line: 282, type: !114)
!4929 = !DILocation(line: 282, column: 47, scope: !4886)
!4930 = !DILocalVariable(name: "dev", scope: !4886, file: !3, line: 284, type: !126)
!4931 = !DILocation(line: 284, column: 25, scope: !4886)
!4932 = !DILocation(line: 284, column: 31, scope: !4886)
!4933 = !DILocalVariable(name: "i", scope: !4886, file: !3, line: 285, type: !7)
!4934 = !DILocation(line: 285, column: 15, scope: !4886)
!4935 = !DILocalVariable(name: "ctl", scope: !4886, file: !3, line: 286, type: !133)
!4936 = !DILocation(line: 286, column: 6, scope: !4886)
!4937 = !DILocation(line: 288, column: 13, scope: !4886)
!4938 = !DILocation(line: 288, column: 18, scope: !4886)
!4939 = !DILocation(line: 354, column: 2, scope: !4940, inlinedAt: !4925)
!4940 = distinct !DILexicalBlock(scope: !4923, file: !4310, line: 354, column: 2)
!4941 = !{i32 -2145535016}
!4942 = !DILocation(line: 354, column: 2, scope: !4943, inlinedAt: !4925)
!4943 = distinct !DILexicalBlock(scope: !4940, file: !4310, line: 354, column: 2)
!4944 = !DILocation(line: 289, column: 17, scope: !4886)
!4945 = !DILocation(line: 289, column: 22, scope: !4886)
!4946 = !DILocation(line: 289, column: 28, scope: !4886)
!4947 = !DILocation(line: 289, column: 8, scope: !4886)
!4948 = !DILocation(line: 289, column: 6, scope: !4886)
!4949 = !DILocation(line: 290, column: 8, scope: !4921)
!4950 = !DILocation(line: 290, column: 12, scope: !4921)
!4951 = !DILocation(line: 290, column: 6, scope: !4886)
!4952 = !DILocation(line: 291, column: 16, scope: !4920)
!4953 = !DILocation(line: 291, column: 21, scope: !4920)
!4954 = !DILocation(line: 394, column: 2, scope: !4955, inlinedAt: !4919)
!4955 = distinct !DILexicalBlock(scope: !4913, file: !4310, line: 394, column: 2)
!4956 = !{i32 -2145532655}
!4957 = !DILocation(line: 394, column: 2, scope: !4958, inlinedAt: !4919)
!4958 = distinct !DILexicalBlock(scope: !4955, file: !4310, line: 394, column: 2)
!4959 = !DILocation(line: 292, column: 3, scope: !4920)
!4960 = !DILocation(line: 295, column: 15, scope: !4886)
!4961 = !DILocation(line: 295, column: 20, scope: !4886)
!4962 = !DILocation(line: 295, column: 2, scope: !4886)
!4963 = !DILocation(line: 296, column: 18, scope: !4886)
!4964 = !DILocation(line: 296, column: 23, scope: !4886)
!4965 = !DILocation(line: 296, column: 2, scope: !4886)
!4966 = !DILocation(line: 298, column: 6, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 298, column: 6)
!4968 = !DILocation(line: 298, column: 11, scope: !4967)
!4969 = !DILocation(line: 298, column: 18, scope: !4967)
!4970 = !DILocation(line: 298, column: 6, scope: !4886)
!4971 = !DILocalVariable(name: "r", scope: !4972, file: !3, line: 299, type: !4973)
!4972 = distinct !DILexicalBlock(scope: !4967, file: !3, line: 298, column: 32)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!4974 = !DILocation(line: 299, column: 20, scope: !4972)
!4975 = !DILocation(line: 299, column: 25, scope: !4972)
!4976 = !DILocation(line: 299, column: 30, scope: !4972)
!4977 = !DILocalVariable(name: "m", scope: !4972, file: !3, line: 300, type: !133)
!4978 = !DILocation(line: 300, column: 7, scope: !4972)
!4979 = !DILocalVariable(name: "__UNIQUE_ID___x242", scope: !4980, file: !3, line: 300, type: !135)
!4980 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 300, column: 11)
!4981 = !DILocation(line: 300, column: 11, scope: !4980)
!4982 = !DILocalVariable(name: "__UNIQUE_ID___y243", scope: !4980, file: !3, line: 300, type: !7)
!4983 = !DILocation(line: 302, column: 10, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 302, column: 3)
!4985 = !DILocation(line: 302, column: 8, scope: !4984)
!4986 = !DILocation(line: 302, column: 15, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4984, file: !3, line: 302, column: 3)
!4988 = !DILocation(line: 302, column: 19, scope: !4987)
!4989 = !DILocation(line: 302, column: 17, scope: !4987)
!4990 = !DILocation(line: 302, column: 3, scope: !4984)
!4991 = !DILocation(line: 303, column: 8, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 303, column: 8)
!4993 = !DILocation(line: 303, column: 11, scope: !4992)
!4994 = !DILocation(line: 303, column: 18, scope: !4992)
!4995 = !DILocation(line: 303, column: 16, scope: !4992)
!4996 = !DILocation(line: 303, column: 8, scope: !4987)
!4997 = !DILocation(line: 304, column: 15, scope: !4992)
!4998 = !DILocation(line: 304, column: 18, scope: !4992)
!4999 = !DILocation(line: 304, column: 25, scope: !4992)
!5000 = !DILocation(line: 304, column: 29, scope: !4992)
!5001 = !DILocation(line: 304, column: 34, scope: !4992)
!5002 = !DILocation(line: 304, column: 42, scope: !4992)
!5003 = !DILocation(line: 304, column: 40, scope: !4992)
!5004 = !DILocation(line: 304, column: 5, scope: !4992)
!5005 = !DILocation(line: 302, column: 23, scope: !4987)
!5006 = !DILocation(line: 302, column: 3, scope: !4987)
!5007 = distinct !{!5007, !4990, !5008}
!5008 = !DILocation(line: 304, column: 43, scope: !4984)
!5009 = !DILocation(line: 306, column: 3, scope: !4972)
!5010 = !DILocation(line: 306, column: 8, scope: !4972)
!5011 = !DILocation(line: 306, column: 16, scope: !4972)
!5012 = !DILocation(line: 307, column: 13, scope: !4972)
!5013 = !DILocation(line: 307, column: 18, scope: !4972)
!5014 = !DILocation(line: 307, column: 27, scope: !4972)
!5015 = !DILocation(line: 307, column: 32, scope: !4972)
!5016 = !DILocation(line: 307, column: 38, scope: !4972)
!5017 = !DILocation(line: 307, column: 3, scope: !4972)
!5018 = !DILocation(line: 308, column: 2, scope: !4972)
!5019 = !DILocation(line: 309, column: 15, scope: !4886)
!5020 = !DILocation(line: 309, column: 20, scope: !4886)
!5021 = !DILocation(line: 394, column: 2, scope: !4955, inlinedAt: !4917)
!5022 = !DILocation(line: 394, column: 2, scope: !4958, inlinedAt: !4917)
!5023 = !DILocation(line: 311, column: 11, scope: !4886)
!5024 = !DILocation(line: 311, column: 16, scope: !4886)
!5025 = !DILocation(line: 311, column: 2, scope: !4886)
!5026 = !DILocation(line: 313, column: 14, scope: !4886)
!5027 = !DILocation(line: 313, column: 19, scope: !4886)
!5028 = !DILocation(line: 240, column: 31, scope: !4895, inlinedAt: !4897)
!5029 = !DILocation(line: 101, column: 20, scope: !4899, inlinedAt: !4907)
!5030 = !DILocation(line: 101, column: 23, scope: !4899, inlinedAt: !4907)
!5031 = !DILocation(line: 101, column: 2, scope: !4899, inlinedAt: !4907)
!5032 = !DILocation(line: 102, column: 2, scope: !4899, inlinedAt: !4907)
!5033 = !DILocation(line: 241, column: 18, scope: !4895, inlinedAt: !4897)
!5034 = !DILocation(line: 96, column: 16, scope: !4888, inlinedAt: !4894)
!5035 = !DILocation(line: 96, column: 19, scope: !4888, inlinedAt: !4894)
!5036 = !DILocation(line: 95, column: 2, scope: !4888, inlinedAt: !4894)
!5037 = !{i32 -2146922805}
!5038 = !DILocation(line: 314, column: 2, scope: !4886)
!5039 = !DILocation(line: 316, column: 2, scope: !4886)
!5040 = !DILocation(line: 317, column: 1, scope: !4886)
!5041 = distinct !DISubprogram(name: "IS_ERR", scope: !5042, file: !5042, line: 34, type: !5043, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!5042 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5043 = !DISubroutineType(types: !5044)
!5044 = !{!429, !2097}
!5045 = !DILocalVariable(name: "ptr", arg: 1, scope: !5041, file: !5042, line: 34, type: !2097)
!5046 = !DILocation(line: 34, column: 60, scope: !5041)
!5047 = !DILocation(line: 36, column: 9, scope: !5041)
!5048 = !DILocation(line: 36, column: 2, scope: !5041)
!5049 = distinct !DISubprogram(name: "pci_set_drvdata", scope: !3366, file: !3366, line: 1870, type: !5050, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{null, !3364, !114}
!5052 = !DILocalVariable(name: "pdev", arg: 1, scope: !5049, file: !3366, line: 1870, type: !3364)
!5053 = !DILocation(line: 1870, column: 52, scope: !5049)
!5054 = !DILocalVariable(name: "data", arg: 2, scope: !5049, file: !3366, line: 1870, type: !114)
!5055 = !DILocation(line: 1870, column: 64, scope: !5049)
!5056 = !DILocation(line: 1872, column: 19, scope: !5049)
!5057 = !DILocation(line: 1872, column: 25, scope: !5049)
!5058 = !DILocation(line: 1872, column: 30, scope: !5049)
!5059 = !DILocation(line: 1872, column: 2, scope: !5049)
!5060 = !DILocation(line: 1873, column: 1, scope: !5049)
!5061 = distinct !DISubprogram(name: "get_order", scope: !5062, file: !5062, line: 29, type: !5063, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!5062 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5063 = !DISubroutineType(types: !5064)
!5064 = !{!123, !124}
!5065 = !DILocalVariable(name: "x", arg: 1, scope: !5066, file: !5067, line: 366, type: !361)
!5066 = distinct !DISubprogram(name: "fls64", scope: !5067, file: !5067, line: 366, type: !5068, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!5067 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5068 = !DISubroutineType(types: !5069)
!5069 = !{!123, !361}
!5070 = !DILocation(line: 366, column: 40, scope: !5066, inlinedAt: !5071)
!5071 = distinct !DILocation(line: 46, column: 9, scope: !5061)
!5072 = !DILocalVariable(name: "bitpos", scope: !5066, file: !5067, line: 368, type: !123)
!5073 = !DILocation(line: 368, column: 6, scope: !5066, inlinedAt: !5071)
!5074 = !DILocalVariable(name: "size", arg: 1, scope: !5061, file: !5062, line: 29, type: !124)
!5075 = !DILocation(line: 29, column: 63, scope: !5061)
!5076 = !DILocation(line: 31, column: 27, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5061, file: !5062, line: 31, column: 6)
!5078 = !DILocation(line: 31, column: 6, scope: !5077)
!5079 = !DILocation(line: 31, column: 6, scope: !5061)
!5080 = !DILocation(line: 32, column: 8, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5082, file: !5062, line: 32, column: 7)
!5082 = distinct !DILexicalBlock(scope: !5077, file: !5062, line: 31, column: 34)
!5083 = !DILocation(line: 32, column: 7, scope: !5082)
!5084 = !DILocation(line: 33, column: 4, scope: !5081)
!5085 = !DILocation(line: 35, column: 7, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5082, file: !5062, line: 35, column: 7)
!5087 = !DILocation(line: 35, column: 12, scope: !5086)
!5088 = !DILocation(line: 35, column: 7, scope: !5082)
!5089 = !DILocation(line: 36, column: 4, scope: !5086)
!5090 = !DILocation(line: 38, column: 10, scope: !5082)
!5091 = !DILocation(line: 38, column: 28, scope: !5082)
!5092 = !DILocation(line: 38, column: 41, scope: !5082)
!5093 = !DILocation(line: 38, column: 3, scope: !5082)
!5094 = !DILocation(line: 41, column: 6, scope: !5061)
!5095 = !DILocation(line: 42, column: 7, scope: !5061)
!5096 = !DILocation(line: 46, column: 15, scope: !5061)
!5097 = !DILocation(line: 374, column: 2, scope: !5066, inlinedAt: !5071)
!5098 = !DILocation(line: 376, column: 14, scope: !5066, inlinedAt: !5071)
!5099 = !{i32 892283}
!5100 = !DILocation(line: 377, column: 9, scope: !5066, inlinedAt: !5071)
!5101 = !DILocation(line: 377, column: 16, scope: !5066, inlinedAt: !5071)
!5102 = !DILocation(line: 46, column: 2, scope: !5061)
!5103 = !DILocation(line: 48, column: 1, scope: !5061)
!5104 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5105, file: !5105, line: 30, type: !5106, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!5105 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5106 = !DISubroutineType(types: !5107)
!5107 = !{!123, !360}
!5108 = !DILocation(line: 366, column: 40, scope: !5066, inlinedAt: !5109)
!5109 = distinct !DILocation(line: 32, column: 9, scope: !5104)
!5110 = !DILocation(line: 368, column: 6, scope: !5066, inlinedAt: !5109)
!5111 = !DILocalVariable(name: "n", arg: 1, scope: !5104, file: !5105, line: 30, type: !360)
!5112 = !DILocation(line: 30, column: 21, scope: !5104)
!5113 = !DILocation(line: 32, column: 15, scope: !5104)
!5114 = !DILocation(line: 374, column: 2, scope: !5066, inlinedAt: !5109)
!5115 = !DILocation(line: 376, column: 14, scope: !5066, inlinedAt: !5109)
!5116 = !DILocation(line: 377, column: 9, scope: !5066, inlinedAt: !5109)
!5117 = !DILocation(line: 377, column: 16, scope: !5066, inlinedAt: !5109)
!5118 = !DILocation(line: 32, column: 18, scope: !5104)
!5119 = !DILocation(line: 32, column: 2, scope: !5104)
!5120 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5121, file: !5121, line: 137, type: !5122, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!5121 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5122 = !DISubroutineType(types: !5123)
!5123 = !{!114, !908, !2097, !265, !112}
!5124 = !DILocalVariable(name: "s", arg: 1, scope: !5120, file: !5121, line: 137, type: !908)
!5125 = !DILocation(line: 137, column: 54, scope: !5120)
!5126 = !DILocalVariable(name: "object", arg: 2, scope: !5120, file: !5121, line: 137, type: !2097)
!5127 = !DILocation(line: 137, column: 69, scope: !5120)
!5128 = !DILocalVariable(name: "size", arg: 3, scope: !5120, file: !5121, line: 138, type: !265)
!5129 = !DILocation(line: 138, column: 12, scope: !5120)
!5130 = !DILocalVariable(name: "flags", arg: 4, scope: !5120, file: !5121, line: 138, type: !112)
!5131 = !DILocation(line: 138, column: 24, scope: !5120)
!5132 = !DILocation(line: 140, column: 17, scope: !5120)
!5133 = !DILocation(line: 140, column: 2, scope: !5120)
!5134 = distinct !DISubprogram(name: "phantom_poll", scope: !3, file: !3, line: 255, type: !5135, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{!118, !295, !5137}
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5138, size: 64)
!5138 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !2877, line: 46, baseType: !2876)
!5139 = !DILocalVariable(name: "v", arg: 1, scope: !5140, file: !4889, line: 23, type: !5143)
!5140 = distinct !DISubprogram(name: "arch_atomic_read", scope: !4889, file: !4889, line: 23, type: !5141, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{!123, !5143}
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!5145 = !DILocation(line: 23, column: 61, scope: !5140, inlinedAt: !5146)
!5146 = distinct !DILocation(line: 28, column: 9, scope: !5147, inlinedAt: !5148)
!5147 = distinct !DISubprogram(name: "atomic_read", scope: !4896, file: !4896, line: 25, type: !5141, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!5148 = distinct !DILocation(line: 265, column: 11, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 265, column: 11)
!5150 = distinct !DILexicalBlock(scope: !5134, file: !3, line: 263, column: 6)
!5151 = !DILocalVariable(name: "v", arg: 1, scope: !5152, file: !4900, line: 69, type: !4903)
!5152 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4900, file: !4900, line: 69, type: !4901, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!5153 = !DILocation(line: 69, column: 73, scope: !5152, inlinedAt: !5154)
!5154 = distinct !DILocation(line: 27, column: 2, scope: !5147, inlinedAt: !5148)
!5155 = !DILocalVariable(name: "size", arg: 2, scope: !5152, file: !4900, line: 69, type: !265)
!5156 = !DILocation(line: 69, column: 83, scope: !5152, inlinedAt: !5154)
!5157 = !DILocalVariable(name: "v", arg: 1, scope: !5147, file: !4896, line: 25, type: !5143)
!5158 = !DILocation(line: 25, column: 29, scope: !5147, inlinedAt: !5148)
!5159 = !DILocalVariable(name: "file", arg: 1, scope: !5134, file: !3, line: 255, type: !295)
!5160 = !DILocation(line: 255, column: 43, scope: !5134)
!5161 = !DILocalVariable(name: "wait", arg: 2, scope: !5134, file: !3, line: 255, type: !5137)
!5162 = !DILocation(line: 255, column: 61, scope: !5134)
!5163 = !DILocalVariable(name: "dev", scope: !5134, file: !3, line: 257, type: !126)
!5164 = !DILocation(line: 257, column: 25, scope: !5134)
!5165 = !DILocation(line: 257, column: 31, scope: !5134)
!5166 = !DILocation(line: 257, column: 37, scope: !5134)
!5167 = !DILocalVariable(name: "mask", scope: !5134, file: !3, line: 258, type: !118)
!5168 = !DILocation(line: 258, column: 11, scope: !5134)
!5169 = !DILocation(line: 260, column: 2, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 260, column: 2)
!5171 = distinct !DILexicalBlock(scope: !5134, file: !3, line: 260, column: 2)
!5172 = !DILocation(line: 260, column: 2, scope: !5171)
!5173 = !DILocation(line: 261, column: 12, scope: !5134)
!5174 = !DILocation(line: 261, column: 19, scope: !5134)
!5175 = !DILocation(line: 261, column: 24, scope: !5134)
!5176 = !DILocation(line: 261, column: 30, scope: !5134)
!5177 = !DILocation(line: 261, column: 2, scope: !5134)
!5178 = !DILocation(line: 263, column: 8, scope: !5150)
!5179 = !DILocation(line: 263, column: 13, scope: !5150)
!5180 = !DILocation(line: 263, column: 20, scope: !5150)
!5181 = !DILocation(line: 263, column: 6, scope: !5134)
!5182 = !DILocation(line: 264, column: 8, scope: !5150)
!5183 = !DILocation(line: 264, column: 3, scope: !5150)
!5184 = !DILocation(line: 265, column: 24, scope: !5149)
!5185 = !DILocation(line: 265, column: 29, scope: !5149)
!5186 = !DILocation(line: 27, column: 25, scope: !5147, inlinedAt: !5148)
!5187 = !DILocation(line: 71, column: 19, scope: !5152, inlinedAt: !5154)
!5188 = !DILocation(line: 71, column: 22, scope: !5152, inlinedAt: !5154)
!5189 = !DILocation(line: 71, column: 2, scope: !5152, inlinedAt: !5154)
!5190 = !DILocation(line: 72, column: 2, scope: !5152, inlinedAt: !5154)
!5191 = !DILocation(line: 28, column: 26, scope: !5147, inlinedAt: !5148)
!5192 = !DILocation(line: 29, column: 9, scope: !5140, inlinedAt: !5146)
!5193 = !DILocation(line: 265, column: 11, scope: !5149)
!5194 = !DILocation(line: 265, column: 11, scope: !5150)
!5195 = !DILocation(line: 266, column: 8, scope: !5149)
!5196 = !DILocation(line: 266, column: 3, scope: !5149)
!5197 = !DILocation(line: 268, column: 2, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 268, column: 2)
!5199 = distinct !DILexicalBlock(scope: !5134, file: !3, line: 268, column: 2)
!5200 = !DILocation(line: 268, column: 2, scope: !5199)
!5201 = !DILocation(line: 270, column: 9, scope: !5134)
!5202 = !DILocation(line: 270, column: 2, scope: !5134)
!5203 = distinct !DISubprogram(name: "phantom_ioctl", scope: !3, file: !3, line: 85, type: !2888, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!5204 = !DILocalVariable(name: "lock", arg: 1, scope: !5205, file: !4310, line: 407, type: !1037)
!5205 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4310, file: !4310, line: 407, type: !5206, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!5206 = !DISubroutineType(types: !5207)
!5207 = !{null, !1037, !124}
!5208 = !DILocation(line: 407, column: 64, scope: !5205, inlinedAt: !5209)
!5209 = distinct !DILocation(line: 187, column: 3, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5203, file: !3, line: 95, column: 15)
!5211 = !DILocalVariable(name: "flags", arg: 2, scope: !5205, file: !4310, line: 407, type: !124)
!5212 = !DILocation(line: 407, column: 84, scope: !5205, inlinedAt: !5209)
!5213 = !DILocation(line: 407, column: 64, scope: !5205, inlinedAt: !5214)
!5214 = distinct !DILocation(line: 183, column: 4, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 180, column: 34)
!5216 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 180, column: 7)
!5217 = !DILocation(line: 407, column: 84, scope: !5205, inlinedAt: !5214)
!5218 = !DILocation(line: 327, column: 67, scope: !4309, inlinedAt: !5219)
!5219 = distinct !DILocation(line: 179, column: 3, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5221, file: !3, line: 179, column: 3)
!5221 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 179, column: 3)
!5222 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 179, column: 3)
!5223 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 179, column: 3)
!5224 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 179, column: 3)
!5225 = !DILocalVariable(name: "addr", arg: 1, scope: !5226, file: !5227, line: 138, type: !2097)
!5226 = distinct !DISubprogram(name: "check_copy_size", scope: !5227, file: !5227, line: 138, type: !5228, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!5227 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!5228 = !DISubroutineType(types: !5229)
!5229 = !{!429, !2097, !265, !429}
!5230 = !DILocation(line: 138, column: 29, scope: !5226, inlinedAt: !5231)
!5231 = distinct !DILocation(line: 199, column: 6, scope: !5232, inlinedAt: !5237)
!5232 = distinct !DILexicalBlock(scope: !5234, file: !5233, line: 199, column: 6)
!5233 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!5234 = distinct !DISubprogram(name: "copy_to_user", scope: !5233, file: !5233, line: 197, type: !5235, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!5235 = !DISubroutineType(types: !5236)
!5236 = !{!124, !114, !2097, !124}
!5237 = distinct !DILocation(line: 175, column: 7, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 175, column: 7)
!5239 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 159, column: 21)
!5240 = !DILocalVariable(name: "bytes", arg: 2, scope: !5226, file: !5227, line: 138, type: !265)
!5241 = !DILocation(line: 138, column: 42, scope: !5226, inlinedAt: !5231)
!5242 = !DILocalVariable(name: "is_source", arg: 3, scope: !5226, file: !5227, line: 138, type: !429)
!5243 = !DILocation(line: 138, column: 54, scope: !5226, inlinedAt: !5231)
!5244 = !DILocalVariable(name: "sz", scope: !5226, file: !5227, line: 140, type: !123)
!5245 = !DILocation(line: 140, column: 6, scope: !5226, inlinedAt: !5231)
!5246 = !DILocalVariable(name: "__ret_warn_on", scope: !5247, file: !5227, line: 150, type: !123)
!5247 = distinct !DILexicalBlock(scope: !5248, file: !5227, line: 150, column: 6)
!5248 = distinct !DILexicalBlock(scope: !5226, file: !5227, line: 150, column: 6)
!5249 = !DILocation(line: 150, column: 6, scope: !5247, inlinedAt: !5231)
!5250 = !DILocalVariable(name: "to", arg: 1, scope: !5234, file: !5233, line: 197, type: !114)
!5251 = !DILocation(line: 197, column: 27, scope: !5234, inlinedAt: !5237)
!5252 = !DILocalVariable(name: "from", arg: 2, scope: !5234, file: !5233, line: 197, type: !2097)
!5253 = !DILocation(line: 197, column: 43, scope: !5234, inlinedAt: !5237)
!5254 = !DILocalVariable(name: "n", arg: 3, scope: !5234, file: !5233, line: 197, type: !124)
!5255 = !DILocation(line: 197, column: 63, scope: !5234, inlinedAt: !5237)
!5256 = !DILocation(line: 407, column: 64, scope: !5205, inlinedAt: !5257)
!5257 = distinct !DILocation(line: 173, column: 3, scope: !5239)
!5258 = !DILocation(line: 407, column: 84, scope: !5205, inlinedAt: !5257)
!5259 = !DILocalVariable(name: "v", arg: 1, scope: !5260, file: !4889, line: 39, type: !4892)
!5260 = distinct !DISubprogram(name: "arch_atomic_set", scope: !4889, file: !4889, line: 39, type: !5261, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!5261 = !DISubroutineType(types: !5262)
!5262 = !{null, !4892, !123}
!5263 = !DILocation(line: 39, column: 55, scope: !5260, inlinedAt: !5264)
!5264 = distinct !DILocation(line: 46, column: 2, scope: !5265, inlinedAt: !5266)
!5265 = distinct !DISubprogram(name: "atomic_set", scope: !4896, file: !4896, line: 43, type: !5261, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!5266 = distinct !DILocation(line: 172, column: 3, scope: !5239)
!5267 = !DILocalVariable(name: "i", arg: 2, scope: !5260, file: !4889, line: 39, type: !123)
!5268 = !DILocation(line: 39, column: 62, scope: !5260, inlinedAt: !5264)
!5269 = !DILocalVariable(name: "v", arg: 1, scope: !5270, file: !4900, line: 84, type: !4903)
!5270 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4900, file: !4900, line: 84, type: !4901, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!5271 = !DILocation(line: 84, column: 74, scope: !5270, inlinedAt: !5272)
!5272 = distinct !DILocation(line: 45, column: 2, scope: !5265, inlinedAt: !5266)
!5273 = !DILocalVariable(name: "size", arg: 2, scope: !5270, file: !4900, line: 84, type: !265)
!5274 = !DILocation(line: 84, column: 84, scope: !5270, inlinedAt: !5272)
!5275 = !DILocalVariable(name: "v", arg: 1, scope: !5265, file: !4896, line: 43, type: !4892)
!5276 = !DILocation(line: 43, column: 22, scope: !5265, inlinedAt: !5266)
!5277 = !DILocalVariable(name: "i", arg: 2, scope: !5265, file: !4896, line: 43, type: !123)
!5278 = !DILocation(line: 43, column: 29, scope: !5265, inlinedAt: !5266)
!5279 = !DILocation(line: 327, column: 67, scope: !4309, inlinedAt: !5280)
!5280 = distinct !DILocation(line: 168, column: 3, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 168, column: 3)
!5282 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 168, column: 3)
!5283 = distinct !DILexicalBlock(scope: !5284, file: !3, line: 168, column: 3)
!5284 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 168, column: 3)
!5285 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 168, column: 3)
!5286 = !DILocation(line: 138, column: 29, scope: !5226, inlinedAt: !5287)
!5287 = distinct !DILocation(line: 191, column: 6, scope: !5288, inlinedAt: !5290)
!5288 = distinct !DILexicalBlock(scope: !5289, file: !5233, line: 191, column: 6)
!5289 = distinct !DISubprogram(name: "copy_from_user", scope: !5233, file: !5233, line: 189, type: !5235, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!5290 = distinct !DILocation(line: 162, column: 7, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 162, column: 7)
!5292 = !DILocation(line: 138, column: 42, scope: !5226, inlinedAt: !5287)
!5293 = !DILocation(line: 138, column: 54, scope: !5226, inlinedAt: !5287)
!5294 = !DILocation(line: 140, column: 6, scope: !5226, inlinedAt: !5287)
!5295 = !DILocation(line: 150, column: 6, scope: !5247, inlinedAt: !5287)
!5296 = !DILocalVariable(name: "to", arg: 1, scope: !5289, file: !5233, line: 189, type: !114)
!5297 = !DILocation(line: 189, column: 22, scope: !5289, inlinedAt: !5290)
!5298 = !DILocalVariable(name: "from", arg: 2, scope: !5289, file: !5233, line: 189, type: !2097)
!5299 = !DILocation(line: 189, column: 45, scope: !5289, inlinedAt: !5290)
!5300 = !DILocalVariable(name: "n", arg: 3, scope: !5289, file: !5233, line: 189, type: !124)
!5301 = !DILocation(line: 189, column: 65, scope: !5289, inlinedAt: !5290)
!5302 = !DILocation(line: 138, column: 29, scope: !5226, inlinedAt: !5303)
!5303 = distinct !DILocation(line: 199, column: 6, scope: !5232, inlinedAt: !5304)
!5304 = distinct !DILocation(line: 155, column: 7, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 155, column: 7)
!5306 = !DILocation(line: 138, column: 42, scope: !5226, inlinedAt: !5303)
!5307 = !DILocation(line: 138, column: 54, scope: !5226, inlinedAt: !5303)
!5308 = !DILocation(line: 140, column: 6, scope: !5226, inlinedAt: !5303)
!5309 = !DILocation(line: 150, column: 6, scope: !5247, inlinedAt: !5303)
!5310 = !DILocation(line: 197, column: 27, scope: !5234, inlinedAt: !5304)
!5311 = !DILocation(line: 197, column: 43, scope: !5234, inlinedAt: !5304)
!5312 = !DILocation(line: 197, column: 63, scope: !5234, inlinedAt: !5304)
!5313 = !DILocation(line: 138, column: 29, scope: !5226, inlinedAt: !5314)
!5314 = distinct !DILocation(line: 191, column: 6, scope: !5288, inlinedAt: !5315)
!5315 = distinct !DILocation(line: 147, column: 7, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 147, column: 7)
!5317 = !DILocation(line: 138, column: 42, scope: !5226, inlinedAt: !5314)
!5318 = !DILocation(line: 138, column: 54, scope: !5226, inlinedAt: !5314)
!5319 = !DILocation(line: 140, column: 6, scope: !5226, inlinedAt: !5314)
!5320 = !DILocation(line: 150, column: 6, scope: !5247, inlinedAt: !5314)
!5321 = !DILocation(line: 189, column: 22, scope: !5289, inlinedAt: !5315)
!5322 = !DILocation(line: 189, column: 45, scope: !5289, inlinedAt: !5315)
!5323 = !DILocation(line: 189, column: 65, scope: !5289, inlinedAt: !5315)
!5324 = !DILocation(line: 407, column: 64, scope: !5205, inlinedAt: !5325)
!5325 = distinct !DILocation(line: 143, column: 3, scope: !5210)
!5326 = !DILocation(line: 407, column: 84, scope: !5205, inlinedAt: !5325)
!5327 = !DILocation(line: 327, column: 67, scope: !4309, inlinedAt: !5328)
!5328 = distinct !DILocation(line: 133, column: 3, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5330, file: !3, line: 133, column: 3)
!5330 = distinct !DILexicalBlock(scope: !5331, file: !3, line: 133, column: 3)
!5331 = distinct !DILexicalBlock(scope: !5332, file: !3, line: 133, column: 3)
!5332 = distinct !DILexicalBlock(scope: !5333, file: !3, line: 133, column: 3)
!5333 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 133, column: 3)
!5334 = !DILocation(line: 138, column: 29, scope: !5226, inlinedAt: !5335)
!5335 = distinct !DILocation(line: 191, column: 6, scope: !5288, inlinedAt: !5336)
!5336 = distinct !DILocation(line: 129, column: 7, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 129, column: 7)
!5338 = !DILocation(line: 138, column: 42, scope: !5226, inlinedAt: !5335)
!5339 = !DILocation(line: 138, column: 54, scope: !5226, inlinedAt: !5335)
!5340 = !DILocation(line: 140, column: 6, scope: !5226, inlinedAt: !5335)
!5341 = !DILocation(line: 150, column: 6, scope: !5247, inlinedAt: !5335)
!5342 = !DILocation(line: 189, column: 22, scope: !5289, inlinedAt: !5336)
!5343 = !DILocation(line: 189, column: 45, scope: !5289, inlinedAt: !5336)
!5344 = !DILocation(line: 189, column: 65, scope: !5289, inlinedAt: !5336)
!5345 = !DILocation(line: 407, column: 64, scope: !5205, inlinedAt: !5346)
!5346 = distinct !DILocation(line: 125, column: 3, scope: !5210)
!5347 = !DILocation(line: 407, column: 84, scope: !5205, inlinedAt: !5346)
!5348 = !DILocation(line: 407, column: 64, scope: !5205, inlinedAt: !5349)
!5349 = distinct !DILocation(line: 107, column: 4, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 106, column: 52)
!5351 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 105, column: 7)
!5352 = !DILocation(line: 407, column: 84, scope: !5205, inlinedAt: !5349)
!5353 = !DILocation(line: 327, column: 67, scope: !4309, inlinedAt: !5354)
!5354 = distinct !DILocation(line: 104, column: 3, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5356, file: !3, line: 104, column: 3)
!5356 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 104, column: 3)
!5357 = distinct !DILexicalBlock(scope: !5358, file: !3, line: 104, column: 3)
!5358 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 104, column: 3)
!5359 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 104, column: 3)
!5360 = !DILocation(line: 138, column: 29, scope: !5226, inlinedAt: !5361)
!5361 = distinct !DILocation(line: 191, column: 6, scope: !5288, inlinedAt: !5362)
!5362 = distinct !DILocation(line: 98, column: 7, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 98, column: 7)
!5364 = !DILocation(line: 138, column: 42, scope: !5226, inlinedAt: !5361)
!5365 = !DILocation(line: 138, column: 54, scope: !5226, inlinedAt: !5361)
!5366 = !DILocation(line: 140, column: 6, scope: !5226, inlinedAt: !5361)
!5367 = !DILocation(line: 150, column: 6, scope: !5247, inlinedAt: !5361)
!5368 = !DILocation(line: 189, column: 22, scope: !5289, inlinedAt: !5362)
!5369 = !DILocation(line: 189, column: 45, scope: !5289, inlinedAt: !5362)
!5370 = !DILocation(line: 189, column: 65, scope: !5289, inlinedAt: !5362)
!5371 = !DILocalVariable(name: "file", arg: 1, scope: !5203, file: !3, line: 85, type: !295)
!5372 = !DILocation(line: 85, column: 40, scope: !5203)
!5373 = !DILocalVariable(name: "cmd", arg: 2, scope: !5203, file: !3, line: 85, type: !7)
!5374 = !DILocation(line: 85, column: 59, scope: !5203)
!5375 = !DILocalVariable(name: "arg", arg: 3, scope: !5203, file: !3, line: 86, type: !124)
!5376 = !DILocation(line: 86, column: 17, scope: !5203)
!5377 = !DILocalVariable(name: "dev", scope: !5203, file: !3, line: 88, type: !126)
!5378 = !DILocation(line: 88, column: 25, scope: !5203)
!5379 = !DILocation(line: 88, column: 31, scope: !5203)
!5380 = !DILocation(line: 88, column: 37, scope: !5203)
!5381 = !DILocalVariable(name: "rs", scope: !5203, file: !3, line: 89, type: !3356)
!5382 = !DILocation(line: 89, column: 18, scope: !5203)
!5383 = !DILocalVariable(name: "r", scope: !5203, file: !3, line: 90, type: !5384)
!5384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phm_reg", file: !3357, line: 17, size: 64, elements: !5385)
!5385 = !{!5386, !5387}
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !5384, file: !3357, line: 18, baseType: !135, size: 32)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5384, file: !3357, line: 19, baseType: !135, size: 32, offset: 32)
!5388 = !DILocation(line: 90, column: 17, scope: !5203)
!5389 = !DILocalVariable(name: "argp", scope: !5203, file: !3, line: 91, type: !114)
!5390 = !DILocation(line: 91, column: 15, scope: !5203)
!5391 = !DILocation(line: 91, column: 37, scope: !5203)
!5392 = !DILocation(line: 91, column: 22, scope: !5203)
!5393 = !DILocalVariable(name: "flags", scope: !5203, file: !3, line: 92, type: !124)
!5394 = !DILocation(line: 92, column: 16, scope: !5203)
!5395 = !DILocalVariable(name: "i", scope: !5203, file: !3, line: 93, type: !7)
!5396 = !DILocation(line: 93, column: 15, scope: !5203)
!5397 = !DILocation(line: 95, column: 10, scope: !5203)
!5398 = !DILocation(line: 95, column: 2, scope: !5203)
!5399 = !DILocation(line: 98, column: 22, scope: !5363)
!5400 = !DILocation(line: 98, column: 26, scope: !5363)
!5401 = !DILocation(line: 191, column: 6, scope: !5288, inlinedAt: !5362)
!5402 = !DILocation(line: 141, column: 6, scope: !5403, inlinedAt: !5361)
!5403 = distinct !DILexicalBlock(scope: !5226, file: !5227, line: 141, column: 6)
!5404 = !DILocation(line: 0, scope: !5403, inlinedAt: !5361)
!5405 = !DILocation(line: 141, column: 6, scope: !5226, inlinedAt: !5361)
!5406 = !DILocation(line: 142, column: 29, scope: !5407, inlinedAt: !5361)
!5407 = distinct !DILexicalBlock(scope: !5408, file: !5227, line: 142, column: 7)
!5408 = distinct !DILexicalBlock(scope: !5403, file: !5227, line: 141, column: 39)
!5409 = !DILocation(line: 142, column: 8, scope: !5407, inlinedAt: !5361)
!5410 = !DILocation(line: 142, column: 7, scope: !5408, inlinedAt: !5361)
!5411 = !DILocation(line: 143, column: 18, scope: !5407, inlinedAt: !5361)
!5412 = !DILocation(line: 143, column: 22, scope: !5407, inlinedAt: !5361)
!5413 = !DILocation(line: 143, column: 4, scope: !5407, inlinedAt: !5361)
!5414 = !DILocation(line: 144, column: 12, scope: !5415, inlinedAt: !5361)
!5415 = distinct !DILexicalBlock(scope: !5407, file: !5227, line: 144, column: 12)
!5416 = !DILocation(line: 144, column: 12, scope: !5407, inlinedAt: !5361)
!5417 = !DILocation(line: 145, column: 4, scope: !5415, inlinedAt: !5361)
!5418 = !DILocation(line: 147, column: 4, scope: !5415, inlinedAt: !5361)
!5419 = !DILocation(line: 148, column: 3, scope: !5408, inlinedAt: !5361)
!5420 = !DILocation(line: 150, column: 6, scope: !5421, inlinedAt: !5361)
!5421 = distinct !DILexicalBlock(scope: !5247, file: !5227, line: 150, column: 6)
!5422 = !DILocation(line: 150, column: 6, scope: !5423, inlinedAt: !5361)
!5423 = distinct !DILexicalBlock(scope: !5424, file: !5227, line: 150, column: 6)
!5424 = distinct !DILexicalBlock(scope: !5421, file: !5227, line: 150, column: 6)
!5425 = !{i32 -2145612771, i32 -2145612742, i32 -2145612696, i32 -2145612638, i32 -2145612584, i32 -2145612530, i32 -2145612475, i32 -2145612444}
!5426 = !DILocation(line: 150, column: 6, scope: !5427, inlinedAt: !5361)
!5427 = distinct !DILexicalBlock(scope: !5424, file: !5227, line: 150, column: 6)
!5428 = !{i32 -2145612024, i32 -2145612017, i32 -2145611965, i32 -2145611934, i32 -2145611904}
!5429 = !DILocation(line: 150, column: 6, scope: !5424, inlinedAt: !5361)
!5430 = !DILocation(line: 150, column: 6, scope: !5248, inlinedAt: !5361)
!5431 = !DILocation(line: 150, column: 6, scope: !5226, inlinedAt: !5361)
!5432 = !DILocation(line: 151, column: 3, scope: !5248, inlinedAt: !5361)
!5433 = !DILocation(line: 152, column: 20, scope: !5226, inlinedAt: !5361)
!5434 = !DILocation(line: 152, column: 26, scope: !5226, inlinedAt: !5361)
!5435 = !DILocation(line: 152, column: 33, scope: !5226, inlinedAt: !5361)
!5436 = !DILocation(line: 152, column: 2, scope: !5226, inlinedAt: !5361)
!5437 = !DILocation(line: 153, column: 2, scope: !5226, inlinedAt: !5361)
!5438 = !DILocation(line: 154, column: 1, scope: !5226, inlinedAt: !5361)
!5439 = !DILocation(line: 191, column: 6, scope: !5289, inlinedAt: !5362)
!5440 = !DILocation(line: 192, column: 23, scope: !5288, inlinedAt: !5362)
!5441 = !DILocation(line: 192, column: 27, scope: !5288, inlinedAt: !5362)
!5442 = !DILocation(line: 192, column: 33, scope: !5288, inlinedAt: !5362)
!5443 = !DILocation(line: 192, column: 7, scope: !5288, inlinedAt: !5362)
!5444 = !DILocation(line: 192, column: 5, scope: !5288, inlinedAt: !5362)
!5445 = !DILocation(line: 192, column: 3, scope: !5288, inlinedAt: !5362)
!5446 = !DILocation(line: 193, column: 9, scope: !5289, inlinedAt: !5362)
!5447 = !DILocation(line: 98, column: 7, scope: !5363)
!5448 = !DILocation(line: 98, column: 7, scope: !5210)
!5449 = !DILocation(line: 99, column: 4, scope: !5363)
!5450 = !DILocation(line: 101, column: 9, scope: !5451)
!5451 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 101, column: 7)
!5452 = !DILocation(line: 101, column: 13, scope: !5451)
!5453 = !DILocation(line: 101, column: 7, scope: !5210)
!5454 = !DILocation(line: 102, column: 4, scope: !5451)
!5455 = !DILocation(line: 104, column: 3, scope: !5210)
!5456 = !DILocation(line: 104, column: 3, scope: !5359)
!5457 = !DILocalVariable(name: "__dummy", scope: !5458, file: !3, line: 104, type: !124)
!5458 = distinct !DILexicalBlock(scope: !5358, file: !3, line: 104, column: 3)
!5459 = !DILocation(line: 104, column: 3, scope: !5458)
!5460 = !DILocalVariable(name: "__dummy2", scope: !5458, file: !3, line: 104, type: !124)
!5461 = !DILocation(line: 104, column: 3, scope: !5358)
!5462 = !DILocation(line: 104, column: 3, scope: !5357)
!5463 = !DILocation(line: 104, column: 3, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 104, column: 3)
!5465 = !DILocalVariable(name: "__dummy", scope: !5466, file: !3, line: 104, type: !124)
!5466 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 104, column: 3)
!5467 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 104, column: 3)
!5468 = !DILocation(line: 104, column: 3, scope: !5466)
!5469 = !DILocalVariable(name: "__dummy2", scope: !5466, file: !3, line: 104, type: !124)
!5470 = !DILocation(line: 104, column: 3, scope: !5467)
!5471 = !DILocation(line: 104, column: 3, scope: !5356)
!5472 = !{i32 -2141591637}
!5473 = !DILocation(line: 104, column: 3, scope: !5355)
!5474 = !DILocation(line: 329, column: 10, scope: !4309, inlinedAt: !5354)
!5475 = !DILocation(line: 329, column: 16, scope: !4309, inlinedAt: !5354)
!5476 = !DILocation(line: 105, column: 9, scope: !5351)
!5477 = !DILocation(line: 105, column: 13, scope: !5351)
!5478 = !DILocation(line: 105, column: 28, scope: !5351)
!5479 = !DILocation(line: 105, column: 34, scope: !5351)
!5480 = !DILocation(line: 105, column: 40, scope: !5351)
!5481 = !DILocation(line: 105, column: 55, scope: !5351)
!5482 = !DILocation(line: 106, column: 20, scope: !5351)
!5483 = !DILocation(line: 106, column: 25, scope: !5351)
!5484 = !DILocation(line: 106, column: 30, scope: !5351)
!5485 = !DILocation(line: 106, column: 37, scope: !5351)
!5486 = !DILocation(line: 106, column: 5, scope: !5351)
!5487 = !DILocation(line: 105, column: 7, scope: !5210)
!5488 = !DILocation(line: 107, column: 28, scope: !5350)
!5489 = !DILocation(line: 107, column: 33, scope: !5350)
!5490 = !DILocation(line: 107, column: 44, scope: !5350)
!5491 = !DILocalVariable(name: "__dummy", scope: !5492, file: !4310, line: 409, type: !124)
!5492 = distinct !DILexicalBlock(scope: !5493, file: !4310, line: 409, column: 2)
!5493 = distinct !DILexicalBlock(scope: !5205, file: !4310, line: 409, column: 2)
!5494 = !DILocation(line: 409, column: 2, scope: !5492, inlinedAt: !5349)
!5495 = !DILocalVariable(name: "__dummy2", scope: !5492, file: !4310, line: 409, type: !124)
!5496 = !DILocalVariable(name: "__dummy", scope: !5497, file: !4310, line: 409, type: !124)
!5497 = distinct !DILexicalBlock(scope: !5498, file: !4310, line: 409, column: 2)
!5498 = distinct !DILexicalBlock(scope: !5499, file: !4310, line: 409, column: 2)
!5499 = distinct !DILexicalBlock(scope: !5500, file: !4310, line: 409, column: 2)
!5500 = distinct !DILexicalBlock(scope: !5493, file: !4310, line: 409, column: 2)
!5501 = !DILocation(line: 409, column: 2, scope: !5497, inlinedAt: !5349)
!5502 = !DILocalVariable(name: "__dummy2", scope: !5497, file: !4310, line: 409, type: !124)
!5503 = !DILocation(line: 409, column: 2, scope: !5498, inlinedAt: !5349)
!5504 = !DILocation(line: 409, column: 2, scope: !5505, inlinedAt: !5349)
!5505 = distinct !DILexicalBlock(scope: !5500, file: !4310, line: 409, column: 2)
!5506 = !{i32 -2145530329}
!5507 = !DILocation(line: 409, column: 2, scope: !5508, inlinedAt: !5349)
!5508 = distinct !DILexicalBlock(scope: !5505, file: !4310, line: 409, column: 2)
!5509 = !DILocation(line: 108, column: 4, scope: !5350)
!5510 = !DILocation(line: 111, column: 3, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 111, column: 3)
!5512 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 111, column: 3)
!5513 = !DILocation(line: 111, column: 3, scope: !5512)
!5514 = !DILocation(line: 114, column: 9, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 114, column: 7)
!5516 = !DILocation(line: 114, column: 13, scope: !5515)
!5517 = !DILocation(line: 114, column: 28, scope: !5515)
!5518 = !DILocation(line: 114, column: 32, scope: !5515)
!5519 = !DILocation(line: 114, column: 37, scope: !5515)
!5520 = !DILocation(line: 114, column: 44, scope: !5515)
!5521 = !DILocation(line: 114, column: 7, scope: !5210)
!5522 = !DILocation(line: 115, column: 6, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 114, column: 59)
!5524 = !DILocation(line: 115, column: 12, scope: !5523)
!5525 = !DILocation(line: 116, column: 15, scope: !5523)
!5526 = !DILocation(line: 116, column: 20, scope: !5523)
!5527 = !DILocation(line: 116, column: 28, scope: !5523)
!5528 = !DILocation(line: 116, column: 6, scope: !5523)
!5529 = !DILocation(line: 116, column: 12, scope: !5523)
!5530 = !DILocation(line: 117, column: 21, scope: !5523)
!5531 = !DILocation(line: 117, column: 4, scope: !5523)
!5532 = !DILocation(line: 117, column: 9, scope: !5523)
!5533 = !DILocation(line: 117, column: 17, scope: !5523)
!5534 = !DILocation(line: 118, column: 3, scope: !5523)
!5535 = !DILocation(line: 120, column: 15, scope: !5210)
!5536 = !DILocation(line: 120, column: 22, scope: !5210)
!5537 = !DILocation(line: 120, column: 27, scope: !5210)
!5538 = !DILocation(line: 120, column: 37, scope: !5210)
!5539 = !DILocation(line: 120, column: 33, scope: !5210)
!5540 = !DILocation(line: 120, column: 3, scope: !5210)
!5541 = !DILocation(line: 121, column: 12, scope: !5210)
!5542 = !DILocation(line: 121, column: 17, scope: !5210)
!5543 = !DILocation(line: 121, column: 3, scope: !5210)
!5544 = !DILocation(line: 123, column: 9, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 123, column: 7)
!5546 = !DILocation(line: 123, column: 13, scope: !5545)
!5547 = !DILocation(line: 123, column: 28, scope: !5545)
!5548 = !DILocation(line: 123, column: 35, scope: !5545)
!5549 = !DILocation(line: 123, column: 41, scope: !5545)
!5550 = !DILocation(line: 123, column: 7, scope: !5210)
!5551 = !DILocation(line: 124, column: 19, scope: !5545)
!5552 = !DILocation(line: 124, column: 24, scope: !5545)
!5553 = !DILocation(line: 124, column: 29, scope: !5545)
!5554 = !DILocation(line: 124, column: 36, scope: !5545)
!5555 = !DILocation(line: 124, column: 4, scope: !5545)
!5556 = !DILocation(line: 125, column: 27, scope: !5210)
!5557 = !DILocation(line: 125, column: 32, scope: !5210)
!5558 = !DILocation(line: 125, column: 43, scope: !5210)
!5559 = !DILocation(line: 409, column: 2, scope: !5492, inlinedAt: !5346)
!5560 = !DILocation(line: 409, column: 2, scope: !5497, inlinedAt: !5346)
!5561 = !DILocation(line: 409, column: 2, scope: !5498, inlinedAt: !5346)
!5562 = !DILocation(line: 409, column: 2, scope: !5505, inlinedAt: !5346)
!5563 = !DILocation(line: 409, column: 2, scope: !5508, inlinedAt: !5346)
!5564 = !DILocation(line: 126, column: 3, scope: !5210)
!5565 = !DILocation(line: 129, column: 22, scope: !5337)
!5566 = !DILocation(line: 129, column: 27, scope: !5337)
!5567 = !DILocation(line: 191, column: 6, scope: !5288, inlinedAt: !5336)
!5568 = !DILocation(line: 141, column: 6, scope: !5403, inlinedAt: !5335)
!5569 = !DILocation(line: 0, scope: !5403, inlinedAt: !5335)
!5570 = !DILocation(line: 141, column: 6, scope: !5226, inlinedAt: !5335)
!5571 = !DILocation(line: 142, column: 29, scope: !5407, inlinedAt: !5335)
!5572 = !DILocation(line: 142, column: 8, scope: !5407, inlinedAt: !5335)
!5573 = !DILocation(line: 142, column: 7, scope: !5408, inlinedAt: !5335)
!5574 = !DILocation(line: 143, column: 18, scope: !5407, inlinedAt: !5335)
!5575 = !DILocation(line: 143, column: 22, scope: !5407, inlinedAt: !5335)
!5576 = !DILocation(line: 143, column: 4, scope: !5407, inlinedAt: !5335)
!5577 = !DILocation(line: 144, column: 12, scope: !5415, inlinedAt: !5335)
!5578 = !DILocation(line: 144, column: 12, scope: !5407, inlinedAt: !5335)
!5579 = !DILocation(line: 145, column: 4, scope: !5415, inlinedAt: !5335)
!5580 = !DILocation(line: 147, column: 4, scope: !5415, inlinedAt: !5335)
!5581 = !DILocation(line: 148, column: 3, scope: !5408, inlinedAt: !5335)
!5582 = !DILocation(line: 150, column: 6, scope: !5421, inlinedAt: !5335)
!5583 = !DILocation(line: 150, column: 6, scope: !5423, inlinedAt: !5335)
!5584 = !DILocation(line: 150, column: 6, scope: !5427, inlinedAt: !5335)
!5585 = !DILocation(line: 150, column: 6, scope: !5424, inlinedAt: !5335)
!5586 = !DILocation(line: 150, column: 6, scope: !5248, inlinedAt: !5335)
!5587 = !DILocation(line: 150, column: 6, scope: !5226, inlinedAt: !5335)
!5588 = !DILocation(line: 151, column: 3, scope: !5248, inlinedAt: !5335)
!5589 = !DILocation(line: 152, column: 20, scope: !5226, inlinedAt: !5335)
!5590 = !DILocation(line: 152, column: 26, scope: !5226, inlinedAt: !5335)
!5591 = !DILocation(line: 152, column: 33, scope: !5226, inlinedAt: !5335)
!5592 = !DILocation(line: 152, column: 2, scope: !5226, inlinedAt: !5335)
!5593 = !DILocation(line: 153, column: 2, scope: !5226, inlinedAt: !5335)
!5594 = !DILocation(line: 154, column: 1, scope: !5226, inlinedAt: !5335)
!5595 = !DILocation(line: 191, column: 6, scope: !5289, inlinedAt: !5336)
!5596 = !DILocation(line: 192, column: 23, scope: !5288, inlinedAt: !5336)
!5597 = !DILocation(line: 192, column: 27, scope: !5288, inlinedAt: !5336)
!5598 = !DILocation(line: 192, column: 33, scope: !5288, inlinedAt: !5336)
!5599 = !DILocation(line: 192, column: 7, scope: !5288, inlinedAt: !5336)
!5600 = !DILocation(line: 192, column: 5, scope: !5288, inlinedAt: !5336)
!5601 = !DILocation(line: 192, column: 3, scope: !5288, inlinedAt: !5336)
!5602 = !DILocation(line: 193, column: 9, scope: !5289, inlinedAt: !5336)
!5603 = !DILocation(line: 129, column: 7, scope: !5337)
!5604 = !DILocation(line: 129, column: 7, scope: !5210)
!5605 = !DILocation(line: 130, column: 4, scope: !5337)
!5606 = !DILocation(line: 132, column: 3, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5608, file: !3, line: 132, column: 3)
!5608 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 132, column: 3)
!5609 = !DILocation(line: 132, column: 3, scope: !5608)
!5610 = !DILocation(line: 133, column: 3, scope: !5210)
!5611 = !DILocation(line: 133, column: 3, scope: !5333)
!5612 = !DILocalVariable(name: "__dummy", scope: !5613, file: !3, line: 133, type: !124)
!5613 = distinct !DILexicalBlock(scope: !5332, file: !3, line: 133, column: 3)
!5614 = !DILocation(line: 133, column: 3, scope: !5613)
!5615 = !DILocalVariable(name: "__dummy2", scope: !5613, file: !3, line: 133, type: !124)
!5616 = !DILocation(line: 133, column: 3, scope: !5332)
!5617 = !DILocation(line: 133, column: 3, scope: !5331)
!5618 = !DILocation(line: 133, column: 3, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5331, file: !3, line: 133, column: 3)
!5620 = !DILocalVariable(name: "__dummy", scope: !5621, file: !3, line: 133, type: !124)
!5621 = distinct !DILexicalBlock(scope: !5622, file: !3, line: 133, column: 3)
!5622 = distinct !DILexicalBlock(scope: !5619, file: !3, line: 133, column: 3)
!5623 = !DILocation(line: 133, column: 3, scope: !5621)
!5624 = !DILocalVariable(name: "__dummy2", scope: !5621, file: !3, line: 133, type: !124)
!5625 = !DILocation(line: 133, column: 3, scope: !5622)
!5626 = !DILocation(line: 133, column: 3, scope: !5330)
!5627 = !{i32 -2141588318}
!5628 = !DILocation(line: 133, column: 3, scope: !5329)
!5629 = !DILocation(line: 329, column: 10, scope: !4309, inlinedAt: !5328)
!5630 = !DILocation(line: 329, column: 16, scope: !4309, inlinedAt: !5328)
!5631 = !DILocation(line: 134, column: 7, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 134, column: 7)
!5633 = !DILocation(line: 134, column: 12, scope: !5632)
!5634 = !DILocation(line: 134, column: 19, scope: !5632)
!5635 = !DILocation(line: 134, column: 7, scope: !5210)
!5636 = !DILocation(line: 135, column: 12, scope: !5632)
!5637 = !DILocation(line: 135, column: 17, scope: !5632)
!5638 = !DILocation(line: 135, column: 4, scope: !5632)
!5639 = !DILocalVariable(name: "m", scope: !5640, file: !3, line: 137, type: !133)
!5640 = distinct !DILexicalBlock(scope: !5632, file: !3, line: 136, column: 8)
!5641 = !DILocation(line: 137, column: 8, scope: !5640)
!5642 = !DILocalVariable(name: "__UNIQUE_ID___x236", scope: !5643, file: !3, line: 137, type: !135)
!5643 = distinct !DILexicalBlock(scope: !5640, file: !3, line: 137, column: 12)
!5644 = !DILocation(line: 137, column: 12, scope: !5643)
!5645 = !DILocalVariable(name: "__UNIQUE_ID___y237", scope: !5643, file: !3, line: 137, type: !7)
!5646 = !DILocation(line: 138, column: 11, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5640, file: !3, line: 138, column: 4)
!5648 = !DILocation(line: 138, column: 9, scope: !5647)
!5649 = !DILocation(line: 138, column: 16, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5647, file: !3, line: 138, column: 4)
!5651 = !DILocation(line: 138, column: 20, scope: !5650)
!5652 = !DILocation(line: 138, column: 18, scope: !5650)
!5653 = !DILocation(line: 138, column: 4, scope: !5647)
!5654 = !DILocation(line: 139, column: 12, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5650, file: !3, line: 139, column: 9)
!5656 = !DILocation(line: 139, column: 9, scope: !5655)
!5657 = !DILocation(line: 139, column: 19, scope: !5655)
!5658 = !DILocation(line: 139, column: 17, scope: !5655)
!5659 = !DILocation(line: 139, column: 9, scope: !5650)
!5660 = !DILocation(line: 140, column: 19, scope: !5655)
!5661 = !DILocation(line: 140, column: 26, scope: !5655)
!5662 = !DILocation(line: 140, column: 16, scope: !5655)
!5663 = !DILocation(line: 140, column: 30, scope: !5655)
!5664 = !DILocation(line: 140, column: 35, scope: !5655)
!5665 = !DILocation(line: 140, column: 43, scope: !5655)
!5666 = !DILocation(line: 140, column: 41, scope: !5655)
!5667 = !DILocation(line: 140, column: 6, scope: !5655)
!5668 = !DILocation(line: 138, column: 24, scope: !5650)
!5669 = !DILocation(line: 138, column: 4, scope: !5650)
!5670 = distinct !{!5670, !5653, !5671}
!5671 = !DILocation(line: 140, column: 44, scope: !5647)
!5672 = !DILocation(line: 141, column: 13, scope: !5640)
!5673 = !DILocation(line: 141, column: 18, scope: !5640)
!5674 = !DILocation(line: 141, column: 4, scope: !5640)
!5675 = !DILocation(line: 143, column: 27, scope: !5210)
!5676 = !DILocation(line: 143, column: 32, scope: !5210)
!5677 = !DILocation(line: 143, column: 43, scope: !5210)
!5678 = !DILocation(line: 409, column: 2, scope: !5492, inlinedAt: !5325)
!5679 = !DILocation(line: 409, column: 2, scope: !5497, inlinedAt: !5325)
!5680 = !DILocation(line: 409, column: 2, scope: !5498, inlinedAt: !5325)
!5681 = !DILocation(line: 409, column: 2, scope: !5505, inlinedAt: !5325)
!5682 = !DILocation(line: 409, column: 2, scope: !5508, inlinedAt: !5325)
!5683 = !DILocation(line: 144, column: 3, scope: !5210)
!5684 = !DILocation(line: 147, column: 22, scope: !5316)
!5685 = !DILocation(line: 147, column: 26, scope: !5316)
!5686 = !DILocation(line: 191, column: 6, scope: !5288, inlinedAt: !5315)
!5687 = !DILocation(line: 141, column: 6, scope: !5403, inlinedAt: !5314)
!5688 = !DILocation(line: 0, scope: !5403, inlinedAt: !5314)
!5689 = !DILocation(line: 141, column: 6, scope: !5226, inlinedAt: !5314)
!5690 = !DILocation(line: 142, column: 29, scope: !5407, inlinedAt: !5314)
!5691 = !DILocation(line: 142, column: 8, scope: !5407, inlinedAt: !5314)
!5692 = !DILocation(line: 142, column: 7, scope: !5408, inlinedAt: !5314)
!5693 = !DILocation(line: 143, column: 18, scope: !5407, inlinedAt: !5314)
!5694 = !DILocation(line: 143, column: 22, scope: !5407, inlinedAt: !5314)
!5695 = !DILocation(line: 143, column: 4, scope: !5407, inlinedAt: !5314)
!5696 = !DILocation(line: 144, column: 12, scope: !5415, inlinedAt: !5314)
!5697 = !DILocation(line: 144, column: 12, scope: !5407, inlinedAt: !5314)
!5698 = !DILocation(line: 145, column: 4, scope: !5415, inlinedAt: !5314)
!5699 = !DILocation(line: 147, column: 4, scope: !5415, inlinedAt: !5314)
!5700 = !DILocation(line: 148, column: 3, scope: !5408, inlinedAt: !5314)
!5701 = !DILocation(line: 150, column: 6, scope: !5421, inlinedAt: !5314)
!5702 = !DILocation(line: 150, column: 6, scope: !5423, inlinedAt: !5314)
!5703 = !DILocation(line: 150, column: 6, scope: !5427, inlinedAt: !5314)
!5704 = !DILocation(line: 150, column: 6, scope: !5424, inlinedAt: !5314)
!5705 = !DILocation(line: 150, column: 6, scope: !5248, inlinedAt: !5314)
!5706 = !DILocation(line: 150, column: 6, scope: !5226, inlinedAt: !5314)
!5707 = !DILocation(line: 151, column: 3, scope: !5248, inlinedAt: !5314)
!5708 = !DILocation(line: 152, column: 20, scope: !5226, inlinedAt: !5314)
!5709 = !DILocation(line: 152, column: 26, scope: !5226, inlinedAt: !5314)
!5710 = !DILocation(line: 152, column: 33, scope: !5226, inlinedAt: !5314)
!5711 = !DILocation(line: 152, column: 2, scope: !5226, inlinedAt: !5314)
!5712 = !DILocation(line: 153, column: 2, scope: !5226, inlinedAt: !5314)
!5713 = !DILocation(line: 154, column: 1, scope: !5226, inlinedAt: !5314)
!5714 = !DILocation(line: 191, column: 6, scope: !5289, inlinedAt: !5315)
!5715 = !DILocation(line: 192, column: 23, scope: !5288, inlinedAt: !5315)
!5716 = !DILocation(line: 192, column: 27, scope: !5288, inlinedAt: !5315)
!5717 = !DILocation(line: 192, column: 33, scope: !5288, inlinedAt: !5315)
!5718 = !DILocation(line: 192, column: 7, scope: !5288, inlinedAt: !5315)
!5719 = !DILocation(line: 192, column: 5, scope: !5288, inlinedAt: !5315)
!5720 = !DILocation(line: 192, column: 3, scope: !5288, inlinedAt: !5315)
!5721 = !DILocation(line: 193, column: 9, scope: !5289, inlinedAt: !5315)
!5722 = !DILocation(line: 147, column: 7, scope: !5316)
!5723 = !DILocation(line: 147, column: 7, scope: !5210)
!5724 = !DILocation(line: 148, column: 4, scope: !5316)
!5725 = !DILocation(line: 150, column: 9, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 150, column: 7)
!5727 = !DILocation(line: 150, column: 13, scope: !5726)
!5728 = !DILocation(line: 150, column: 7, scope: !5210)
!5729 = !DILocation(line: 151, column: 4, scope: !5726)
!5730 = !DILocation(line: 153, column: 22, scope: !5210)
!5731 = !DILocation(line: 153, column: 27, scope: !5210)
!5732 = !DILocation(line: 153, column: 37, scope: !5210)
!5733 = !DILocation(line: 153, column: 33, scope: !5210)
!5734 = !DILocation(line: 153, column: 13, scope: !5210)
!5735 = !DILocation(line: 153, column: 5, scope: !5210)
!5736 = !DILocation(line: 153, column: 11, scope: !5210)
!5737 = !DILocation(line: 155, column: 20, scope: !5305)
!5738 = !DILocation(line: 155, column: 26, scope: !5305)
!5739 = !DILocation(line: 199, column: 6, scope: !5232, inlinedAt: !5304)
!5740 = !DILocation(line: 141, column: 6, scope: !5403, inlinedAt: !5303)
!5741 = !DILocation(line: 0, scope: !5403, inlinedAt: !5303)
!5742 = !DILocation(line: 141, column: 6, scope: !5226, inlinedAt: !5303)
!5743 = !DILocation(line: 142, column: 29, scope: !5407, inlinedAt: !5303)
!5744 = !DILocation(line: 142, column: 8, scope: !5407, inlinedAt: !5303)
!5745 = !DILocation(line: 142, column: 7, scope: !5408, inlinedAt: !5303)
!5746 = !DILocation(line: 143, column: 18, scope: !5407, inlinedAt: !5303)
!5747 = !DILocation(line: 143, column: 22, scope: !5407, inlinedAt: !5303)
!5748 = !DILocation(line: 143, column: 4, scope: !5407, inlinedAt: !5303)
!5749 = !DILocation(line: 144, column: 12, scope: !5415, inlinedAt: !5303)
!5750 = !DILocation(line: 144, column: 12, scope: !5407, inlinedAt: !5303)
!5751 = !DILocation(line: 145, column: 4, scope: !5415, inlinedAt: !5303)
!5752 = !DILocation(line: 147, column: 4, scope: !5415, inlinedAt: !5303)
!5753 = !DILocation(line: 148, column: 3, scope: !5408, inlinedAt: !5303)
!5754 = !DILocation(line: 150, column: 6, scope: !5421, inlinedAt: !5303)
!5755 = !DILocation(line: 150, column: 6, scope: !5423, inlinedAt: !5303)
!5756 = !DILocation(line: 150, column: 6, scope: !5427, inlinedAt: !5303)
!5757 = !DILocation(line: 150, column: 6, scope: !5424, inlinedAt: !5303)
!5758 = !DILocation(line: 150, column: 6, scope: !5248, inlinedAt: !5303)
!5759 = !DILocation(line: 150, column: 6, scope: !5226, inlinedAt: !5303)
!5760 = !DILocation(line: 151, column: 3, scope: !5248, inlinedAt: !5303)
!5761 = !DILocation(line: 152, column: 20, scope: !5226, inlinedAt: !5303)
!5762 = !DILocation(line: 152, column: 26, scope: !5226, inlinedAt: !5303)
!5763 = !DILocation(line: 152, column: 33, scope: !5226, inlinedAt: !5303)
!5764 = !DILocation(line: 152, column: 2, scope: !5226, inlinedAt: !5303)
!5765 = !DILocation(line: 153, column: 2, scope: !5226, inlinedAt: !5303)
!5766 = !DILocation(line: 154, column: 1, scope: !5226, inlinedAt: !5303)
!5767 = !DILocation(line: 199, column: 6, scope: !5234, inlinedAt: !5304)
!5768 = !DILocation(line: 200, column: 21, scope: !5232, inlinedAt: !5304)
!5769 = !DILocation(line: 200, column: 25, scope: !5232, inlinedAt: !5304)
!5770 = !DILocation(line: 200, column: 31, scope: !5232, inlinedAt: !5304)
!5771 = !DILocation(line: 200, column: 7, scope: !5232, inlinedAt: !5304)
!5772 = !DILocation(line: 200, column: 5, scope: !5232, inlinedAt: !5304)
!5773 = !DILocation(line: 200, column: 3, scope: !5232, inlinedAt: !5304)
!5774 = !DILocation(line: 201, column: 9, scope: !5234, inlinedAt: !5304)
!5775 = !DILocation(line: 155, column: 7, scope: !5305)
!5776 = !DILocation(line: 155, column: 7, scope: !5210)
!5777 = !DILocation(line: 156, column: 4, scope: !5305)
!5778 = !DILocation(line: 157, column: 3, scope: !5210)
!5779 = !DILocalVariable(name: "m", scope: !5239, file: !3, line: 160, type: !133)
!5780 = !DILocation(line: 160, column: 7, scope: !5239)
!5781 = !DILocation(line: 162, column: 22, scope: !5291)
!5782 = !DILocation(line: 162, column: 27, scope: !5291)
!5783 = !DILocation(line: 191, column: 6, scope: !5288, inlinedAt: !5290)
!5784 = !DILocation(line: 141, column: 6, scope: !5403, inlinedAt: !5287)
!5785 = !DILocation(line: 0, scope: !5403, inlinedAt: !5287)
!5786 = !DILocation(line: 141, column: 6, scope: !5226, inlinedAt: !5287)
!5787 = !DILocation(line: 142, column: 29, scope: !5407, inlinedAt: !5287)
!5788 = !DILocation(line: 142, column: 8, scope: !5407, inlinedAt: !5287)
!5789 = !DILocation(line: 142, column: 7, scope: !5408, inlinedAt: !5287)
!5790 = !DILocation(line: 143, column: 18, scope: !5407, inlinedAt: !5287)
!5791 = !DILocation(line: 143, column: 22, scope: !5407, inlinedAt: !5287)
!5792 = !DILocation(line: 143, column: 4, scope: !5407, inlinedAt: !5287)
!5793 = !DILocation(line: 144, column: 12, scope: !5415, inlinedAt: !5287)
!5794 = !DILocation(line: 144, column: 12, scope: !5407, inlinedAt: !5287)
!5795 = !DILocation(line: 145, column: 4, scope: !5415, inlinedAt: !5287)
!5796 = !DILocation(line: 147, column: 4, scope: !5415, inlinedAt: !5287)
!5797 = !DILocation(line: 148, column: 3, scope: !5408, inlinedAt: !5287)
!5798 = !DILocation(line: 150, column: 6, scope: !5421, inlinedAt: !5287)
!5799 = !DILocation(line: 150, column: 6, scope: !5423, inlinedAt: !5287)
!5800 = !DILocation(line: 150, column: 6, scope: !5427, inlinedAt: !5287)
!5801 = !DILocation(line: 150, column: 6, scope: !5424, inlinedAt: !5287)
!5802 = !DILocation(line: 150, column: 6, scope: !5248, inlinedAt: !5287)
!5803 = !DILocation(line: 150, column: 6, scope: !5226, inlinedAt: !5287)
!5804 = !DILocation(line: 151, column: 3, scope: !5248, inlinedAt: !5287)
!5805 = !DILocation(line: 152, column: 20, scope: !5226, inlinedAt: !5287)
!5806 = !DILocation(line: 152, column: 26, scope: !5226, inlinedAt: !5287)
!5807 = !DILocation(line: 152, column: 33, scope: !5226, inlinedAt: !5287)
!5808 = !DILocation(line: 152, column: 2, scope: !5226, inlinedAt: !5287)
!5809 = !DILocation(line: 153, column: 2, scope: !5226, inlinedAt: !5287)
!5810 = !DILocation(line: 154, column: 1, scope: !5226, inlinedAt: !5287)
!5811 = !DILocation(line: 191, column: 6, scope: !5289, inlinedAt: !5290)
!5812 = !DILocation(line: 192, column: 23, scope: !5288, inlinedAt: !5290)
!5813 = !DILocation(line: 192, column: 27, scope: !5288, inlinedAt: !5290)
!5814 = !DILocation(line: 192, column: 33, scope: !5288, inlinedAt: !5290)
!5815 = !DILocation(line: 192, column: 7, scope: !5288, inlinedAt: !5290)
!5816 = !DILocation(line: 192, column: 5, scope: !5288, inlinedAt: !5290)
!5817 = !DILocation(line: 192, column: 3, scope: !5288, inlinedAt: !5290)
!5818 = !DILocation(line: 193, column: 9, scope: !5289, inlinedAt: !5290)
!5819 = !DILocation(line: 162, column: 7, scope: !5291)
!5820 = !DILocation(line: 162, column: 7, scope: !5239)
!5821 = !DILocation(line: 163, column: 4, scope: !5291)
!5822 = !DILocalVariable(name: "__UNIQUE_ID___x238", scope: !5823, file: !3, line: 165, type: !135)
!5823 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 165, column: 7)
!5824 = !DILocation(line: 165, column: 7, scope: !5823)
!5825 = !DILocalVariable(name: "__UNIQUE_ID___y239", scope: !5823, file: !3, line: 165, type: !7)
!5826 = !DILocation(line: 165, column: 5, scope: !5239)
!5827 = !DILocation(line: 167, column: 3, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5829, file: !3, line: 167, column: 3)
!5829 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 167, column: 3)
!5830 = !DILocation(line: 167, column: 3, scope: !5829)
!5831 = !DILocation(line: 168, column: 3, scope: !5239)
!5832 = !DILocation(line: 168, column: 3, scope: !5285)
!5833 = !DILocalVariable(name: "__dummy", scope: !5834, file: !3, line: 168, type: !124)
!5834 = distinct !DILexicalBlock(scope: !5284, file: !3, line: 168, column: 3)
!5835 = !DILocation(line: 168, column: 3, scope: !5834)
!5836 = !DILocalVariable(name: "__dummy2", scope: !5834, file: !3, line: 168, type: !124)
!5837 = !DILocation(line: 168, column: 3, scope: !5284)
!5838 = !DILocation(line: 168, column: 3, scope: !5283)
!5839 = !DILocation(line: 168, column: 3, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 168, column: 3)
!5841 = !DILocalVariable(name: "__dummy", scope: !5842, file: !3, line: 168, type: !124)
!5842 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 168, column: 3)
!5843 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 168, column: 3)
!5844 = !DILocation(line: 168, column: 3, scope: !5842)
!5845 = !DILocalVariable(name: "__dummy2", scope: !5842, file: !3, line: 168, type: !124)
!5846 = !DILocation(line: 168, column: 3, scope: !5843)
!5847 = !DILocation(line: 168, column: 3, scope: !5282)
!5848 = !{i32 -2141580891}
!5849 = !DILocation(line: 168, column: 3, scope: !5281)
!5850 = !DILocation(line: 329, column: 10, scope: !4309, inlinedAt: !5280)
!5851 = !DILocation(line: 329, column: 16, scope: !4309, inlinedAt: !5280)
!5852 = !DILocation(line: 169, column: 10, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 169, column: 3)
!5854 = !DILocation(line: 169, column: 8, scope: !5853)
!5855 = !DILocation(line: 169, column: 15, scope: !5856)
!5856 = distinct !DILexicalBlock(scope: !5853, file: !3, line: 169, column: 3)
!5857 = !DILocation(line: 169, column: 19, scope: !5856)
!5858 = !DILocation(line: 169, column: 17, scope: !5856)
!5859 = !DILocation(line: 169, column: 3, scope: !5853)
!5860 = !DILocation(line: 170, column: 11, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5856, file: !3, line: 170, column: 8)
!5862 = !DILocation(line: 170, column: 8, scope: !5861)
!5863 = !DILocation(line: 170, column: 18, scope: !5861)
!5864 = !DILocation(line: 170, column: 16, scope: !5861)
!5865 = !DILocation(line: 170, column: 8, scope: !5856)
!5866 = !DILocation(line: 171, column: 29, scope: !5861)
!5867 = !DILocation(line: 171, column: 34, scope: !5861)
!5868 = !DILocation(line: 171, column: 42, scope: !5861)
!5869 = !DILocation(line: 171, column: 40, scope: !5861)
!5870 = !DILocation(line: 171, column: 20, scope: !5861)
!5871 = !DILocation(line: 171, column: 8, scope: !5861)
!5872 = !DILocation(line: 171, column: 15, scope: !5861)
!5873 = !DILocation(line: 171, column: 5, scope: !5861)
!5874 = !DILocation(line: 171, column: 18, scope: !5861)
!5875 = !DILocation(line: 169, column: 23, scope: !5856)
!5876 = !DILocation(line: 169, column: 3, scope: !5856)
!5877 = distinct !{!5877, !5859, !5878}
!5878 = !DILocation(line: 171, column: 43, scope: !5853)
!5879 = !DILocation(line: 172, column: 15, scope: !5239)
!5880 = !DILocation(line: 172, column: 20, scope: !5239)
!5881 = !DILocation(line: 45, column: 26, scope: !5265, inlinedAt: !5266)
!5882 = !DILocation(line: 86, column: 20, scope: !5270, inlinedAt: !5272)
!5883 = !DILocation(line: 86, column: 23, scope: !5270, inlinedAt: !5272)
!5884 = !DILocation(line: 86, column: 2, scope: !5270, inlinedAt: !5272)
!5885 = !DILocation(line: 87, column: 2, scope: !5270, inlinedAt: !5272)
!5886 = !DILocation(line: 46, column: 18, scope: !5265, inlinedAt: !5266)
!5887 = !DILocation(line: 46, column: 21, scope: !5265, inlinedAt: !5266)
!5888 = !DILocation(line: 41, column: 2, scope: !5889, inlinedAt: !5264)
!5889 = distinct !DILexicalBlock(scope: !5260, file: !4889, line: 41, column: 2)
!5890 = !DILocation(line: 173, column: 27, scope: !5239)
!5891 = !DILocation(line: 173, column: 32, scope: !5239)
!5892 = !DILocation(line: 173, column: 43, scope: !5239)
!5893 = !DILocation(line: 409, column: 2, scope: !5492, inlinedAt: !5257)
!5894 = !DILocation(line: 409, column: 2, scope: !5497, inlinedAt: !5257)
!5895 = !DILocation(line: 409, column: 2, scope: !5498, inlinedAt: !5257)
!5896 = !DILocation(line: 409, column: 2, scope: !5505, inlinedAt: !5257)
!5897 = !DILocation(line: 409, column: 2, scope: !5508, inlinedAt: !5257)
!5898 = !DILocation(line: 175, column: 20, scope: !5238)
!5899 = !DILocation(line: 175, column: 26, scope: !5238)
!5900 = !DILocation(line: 199, column: 6, scope: !5232, inlinedAt: !5237)
!5901 = !DILocation(line: 141, column: 6, scope: !5403, inlinedAt: !5231)
!5902 = !DILocation(line: 0, scope: !5403, inlinedAt: !5231)
!5903 = !DILocation(line: 141, column: 6, scope: !5226, inlinedAt: !5231)
!5904 = !DILocation(line: 142, column: 29, scope: !5407, inlinedAt: !5231)
!5905 = !DILocation(line: 142, column: 8, scope: !5407, inlinedAt: !5231)
!5906 = !DILocation(line: 142, column: 7, scope: !5408, inlinedAt: !5231)
!5907 = !DILocation(line: 143, column: 18, scope: !5407, inlinedAt: !5231)
!5908 = !DILocation(line: 143, column: 22, scope: !5407, inlinedAt: !5231)
!5909 = !DILocation(line: 143, column: 4, scope: !5407, inlinedAt: !5231)
!5910 = !DILocation(line: 144, column: 12, scope: !5415, inlinedAt: !5231)
!5911 = !DILocation(line: 144, column: 12, scope: !5407, inlinedAt: !5231)
!5912 = !DILocation(line: 145, column: 4, scope: !5415, inlinedAt: !5231)
!5913 = !DILocation(line: 147, column: 4, scope: !5415, inlinedAt: !5231)
!5914 = !DILocation(line: 148, column: 3, scope: !5408, inlinedAt: !5231)
!5915 = !DILocation(line: 150, column: 6, scope: !5421, inlinedAt: !5231)
!5916 = !DILocation(line: 150, column: 6, scope: !5423, inlinedAt: !5231)
!5917 = !DILocation(line: 150, column: 6, scope: !5427, inlinedAt: !5231)
!5918 = !DILocation(line: 150, column: 6, scope: !5424, inlinedAt: !5231)
!5919 = !DILocation(line: 150, column: 6, scope: !5248, inlinedAt: !5231)
!5920 = !DILocation(line: 150, column: 6, scope: !5226, inlinedAt: !5231)
!5921 = !DILocation(line: 151, column: 3, scope: !5248, inlinedAt: !5231)
!5922 = !DILocation(line: 152, column: 20, scope: !5226, inlinedAt: !5231)
!5923 = !DILocation(line: 152, column: 26, scope: !5226, inlinedAt: !5231)
!5924 = !DILocation(line: 152, column: 33, scope: !5226, inlinedAt: !5231)
!5925 = !DILocation(line: 152, column: 2, scope: !5226, inlinedAt: !5231)
!5926 = !DILocation(line: 153, column: 2, scope: !5226, inlinedAt: !5231)
!5927 = !DILocation(line: 154, column: 1, scope: !5226, inlinedAt: !5231)
!5928 = !DILocation(line: 199, column: 6, scope: !5234, inlinedAt: !5237)
!5929 = !DILocation(line: 200, column: 21, scope: !5232, inlinedAt: !5237)
!5930 = !DILocation(line: 200, column: 25, scope: !5232, inlinedAt: !5237)
!5931 = !DILocation(line: 200, column: 31, scope: !5232, inlinedAt: !5237)
!5932 = !DILocation(line: 200, column: 7, scope: !5232, inlinedAt: !5237)
!5933 = !DILocation(line: 200, column: 5, scope: !5232, inlinedAt: !5237)
!5934 = !DILocation(line: 200, column: 3, scope: !5232, inlinedAt: !5237)
!5935 = !DILocation(line: 201, column: 9, scope: !5234, inlinedAt: !5237)
!5936 = !DILocation(line: 175, column: 7, scope: !5238)
!5937 = !DILocation(line: 175, column: 7, scope: !5239)
!5938 = !DILocation(line: 176, column: 4, scope: !5238)
!5939 = !DILocation(line: 177, column: 3, scope: !5239)
!5940 = !DILocation(line: 179, column: 3, scope: !5210)
!5941 = !DILocation(line: 179, column: 3, scope: !5224)
!5942 = !DILocalVariable(name: "__dummy", scope: !5943, file: !3, line: 179, type: !124)
!5943 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 179, column: 3)
!5944 = !DILocation(line: 179, column: 3, scope: !5943)
!5945 = !DILocalVariable(name: "__dummy2", scope: !5943, file: !3, line: 179, type: !124)
!5946 = !DILocation(line: 179, column: 3, scope: !5223)
!5947 = !DILocation(line: 179, column: 3, scope: !5222)
!5948 = !DILocation(line: 179, column: 3, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 179, column: 3)
!5950 = !DILocalVariable(name: "__dummy", scope: !5951, file: !3, line: 179, type: !124)
!5951 = distinct !DILexicalBlock(scope: !5952, file: !3, line: 179, column: 3)
!5952 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 179, column: 3)
!5953 = !DILocation(line: 179, column: 3, scope: !5951)
!5954 = !DILocalVariable(name: "__dummy2", scope: !5951, file: !3, line: 179, type: !124)
!5955 = !DILocation(line: 179, column: 3, scope: !5952)
!5956 = !DILocation(line: 179, column: 3, scope: !5221)
!5957 = !{i32 -2141579352}
!5958 = !DILocation(line: 179, column: 3, scope: !5220)
!5959 = !DILocation(line: 329, column: 10, scope: !4309, inlinedAt: !5219)
!5960 = !DILocation(line: 329, column: 16, scope: !4309, inlinedAt: !5219)
!5961 = !DILocation(line: 180, column: 7, scope: !5216)
!5962 = !DILocation(line: 180, column: 12, scope: !5216)
!5963 = !DILocation(line: 180, column: 19, scope: !5216)
!5964 = !DILocation(line: 180, column: 7, scope: !5210)
!5965 = !DILocation(line: 181, column: 4, scope: !5215)
!5966 = !DILocation(line: 183, column: 28, scope: !5215)
!5967 = !DILocation(line: 183, column: 33, scope: !5215)
!5968 = !DILocation(line: 183, column: 44, scope: !5215)
!5969 = !DILocation(line: 409, column: 2, scope: !5492, inlinedAt: !5214)
!5970 = !DILocation(line: 409, column: 2, scope: !5497, inlinedAt: !5214)
!5971 = !DILocation(line: 409, column: 2, scope: !5498, inlinedAt: !5214)
!5972 = !DILocation(line: 409, column: 2, scope: !5505, inlinedAt: !5214)
!5973 = !DILocation(line: 409, column: 2, scope: !5508, inlinedAt: !5214)
!5974 = !DILocation(line: 184, column: 4, scope: !5215)
!5975 = !DILocation(line: 186, column: 3, scope: !5210)
!5976 = !DILocation(line: 186, column: 8, scope: !5210)
!5977 = !DILocation(line: 186, column: 15, scope: !5210)
!5978 = !DILocation(line: 187, column: 27, scope: !5210)
!5979 = !DILocation(line: 187, column: 32, scope: !5210)
!5980 = !DILocation(line: 187, column: 43, scope: !5210)
!5981 = !DILocation(line: 409, column: 2, scope: !5492, inlinedAt: !5209)
!5982 = !DILocation(line: 409, column: 2, scope: !5497, inlinedAt: !5209)
!5983 = !DILocation(line: 409, column: 2, scope: !5498, inlinedAt: !5209)
!5984 = !DILocation(line: 409, column: 2, scope: !5505, inlinedAt: !5209)
!5985 = !DILocation(line: 409, column: 2, scope: !5508, inlinedAt: !5209)
!5986 = !DILocation(line: 188, column: 3, scope: !5210)
!5987 = !DILocation(line: 190, column: 3, scope: !5210)
!5988 = !DILocation(line: 193, column: 2, scope: !5203)
!5989 = !DILocation(line: 194, column: 1, scope: !5203)
!5990 = distinct !DISubprogram(name: "phantom_open", scope: !3, file: !3, line: 210, type: !2898, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!5991 = !DILocation(line: 39, column: 55, scope: !5260, inlinedAt: !5992)
!5992 = distinct !DILocation(line: 46, column: 2, scope: !5265, inlinedAt: !5993)
!5993 = distinct !DILocation(line: 233, column: 2, scope: !5990)
!5994 = !DILocation(line: 39, column: 62, scope: !5260, inlinedAt: !5992)
!5995 = !DILocation(line: 84, column: 74, scope: !5270, inlinedAt: !5996)
!5996 = distinct !DILocation(line: 45, column: 2, scope: !5265, inlinedAt: !5993)
!5997 = !DILocation(line: 84, column: 84, scope: !5270, inlinedAt: !5996)
!5998 = !DILocation(line: 43, column: 22, scope: !5265, inlinedAt: !5993)
!5999 = !DILocation(line: 43, column: 29, scope: !5265, inlinedAt: !5993)
!6000 = !DILocalVariable(name: "inode", arg: 1, scope: !5990, file: !3, line: 210, type: !368)
!6001 = !DILocation(line: 210, column: 39, scope: !5990)
!6002 = !DILocalVariable(name: "file", arg: 2, scope: !5990, file: !3, line: 210, type: !295)
!6003 = !DILocation(line: 210, column: 59, scope: !5990)
!6004 = !DILocalVariable(name: "dev", scope: !5990, file: !3, line: 212, type: !126)
!6005 = !DILocation(line: 212, column: 25, scope: !5990)
!6006 = !DILocalVariable(name: "__mptr", scope: !6007, file: !3, line: 212, type: !114)
!6007 = distinct !DILexicalBlock(scope: !5990, file: !3, line: 212, column: 31)
!6008 = !DILocation(line: 212, column: 31, scope: !6007)
!6009 = !DILocation(line: 212, column: 31, scope: !6010)
!6010 = distinct !DILexicalBlock(scope: !6007, file: !3, line: 212, column: 31)
!6011 = !DILocation(line: 215, column: 2, scope: !5990)
!6012 = !DILocation(line: 216, column: 19, scope: !5990)
!6013 = !DILocation(line: 216, column: 26, scope: !5990)
!6014 = !DILocation(line: 216, column: 2, scope: !5990)
!6015 = !DILocation(line: 218, column: 32, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !5990, file: !3, line: 218, column: 6)
!6017 = !DILocation(line: 218, column: 37, scope: !6016)
!6018 = !DILocation(line: 218, column: 6, scope: !6016)
!6019 = !DILocation(line: 218, column: 6, scope: !5990)
!6020 = !DILocation(line: 219, column: 3, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 218, column: 49)
!6022 = !DILocation(line: 220, column: 3, scope: !6021)
!6023 = !DILocation(line: 223, column: 6, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !5990, file: !3, line: 223, column: 6)
!6025 = !DILocation(line: 223, column: 11, scope: !6024)
!6026 = !DILocation(line: 223, column: 6, scope: !5990)
!6027 = !DILocation(line: 224, column: 17, scope: !6028)
!6028 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 223, column: 19)
!6029 = !DILocation(line: 224, column: 22, scope: !6028)
!6030 = !DILocation(line: 224, column: 3, scope: !6028)
!6031 = !DILocation(line: 225, column: 3, scope: !6028)
!6032 = !DILocation(line: 226, column: 3, scope: !6028)
!6033 = !DILocalVariable(name: "__ret_warn_on", scope: !6034, file: !3, line: 229, type: !123)
!6034 = distinct !DILexicalBlock(scope: !5990, file: !3, line: 229, column: 2)
!6035 = !DILocation(line: 229, column: 2, scope: !6034)
!6036 = !DILocation(line: 229, column: 2, scope: !6037)
!6037 = distinct !DILexicalBlock(scope: !6034, file: !3, line: 229, column: 2)
!6038 = !DILocation(line: 229, column: 2, scope: !6039)
!6039 = distinct !DILexicalBlock(scope: !6037, file: !3, line: 229, column: 2)
!6040 = !DILocation(line: 229, column: 2, scope: !6041)
!6041 = distinct !DILexicalBlock(scope: !6039, file: !3, line: 229, column: 2)
!6042 = !DILocation(line: 229, column: 2, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !6039, file: !3, line: 229, column: 2)
!6044 = !{i32 -2141577096, i32 -2141577067, i32 -2141577021, i32 -2141576963, i32 -2141576909, i32 -2141576855, i32 -2141576800, i32 -2141576769}
!6045 = !DILocation(line: 229, column: 2, scope: !6046)
!6046 = distinct !DILexicalBlock(scope: !6039, file: !3, line: 229, column: 2)
!6047 = !{i32 -2141572304, i32 -2141572297, i32 -2141572245, i32 -2141572214, i32 -2141572184}
!6048 = !DILocation(line: 229, column: 2, scope: !6049)
!6049 = distinct !DILexicalBlock(scope: !6039, file: !3, line: 229, column: 2)
!6050 = !DILocation(line: 231, column: 23, scope: !5990)
!6051 = !DILocation(line: 231, column: 2, scope: !5990)
!6052 = !DILocation(line: 231, column: 8, scope: !5990)
!6053 = !DILocation(line: 231, column: 21, scope: !5990)
!6054 = !DILocation(line: 233, column: 14, scope: !5990)
!6055 = !DILocation(line: 233, column: 19, scope: !5990)
!6056 = !DILocation(line: 45, column: 26, scope: !5265, inlinedAt: !5993)
!6057 = !DILocation(line: 86, column: 20, scope: !5270, inlinedAt: !5996)
!6058 = !DILocation(line: 86, column: 23, scope: !5270, inlinedAt: !5996)
!6059 = !DILocation(line: 86, column: 2, scope: !5270, inlinedAt: !5996)
!6060 = !DILocation(line: 87, column: 2, scope: !5270, inlinedAt: !5996)
!6061 = !DILocation(line: 46, column: 18, scope: !5265, inlinedAt: !5993)
!6062 = !DILocation(line: 46, column: 21, scope: !5265, inlinedAt: !5993)
!6063 = !DILocation(line: 41, column: 2, scope: !5889, inlinedAt: !5992)
!6064 = !DILocation(line: 234, column: 2, scope: !5990)
!6065 = !DILocation(line: 234, column: 7, scope: !5990)
!6066 = !DILocation(line: 234, column: 13, scope: !5990)
!6067 = !DILocation(line: 235, column: 16, scope: !5990)
!6068 = !DILocation(line: 235, column: 21, scope: !5990)
!6069 = !DILocation(line: 235, column: 2, scope: !5990)
!6070 = !DILocation(line: 236, column: 2, scope: !5990)
!6071 = !DILocation(line: 237, column: 2, scope: !5990)
!6072 = !DILocation(line: 238, column: 1, scope: !5990)
!6073 = distinct !DISubprogram(name: "phantom_release", scope: !3, file: !3, line: 240, type: !2898, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!6074 = !DILocalVariable(name: "inode", arg: 1, scope: !6073, file: !3, line: 240, type: !368)
!6075 = !DILocation(line: 240, column: 42, scope: !6073)
!6076 = !DILocalVariable(name: "file", arg: 2, scope: !6073, file: !3, line: 240, type: !295)
!6077 = !DILocation(line: 240, column: 62, scope: !6073)
!6078 = !DILocalVariable(name: "dev", scope: !6073, file: !3, line: 242, type: !126)
!6079 = !DILocation(line: 242, column: 25, scope: !6073)
!6080 = !DILocation(line: 242, column: 31, scope: !6073)
!6081 = !DILocation(line: 242, column: 37, scope: !6073)
!6082 = !DILocation(line: 244, column: 14, scope: !6073)
!6083 = !DILocation(line: 244, column: 19, scope: !6073)
!6084 = !DILocation(line: 244, column: 2, scope: !6073)
!6085 = !DILocation(line: 246, column: 2, scope: !6073)
!6086 = !DILocation(line: 246, column: 7, scope: !6073)
!6087 = !DILocation(line: 246, column: 14, scope: !6073)
!6088 = !DILocation(line: 247, column: 17, scope: !6073)
!6089 = !DILocation(line: 247, column: 22, scope: !6073)
!6090 = !DILocation(line: 247, column: 27, scope: !6073)
!6091 = !DILocation(line: 247, column: 34, scope: !6073)
!6092 = !DILocation(line: 247, column: 2, scope: !6073)
!6093 = !DILocation(line: 248, column: 2, scope: !6073)
!6094 = !DILocation(line: 248, column: 7, scope: !6073)
!6095 = !DILocation(line: 248, column: 14, scope: !6073)
!6096 = !DILocation(line: 250, column: 16, scope: !6073)
!6097 = !DILocation(line: 250, column: 21, scope: !6073)
!6098 = !DILocation(line: 250, column: 2, scope: !6073)
!6099 = !DILocation(line: 252, column: 2, scope: !6073)
!6100 = distinct !DISubprogram(name: "poll_wait", scope: !2877, file: !2877, line: 48, type: !6101, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!6101 = !DISubroutineType(types: !6102)
!6102 = !{null, !295, !2884, !5137}
!6103 = !DILocalVariable(name: "filp", arg: 1, scope: !6100, file: !2877, line: 48, type: !295)
!6104 = !DILocation(line: 48, column: 44, scope: !6100)
!6105 = !DILocalVariable(name: "wait_address", arg: 2, scope: !6100, file: !2877, line: 48, type: !2884)
!6106 = !DILocation(line: 48, column: 70, scope: !6100)
!6107 = !DILocalVariable(name: "p", arg: 3, scope: !6100, file: !2877, line: 48, type: !5137)
!6108 = !DILocation(line: 48, column: 96, scope: !6100)
!6109 = !DILocation(line: 50, column: 6, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6100, file: !2877, line: 50, column: 6)
!6111 = !DILocation(line: 50, column: 8, scope: !6110)
!6112 = !DILocation(line: 50, column: 11, scope: !6110)
!6113 = !DILocation(line: 50, column: 14, scope: !6110)
!6114 = !DILocation(line: 50, column: 21, scope: !6110)
!6115 = !DILocation(line: 50, column: 24, scope: !6110)
!6116 = !DILocation(line: 50, column: 6, scope: !6100)
!6117 = !DILocation(line: 51, column: 3, scope: !6110)
!6118 = !DILocation(line: 51, column: 6, scope: !6110)
!6119 = !DILocation(line: 51, column: 13, scope: !6110)
!6120 = !DILocation(line: 51, column: 19, scope: !6110)
!6121 = !DILocation(line: 51, column: 33, scope: !6110)
!6122 = !DILocation(line: 52, column: 1, scope: !6100)
!6123 = distinct !DISubprogram(name: "kasan_check_read", scope: !6124, file: !6124, line: 34, type: !6125, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!6124 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6125 = !DISubroutineType(types: !6126)
!6126 = !{!429, !4903, !7}
!6127 = !DILocalVariable(name: "p", arg: 1, scope: !6123, file: !6124, line: 34, type: !4903)
!6128 = !DILocation(line: 34, column: 58, scope: !6123)
!6129 = !DILocalVariable(name: "size", arg: 2, scope: !6123, file: !6124, line: 34, type: !7)
!6130 = !DILocation(line: 34, column: 74, scope: !6123)
!6131 = !DILocation(line: 36, column: 2, scope: !6123)
!6132 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6133, file: !6133, line: 178, type: !6134, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!6133 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6134 = !DISubroutineType(types: !6135)
!6135 = !{null, !4903, !265, !123}
!6136 = !DILocalVariable(name: "ptr", arg: 1, scope: !6132, file: !6133, line: 178, type: !4903)
!6137 = !DILocation(line: 178, column: 60, scope: !6132)
!6138 = !DILocalVariable(name: "size", arg: 2, scope: !6132, file: !6133, line: 178, type: !265)
!6139 = !DILocation(line: 178, column: 72, scope: !6132)
!6140 = !DILocalVariable(name: "type", arg: 3, scope: !6132, file: !6133, line: 179, type: !123)
!6141 = !DILocation(line: 179, column: 15, scope: !6132)
!6142 = !DILocation(line: 179, column: 23, scope: !6132)
!6143 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !6144, file: !6144, line: 666, type: !6145, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!6144 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!6145 = !DISubroutineType(types: !6146)
!6146 = !{!124}
!6147 = !DILocalVariable(name: "f", scope: !6143, file: !6144, line: 668, type: !124)
!6148 = !DILocation(line: 668, column: 16, scope: !6143)
!6149 = !DILocation(line: 670, column: 6, scope: !6143)
!6150 = !DILocation(line: 670, column: 4, scope: !6143)
!6151 = !DILocation(line: 671, column: 2, scope: !6143)
!6152 = !DILocation(line: 672, column: 9, scope: !6143)
!6153 = !DILocation(line: 672, column: 2, scope: !6143)
!6154 = distinct !DISubprogram(name: "phantom_status", scope: !3, file: !3, line: 62, type: !6155, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!6155 = !DISubroutineType(types: !6156)
!6156 = !{!123, !126, !124}
!6157 = !DILocation(line: 39, column: 55, scope: !5260, inlinedAt: !6158)
!6158 = distinct !DILocation(line: 46, column: 2, scope: !5265, inlinedAt: !6159)
!6159 = distinct !DILocation(line: 67, column: 3, scope: !6160)
!6160 = distinct !DILexicalBlock(scope: !6161, file: !3, line: 66, column: 63)
!6161 = distinct !DILexicalBlock(scope: !6154, file: !3, line: 66, column: 6)
!6162 = !DILocation(line: 39, column: 62, scope: !5260, inlinedAt: !6158)
!6163 = !DILocation(line: 84, column: 74, scope: !5270, inlinedAt: !6164)
!6164 = distinct !DILocation(line: 45, column: 2, scope: !5265, inlinedAt: !6159)
!6165 = !DILocation(line: 84, column: 84, scope: !5270, inlinedAt: !6164)
!6166 = !DILocation(line: 43, column: 22, scope: !5265, inlinedAt: !6159)
!6167 = !DILocation(line: 43, column: 29, scope: !5265, inlinedAt: !6159)
!6168 = !DILocalVariable(name: "dev", arg: 1, scope: !6154, file: !3, line: 62, type: !126)
!6169 = !DILocation(line: 62, column: 50, scope: !6154)
!6170 = !DILocalVariable(name: "newstat", arg: 2, scope: !6154, file: !3, line: 62, type: !124)
!6171 = !DILocation(line: 62, column: 69, scope: !6154)
!6172 = !DILocation(line: 64, column: 2, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !6174, file: !3, line: 64, column: 2)
!6174 = distinct !DILexicalBlock(scope: !6154, file: !3, line: 64, column: 2)
!6175 = !DILocation(line: 64, column: 2, scope: !6174)
!6176 = !DILocation(line: 66, column: 8, scope: !6161)
!6177 = !DILocation(line: 66, column: 13, scope: !6161)
!6178 = !DILocation(line: 66, column: 20, scope: !6161)
!6179 = !DILocation(line: 66, column: 35, scope: !6161)
!6180 = !DILocation(line: 66, column: 39, scope: !6161)
!6181 = !DILocation(line: 66, column: 47, scope: !6161)
!6182 = !DILocation(line: 66, column: 6, scope: !6154)
!6183 = !DILocation(line: 67, column: 15, scope: !6160)
!6184 = !DILocation(line: 67, column: 20, scope: !6160)
!6185 = !DILocation(line: 45, column: 26, scope: !5265, inlinedAt: !6159)
!6186 = !DILocation(line: 86, column: 20, scope: !5270, inlinedAt: !6164)
!6187 = !DILocation(line: 86, column: 23, scope: !5270, inlinedAt: !6164)
!6188 = !DILocation(line: 86, column: 2, scope: !5270, inlinedAt: !6164)
!6189 = !DILocation(line: 87, column: 2, scope: !5270, inlinedAt: !6164)
!6190 = !DILocation(line: 46, column: 18, scope: !5265, inlinedAt: !6159)
!6191 = !DILocation(line: 46, column: 21, scope: !5265, inlinedAt: !6159)
!6192 = !DILocation(line: 41, column: 2, scope: !5889, inlinedAt: !6158)
!6193 = !DILocation(line: 68, column: 26, scope: !6160)
!6194 = !DILocation(line: 68, column: 31, scope: !6160)
!6195 = !DILocation(line: 68, column: 37, scope: !6160)
!6196 = !DILocation(line: 68, column: 3, scope: !6160)
!6197 = !DILocation(line: 69, column: 19, scope: !6160)
!6198 = !DILocation(line: 69, column: 24, scope: !6160)
!6199 = !DILocation(line: 69, column: 30, scope: !6160)
!6200 = !DILocation(line: 69, column: 3, scope: !6160)
!6201 = !DILocation(line: 70, column: 12, scope: !6160)
!6202 = !DILocation(line: 70, column: 17, scope: !6160)
!6203 = !DILocation(line: 70, column: 23, scope: !6160)
!6204 = !DILocation(line: 70, column: 3, scope: !6160)
!6205 = !DILocation(line: 71, column: 2, scope: !6160)
!6206 = !DILocation(line: 71, column: 14, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6161, file: !3, line: 71, column: 13)
!6208 = !DILocation(line: 71, column: 19, scope: !6207)
!6209 = !DILocation(line: 71, column: 26, scope: !6207)
!6210 = !DILocation(line: 71, column: 41, scope: !6207)
!6211 = !DILocation(line: 71, column: 46, scope: !6207)
!6212 = !DILocation(line: 71, column: 54, scope: !6207)
!6213 = !DILocation(line: 71, column: 13, scope: !6161)
!6214 = !DILocation(line: 72, column: 16, scope: !6215)
!6215 = distinct !DILexicalBlock(scope: !6207, file: !3, line: 71, column: 70)
!6216 = !DILocation(line: 72, column: 21, scope: !6215)
!6217 = !DILocation(line: 72, column: 27, scope: !6215)
!6218 = !DILocation(line: 72, column: 3, scope: !6215)
!6219 = !DILocation(line: 73, column: 12, scope: !6215)
!6220 = !DILocation(line: 73, column: 17, scope: !6215)
!6221 = !DILocation(line: 73, column: 23, scope: !6215)
!6222 = !DILocation(line: 73, column: 3, scope: !6215)
!6223 = !DILocation(line: 74, column: 2, scope: !6215)
!6224 = !DILocation(line: 76, column: 16, scope: !6154)
!6225 = !DILocation(line: 76, column: 2, scope: !6154)
!6226 = !DILocation(line: 76, column: 7, scope: !6154)
!6227 = !DILocation(line: 76, column: 14, scope: !6154)
!6228 = !DILocation(line: 78, column: 2, scope: !6154)
!6229 = distinct !DISubprogram(name: "copy_overflow", scope: !5227, file: !5227, line: 132, type: !6230, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!6230 = !DISubroutineType(types: !6231)
!6231 = !{null, !123, !124}
!6232 = !DILocalVariable(name: "size", arg: 1, scope: !6229, file: !5227, line: 132, type: !123)
!6233 = !DILocation(line: 132, column: 38, scope: !6229)
!6234 = !DILocalVariable(name: "count", arg: 2, scope: !6229, file: !5227, line: 132, type: !124)
!6235 = !DILocation(line: 132, column: 58, scope: !6229)
!6236 = !DILocalVariable(name: "__ret_warn_on", scope: !6237, file: !5227, line: 134, type: !123)
!6237 = distinct !DILexicalBlock(scope: !6229, file: !5227, line: 134, column: 2)
!6238 = !DILocation(line: 134, column: 2, scope: !6237)
!6239 = !DILocation(line: 134, column: 2, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6237, file: !5227, line: 134, column: 2)
!6241 = !DILocation(line: 134, column: 2, scope: !6242)
!6242 = distinct !DILexicalBlock(scope: !6240, file: !5227, line: 134, column: 2)
!6243 = !DILocation(line: 134, column: 2, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6242, file: !5227, line: 134, column: 2)
!6245 = !DILocation(line: 134, column: 2, scope: !6246)
!6246 = distinct !DILexicalBlock(scope: !6242, file: !5227, line: 134, column: 2)
!6247 = !DILocation(line: 134, column: 2, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6246, file: !5227, line: 134, column: 2)
!6249 = !DILocation(line: 134, column: 2, scope: !6250)
!6250 = distinct !DILexicalBlock(scope: !6246, file: !5227, line: 134, column: 2)
!6251 = !{i32 -2145614595, i32 -2145614566, i32 -2145614520, i32 -2145614462, i32 -2145614408, i32 -2145614354, i32 -2145614299, i32 -2145614268}
!6252 = !DILocation(line: 134, column: 2, scope: !6253)
!6253 = distinct !DILexicalBlock(scope: !6246, file: !5227, line: 134, column: 2)
!6254 = !{i32 -2145613848, i32 -2145613841, i32 -2145613789, i32 -2145613758, i32 -2145613728}
!6255 = !DILocation(line: 134, column: 2, scope: !6256)
!6256 = distinct !DILexicalBlock(scope: !6246, file: !5227, line: 134, column: 2)
!6257 = !DILocation(line: 134, column: 2, scope: !6258)
!6258 = distinct !DILexicalBlock(scope: !6242, file: !5227, line: 134, column: 2)
!6259 = !DILocation(line: 135, column: 1, scope: !6229)
!6260 = distinct !DISubprogram(name: "check_object_size", scope: !5227, file: !5227, line: 122, type: !6261, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!6261 = !DISubroutineType(types: !6262)
!6262 = !{null, !2097, !124, !429}
!6263 = !DILocalVariable(name: "ptr", arg: 1, scope: !6260, file: !5227, line: 122, type: !2097)
!6264 = !DILocation(line: 122, column: 50, scope: !6260)
!6265 = !DILocalVariable(name: "n", arg: 2, scope: !6260, file: !5227, line: 122, type: !124)
!6266 = !DILocation(line: 122, column: 69, scope: !6260)
!6267 = !DILocalVariable(name: "to_user", arg: 3, scope: !6260, file: !5227, line: 123, type: !429)
!6268 = !DILocation(line: 123, column: 15, scope: !6260)
!6269 = !DILocation(line: 124, column: 3, scope: !6260)
!6270 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !6144, file: !6144, line: 646, type: !6145, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!6271 = !DILocalVariable(name: "__ret", scope: !6272, file: !6144, line: 648, type: !124)
!6272 = distinct !DILexicalBlock(scope: !6270, file: !6144, line: 648, column: 9)
!6273 = !DILocation(line: 648, column: 9, scope: !6272)
!6274 = !DILocalVariable(name: "__edi", scope: !6272, file: !6144, line: 648, type: !124)
!6275 = !DILocalVariable(name: "__esi", scope: !6272, file: !6144, line: 648, type: !124)
!6276 = !DILocalVariable(name: "__edx", scope: !6272, file: !6144, line: 648, type: !124)
!6277 = !DILocalVariable(name: "__ecx", scope: !6272, file: !6144, line: 648, type: !124)
!6278 = !DILocalVariable(name: "__eax", scope: !6272, file: !6144, line: 648, type: !124)
!6279 = !DILocation(line: 648, column: 9, scope: !6280)
!6280 = distinct !DILexicalBlock(scope: !6281, file: !6144, line: 648, column: 9)
!6281 = distinct !DILexicalBlock(scope: !6272, file: !6144, line: 648, column: 9)
!6282 = !{i32 -2145857633, i32 -2145855318, i32 -2145855084, i32 -2145855033, i32 -2145855005, i32 -2145854980, i32 -2145855296, i32 -2145855283, i32 -2145854845, i32 -2145854726, i32 -2145855191, i32 -2145855164, i32 -2145855136, i32 -2145855106}
!6283 = !DILocalVariable(name: "__mask", scope: !6284, file: !6144, line: 648, type: !124)
!6284 = distinct !DILexicalBlock(scope: !6280, file: !6144, line: 648, column: 9)
!6285 = !DILocation(line: 648, column: 9, scope: !6284)
!6286 = !DILocation(line: 648, column: 9, scope: !6281)
!6287 = !DILocation(line: 648, column: 2, scope: !6270)
!6288 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !6144, file: !6144, line: 656, type: !1850, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!6289 = !DILocalVariable(name: "__edi", scope: !6290, file: !6144, line: 658, type: !124)
!6290 = distinct !DILexicalBlock(scope: !6288, file: !6144, line: 658, column: 2)
!6291 = !DILocation(line: 658, column: 2, scope: !6290)
!6292 = !DILocalVariable(name: "__esi", scope: !6290, file: !6144, line: 658, type: !124)
!6293 = !DILocalVariable(name: "__edx", scope: !6290, file: !6144, line: 658, type: !124)
!6294 = !DILocalVariable(name: "__ecx", scope: !6290, file: !6144, line: 658, type: !124)
!6295 = !DILocalVariable(name: "__eax", scope: !6290, file: !6144, line: 658, type: !124)
!6296 = !{i32 -2145850539, i32 -2145849807, i32 -2145849573, i32 -2145849522, i32 -2145849494, i32 -2145849469, i32 -2145849785, i32 -2145849772, i32 -2145849334, i32 -2145849215, i32 -2145849680, i32 -2145849653, i32 -2145849625, i32 -2145849595}
!6297 = !DILocation(line: 659, column: 1, scope: !6288)
!6298 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !6144, file: !6144, line: 651, type: !6299, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!6299 = !DISubroutineType(types: !6300)
!6300 = !{null, !124}
!6301 = !DILocalVariable(name: "f", arg: 1, scope: !6298, file: !6144, line: 651, type: !124)
!6302 = !DILocation(line: 651, column: 65, scope: !6298)
!6303 = !DILocalVariable(name: "__edi", scope: !6304, file: !6144, line: 653, type: !124)
!6304 = distinct !DILexicalBlock(scope: !6298, file: !6144, line: 653, column: 2)
!6305 = !DILocation(line: 653, column: 2, scope: !6304)
!6306 = !DILocalVariable(name: "__esi", scope: !6304, file: !6144, line: 653, type: !124)
!6307 = !DILocalVariable(name: "__edx", scope: !6304, file: !6144, line: 653, type: !124)
!6308 = !DILocalVariable(name: "__ecx", scope: !6304, file: !6144, line: 653, type: !124)
!6309 = !DILocalVariable(name: "__eax", scope: !6304, file: !6144, line: 653, type: !124)
!6310 = !{i32 -2145853166, i32 -2145852416, i32 -2145852182, i32 -2145852131, i32 -2145852103, i32 -2145852078, i32 -2145852394, i32 -2145852381, i32 -2145851943, i32 -2145851824, i32 -2145852289, i32 -2145852262, i32 -2145852234, i32 -2145852204}
!6311 = !DILocation(line: 654, column: 1, scope: !6298)
!6312 = distinct !DISubprogram(name: "kasan_check_write", scope: !6124, file: !6124, line: 38, type: !6125, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!6313 = !DILocalVariable(name: "p", arg: 1, scope: !6312, file: !6124, line: 38, type: !4903)
!6314 = !DILocation(line: 38, column: 59, scope: !6312)
!6315 = !DILocalVariable(name: "size", arg: 2, scope: !6312, file: !6124, line: 38, type: !7)
!6316 = !DILocation(line: 38, column: 75, scope: !6312)
!6317 = !DILocation(line: 40, column: 2, scope: !6312)
!6318 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !6319, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!6319 = !DISubroutineType(types: !6320)
!6320 = !{null, !3440, !114}
!6321 = !DILocalVariable(name: "dev", arg: 1, scope: !6318, file: !73, line: 660, type: !3440)
!6322 = !DILocation(line: 660, column: 51, scope: !6318)
!6323 = !DILocalVariable(name: "data", arg: 2, scope: !6318, file: !73, line: 660, type: !114)
!6324 = !DILocation(line: 660, column: 62, scope: !6318)
!6325 = !DILocation(line: 662, column: 21, scope: !6318)
!6326 = !DILocation(line: 662, column: 2, scope: !6318)
!6327 = !DILocation(line: 662, column: 7, scope: !6318)
!6328 = !DILocation(line: 662, column: 19, scope: !6318)
!6329 = !DILocation(line: 663, column: 1, scope: !6318)
!6330 = distinct !DISubprogram(name: "pci_get_drvdata", scope: !3366, file: !3366, line: 1865, type: !6331, scopeLine: 1866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!6331 = !DISubroutineType(types: !6332)
!6332 = !{!114, !3364}
!6333 = !DILocalVariable(name: "pdev", arg: 1, scope: !6330, file: !3366, line: 1865, type: !3364)
!6334 = !DILocation(line: 1865, column: 53, scope: !6330)
!6335 = !DILocation(line: 1867, column: 26, scope: !6330)
!6336 = !DILocation(line: 1867, column: 32, scope: !6330)
!6337 = !DILocation(line: 1867, column: 9, scope: !6330)
!6338 = !DILocation(line: 1867, column: 2, scope: !6330)
!6339 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !6340, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!6340 = !DISubroutineType(types: !6341)
!6341 = !{!114, !3781}
!6342 = !DILocalVariable(name: "dev", arg: 1, scope: !6339, file: !73, line: 655, type: !3781)
!6343 = !DILocation(line: 655, column: 58, scope: !6339)
!6344 = !DILocation(line: 657, column: 9, scope: !6339)
!6345 = !DILocation(line: 657, column: 14, scope: !6339)
!6346 = !DILocation(line: 657, column: 2, scope: !6339)
!6347 = distinct !DISubprogram(name: "phantom_suspend", scope: !3, file: !3, line: 460, type: !3476, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!6348 = !DILocalVariable(name: "dev_d", arg: 1, scope: !6347, file: !3, line: 460, type: !3440)
!6349 = !DILocation(line: 460, column: 58, scope: !6347)
!6350 = !DILocalVariable(name: "dev", scope: !6347, file: !3, line: 462, type: !126)
!6351 = !DILocation(line: 462, column: 25, scope: !6347)
!6352 = !DILocation(line: 462, column: 47, scope: !6347)
!6353 = !DILocation(line: 462, column: 31, scope: !6347)
!6354 = !DILocation(line: 464, column: 15, scope: !6347)
!6355 = !DILocation(line: 464, column: 20, scope: !6347)
!6356 = !DILocation(line: 464, column: 26, scope: !6347)
!6357 = !DILocation(line: 464, column: 2, scope: !6347)
!6358 = !DILocation(line: 465, column: 11, scope: !6347)
!6359 = !DILocation(line: 465, column: 16, scope: !6347)
!6360 = !DILocation(line: 465, column: 22, scope: !6347)
!6361 = !DILocation(line: 465, column: 2, scope: !6347)
!6362 = !DILocalVariable(name: "__mptr", scope: !6363, file: !3, line: 467, type: !114)
!6363 = distinct !DILexicalBlock(scope: !6347, file: !3, line: 467, column: 18)
!6364 = !DILocation(line: 467, column: 18, scope: !6363)
!6365 = !DILocation(line: 467, column: 18, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6363, file: !3, line: 467, column: 18)
!6367 = !DILocation(line: 467, column: 37, scope: !6347)
!6368 = !DILocation(line: 467, column: 2, scope: !6347)
!6369 = !DILocation(line: 469, column: 2, scope: !6347)
!6370 = distinct !DISubprogram(name: "phantom_resume", scope: !3, file: !3, line: 472, type: !3476, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!6371 = !DILocalVariable(name: "dev_d", arg: 1, scope: !6370, file: !3, line: 472, type: !3440)
!6372 = !DILocation(line: 472, column: 57, scope: !6370)
!6373 = !DILocalVariable(name: "dev", scope: !6370, file: !3, line: 474, type: !126)
!6374 = !DILocation(line: 474, column: 25, scope: !6370)
!6375 = !DILocation(line: 474, column: 47, scope: !6370)
!6376 = !DILocation(line: 474, column: 31, scope: !6370)
!6377 = !DILocation(line: 476, column: 15, scope: !6370)
!6378 = !DILocation(line: 476, column: 20, scope: !6370)
!6379 = !DILocation(line: 476, column: 26, scope: !6370)
!6380 = !DILocation(line: 476, column: 2, scope: !6370)
!6381 = !DILocation(line: 478, column: 2, scope: !6370)
!6382 = distinct !DISubprogram(name: "PTR_ERR", scope: !5042, file: !5042, line: 29, type: !6383, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!6383 = !DISubroutineType(types: !6384)
!6384 = !{!253, !2097}
!6385 = !DILocalVariable(name: "ptr", arg: 1, scope: !6382, file: !5042, line: 29, type: !2097)
!6386 = !DILocation(line: 29, column: 61, scope: !6382)
!6387 = !DILocation(line: 31, column: 16, scope: !6382)
!6388 = !DILocation(line: 31, column: 9, scope: !6382)
!6389 = !DILocation(line: 31, column: 2, scope: !6382)
!6390 = distinct !DISubprogram(name: "class_create_file", scope: !3849, file: !3849, line: 213, type: !6391, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!6391 = !DISubroutineType(types: !6392)
!6392 = !{!123, !3847, !4235}
!6393 = !DILocalVariable(name: "class", arg: 1, scope: !6390, file: !3849, line: 213, type: !3847)
!6394 = !DILocation(line: 213, column: 64, scope: !6390)
!6395 = !DILocalVariable(name: "attr", arg: 2, scope: !6390, file: !3849, line: 214, type: !4235)
!6396 = !DILocation(line: 214, column: 36, scope: !6390)
!6397 = !DILocation(line: 216, column: 30, scope: !6390)
!6398 = !DILocation(line: 216, column: 37, scope: !6390)
!6399 = !DILocation(line: 216, column: 9, scope: !6390)
!6400 = !DILocation(line: 216, column: 2, scope: !6390)
