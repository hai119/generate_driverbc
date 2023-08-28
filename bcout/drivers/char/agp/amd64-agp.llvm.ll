; ModuleID = '../bcout/drivers/char/agp/amd64-agp.llvm.bc'
source_filename = "drivers/char/agp/amd64-agp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_agp_amd64_mod_init6:\09\09\09"
module asm ".long\09agp_amd64_mod_init - .\09\09\09"
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
%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon.66 }
%union.anon.66 = type { i8* }
%struct.agp_bridge_driver = type { %struct.module*, i8*, i32, i32, i8, i8, %struct.gatt_mask*, i32 ()*, i32 ()*, void (%struct.agp_bridge_data*, i32)*, void ()*, void (%struct.agp_memory*)*, i64 (%struct.agp_bridge_data*, i64, i32)*, void ()*, i32 (%struct.agp_bridge_data*)*, i32 (%struct.agp_bridge_data*)*, i32 (%struct.agp_memory*, i64, i32)*, i32 (%struct.agp_memory*, i64, i32)*, %struct.agp_memory* (i64, i32)*, void (%struct.agp_memory*)*, %struct.page* (%struct.agp_bridge_data*)*, i32 (%struct.agp_bridge_data*, %struct.agp_memory*, i64)*, void (%struct.page*, i32)*, void (%struct.agp_memory*)*, i32 (%struct.agp_bridge_data*, i32)* }
%struct.gatt_mask = type { i64, i32 }
%struct.agp_bridge_data = type { %struct.agp_version*, %struct.agp_bridge_driver*, %struct.vm_operations_struct*, i8*, i8*, i8*, %struct.pci_dev*, i32*, i32*, i64, %struct.page*, i64, i64, i64, i32, i32, i64*, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i8, i8, %struct.list_head, i32, %struct.list_head, %struct.spinlock }
%struct.agp_version = type { i16, i16 }
%struct.agp_memory = type { %struct.agp_memory*, %struct.agp_memory*, %struct.agp_bridge_data*, %struct.page**, i64, i32, i32, i64, i32, i32, i8, i8, %struct.list_head, %struct.scatterlist*, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.aper_size_info_32 = type { i32, i32, i32, i32 }
%struct.amd_northbridge = type { %struct.pci_dev*, %struct.pci_dev*, %struct.pci_dev*, %struct.amd_l3_cache, %struct.threshold_bank* }
%struct.amd_l3_cache = type { i32, [4 x i8] }
%struct.threshold_bank = type { %struct.kobject*, %struct.threshold_block*, %struct.refcount_struct, i32 }
%struct.threshold_block = type { i32, i32, i32, i32, i16, i8, i16, %struct.kobject, %struct.list_head }
%struct.pci_bus_region = type { i64, i64 }

@agp_off = external dso_local global i32, align 4
@agp_amd64_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([14 x %struct.pci_device_id], [14 x %struct.pci_device_id]* @agp_amd64_pci_table, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @agp_amd64_probe, void (%struct.pci_dev*)* @agp_amd64_remove, i32 (%struct.pci_dev*, i32)* @agp_amd64_suspend, i32 (%struct.pci_dev*)* @agp_amd64_resume, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !0
@.str = private unnamed_addr constant [10 x i8] c"amd64_agp\00", align 1
@agp_bridges_found = internal global i32 0, align 4, !dbg !3101
@agp_try_unsupported = internal global i8 1, section ".init.data", align 1, !dbg !4271
@agp_try_unsupported_boot = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"\016agpgart: No supported AGP bridge found.\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"\016agpgart: You can boot with agp=try_unsupported\0A\00", align 1
@agp_amd64_pci_promisc_table = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4273
@aperture_resource = internal global %struct.resource* null, align 8, !dbg !3086
@__UNIQUE_ID___addressable_agp_amd64_mod_init236 = internal global i8* bitcast (i32 ()* @agp_amd64_mod_init to i8*), section ".discard.addressable", align 8, !dbg !3009
@__exitcall_agp_amd64_cleanup = internal global void ()* @agp_amd64_cleanup, section ".exitcall.exit", align 8, !dbg !3011
@__UNIQUE_ID_author237 = internal constant [40 x i8] c"amd64_agp.author=Dave Jones, Andi Kleen\00", section ".modinfo", align 1, !dbg !3016
@__param_str_agp_try_unsupported = internal constant [30 x i8] c"amd64_agp.agp_try_unsupported\00", align 16, !dbg !4276
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@__param_agp_try_unsupported = internal constant %struct.kernel_param { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__param_str_agp_try_unsupported, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.66 { i8* @agp_try_unsupported } }, section "__param", align 8, !dbg !3021
@__UNIQUE_ID_agp_try_unsupportedtype238 = internal constant [44 x i8] c"amd64_agp.parmtype=agp_try_unsupported:bool\00", section ".modinfo", align 1, !dbg !3073
@__UNIQUE_ID_file239 = internal constant [42 x i8] c"amd64_agp.file=drivers/char/agp/amd64-agp\00", section ".modinfo", align 1, !dbg !3076
@__UNIQUE_ID_license240 = internal constant [22 x i8] c"amd64_agp.license=GPL\00", section ".modinfo", align 1, !dbg !3081
@.str.3 = private unnamed_addr constant [14 x i8] c"agpgart-amd64\00", align 1
@agp_amd64_pci_table = internal constant [14 x %struct.pci_device_id] [%struct.pci_device_id { i32 4130, i32 29780, i32 -1, i32 -1, i32 393216, i32 -1, i64 0 }, %struct.pci_device_id { i32 4281, i32 5769, i32 -1, i32 -1, i32 393216, i32 -1, i64 0 }, %struct.pci_device_id { i32 4358, i32 642, i32 -1, i32 -1, i32 393216, i32 -1, i64 0 }, %struct.pci_device_id { i32 4358, i32 12680, i32 -1, i32 -1, i32 393216, i32 -1, i64 0 }, %struct.pci_device_id { i32 4358, i32 516, i32 -1, i32 -1, i32 393216, i32 -1, i64 0 }, %struct.pci_device_id { i32 4358, i32 822, i32 -1, i32 -1, i32 393216, i32 -1, i64 0 }, %struct.pci_device_id { i32 4358, i32 568, i32 -1, i32 -1, i32 393216, i32 -1, i64 0 }, %struct.pci_device_id { i32 4358, i32 45448, i32 -1, i32 -1, i32 393216, i32 -1, i64 0 }, %struct.pci_device_id { i32 4318, i32 209, i32 -1, i32 -1, i32 393216, i32 -1, i64 0 }, %struct.pci_device_id { i32 4318, i32 225, i32 -1, i32 -1, i32 393216, i32 -1, i64 0 }, %struct.pci_device_id { i32 4153, i32 1877, i32 -1, i32 -1, i32 393216, i32 -1, i64 0 }, %struct.pci_device_id { i32 4153, i32 1888, i32 -1, i32 -1, i32 393216, i32 -1, i64 0 }, %struct.pci_device_id { i32 4281, i32 5781, i32 -1, i32 -1, i32 393216, i32 -1, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !3103
@.str.4 = private unnamed_addr constant [24 x i8] c"AGP bridge [%04x/%04x]\0A\00", align 1
@amd_8151_driver = internal constant %struct.agp_bridge_driver { %struct.module* null, i8* bitcast ([7 x %struct.aper_size_info_32]* @amd_8151_sizes to i8*), i32 7, i32 2, i8 0, i8 1, %struct.gatt_mask* null, i32 ()* @amd64_fetch_size, i32 ()* @amd_8151_configure, void (%struct.agp_bridge_data*, i32)* @agp_generic_enable, void ()* @amd64_cleanup, void (%struct.agp_memory*)* @amd64_tlbflush, i64 (%struct.agp_bridge_data*, i64, i32)* @agp_generic_mask_memory, void ()* @global_cache_flush, i32 (%struct.agp_bridge_data*)* @agp_generic_create_gatt_table, i32 (%struct.agp_bridge_data*)* @agp_generic_free_gatt_table, i32 (%struct.agp_memory*, i64, i32)* @amd64_insert_memory, i32 (%struct.agp_memory*, i64, i32)* @agp_generic_remove_memory, %struct.agp_memory* (i64, i32)* @agp_generic_alloc_by_type, void (%struct.agp_memory*)* @agp_generic_free_by_type, %struct.page* (%struct.agp_bridge_data*)* @agp_generic_alloc_page, i32 (%struct.agp_bridge_data*, %struct.agp_memory*, i64)* @agp_generic_alloc_pages, void (%struct.page*, i32)* @agp_generic_destroy_page, void (%struct.agp_memory*)* @agp_generic_destroy_pages, i32 (%struct.agp_bridge_data*, i32)* @agp_generic_type_to_mask_type }, align 8, !dbg !3120
@.str.5 = private unnamed_addr constant [3 x i8] c"A0\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"A1\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"B0\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"B1\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"B2\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"B3\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"AMD 8151 AGP Bridge rev %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"correcting AGP revision (reports 3.5, is really 3.0)\0A\00", align 1
@amd_8151_sizes = internal constant [7 x %struct.aper_size_info_32] [%struct.aper_size_info_32 { i32 2048, i32 524288, i32 9, i32 0 }, %struct.aper_size_info_32 { i32 1024, i32 262144, i32 8, i32 1024 }, %struct.aper_size_info_32 { i32 512, i32 131072, i32 7, i32 1536 }, %struct.aper_size_info_32 { i32 256, i32 65536, i32 6, i32 1792 }, %struct.aper_size_info_32 { i32 128, i32 32768, i32 5, i32 1824 }, %struct.aper_size_info_32 { i32 64, i32 16384, i32 4, i32 1840 }, %struct.aper_size_info_32 { i32 32, i32 8192, i32 3, i32 1848 }], align 16, !dbg !4255
@amd64_aperture_sizes = internal global [7 x %struct.aper_size_info_32] [%struct.aper_size_info_32 { i32 32, i32 8192, i32 4, i32 0 }, %struct.aper_size_info_32 { i32 64, i32 16384, i32 5, i32 2 }, %struct.aper_size_info_32 { i32 128, i32 32768, i32 6, i32 4 }, %struct.aper_size_info_32 { i32 256, i32 65536, i32 7, i32 6 }, %struct.aper_size_info_32 { i32 512, i32 131072, i32 8, i32 8 }, %struct.aper_size_info_32 { i32 1024, i32 262144, i32 9, i32 10 }, %struct.aper_size_info_32 { i32 2048, i32 524288, i32 10, i32 12 }], align 16, !dbg !4261
@agp_bridge = external dso_local global %struct.agp_bridge_data*, align 8
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@vmemmap_base = external dso_local global i64, align 8
@.str.14 = private unnamed_addr constant [29 x i8] c"drivers/char/agp/amd64-agp.c\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"no usable aperture found\0A\00", align 1
@.str.16 = private unnamed_addr constant [64 x i8] c"consider rebooting with iommu=memaper=2 to get a good aperture\0A\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"aperture size %u MB is not right, using settings from NB\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"aperture from AGP @ %Lx size %u MB\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 8
@.str.19 = private unnamed_addr constant [9 x i8] c"aperture\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"\013agpgart: Aperture conflicts with PCI mapping.\0A\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"\016Aperture beyond 4GB. Ignoring.\0A\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"\016Aperture pointing to e820 RAM. Ignoring.\0A\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"\016Aperture too small (%d MB) than (%d MB)\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"setting up Nforce3 AGP\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"can't find Nforce3 secondary device\0A\00", align 1
@nforce3_sizes = internal constant [5 x %struct.aper_size_info_32] [%struct.aper_size_info_32 { i32 512, i32 131072, i32 7, i32 0 }, %struct.aper_size_info_32 { i32 256, i32 65536, i32 6, i32 8 }, %struct.aper_size_info_32 { i32 128, i32 32768, i32 5, i32 12 }, %struct.aper_size_info_32 { i32 64, i32 16384, i32 4, i32 14 }, %struct.aper_size_info_32 { i32 32, i32 8192, i32 3, i32 15 }], align 16, !dbg !4264
@.str.26 = private unnamed_addr constant [30 x i8] c"no NForce3 size found for %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"aperture base > 4G\0A\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"setting up ULi AGP\0A\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"can't find ULi secondary device\0A\00", align 1
@uli_sizes = internal constant [7 x %struct.aper_size_info_32] [%struct.aper_size_info_32 { i32 256, i32 65536, i32 6, i32 10 }, %struct.aper_size_info_32 { i32 128, i32 32768, i32 5, i32 9 }, %struct.aper_size_info_32 { i32 64, i32 16384, i32 4, i32 8 }, %struct.aper_size_info_32 { i32 32, i32 8192, i32 3, i32 7 }, %struct.aper_size_info_32 { i32 16, i32 4096, i32 2, i32 6 }, %struct.aper_size_info_32 { i32 8, i32 2048, i32 1, i32 4 }, %struct.aper_size_info_32 { i32 4, i32 1024, i32 0, i32 3 }], align 16, !dbg !4269
@.str.30 = private unnamed_addr constant [26 x i8] c"no ULi size found for %d\0A\00", align 1
@llvm.used = appending global [8 x i8*] [i8* bitcast (void ()* @agp_amd64_cleanup to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_agp_amd64_mod_init236 to i8*), i8* bitcast (void ()** @__exitcall_agp_amd64_cleanup to i8*), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__UNIQUE_ID_author237, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_agp_try_unsupported to i8*), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__UNIQUE_ID_agp_try_unsupportedtype238, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__UNIQUE_ID_file239, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__UNIQUE_ID_license240, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @agp_amd64_init() #0 section ".init.text" !dbg !4286 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4287, metadata !DIExpression()), !dbg !4288
  store i32 0, i32* %err, align 4, !dbg !4288
  %0 = load i32, i32* @agp_off, align 4, !dbg !4289
  %tobool = icmp ne i32 %0, 0, !dbg !4289
  br i1 %tobool, label %if.then, label %if.end, !dbg !4291

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4292
  br label %return, !dbg !4292

if.end:                                           ; preds = %entry
  %call = call i32 @__pci_register_driver(%struct.pci_driver* @agp_amd64_pci_driver, %struct.module* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #6, !dbg !4293
  store i32 %call, i32* %err, align 4, !dbg !4294
  %1 = load i32, i32* %err, align 4, !dbg !4295
  %cmp = icmp slt i32 %1, 0, !dbg !4297
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4298

if.then1:                                         ; preds = %if.end
  %2 = load i32, i32* %err, align 4, !dbg !4299
  store i32 %2, i32* %retval, align 4, !dbg !4300
  br label %return, !dbg !4300

if.end2:                                          ; preds = %if.end
  %3 = load i32, i32* @agp_bridges_found, align 4, !dbg !4301
  %cmp3 = icmp eq i32 %3, 0, !dbg !4303
  br i1 %cmp3, label %if.then4, label %if.end21, !dbg !4304

if.then4:                                         ; preds = %if.end2
  %4 = load i8, i8* @agp_try_unsupported, align 1, !dbg !4305
  %tobool5 = trunc i8 %4 to i1, !dbg !4305
  br i1 %tobool5, label %if.end10, label %land.lhs.true, !dbg !4308

land.lhs.true:                                    ; preds = %if.then4
  %5 = load i32, i32* @agp_try_unsupported_boot, align 4, !dbg !4309
  %tobool6 = icmp ne i32 %5, 0, !dbg !4309
  br i1 %tobool6, label %if.end10, label %if.then7, !dbg !4310

if.then7:                                         ; preds = %land.lhs.true
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !4311
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !4313
  call void @pci_unregister_driver(%struct.pci_driver* @agp_amd64_pci_driver) #6, !dbg !4314
  store i32 -19, i32* %retval, align 4, !dbg !4315
  br label %return, !dbg !4315

if.end10:                                         ; preds = %land.lhs.true, %if.then4
  %call11 = call zeroext i16 @amd_nb_num() #6, !dbg !4316
  %tobool12 = icmp ne i16 %call11, 0, !dbg !4316
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !4318

if.then13:                                        ; preds = %if.end10
  call void @pci_unregister_driver(%struct.pci_driver* @agp_amd64_pci_driver) #6, !dbg !4319
  store i32 -19, i32* %retval, align 4, !dbg !4321
  br label %return, !dbg !4321

if.end14:                                         ; preds = %if.end10
  store %struct.pci_device_id* getelementptr inbounds ([2 x %struct.pci_device_id], [2 x %struct.pci_device_id]* @agp_amd64_pci_promisc_table, i64 0, i64 0), %struct.pci_device_id** getelementptr inbounds (%struct.pci_driver, %struct.pci_driver* @agp_amd64_pci_driver, i32 0, i32 2), align 8, !dbg !4322
  %call15 = call i32 @driver_attach(%struct.device_driver* getelementptr inbounds (%struct.pci_driver, %struct.pci_driver* @agp_amd64_pci_driver, i32 0, i32 11)) #6, !dbg !4323
  store i32 %call15, i32* %err, align 4, !dbg !4324
  %6 = load i32, i32* %err, align 4, !dbg !4325
  %cmp16 = icmp eq i32 %6, 0, !dbg !4327
  br i1 %cmp16, label %land.lhs.true17, label %if.end20, !dbg !4328

land.lhs.true17:                                  ; preds = %if.end14
  %7 = load i32, i32* @agp_bridges_found, align 4, !dbg !4329
  %cmp18 = icmp eq i32 %7, 0, !dbg !4330
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4331

if.then19:                                        ; preds = %land.lhs.true17
  call void @pci_unregister_driver(%struct.pci_driver* @agp_amd64_pci_driver) #6, !dbg !4332
  store i32 -19, i32* %err, align 4, !dbg !4334
  br label %if.end20, !dbg !4335

if.end20:                                         ; preds = %if.then19, %land.lhs.true17, %if.end14
  br label %if.end21, !dbg !4336

if.end21:                                         ; preds = %if.end20, %if.end2
  %8 = load i32, i32* %err, align 4, !dbg !4337
  store i32 %8, i32* %retval, align 4, !dbg !4338
  br label %return, !dbg !4338

return:                                           ; preds = %if.end21, %if.then13, %if.then7, %if.then1, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !4339
  ret i32 %9, !dbg !4339
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @__pci_register_driver(%struct.pci_driver*, %struct.module*, i8*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local void @pci_unregister_driver(%struct.pci_driver*) #2

; Function Attrs: noredzone
declare dso_local zeroext i16 @amd_nb_num() #2

; Function Attrs: noredzone
declare dso_local i32 @driver_attach(%struct.device_driver*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @agp_amd64_cleanup() #0 section ".exit.text" !dbg !4340 {
entry:
  %0 = load %struct.resource*, %struct.resource** @aperture_resource, align 8, !dbg !4341
  %tobool = icmp ne %struct.resource* %0, null, !dbg !4341
  br i1 %tobool, label %if.then, label %if.end, !dbg !4343

if.then:                                          ; preds = %entry
  %1 = load %struct.resource*, %struct.resource** @aperture_resource, align 8, !dbg !4344
  %call = call i32 @release_resource(%struct.resource* %1) #6, !dbg !4345
  br label %if.end, !dbg !4345

if.end:                                           ; preds = %if.then, %entry
  call void @pci_unregister_driver(%struct.pci_driver* @agp_amd64_pci_driver) #6, !dbg !4346
  ret void, !dbg !4347
}

; Function Attrs: noredzone
declare dso_local i32 @release_resource(%struct.resource*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @agp_amd64_mod_init() #0 section ".init.text" !dbg !4348 {
entry:
  %call = call i32 @agp_amd64_init() #7, !dbg !4349
  ret i32 %call, !dbg !4350
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @agp_amd64_probe(%struct.pci_dev* %pdev, %struct.pci_device_id* %ent) #4 !dbg !4351 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %ent.addr = alloca %struct.pci_device_id*, align 8
  %bridge = alloca %struct.agp_bridge_data*, align 8
  %cap_ptr = alloca i8, align 1
  %err = alloca i32, align 4
  %ret = alloca i32, align 4
  %ret44 = alloca i32, align 4
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4352, metadata !DIExpression()), !dbg !4353
  store %struct.pci_device_id* %ent, %struct.pci_device_id** %ent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %ent.addr, metadata !4354, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.declare(metadata %struct.agp_bridge_data** %bridge, metadata !4356, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.declare(metadata i8* %cap_ptr, metadata !4358, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4360, metadata !DIExpression()), !dbg !4361
  %0 = load i32, i32* @agp_bridges_found, align 4, !dbg !4362
  %tobool = icmp ne i32 %0, 0, !dbg !4362
  br i1 %tobool, label %if.then, label %if.end, !dbg !4364

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4365
  br label %return, !dbg !4365

if.end:                                           ; preds = %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4366
  %call = call i32 @pci_find_capability(%struct.pci_dev* %1, i32 2) #6, !dbg !4367
  %conv = trunc i32 %call to i8, !dbg !4367
  store i8 %conv, i8* %cap_ptr, align 1, !dbg !4368
  %2 = load i8, i8* %cap_ptr, align 1, !dbg !4369
  %tobool1 = icmp ne i8 %2, 0, !dbg !4369
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4371

if.then2:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4372
  br label %return, !dbg !4372

if.end3:                                          ; preds = %if.end
  %call4 = call %struct.agp_bridge_data* @agp_alloc_bridge() #6, !dbg !4373
  store %struct.agp_bridge_data* %call4, %struct.agp_bridge_data** %bridge, align 8, !dbg !4374
  %3 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge, align 8, !dbg !4375
  %tobool5 = icmp ne %struct.agp_bridge_data* %3, null, !dbg !4375
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !4377

if.then6:                                         ; preds = %if.end3
  store i32 -12, i32* %retval, align 4, !dbg !4378
  br label %return, !dbg !4378

if.end7:                                          ; preds = %if.end3
  %4 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4379
  %vendor = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 7, !dbg !4381
  %5 = load i16, i16* %vendor, align 4, !dbg !4381
  %conv8 = zext i16 %5 to i32, !dbg !4379
  %cmp = icmp eq i32 %conv8, 4130, !dbg !4382
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !4383

land.lhs.true:                                    ; preds = %if.end7
  %6 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4384
  %device = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 8, !dbg !4385
  %7 = load i16, i16* %device, align 2, !dbg !4385
  %conv10 = zext i16 %7 to i32, !dbg !4384
  %cmp11 = icmp eq i32 %conv10, 29780, !dbg !4386
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !4387

if.then13:                                        ; preds = %land.lhs.true
  %8 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4388
  %9 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge, align 8, !dbg !4390
  call void @amd8151_init(%struct.pci_dev* %8, %struct.agp_bridge_data* %9) #6, !dbg !4391
  br label %if.end18, !dbg !4392

if.else:                                          ; preds = %land.lhs.true, %if.end7
  %10 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4393
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 41, !dbg !4393
  %11 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4393
  %vendor14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 7, !dbg !4393
  %12 = load i16, i16* %vendor14, align 4, !dbg !4393
  %conv15 = zext i16 %12 to i32, !dbg !4393
  %13 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4393
  %device16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 8, !dbg !4393
  %14 = load i16, i16* %device16, align 2, !dbg !4393
  %conv17 = zext i16 %14 to i32, !dbg !4393
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %conv15, i32 %conv17) #7, !dbg !4393
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then13
  %15 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge, align 8, !dbg !4395
  %driver = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %15, i32 0, i32 1, !dbg !4396
  store %struct.agp_bridge_driver* @amd_8151_driver, %struct.agp_bridge_driver** %driver, align 8, !dbg !4397
  %16 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4398
  %17 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge, align 8, !dbg !4399
  %dev19 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %17, i32 0, i32 6, !dbg !4400
  store %struct.pci_dev* %16, %struct.pci_dev** %dev19, align 8, !dbg !4401
  %18 = load i8, i8* %cap_ptr, align 1, !dbg !4402
  %conv20 = zext i8 %18 to i32, !dbg !4402
  %19 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge, align 8, !dbg !4403
  %capndx = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %19, i32 0, i32 21, !dbg !4404
  store i32 %conv20, i32* %capndx, align 8, !dbg !4405
  %20 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4406
  %21 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge, align 8, !dbg !4407
  %capndx21 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %21, i32 0, i32 21, !dbg !4408
  %22 = load i32, i32* %capndx21, align 8, !dbg !4408
  %add = add i32 %22, 4, !dbg !4409
  %23 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge, align 8, !dbg !4410
  %mode = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %23, i32 0, i32 14, !dbg !4411
  %call22 = call i32 @pci_read_config_dword(%struct.pci_dev* %20, i32 %add, i32* %mode) #6, !dbg !4412
  %24 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4413
  %25 = load i8, i8* %cap_ptr, align 1, !dbg !4415
  %conv23 = zext i8 %25 to i32, !dbg !4415
  %call24 = call i32 @cache_nbs(%struct.pci_dev* %24, i32 %conv23) #6, !dbg !4416
  %cmp25 = icmp eq i32 %call24, -1, !dbg !4417
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !4418

if.then27:                                        ; preds = %if.end18
  %26 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge, align 8, !dbg !4419
  call void @agp_put_bridge(%struct.agp_bridge_data* %26) #6, !dbg !4421
  store i32 -19, i32* %retval, align 4, !dbg !4422
  br label %return, !dbg !4422

if.end28:                                         ; preds = %if.end18
  %27 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4423
  %vendor29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 7, !dbg !4425
  %28 = load i16, i16* %vendor29, align 4, !dbg !4425
  %conv30 = zext i16 %28 to i32, !dbg !4423
  %cmp31 = icmp eq i32 %conv30, 4318, !dbg !4426
  br i1 %cmp31, label %if.then33, label %if.end38, !dbg !4427

if.then33:                                        ; preds = %if.end28
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4428, metadata !DIExpression()), !dbg !4430
  %29 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4431
  %call34 = call i32 @nforce3_agp_init(%struct.pci_dev* %29) #6, !dbg !4432
  store i32 %call34, i32* %ret, align 4, !dbg !4430
  %30 = load i32, i32* %ret, align 4, !dbg !4433
  %tobool35 = icmp ne i32 %30, 0, !dbg !4433
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !4435

if.then36:                                        ; preds = %if.then33
  %31 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge, align 8, !dbg !4436
  call void @agp_put_bridge(%struct.agp_bridge_data* %31) #6, !dbg !4438
  %32 = load i32, i32* %ret, align 4, !dbg !4439
  store i32 %32, i32* %retval, align 4, !dbg !4440
  br label %return, !dbg !4440

if.end37:                                         ; preds = %if.then33
  br label %if.end38, !dbg !4441

if.end38:                                         ; preds = %if.end37, %if.end28
  %33 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4442
  %vendor39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 7, !dbg !4444
  %34 = load i16, i16* %vendor39, align 4, !dbg !4444
  %conv40 = zext i16 %34 to i32, !dbg !4442
  %cmp41 = icmp eq i32 %conv40, 4281, !dbg !4445
  br i1 %cmp41, label %if.then43, label %if.end49, !dbg !4446

if.then43:                                        ; preds = %if.end38
  call void @llvm.dbg.declare(metadata i32* %ret44, metadata !4447, metadata !DIExpression()), !dbg !4449
  %35 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4450
  %call45 = call i32 @uli_agp_init(%struct.pci_dev* %35) #6, !dbg !4451
  store i32 %call45, i32* %ret44, align 4, !dbg !4449
  %36 = load i32, i32* %ret44, align 4, !dbg !4452
  %tobool46 = icmp ne i32 %36, 0, !dbg !4452
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !4454

if.then47:                                        ; preds = %if.then43
  %37 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge, align 8, !dbg !4455
  call void @agp_put_bridge(%struct.agp_bridge_data* %37) #6, !dbg !4457
  %38 = load i32, i32* %ret44, align 4, !dbg !4458
  store i32 %38, i32* %retval, align 4, !dbg !4459
  br label %return, !dbg !4459

if.end48:                                         ; preds = %if.then43
  br label %if.end49, !dbg !4460

if.end49:                                         ; preds = %if.end48, %if.end38
  %39 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4461
  %40 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge, align 8, !dbg !4462
  %41 = bitcast %struct.agp_bridge_data* %40 to i8*, !dbg !4462
  call void @pci_set_drvdata(%struct.pci_dev* %39, i8* %41) #6, !dbg !4463
  %42 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge, align 8, !dbg !4464
  %call50 = call i32 @agp_add_bridge(%struct.agp_bridge_data* %42) #6, !dbg !4465
  store i32 %call50, i32* %err, align 4, !dbg !4466
  %43 = load i32, i32* %err, align 4, !dbg !4467
  %cmp51 = icmp slt i32 %43, 0, !dbg !4469
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !4470

if.then53:                                        ; preds = %if.end49
  %44 = load i32, i32* %err, align 4, !dbg !4471
  store i32 %44, i32* %retval, align 4, !dbg !4472
  br label %return, !dbg !4472

if.end54:                                         ; preds = %if.end49
  %45 = load i32, i32* @agp_bridges_found, align 4, !dbg !4473
  %inc = add i32 %45, 1, !dbg !4473
  store i32 %inc, i32* @agp_bridges_found, align 4, !dbg !4473
  store i32 0, i32* %retval, align 4, !dbg !4474
  br label %return, !dbg !4474

return:                                           ; preds = %if.end54, %if.then53, %if.then47, %if.then36, %if.then27, %if.then6, %if.then2, %if.then
  %46 = load i32, i32* %retval, align 4, !dbg !4475
  ret i32 %46, !dbg !4475
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @agp_amd64_remove(%struct.pci_dev* %pdev) #4 !dbg !4476 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %bridge = alloca %struct.agp_bridge_data*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4477, metadata !DIExpression()), !dbg !4478
  call void @llvm.dbg.declare(metadata %struct.agp_bridge_data** %bridge, metadata !4479, metadata !DIExpression()), !dbg !4480
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4481
  %call = call i8* @pci_get_drvdata(%struct.pci_dev* %0) #6, !dbg !4482
  %1 = bitcast i8* %call to %struct.agp_bridge_data*, !dbg !4482
  store %struct.agp_bridge_data* %1, %struct.agp_bridge_data** %bridge, align 8, !dbg !4480
  %2 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge, align 8, !dbg !4483
  %gatt_table_real = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %2, i32 0, i32 8, !dbg !4483
  %3 = load i32*, i32** %gatt_table_real, align 8, !dbg !4483
  %4 = bitcast i32* %3 to i8*, !dbg !4483
  %call1 = call i64 @virt_to_phys(i8* %4) #6, !dbg !4483
  %5 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge, align 8, !dbg !4483
  %aperture_size_idx = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %5, i32 0, i32 20, !dbg !4483
  %6 = load i32, i32* %aperture_size_idx, align 4, !dbg !4483
  %idxprom = sext i32 %6 to i64, !dbg !4483
  %arrayidx = getelementptr [7 x %struct.aper_size_info_32], [7 x %struct.aper_size_info_32]* @amd64_aperture_sizes, i64 0, i64 %idxprom, !dbg !4483
  %size = getelementptr inbounds %struct.aper_size_info_32, %struct.aper_size_info_32* %arrayidx, i32 0, i32 0, !dbg !4483
  %7 = load i32, i32* %size, align 16, !dbg !4483
  %conv = sext i32 %7 to i64, !dbg !4483
  call void @__release_region(%struct.resource* @iomem_resource, i64 %call1, i64 %conv) #6, !dbg !4483
  %8 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge, align 8, !dbg !4484
  call void @agp_remove_bridge(%struct.agp_bridge_data* %8) #6, !dbg !4485
  %9 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge, align 8, !dbg !4486
  call void @agp_put_bridge(%struct.agp_bridge_data* %9) #6, !dbg !4487
  %10 = load i32, i32* @agp_bridges_found, align 4, !dbg !4488
  %dec = add i32 %10, -1, !dbg !4488
  store i32 %dec, i32* @agp_bridges_found, align 4, !dbg !4488
  ret void, !dbg !4489
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @agp_amd64_suspend(%struct.pci_dev* %pdev, i32 %state.coerce) #4 !dbg !4490 {
entry:
  %state = alloca %struct.pm_message, align 4
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %state, i32 0, i32 0
  store i32 %state.coerce, i32* %coerce.dive, align 4
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4491, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.declare(metadata %struct.pm_message* %state, metadata !4493, metadata !DIExpression()), !dbg !4494
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4495
  %call = call i32 @pci_save_state(%struct.pci_dev* %0) #6, !dbg !4496
  %1 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4497
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4498
  %coerce.dive1 = getelementptr inbounds %struct.pm_message, %struct.pm_message* %state, i32 0, i32 0, !dbg !4499
  %3 = load i32, i32* %coerce.dive1, align 4, !dbg !4499
  %call2 = call i32 @pci_choose_state(%struct.pci_dev* %2, i32 %3) #6, !dbg !4499
  %call3 = call i32 @pci_set_power_state(%struct.pci_dev* %1, i32 %call2) #6, !dbg !4500
  ret i32 0, !dbg !4501
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @agp_amd64_resume(%struct.pci_dev* %pdev) #4 !dbg !4502 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4503, metadata !DIExpression()), !dbg !4504
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4505
  %call = call i32 @pci_set_power_state(%struct.pci_dev* %0, i32 0) #6, !dbg !4506
  %1 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4507
  call void @pci_restore_state(%struct.pci_dev* %1) #6, !dbg !4508
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4509
  %vendor = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 7, !dbg !4511
  %3 = load i16, i16* %vendor, align 4, !dbg !4511
  %conv = zext i16 %3 to i32, !dbg !4509
  %cmp = icmp eq i32 %conv, 4318, !dbg !4512
  br i1 %cmp, label %if.then, label %if.end, !dbg !4513

if.then:                                          ; preds = %entry
  %4 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4514
  %call2 = call i32 @nforce3_agp_init(%struct.pci_dev* %4) #6, !dbg !4515
  br label %if.end, !dbg !4515

if.end:                                           ; preds = %if.then, %entry
  %call3 = call i32 @amd_8151_configure() #6, !dbg !4516
  ret i32 %call3, !dbg !4517
}

; Function Attrs: noredzone
declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.agp_bridge_data* @agp_alloc_bridge() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @amd8151_init(%struct.pci_dev* %pdev, %struct.agp_bridge_data* %bridge) #4 !dbg !4518 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %bridge.addr = alloca %struct.agp_bridge_data*, align 8
  %revstring = alloca i8*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4521, metadata !DIExpression()), !dbg !4522
  store %struct.agp_bridge_data* %bridge, %struct.agp_bridge_data** %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.agp_bridge_data** %bridge.addr, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.declare(metadata i8** %revstring, metadata !4525, metadata !DIExpression()), !dbg !4526
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4527
  %revision = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 12, !dbg !4528
  %1 = load i8, i8* %revision, align 8, !dbg !4528
  %conv = zext i8 %1 to i32, !dbg !4527
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 17, label %sw.bb2
    i32 18, label %sw.bb3
    i32 19, label %sw.bb4
    i32 20, label %sw.bb5
  ], !dbg !4529

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %revstring, align 8, !dbg !4530
  br label %sw.epilog, !dbg !4532

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %revstring, align 8, !dbg !4533
  br label %sw.epilog, !dbg !4534

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %revstring, align 8, !dbg !4535
  br label %sw.epilog, !dbg !4536

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %revstring, align 8, !dbg !4537
  br label %sw.epilog, !dbg !4538

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %revstring, align 8, !dbg !4539
  br label %sw.epilog, !dbg !4540

sw.bb5:                                           ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %revstring, align 8, !dbg !4541
  br label %sw.epilog, !dbg !4542

sw.default:                                       ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %revstring, align 8, !dbg !4543
  br label %sw.epilog, !dbg !4544

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4545
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 41, !dbg !4545
  %3 = load i8*, i8** %revstring, align 8, !dbg !4545
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8* %3) #7, !dbg !4545
  %4 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4546
  %revision6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 12, !dbg !4548
  %5 = load i8, i8* %revision6, align 8, !dbg !4548
  %conv7 = zext i8 %5 to i32, !dbg !4546
  %cmp = icmp slt i32 %conv7, 19, !dbg !4549
  br i1 %cmp, label %if.then, label %if.end, !dbg !4550

if.then:                                          ; preds = %sw.epilog
  %6 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4551
  %dev9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 41, !dbg !4551
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev9, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !4551
  %7 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge.addr, align 8, !dbg !4553
  %major_version = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %7, i32 0, i32 23, !dbg !4554
  store i8 3, i8* %major_version, align 8, !dbg !4555
  %8 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge.addr, align 8, !dbg !4556
  %minor_version = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %8, i32 0, i32 24, !dbg !4557
  store i8 0, i8* %minor_version, align 1, !dbg !4558
  br label %if.end, !dbg !4559

if.end:                                           ; preds = %if.then, %sw.epilog
  ret void, !dbg !4560
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cache_nbs(%struct.pci_dev* %pdev, i32 %cap_ptr) #4 !dbg !4561 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %cap_ptr.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %dev = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4564, metadata !DIExpression()), !dbg !4565
  store i32 %cap_ptr, i32* %cap_ptr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cap_ptr.addr, metadata !4566, metadata !DIExpression()), !dbg !4567
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4568, metadata !DIExpression()), !dbg !4569
  %call = call i32 @amd_cache_northbridges() #6, !dbg !4570
  %cmp = icmp slt i32 %call, 0, !dbg !4572
  br i1 %cmp, label %if.then, label %if.end, !dbg !4573

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4574
  br label %return, !dbg !4574

if.end:                                           ; preds = %entry
  %call1 = call zeroext i1 @amd_nb_has_feature(i32 1) #6, !dbg !4575
  br i1 %call1, label %if.end3, label %if.then2, !dbg !4577

if.then2:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4578
  br label %return, !dbg !4578

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !4579
  store i32 0, i32* %i, align 4, !dbg !4580
  br label %for.cond, !dbg !4582

for.cond:                                         ; preds = %for.inc, %if.end3
  %0 = load i32, i32* %i, align 4, !dbg !4583
  %call4 = call zeroext i16 @amd_nb_num() #6, !dbg !4585
  %conv = zext i16 %call4 to i32, !dbg !4585
  %cmp5 = icmp slt i32 %0, %conv, !dbg !4586
  br i1 %cmp5, label %for.body, label %for.end, !dbg !4587

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !4588, metadata !DIExpression()), !dbg !4590
  %1 = load i32, i32* %i, align 4, !dbg !4591
  %call7 = call %struct.amd_northbridge* @node_to_amd_nb(i32 %1) #6, !dbg !4592
  %misc = getelementptr inbounds %struct.amd_northbridge, %struct.amd_northbridge* %call7, i32 0, i32 1, !dbg !4593
  %2 = load %struct.pci_dev*, %struct.pci_dev** %misc, align 8, !dbg !4593
  store %struct.pci_dev* %2, %struct.pci_dev** %dev, align 8, !dbg !4590
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4594
  %4 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4596
  %5 = load i32, i32* %cap_ptr.addr, align 4, !dbg !4597
  %conv8 = trunc i32 %5 to i16, !dbg !4597
  %call9 = call i32 @fix_northbridge(%struct.pci_dev* %3, %struct.pci_dev* %4, i16 zeroext %conv8) #6, !dbg !4598
  %cmp10 = icmp slt i32 %call9, 0, !dbg !4599
  br i1 %cmp10, label %if.then12, label %if.end15, !dbg !4600

if.then12:                                        ; preds = %for.body
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4601
  %dev13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 41, !dbg !4601
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !4601
  %7 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4603
  %dev14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 41, !dbg !4603
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev14, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !4603
  store i32 -1, i32* %retval, align 4, !dbg !4604
  br label %return, !dbg !4604

if.end15:                                         ; preds = %for.body
  br label %for.inc, !dbg !4605

for.inc:                                          ; preds = %if.end15
  %8 = load i32, i32* %i, align 4, !dbg !4606
  %inc = add i32 %8, 1, !dbg !4606
  store i32 %inc, i32* %i, align 4, !dbg !4606
  br label %for.cond, !dbg !4607, !llvm.loop !4608

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4610
  br label %return, !dbg !4610

return:                                           ; preds = %for.end, %if.then12, %if.then2, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !4611
  ret i32 %9, !dbg !4611
}

; Function Attrs: noredzone
declare dso_local void @agp_put_bridge(%struct.agp_bridge_data*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nforce3_agp_init(%struct.pci_dev* %pdev) #4 !dbg !4612 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %tmp = alloca i32, align 4
  %apbase = alloca i32, align 4
  %apbar = alloca i32, align 4
  %aplimit = alloca i32, align 4
  %dev1 = alloca %struct.pci_dev*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4613, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !4615, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.declare(metadata i32* %apbase, metadata !4617, metadata !DIExpression()), !dbg !4618
  call void @llvm.dbg.declare(metadata i32* %apbar, metadata !4619, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.declare(metadata i32* %aplimit, metadata !4621, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev1, metadata !4623, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4625, metadata !DIExpression()), !dbg !4626
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4627, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.declare(metadata i32* %size, metadata !4629, metadata !DIExpression()), !dbg !4630
  %call = call i32 @amd64_fetch_size() #6, !dbg !4631
  store i32 %call, i32* %size, align 4, !dbg !4630
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4632
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !4632
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0)) #7, !dbg !4632
  %1 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4633
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1, i32 0, i32 1, !dbg !4634
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4634
  %call1 = call %struct.pci_dev* @pci_get_slot(%struct.pci_bus* %2, i32 88) #6, !dbg !4635
  store %struct.pci_dev* %call1, %struct.pci_dev** %dev1, align 8, !dbg !4636
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev1, align 8, !dbg !4637
  %cmp = icmp eq %struct.pci_dev* %3, null, !dbg !4639
  br i1 %cmp, label %if.then, label %if.end, !dbg !4640

if.then:                                          ; preds = %entry
  %4 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4641
  %dev2 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 41, !dbg !4641
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !4641
  store i32 -19, i32* %retval, align 4, !dbg !4643
  br label %return, !dbg !4643

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4644
  br label %for.cond, !dbg !4646

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !dbg !4647
  %conv = sext i32 %5 to i64, !dbg !4647
  %cmp3 = icmp ult i64 %conv, 5, !dbg !4649
  br i1 %cmp3, label %for.body, label %for.end, !dbg !4650

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !4651
  %idxprom = sext i32 %6 to i64, !dbg !4653
  %arrayidx = getelementptr [5 x %struct.aper_size_info_32], [5 x %struct.aper_size_info_32]* @nforce3_sizes, i64 0, i64 %idxprom, !dbg !4653
  %size5 = getelementptr inbounds %struct.aper_size_info_32, %struct.aper_size_info_32* %arrayidx, i32 0, i32 0, !dbg !4654
  %7 = load i32, i32* %size5, align 16, !dbg !4654
  %8 = load i32, i32* %size, align 4, !dbg !4655
  %cmp6 = icmp eq i32 %7, %8, !dbg !4656
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !4657

if.then8:                                         ; preds = %for.body
  br label %for.end, !dbg !4658

if.end9:                                          ; preds = %for.body
  br label %for.inc, !dbg !4655

for.inc:                                          ; preds = %if.end9
  %9 = load i32, i32* %i, align 4, !dbg !4659
  %inc = add i32 %9, 1, !dbg !4659
  store i32 %inc, i32* %i, align 4, !dbg !4659
  br label %for.cond, !dbg !4660, !llvm.loop !4661

for.end:                                          ; preds = %if.then8, %for.cond
  %10 = load i32, i32* %i, align 4, !dbg !4663
  %conv10 = sext i32 %10 to i64, !dbg !4663
  %cmp11 = icmp eq i64 %conv10, 5, !dbg !4665
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !4666

if.then13:                                        ; preds = %for.end
  %11 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4667
  %dev14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 41, !dbg !4667
  %12 = load i32, i32* %size, align 4, !dbg !4667
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i64 0, i64 0), i32 %12) #7, !dbg !4667
  store i32 -19, i32* %ret, align 4, !dbg !4669
  br label %put, !dbg !4670

if.end15:                                         ; preds = %for.end
  %13 = load %struct.pci_dev*, %struct.pci_dev** %dev1, align 8, !dbg !4671
  %call16 = call i32 @pci_read_config_dword(%struct.pci_dev* %13, i32 168, i32* %tmp) #6, !dbg !4672
  %14 = load i32, i32* %tmp, align 4, !dbg !4673
  %and = and i32 %14, -16, !dbg !4673
  store i32 %and, i32* %tmp, align 4, !dbg !4673
  %15 = load i32, i32* %i, align 4, !dbg !4674
  %idxprom17 = sext i32 %15 to i64, !dbg !4675
  %arrayidx18 = getelementptr [5 x %struct.aper_size_info_32], [5 x %struct.aper_size_info_32]* @nforce3_sizes, i64 0, i64 %idxprom17, !dbg !4675
  %size_value = getelementptr inbounds %struct.aper_size_info_32, %struct.aper_size_info_32* %arrayidx18, i32 0, i32 3, !dbg !4676
  %16 = load i32, i32* %size_value, align 4, !dbg !4676
  %17 = load i32, i32* %tmp, align 4, !dbg !4677
  %or = or i32 %17, %16, !dbg !4677
  store i32 %or, i32* %tmp, align 4, !dbg !4677
  %18 = load %struct.pci_dev*, %struct.pci_dev** %dev1, align 8, !dbg !4678
  %19 = load i32, i32* %tmp, align 4, !dbg !4679
  %call19 = call i32 @pci_write_config_dword(%struct.pci_dev* %18, i32 168, i32 %19) #6, !dbg !4680
  %call20 = call %struct.amd_northbridge* @node_to_amd_nb(i32 0) #6, !dbg !4681
  %misc = getelementptr inbounds %struct.amd_northbridge, %struct.amd_northbridge* %call20, i32 0, i32 1, !dbg !4682
  %20 = load %struct.pci_dev*, %struct.pci_dev** %misc, align 8, !dbg !4682
  %call21 = call i32 @pci_read_config_dword(%struct.pci_dev* %20, i32 148, i32* %apbase) #6, !dbg !4683
  %21 = load i32, i32* %apbase, align 4, !dbg !4684
  %and22 = and i32 %21, 32767, !dbg !4686
  %shr = lshr i32 %and22, 7, !dbg !4687
  %tobool = icmp ne i32 %shr, 0, !dbg !4687
  br i1 %tobool, label %if.then23, label %if.end25, !dbg !4688

if.then23:                                        ; preds = %if.end15
  %22 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4689
  %dev24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 41, !dbg !4689
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0)) #7, !dbg !4689
  store i32 -19, i32* %ret, align 4, !dbg !4691
  br label %put, !dbg !4692

if.end25:                                         ; preds = %if.end15
  %23 = load i32, i32* %apbase, align 4, !dbg !4693
  %and26 = and i32 %23, 32767, !dbg !4694
  %shl = shl i32 %and26, 25, !dbg !4695
  store i32 %shl, i32* %apbase, align 4, !dbg !4696
  %24 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4697
  %call27 = call i32 @pci_read_config_dword(%struct.pci_dev* %24, i32 16, i32* %apbar) #6, !dbg !4698
  %25 = load i32, i32* %apbar, align 4, !dbg !4699
  %conv28 = zext i32 %25 to i64, !dbg !4699
  %and29 = and i64 %conv28, 15, !dbg !4699
  %conv30 = trunc i64 %and29 to i32, !dbg !4699
  store i32 %conv30, i32* %apbar, align 4, !dbg !4699
  %26 = load i32, i32* %apbase, align 4, !dbg !4700
  %27 = load i32, i32* %apbar, align 4, !dbg !4701
  %or31 = or i32 %27, %26, !dbg !4701
  store i32 %or31, i32* %apbar, align 4, !dbg !4701
  %28 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4702
  %29 = load i32, i32* %apbar, align 4, !dbg !4703
  %call32 = call i32 @pci_write_config_dword(%struct.pci_dev* %28, i32 16, i32 %29) #6, !dbg !4704
  %30 = load i32, i32* %apbase, align 4, !dbg !4705
  %31 = load i32, i32* %size, align 4, !dbg !4706
  %mul = mul i32 %31, 1024, !dbg !4707
  %mul33 = mul i32 %mul, 1024, !dbg !4708
  %add = add i32 %30, %mul33, !dbg !4709
  %sub = sub i32 %add, 1, !dbg !4710
  store i32 %sub, i32* %aplimit, align 4, !dbg !4711
  %32 = load %struct.pci_dev*, %struct.pci_dev** %dev1, align 8, !dbg !4712
  %33 = load i32, i32* %apbase, align 4, !dbg !4713
  %call34 = call i32 @pci_write_config_dword(%struct.pci_dev* %32, i32 80, i32 %33) #6, !dbg !4714
  %34 = load %struct.pci_dev*, %struct.pci_dev** %dev1, align 8, !dbg !4715
  %35 = load i32, i32* %aplimit, align 4, !dbg !4716
  %call35 = call i32 @pci_write_config_dword(%struct.pci_dev* %34, i32 84, i32 %35) #6, !dbg !4717
  %36 = load %struct.pci_dev*, %struct.pci_dev** %dev1, align 8, !dbg !4718
  %37 = load i32, i32* %apbase, align 4, !dbg !4719
  %call36 = call i32 @pci_write_config_dword(%struct.pci_dev* %36, i32 216, i32 %37) #6, !dbg !4720
  %38 = load %struct.pci_dev*, %struct.pci_dev** %dev1, align 8, !dbg !4721
  %39 = load i32, i32* %aplimit, align 4, !dbg !4722
  %call37 = call i32 @pci_write_config_dword(%struct.pci_dev* %38, i32 220, i32 %39) #6, !dbg !4723
  store i32 0, i32* %ret, align 4, !dbg !4724
  br label %put, !dbg !4725

put:                                              ; preds = %if.end25, %if.then23, %if.then13
  call void @llvm.dbg.label(metadata !4726), !dbg !4727
  %40 = load %struct.pci_dev*, %struct.pci_dev** %dev1, align 8, !dbg !4728
  call void @pci_dev_put(%struct.pci_dev* %40) #6, !dbg !4729
  %41 = load i32, i32* %ret, align 4, !dbg !4730
  store i32 %41, i32* %retval, align 4, !dbg !4731
  br label %return, !dbg !4731

return:                                           ; preds = %put, %if.then
  %42 = load i32, i32* %retval, align 4, !dbg !4732
  ret i32 %42, !dbg !4732
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @uli_agp_init(%struct.pci_dev* %pdev) #4 !dbg !4733 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %httfea = alloca i32, align 4
  %baseaddr = alloca i32, align 4
  %enuscr = alloca i32, align 4
  %dev1 = alloca %struct.pci_dev*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4734, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.declare(metadata i32* %httfea, metadata !4736, metadata !DIExpression()), !dbg !4737
  call void @llvm.dbg.declare(metadata i32* %baseaddr, metadata !4738, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.declare(metadata i32* %enuscr, metadata !4740, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev1, metadata !4742, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4744, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4746, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.declare(metadata i32* %size, metadata !4748, metadata !DIExpression()), !dbg !4749
  %call = call i32 @amd64_fetch_size() #6, !dbg !4750
  store i32 %call, i32* %size, align 4, !dbg !4749
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4751
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !4751
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0)) #7, !dbg !4751
  %1 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4752
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1, i32 0, i32 1, !dbg !4753
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4753
  %call1 = call %struct.pci_dev* @pci_get_slot(%struct.pci_bus* %2, i32 0) #6, !dbg !4754
  store %struct.pci_dev* %call1, %struct.pci_dev** %dev1, align 8, !dbg !4755
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev1, align 8, !dbg !4756
  %cmp = icmp eq %struct.pci_dev* %3, null, !dbg !4758
  br i1 %cmp, label %if.then, label %if.end, !dbg !4759

if.then:                                          ; preds = %entry
  %4 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4760
  %dev2 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 41, !dbg !4760
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0)) #7, !dbg !4760
  store i32 -19, i32* %retval, align 4, !dbg !4762
  br label %return, !dbg !4762

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4763
  br label %for.cond, !dbg !4765

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !dbg !4766
  %conv = sext i32 %5 to i64, !dbg !4766
  %cmp3 = icmp ult i64 %conv, 7, !dbg !4768
  br i1 %cmp3, label %for.body, label %for.end, !dbg !4769

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !4770
  %idxprom = sext i32 %6 to i64, !dbg !4772
  %arrayidx = getelementptr [7 x %struct.aper_size_info_32], [7 x %struct.aper_size_info_32]* @uli_sizes, i64 0, i64 %idxprom, !dbg !4772
  %size5 = getelementptr inbounds %struct.aper_size_info_32, %struct.aper_size_info_32* %arrayidx, i32 0, i32 0, !dbg !4773
  %7 = load i32, i32* %size5, align 16, !dbg !4773
  %8 = load i32, i32* %size, align 4, !dbg !4774
  %cmp6 = icmp eq i32 %7, %8, !dbg !4775
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !4776

if.then8:                                         ; preds = %for.body
  br label %for.end, !dbg !4777

if.end9:                                          ; preds = %for.body
  br label %for.inc, !dbg !4774

for.inc:                                          ; preds = %if.end9
  %9 = load i32, i32* %i, align 4, !dbg !4778
  %inc = add i32 %9, 1, !dbg !4778
  store i32 %inc, i32* %i, align 4, !dbg !4778
  br label %for.cond, !dbg !4779, !llvm.loop !4780

for.end:                                          ; preds = %if.then8, %for.cond
  %10 = load i32, i32* %i, align 4, !dbg !4782
  %conv10 = sext i32 %10 to i64, !dbg !4782
  %cmp11 = icmp eq i64 %conv10, 7, !dbg !4784
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !4785

if.then13:                                        ; preds = %for.end
  %11 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4786
  %dev14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 41, !dbg !4786
  %12 = load i32, i32* %size, align 4, !dbg !4786
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0), i32 %12) #7, !dbg !4786
  store i32 -19, i32* %ret, align 4, !dbg !4788
  br label %put, !dbg !4789

if.end15:                                         ; preds = %for.end
  %call16 = call %struct.amd_northbridge* @node_to_amd_nb(i32 0) #6, !dbg !4790
  %misc = getelementptr inbounds %struct.amd_northbridge, %struct.amd_northbridge* %call16, i32 0, i32 1, !dbg !4791
  %13 = load %struct.pci_dev*, %struct.pci_dev** %misc, align 8, !dbg !4791
  %call17 = call i32 @pci_read_config_dword(%struct.pci_dev* %13, i32 148, i32* %httfea) #6, !dbg !4792
  %14 = load i32, i32* %httfea, align 4, !dbg !4793
  %and = and i32 %14, 32767, !dbg !4795
  %shr = lshr i32 %and, 7, !dbg !4796
  %tobool = icmp ne i32 %shr, 0, !dbg !4796
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !4797

if.then18:                                        ; preds = %if.end15
  store i32 -19, i32* %ret, align 4, !dbg !4798
  br label %put, !dbg !4800

if.end19:                                         ; preds = %if.end15
  %15 = load i32, i32* %httfea, align 4, !dbg !4801
  %and20 = and i32 %15, 32767, !dbg !4802
  %shl = shl i32 %and20, 25, !dbg !4803
  store i32 %shl, i32* %httfea, align 4, !dbg !4804
  %16 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4805
  %call21 = call i32 @pci_read_config_dword(%struct.pci_dev* %16, i32 16, i32* %baseaddr) #6, !dbg !4806
  %17 = load i32, i32* %baseaddr, align 4, !dbg !4807
  %conv22 = zext i32 %17 to i64, !dbg !4807
  %and23 = and i64 %conv22, 15, !dbg !4807
  %conv24 = trunc i64 %and23 to i32, !dbg !4807
  store i32 %conv24, i32* %baseaddr, align 4, !dbg !4807
  %18 = load i32, i32* %httfea, align 4, !dbg !4808
  %19 = load i32, i32* %baseaddr, align 4, !dbg !4809
  %or = or i32 %19, %18, !dbg !4809
  store i32 %or, i32* %baseaddr, align 4, !dbg !4809
  %20 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4810
  %21 = load i32, i32* %baseaddr, align 4, !dbg !4811
  %call25 = call i32 @pci_write_config_dword(%struct.pci_dev* %20, i32 16, i32 %21) #6, !dbg !4812
  %22 = load i32, i32* %httfea, align 4, !dbg !4813
  %23 = load i32, i32* %size, align 4, !dbg !4814
  %mul = mul i32 %23, 1024, !dbg !4815
  %mul26 = mul i32 %mul, 1024, !dbg !4816
  %add = add i32 %22, %mul26, !dbg !4817
  %sub = sub i32 %add, 1, !dbg !4818
  store i32 %sub, i32* %enuscr, align 4, !dbg !4819
  %24 = load %struct.pci_dev*, %struct.pci_dev** %dev1, align 8, !dbg !4820
  %25 = load i32, i32* %httfea, align 4, !dbg !4821
  %call27 = call i32 @pci_write_config_dword(%struct.pci_dev* %24, i32 80, i32 %25) #6, !dbg !4822
  %26 = load %struct.pci_dev*, %struct.pci_dev** %dev1, align 8, !dbg !4823
  %27 = load i32, i32* %enuscr, align 4, !dbg !4824
  %call28 = call i32 @pci_write_config_dword(%struct.pci_dev* %26, i32 84, i32 %27) #6, !dbg !4825
  store i32 0, i32* %ret, align 4, !dbg !4826
  br label %put, !dbg !4827

put:                                              ; preds = %if.end19, %if.then18, %if.then13
  call void @llvm.dbg.label(metadata !4828), !dbg !4829
  %28 = load %struct.pci_dev*, %struct.pci_dev** %dev1, align 8, !dbg !4830
  call void @pci_dev_put(%struct.pci_dev* %28) #6, !dbg !4831
  %29 = load i32, i32* %ret, align 4, !dbg !4832
  store i32 %29, i32* %retval, align 4, !dbg !4833
  br label %return, !dbg !4833

return:                                           ; preds = %put, %if.then
  %30 = load i32, i32* %retval, align 4, !dbg !4834
  ret i32 %30, !dbg !4834
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci_set_drvdata(%struct.pci_dev* %pdev, i8* %data) #4 !dbg !4835 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4838, metadata !DIExpression()), !dbg !4839
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4840, metadata !DIExpression()), !dbg !4841
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4842
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !4843
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4844
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #6, !dbg !4845
  ret void, !dbg !4846
}

; Function Attrs: noredzone
declare dso_local i32 @agp_add_bridge(%struct.agp_bridge_data*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @amd64_fetch_size() #4 !dbg !4847 {
entry:
  %retval = alloca i32, align 4
  %dev = alloca %struct.pci_dev*, align 8
  %i = alloca i32, align 4
  %temp = alloca i32, align 4
  %values = alloca %struct.aper_size_info_32*, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !4848, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4850, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.declare(metadata i32* %temp, metadata !4852, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.declare(metadata %struct.aper_size_info_32** %values, metadata !4854, metadata !DIExpression()), !dbg !4855
  %call = call %struct.amd_northbridge* @node_to_amd_nb(i32 0) #6, !dbg !4856
  %misc = getelementptr inbounds %struct.amd_northbridge, %struct.amd_northbridge* %call, i32 0, i32 1, !dbg !4857
  %0 = load %struct.pci_dev*, %struct.pci_dev** %misc, align 8, !dbg !4857
  store %struct.pci_dev* %0, %struct.pci_dev** %dev, align 8, !dbg !4858
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4859
  %cmp = icmp eq %struct.pci_dev* %1, null, !dbg !4861
  br i1 %cmp, label %if.then, label %if.end, !dbg !4862

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4863
  br label %return, !dbg !4863

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4864
  %call1 = call i32 @pci_read_config_dword(%struct.pci_dev* %2, i32 144, i32* %temp) #6, !dbg !4865
  %3 = load i32, i32* %temp, align 4, !dbg !4866
  %and = and i32 %3, 14, !dbg !4867
  store i32 %and, i32* %temp, align 4, !dbg !4868
  store %struct.aper_size_info_32* getelementptr inbounds ([7 x %struct.aper_size_info_32], [7 x %struct.aper_size_info_32]* @amd64_aperture_sizes, i64 0, i64 0), %struct.aper_size_info_32** %values, align 8, !dbg !4869
  store i32 0, i32* %i, align 4, !dbg !4870
  br label %for.cond, !dbg !4872

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4, !dbg !4873
  %5 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !4875
  %driver = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %5, i32 0, i32 1, !dbg !4876
  %6 = load %struct.agp_bridge_driver*, %struct.agp_bridge_driver** %driver, align 8, !dbg !4876
  %num_aperture_sizes = getelementptr inbounds %struct.agp_bridge_driver, %struct.agp_bridge_driver* %6, i32 0, i32 2, !dbg !4877
  %7 = load i32, i32* %num_aperture_sizes, align 8, !dbg !4877
  %cmp2 = icmp slt i32 %4, %7, !dbg !4878
  br i1 %cmp2, label %for.body, label %for.end, !dbg !4879

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %temp, align 4, !dbg !4880
  %9 = load %struct.aper_size_info_32*, %struct.aper_size_info_32** %values, align 8, !dbg !4883
  %10 = load i32, i32* %i, align 4, !dbg !4884
  %idxprom = sext i32 %10 to i64, !dbg !4883
  %arrayidx = getelementptr %struct.aper_size_info_32, %struct.aper_size_info_32* %9, i64 %idxprom, !dbg !4883
  %size_value = getelementptr inbounds %struct.aper_size_info_32, %struct.aper_size_info_32* %arrayidx, i32 0, i32 3, !dbg !4885
  %11 = load i32, i32* %size_value, align 4, !dbg !4885
  %cmp3 = icmp eq i32 %8, %11, !dbg !4886
  br i1 %cmp3, label %if.then4, label %if.end7, !dbg !4887

if.then4:                                         ; preds = %for.body
  %12 = load %struct.aper_size_info_32*, %struct.aper_size_info_32** %values, align 8, !dbg !4888
  %13 = load i32, i32* %i, align 4, !dbg !4890
  %idx.ext = sext i32 %13 to i64, !dbg !4891
  %add.ptr = getelementptr %struct.aper_size_info_32, %struct.aper_size_info_32* %12, i64 %idx.ext, !dbg !4891
  %14 = bitcast %struct.aper_size_info_32* %add.ptr to i8*, !dbg !4892
  %15 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !4893
  %current_size = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %15, i32 0, i32 4, !dbg !4894
  store i8* %14, i8** %current_size, align 8, !dbg !4895
  %16 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !4896
  %previous_size = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %16, i32 0, i32 3, !dbg !4897
  store i8* %14, i8** %previous_size, align 8, !dbg !4898
  %17 = load i32, i32* %i, align 4, !dbg !4899
  %18 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !4900
  %aperture_size_idx = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %18, i32 0, i32 20, !dbg !4901
  store i32 %17, i32* %aperture_size_idx, align 4, !dbg !4902
  %19 = load %struct.aper_size_info_32*, %struct.aper_size_info_32** %values, align 8, !dbg !4903
  %20 = load i32, i32* %i, align 4, !dbg !4904
  %idxprom5 = sext i32 %20 to i64, !dbg !4903
  %arrayidx6 = getelementptr %struct.aper_size_info_32, %struct.aper_size_info_32* %19, i64 %idxprom5, !dbg !4903
  %size = getelementptr inbounds %struct.aper_size_info_32, %struct.aper_size_info_32* %arrayidx6, i32 0, i32 0, !dbg !4905
  %21 = load i32, i32* %size, align 4, !dbg !4905
  store i32 %21, i32* %retval, align 4, !dbg !4906
  br label %return, !dbg !4906

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !4907

for.inc:                                          ; preds = %if.end7
  %22 = load i32, i32* %i, align 4, !dbg !4908
  %inc = add i32 %22, 1, !dbg !4908
  store i32 %inc, i32* %i, align 4, !dbg !4908
  br label %for.cond, !dbg !4909, !llvm.loop !4910

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4912
  br label %return, !dbg !4912

return:                                           ; preds = %for.end, %if.then4, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !4913
  ret i32 %23, !dbg !4913
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @amd_8151_configure() #4 !dbg !4914 {
entry:
  %retval = alloca i32, align 4
  %gatt_bus = alloca i64, align 8
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i64* %gatt_bus, metadata !4915, metadata !DIExpression()), !dbg !4916
  %0 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !4917
  %gatt_table_real = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %0, i32 0, i32 8, !dbg !4918
  %1 = load i32*, i32** %gatt_table_real, align 8, !dbg !4918
  %2 = bitcast i32* %1 to i8*, !dbg !4917
  %call = call i64 @virt_to_phys(i8* %2) #6, !dbg !4919
  store i64 %call, i64* %gatt_bus, align 8, !dbg !4916
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4920, metadata !DIExpression()), !dbg !4921
  %call1 = call zeroext i1 @amd_nb_has_feature(i32 1) #6, !dbg !4922
  br i1 %call1, label %if.end, label %if.then, !dbg !4924

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4925
  br label %return, !dbg !4925

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4926
  br label %for.cond, !dbg !4928

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !4929
  %call2 = call zeroext i16 @amd_nb_num() #6, !dbg !4931
  %conv = zext i16 %call2 to i32, !dbg !4931
  %cmp = icmp slt i32 %3, %conv, !dbg !4932
  br i1 %cmp, label %for.body, label %for.end, !dbg !4933

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !4934
  %call4 = call %struct.amd_northbridge* @node_to_amd_nb(i32 %4) #6, !dbg !4936
  %misc = getelementptr inbounds %struct.amd_northbridge, %struct.amd_northbridge* %call4, i32 0, i32 1, !dbg !4937
  %5 = load %struct.pci_dev*, %struct.pci_dev** %misc, align 8, !dbg !4937
  %6 = load i64, i64* %gatt_bus, align 8, !dbg !4938
  %call5 = call i64 @amd64_configure(%struct.pci_dev* %5, i64 %6) #6, !dbg !4939
  %7 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !4940
  %gart_bus_addr = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %7, i32 0, i32 12, !dbg !4941
  store i64 %call5, i64* %gart_bus_addr, align 8, !dbg !4942
  br label %for.inc, !dbg !4943

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !4944
  %inc = add i32 %8, 1, !dbg !4944
  store i32 %inc, i32* %i, align 4, !dbg !4944
  br label %for.cond, !dbg !4945, !llvm.loop !4946

for.end:                                          ; preds = %for.cond
  call void @amd_flush_garts() #6, !dbg !4948
  store i32 0, i32* %retval, align 4, !dbg !4949
  br label %return, !dbg !4949

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !4950
  ret i32 %9, !dbg !4950
}

; Function Attrs: noredzone
declare dso_local void @agp_generic_enable(%struct.agp_bridge_data*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @amd64_cleanup() #4 !dbg !4951 {
entry:
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  %dev = alloca %struct.pci_dev*, align 8
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !4952, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4954, metadata !DIExpression()), !dbg !4955
  %call = call zeroext i1 @amd_nb_has_feature(i32 1) #6, !dbg !4956
  br i1 %call, label %if.end, label %if.then, !dbg !4958

if.then:                                          ; preds = %entry
  br label %for.end, !dbg !4959

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4960
  br label %for.cond, !dbg !4962

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i32, i32* %i, align 4, !dbg !4963
  %call1 = call zeroext i16 @amd_nb_num() #6, !dbg !4965
  %conv = zext i16 %call1 to i32, !dbg !4965
  %cmp = icmp slt i32 %0, %conv, !dbg !4966
  br i1 %cmp, label %for.body, label %for.end, !dbg !4967

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !4968, metadata !DIExpression()), !dbg !4970
  %1 = load i32, i32* %i, align 4, !dbg !4971
  %call3 = call %struct.amd_northbridge* @node_to_amd_nb(i32 %1) #6, !dbg !4972
  %misc = getelementptr inbounds %struct.amd_northbridge, %struct.amd_northbridge* %call3, i32 0, i32 1, !dbg !4973
  %2 = load %struct.pci_dev*, %struct.pci_dev** %misc, align 8, !dbg !4973
  store %struct.pci_dev* %2, %struct.pci_dev** %dev, align 8, !dbg !4970
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4974
  %call4 = call i32 @pci_read_config_dword(%struct.pci_dev* %3, i32 144, i32* %tmp) #6, !dbg !4975
  %4 = load i32, i32* %tmp, align 4, !dbg !4976
  %and = and i32 %4, -2, !dbg !4976
  store i32 %and, i32* %tmp, align 4, !dbg !4976
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4977
  %6 = load i32, i32* %tmp, align 4, !dbg !4978
  %call5 = call i32 @pci_write_config_dword(%struct.pci_dev* %5, i32 144, i32 %6) #6, !dbg !4979
  br label %for.inc, !dbg !4980

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !4981
  %inc = add i32 %7, 1, !dbg !4981
  store i32 %inc, i32* %i, align 4, !dbg !4981
  br label %for.cond, !dbg !4982, !llvm.loop !4983

for.end:                                          ; preds = %if.then, %for.cond
  ret void, !dbg !4985
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @amd64_tlbflush(%struct.agp_memory* %temp) #4 !dbg !4986 {
entry:
  %temp.addr = alloca %struct.agp_memory*, align 8
  store %struct.agp_memory* %temp, %struct.agp_memory** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.agp_memory** %temp.addr, metadata !4987, metadata !DIExpression()), !dbg !4988
  call void @amd_flush_garts() #6, !dbg !4989
  ret void, !dbg !4990
}

; Function Attrs: noredzone
declare dso_local i64 @agp_generic_mask_memory(%struct.agp_bridge_data*, i64, i32) #2

; Function Attrs: noredzone
declare dso_local void @global_cache_flush() #2

; Function Attrs: noredzone
declare dso_local i32 @agp_generic_create_gatt_table(%struct.agp_bridge_data*) #2

; Function Attrs: noredzone
declare dso_local i32 @agp_generic_free_gatt_table(%struct.agp_bridge_data*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @amd64_insert_memory(%struct.agp_memory* %mem, i64 %pg_start, i32 %type) #4 !dbg !4991 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.agp_memory*, align 8
  %pg_start.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %num_entries = alloca i32, align 4
  %tmp = alloca i64, align 8
  %mask_type = alloca i32, align 4
  %bridge = alloca %struct.agp_bridge_data*, align 8
  %pte = alloca i32, align 4
  store %struct.agp_memory* %mem, %struct.agp_memory** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.agp_memory** %mem.addr, metadata !4992, metadata !DIExpression()), !dbg !4993
  store i64 %pg_start, i64* %pg_start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pg_start.addr, metadata !4994, metadata !DIExpression()), !dbg !4995
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4996, metadata !DIExpression()), !dbg !4997
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4998, metadata !DIExpression()), !dbg !4999
  call void @llvm.dbg.declare(metadata i32* %j, metadata !5000, metadata !DIExpression()), !dbg !5001
  call void @llvm.dbg.declare(metadata i32* %num_entries, metadata !5002, metadata !DIExpression()), !dbg !5003
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !5004, metadata !DIExpression()), !dbg !5005
  call void @llvm.dbg.declare(metadata i32* %mask_type, metadata !5006, metadata !DIExpression()), !dbg !5007
  call void @llvm.dbg.declare(metadata %struct.agp_bridge_data** %bridge, metadata !5008, metadata !DIExpression()), !dbg !5009
  %0 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !5010
  %bridge1 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %0, i32 0, i32 2, !dbg !5011
  %1 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge1, align 8, !dbg !5011
  store %struct.agp_bridge_data* %1, %struct.agp_bridge_data** %bridge, align 8, !dbg !5009
  call void @llvm.dbg.declare(metadata i32* %pte, metadata !5012, metadata !DIExpression()), !dbg !5013
  %call = call i32 @agp_num_entries() #6, !dbg !5014
  store i32 %call, i32* %num_entries, align 4, !dbg !5015
  %2 = load i32, i32* %type.addr, align 4, !dbg !5016
  %3 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !5018
  %type2 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %3, i32 0, i32 8, !dbg !5019
  %4 = load i32, i32* %type2, align 8, !dbg !5019
  %cmp = icmp ne i32 %2, %4, !dbg !5020
  br i1 %cmp, label %if.then, label %if.end, !dbg !5021

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5022
  br label %return, !dbg !5022

if.end:                                           ; preds = %entry
  %5 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge, align 8, !dbg !5023
  %driver = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %5, i32 0, i32 1, !dbg !5024
  %6 = load %struct.agp_bridge_driver*, %struct.agp_bridge_driver** %driver, align 8, !dbg !5024
  %agp_type_to_mask_type = getelementptr inbounds %struct.agp_bridge_driver, %struct.agp_bridge_driver* %6, i32 0, i32 24, !dbg !5025
  %7 = load i32 (%struct.agp_bridge_data*, i32)*, i32 (%struct.agp_bridge_data*, i32)** %agp_type_to_mask_type, align 8, !dbg !5025
  %8 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge, align 8, !dbg !5026
  %9 = load i32, i32* %type.addr, align 4, !dbg !5027
  %call3 = call i32 %7(%struct.agp_bridge_data* %8, i32 %9) #6, !dbg !5023
  store i32 %call3, i32* %mask_type, align 4, !dbg !5028
  %10 = load i32, i32* %mask_type, align 4, !dbg !5029
  %cmp4 = icmp ne i32 %10, 0, !dbg !5031
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5032

if.then5:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5033
  br label %return, !dbg !5033

if.end6:                                          ; preds = %if.end
  %11 = load i64, i64* %pg_start.addr, align 8, !dbg !5034
  %12 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !5036
  %page_count = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %12, i32 0, i32 4, !dbg !5037
  %13 = load i64, i64* %page_count, align 8, !dbg !5037
  %add = add i64 %11, %13, !dbg !5038
  %14 = load i32, i32* %num_entries, align 4, !dbg !5039
  %conv = sext i32 %14 to i64, !dbg !5039
  %cmp7 = icmp ugt i64 %add, %conv, !dbg !5040
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !5041

if.then9:                                         ; preds = %if.end6
  store i32 -22, i32* %retval, align 4, !dbg !5042
  br label %return, !dbg !5042

if.end10:                                         ; preds = %if.end6
  %15 = load i64, i64* %pg_start.addr, align 8, !dbg !5043
  %conv11 = trunc i64 %15 to i32, !dbg !5043
  store i32 %conv11, i32* %j, align 4, !dbg !5044
  br label %while.cond, !dbg !5045

while.cond:                                       ; preds = %if.end26, %if.end10
  %16 = load i32, i32* %j, align 4, !dbg !5046
  %conv12 = sext i32 %16 to i64, !dbg !5046
  %17 = load i64, i64* %pg_start.addr, align 8, !dbg !5047
  %18 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !5048
  %page_count13 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %18, i32 0, i32 4, !dbg !5049
  %19 = load i64, i64* %page_count13, align 8, !dbg !5049
  %add14 = add i64 %17, %19, !dbg !5050
  %cmp15 = icmp ult i64 %conv12, %add14, !dbg !5051
  br i1 %cmp15, label %while.body, label %while.end, !dbg !5045

while.body:                                       ; preds = %while.cond
  %20 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !5052
  %gatt_table = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %20, i32 0, i32 7, !dbg !5052
  %21 = load i32*, i32** %gatt_table, align 8, !dbg !5052
  %22 = load i32, i32* %j, align 4, !dbg !5052
  %idx.ext = sext i32 %22 to i64, !dbg !5052
  %add.ptr = getelementptr i32, i32* %21, i64 %idx.ext, !dbg !5052
  %23 = bitcast i32* %add.ptr to i8*, !dbg !5052
  %call17 = call i32 @readl(i8* %23) #6, !dbg !5052
  %tobool = icmp ne i32 %call17, 0, !dbg !5052
  br i1 %tobool, label %lor.lhs.false, label %if.end26, !dbg !5052

lor.lhs.false:                                    ; preds = %while.body
  %24 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !5052
  %gatt_table18 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %24, i32 0, i32 7, !dbg !5052
  %25 = load i32*, i32** %gatt_table18, align 8, !dbg !5052
  %26 = load i32, i32* %j, align 4, !dbg !5052
  %idx.ext19 = sext i32 %26 to i64, !dbg !5052
  %add.ptr20 = getelementptr i32, i32* %25, i64 %idx.ext19, !dbg !5052
  %27 = bitcast i32* %add.ptr20 to i8*, !dbg !5052
  %call21 = call i32 @readl(i8* %27) #6, !dbg !5052
  %conv22 = zext i32 %call21 to i64, !dbg !5052
  %28 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !5052
  %scratch_page = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %28, i32 0, i32 9, !dbg !5052
  %29 = load i64, i64* %scratch_page, align 8, !dbg !5052
  %cmp23 = icmp eq i64 %conv22, %29, !dbg !5052
  br i1 %cmp23, label %if.end26, label %if.then25, !dbg !5055

if.then25:                                        ; preds = %lor.lhs.false
  store i32 -16, i32* %retval, align 4, !dbg !5056
  br label %return, !dbg !5056

if.end26:                                         ; preds = %lor.lhs.false, %while.body
  %30 = load i32, i32* %j, align 4, !dbg !5057
  %inc = add i32 %30, 1, !dbg !5057
  store i32 %inc, i32* %j, align 4, !dbg !5057
  br label %while.cond, !dbg !5045, !llvm.loop !5058

while.end:                                        ; preds = %while.cond
  %31 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !5060
  %is_flushed = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %31, i32 0, i32 11, !dbg !5062
  %32 = load i8, i8* %is_flushed, align 1, !dbg !5062
  %tobool27 = trunc i8 %32 to i1, !dbg !5062
  br i1 %tobool27, label %if.end30, label %if.then28, !dbg !5063

if.then28:                                        ; preds = %while.end
  call void @global_cache_flush() #6, !dbg !5064
  %33 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !5066
  %is_flushed29 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %33, i32 0, i32 11, !dbg !5067
  store i8 1, i8* %is_flushed29, align 1, !dbg !5068
  br label %if.end30, !dbg !5069

if.end30:                                         ; preds = %if.then28, %while.end
  store i32 0, i32* %i, align 4, !dbg !5070
  %34 = load i64, i64* %pg_start.addr, align 8, !dbg !5072
  %conv31 = trunc i64 %34 to i32, !dbg !5072
  store i32 %conv31, i32* %j, align 4, !dbg !5073
  br label %for.cond, !dbg !5074

for.cond:                                         ; preds = %for.inc, %if.end30
  %35 = load i32, i32* %i, align 4, !dbg !5075
  %conv32 = sext i32 %35 to i64, !dbg !5075
  %36 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !5077
  %page_count33 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %36, i32 0, i32 4, !dbg !5078
  %37 = load i64, i64* %page_count33, align 8, !dbg !5078
  %cmp34 = icmp ult i64 %conv32, %37, !dbg !5079
  br i1 %cmp34, label %for.body, label %for.end, !dbg !5080

for.body:                                         ; preds = %for.cond
  %38 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !5081
  %driver36 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %38, i32 0, i32 1, !dbg !5083
  %39 = load %struct.agp_bridge_driver*, %struct.agp_bridge_driver** %driver36, align 8, !dbg !5083
  %mask_memory = getelementptr inbounds %struct.agp_bridge_driver, %struct.agp_bridge_driver* %39, i32 0, i32 12, !dbg !5084
  %40 = load i64 (%struct.agp_bridge_data*, i64, i32)*, i64 (%struct.agp_bridge_data*, i64, i32)** %mask_memory, align 8, !dbg !5084
  %41 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !5085
  %42 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !5086
  %pages = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %42, i32 0, i32 3, !dbg !5086
  %43 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !5086
  %44 = load i32, i32* %i, align 4, !dbg !5086
  %idxprom = sext i32 %44 to i64, !dbg !5086
  %arrayidx = getelementptr %struct.page*, %struct.page** %43, i64 %idxprom, !dbg !5086
  %45 = load %struct.page*, %struct.page** %arrayidx, align 8, !dbg !5086
  %46 = load i64, i64* @vmemmap_base, align 8, !dbg !5086
  %47 = inttoptr i64 %46 to %struct.page*, !dbg !5086
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %45 to i64, !dbg !5086
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %47 to i64, !dbg !5086
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5086
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !5086
  %shl = shl i64 %sub.ptr.div, 12, !dbg !5086
  %48 = load i32, i32* %mask_type, align 4, !dbg !5087
  %call37 = call i64 %40(%struct.agp_bridge_data* %41, i64 %shl, i32 %48) #6, !dbg !5081
  store i64 %call37, i64* %tmp, align 8, !dbg !5088
  br label %do.body, !dbg !5089

do.body:                                          ; preds = %for.body
  %49 = load i64, i64* %tmp, align 8, !dbg !5090
  %and = and i64 %49, -1099511623684, !dbg !5090
  %tobool38 = icmp ne i64 %and, 0, !dbg !5090
  %lnot = xor i1 %tobool38, true, !dbg !5090
  %lnot39 = xor i1 %lnot, true, !dbg !5090
  %lnot.ext = zext i1 %lnot39 to i32, !dbg !5090
  %conv40 = sext i32 %lnot.ext to i64, !dbg !5090
  %tobool41 = icmp ne i64 %conv40, 0, !dbg !5090
  br i1 %tobool41, label %if.then42, label %if.end50, !dbg !5093

if.then42:                                        ; preds = %do.body
  br label %do.body43, !dbg !5090

do.body43:                                        ; preds = %if.then42
  br label %do.body44, !dbg !5094

do.body44:                                        ; preds = %do.body43
  br label %do.end, !dbg !5096

do.end:                                           ; preds = %do.body44
  br label %do.body45, !dbg !5094

do.body45:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 86, i32 0, i64 12) #8, !dbg !5098, !srcloc !5100
  br label %do.end46, !dbg !5098

do.end46:                                         ; preds = %do.body45
  br label %do.body47, !dbg !5094

do.body47:                                        ; preds = %do.end46
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 235) #8, !dbg !5101, !srcloc !5104
  unreachable, !dbg !5105

do.end48:                                         ; No predecessors!
  br label %do.end49, !dbg !5094

do.end49:                                         ; preds = %do.end48
  br label %if.end50, !dbg !5094

if.end50:                                         ; preds = %do.end49, %do.body
  br label %do.end51, !dbg !5093

do.end51:                                         ; preds = %if.end50
  %50 = load i64, i64* %tmp, align 8, !dbg !5106
  %and52 = and i64 %50, 1095216660480, !dbg !5107
  %shr = lshr i64 %and52, 28, !dbg !5108
  %conv53 = trunc i64 %shr to i32, !dbg !5109
  store i32 %conv53, i32* %pte, align 4, !dbg !5110
  %51 = load i64, i64* %tmp, align 8, !dbg !5111
  %and54 = and i64 %51, 4294963200, !dbg !5112
  %52 = load i32, i32* %pte, align 4, !dbg !5113
  %conv55 = zext i32 %52 to i64, !dbg !5113
  %or = or i64 %conv55, %and54, !dbg !5113
  %conv56 = trunc i64 %or to i32, !dbg !5113
  store i32 %conv56, i32* %pte, align 4, !dbg !5113
  %53 = load i32, i32* %pte, align 4, !dbg !5114
  %or57 = or i32 %53, 3, !dbg !5114
  store i32 %or57, i32* %pte, align 4, !dbg !5114
  %54 = load i32, i32* %pte, align 4, !dbg !5115
  %55 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !5116
  %gatt_table58 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %55, i32 0, i32 7, !dbg !5117
  %56 = load i32*, i32** %gatt_table58, align 8, !dbg !5117
  %57 = load i32, i32* %j, align 4, !dbg !5118
  %idx.ext59 = sext i32 %57 to i64, !dbg !5119
  %add.ptr60 = getelementptr i32, i32* %56, i64 %idx.ext59, !dbg !5119
  %58 = bitcast i32* %add.ptr60 to i8*, !dbg !5116
  call void @writel(i32 %54, i8* %58) #6, !dbg !5120
  %59 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !5121
  %gatt_table61 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %59, i32 0, i32 7, !dbg !5122
  %60 = load i32*, i32** %gatt_table61, align 8, !dbg !5122
  %61 = load i32, i32* %j, align 4, !dbg !5123
  %idx.ext62 = sext i32 %61 to i64, !dbg !5124
  %add.ptr63 = getelementptr i32, i32* %60, i64 %idx.ext62, !dbg !5124
  %62 = bitcast i32* %add.ptr63 to i8*, !dbg !5121
  %call64 = call i32 @readl(i8* %62) #6, !dbg !5125
  br label %for.inc, !dbg !5126

for.inc:                                          ; preds = %do.end51
  %63 = load i32, i32* %i, align 4, !dbg !5127
  %inc65 = add i32 %63, 1, !dbg !5127
  store i32 %inc65, i32* %i, align 4, !dbg !5127
  %64 = load i32, i32* %j, align 4, !dbg !5128
  %inc66 = add i32 %64, 1, !dbg !5128
  store i32 %inc66, i32* %j, align 4, !dbg !5128
  br label %for.cond, !dbg !5129, !llvm.loop !5130

for.end:                                          ; preds = %for.cond
  %65 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !5132
  call void @amd64_tlbflush(%struct.agp_memory* %65) #6, !dbg !5133
  store i32 0, i32* %retval, align 4, !dbg !5134
  br label %return, !dbg !5134

return:                                           ; preds = %for.end, %if.then25, %if.then9, %if.then5, %if.then
  %66 = load i32, i32* %retval, align 4, !dbg !5135
  ret i32 %66, !dbg !5135
}

; Function Attrs: noredzone
declare dso_local i32 @agp_generic_remove_memory(%struct.agp_memory*, i64, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.agp_memory* @agp_generic_alloc_by_type(i64, i32) #2

; Function Attrs: noredzone
declare dso_local void @agp_generic_free_by_type(%struct.agp_memory*) #2

; Function Attrs: noredzone
declare dso_local %struct.page* @agp_generic_alloc_page(%struct.agp_bridge_data*) #2

; Function Attrs: noredzone
declare dso_local i32 @agp_generic_alloc_pages(%struct.agp_bridge_data*, %struct.agp_memory*, i64) #2

; Function Attrs: noredzone
declare dso_local void @agp_generic_destroy_page(%struct.page*, i32) #2

; Function Attrs: noredzone
declare dso_local void @agp_generic_destroy_pages(%struct.agp_memory*) #2

; Function Attrs: noredzone
declare dso_local i32 @agp_generic_type_to_mask_type(%struct.agp_bridge_data*, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.amd_northbridge* @node_to_amd_nb(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @virt_to_phys(i8* %address) #4 !dbg !5136 {
entry:
  %address.addr = alloca i8*, align 8
  store i8* %address, i8** %address.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !5142, metadata !DIExpression()), !dbg !5143
  %0 = load i8*, i8** %address.addr, align 8, !dbg !5144
  %1 = ptrtoint i8* %0 to i64, !dbg !5144
  %call = call i64 @__phys_addr_nodebug(i64 %1) #6, !dbg !5144
  ret i64 %call, !dbg !5145
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @amd_nb_has_feature(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @amd64_configure(%struct.pci_dev* %hammer, i64 %gatt_table) #4 !dbg !5146 {
entry:
  %hammer.addr = alloca %struct.pci_dev*, align 8
  %gatt_table.addr = alloca i64, align 8
  %aperturebase = alloca i64, align 8
  %tmp = alloca i32, align 4
  %aper_base = alloca i64, align 8
  store %struct.pci_dev* %hammer, %struct.pci_dev** %hammer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %hammer.addr, metadata !5149, metadata !DIExpression()), !dbg !5150
  store i64 %gatt_table, i64* %gatt_table.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %gatt_table.addr, metadata !5151, metadata !DIExpression()), !dbg !5152
  call void @llvm.dbg.declare(metadata i64* %aperturebase, metadata !5153, metadata !DIExpression()), !dbg !5154
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !5155, metadata !DIExpression()), !dbg !5156
  call void @llvm.dbg.declare(metadata i64* %aper_base, metadata !5157, metadata !DIExpression()), !dbg !5158
  %0 = load %struct.pci_dev*, %struct.pci_dev** %hammer.addr, align 8, !dbg !5159
  %call = call i32 @pci_read_config_dword(%struct.pci_dev* %0, i32 148, i32* %tmp) #6, !dbg !5160
  %1 = load i32, i32* %tmp, align 4, !dbg !5161
  %conv = zext i32 %1 to i64, !dbg !5162
  %shl = shl i64 %conv, 25, !dbg !5163
  store i64 %shl, i64* %aperturebase, align 8, !dbg !5164
  %2 = load i64, i64* %aperturebase, align 8, !dbg !5165
  %and = and i64 %2, -16, !dbg !5166
  store i64 %and, i64* %aper_base, align 8, !dbg !5167
  %3 = load %struct.pci_dev*, %struct.pci_dev** %hammer.addr, align 8, !dbg !5168
  %4 = load i64, i64* %gatt_table.addr, align 8, !dbg !5169
  call void @enable_gart_translation(%struct.pci_dev* %3, i64 %4) #6, !dbg !5170
  %5 = load i64, i64* %aper_base, align 8, !dbg !5171
  ret i64 %5, !dbg !5172
}

; Function Attrs: noredzone
declare dso_local void @amd_flush_garts() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__phys_addr_nodebug(i64 %x) #4 !dbg !5173 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr, metadata !5177, metadata !DIExpression()), !dbg !5178
  call void @llvm.dbg.declare(metadata i64* %y, metadata !5179, metadata !DIExpression()), !dbg !5180
  %0 = load i64, i64* %x.addr, align 8, !dbg !5181
  %sub = sub i64 %0, -2147483648, !dbg !5182
  store i64 %sub, i64* %y, align 8, !dbg !5180
  %1 = load i64, i64* %y, align 8, !dbg !5183
  %2 = load i64, i64* %x.addr, align 8, !dbg !5184
  %3 = load i64, i64* %y, align 8, !dbg !5185
  %cmp = icmp ugt i64 %2, %3, !dbg !5186
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5187

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* @phys_base, align 8, !dbg !5188
  br label %cond.end, !dbg !5187

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* @page_offset_base, align 8, !dbg !5189
  %sub1 = sub i64 -2147483648, %5, !dbg !5190
  br label %cond.end, !dbg !5187

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !5187
  %add = add i64 %1, %cond, !dbg !5191
  store i64 %add, i64* %x.addr, align 8, !dbg !5192
  %6 = load i64, i64* %x.addr, align 8, !dbg !5193
  ret i64 %6, !dbg !5194
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @enable_gart_translation(%struct.pci_dev* %dev, i64 %addr) #4 !dbg !5195 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %addr.addr = alloca i64, align 8
  %tmp = alloca i32, align 4
  %ctl = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5199, metadata !DIExpression()), !dbg !5200
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !5201, metadata !DIExpression()), !dbg !5202
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !5203, metadata !DIExpression()), !dbg !5204
  call void @llvm.dbg.declare(metadata i32* %ctl, metadata !5205, metadata !DIExpression()), !dbg !5206
  %0 = load i64, i64* %addr.addr, align 8, !dbg !5207
  %shr = lshr i64 %0, 12, !dbg !5207
  store i64 %shr, i64* %addr.addr, align 8, !dbg !5207
  %1 = load i64, i64* %addr.addr, align 8, !dbg !5208
  %conv = trunc i64 %1 to i32, !dbg !5209
  %shl = shl i32 %conv, 4, !dbg !5210
  store i32 %shl, i32* %tmp, align 4, !dbg !5211
  %2 = load i32, i32* %tmp, align 4, !dbg !5212
  %and = and i32 %2, -16, !dbg !5212
  store i32 %and, i32* %tmp, align 4, !dbg !5212
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5213
  %4 = load i32, i32* %tmp, align 4, !dbg !5214
  %call = call i32 @pci_write_config_dword(%struct.pci_dev* %3, i32 152, i32 %4) #6, !dbg !5215
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5216
  %call1 = call i32 @pci_read_config_dword(%struct.pci_dev* %5, i32 144, i32* %ctl) #6, !dbg !5217
  %6 = load i32, i32* %ctl, align 4, !dbg !5218
  %or = or i32 %6, 65, !dbg !5218
  store i32 %or, i32* %ctl, align 4, !dbg !5218
  %7 = load i32, i32* %ctl, align 4, !dbg !5219
  %and2 = and i32 %7, -49, !dbg !5219
  store i32 %and2, i32* %ctl, align 4, !dbg !5219
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5220
  %9 = load i32, i32* %ctl, align 4, !dbg !5221
  %call3 = call i32 @pci_write_config_dword(%struct.pci_dev* %8, i32 144, i32 %9) #6, !dbg !5222
  ret void, !dbg !5223
}

; Function Attrs: noredzone
declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @agp_num_entries() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #4 !dbg !5224 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5229, metadata !DIExpression()), !dbg !5230
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5231, metadata !DIExpression()), !dbg !5230
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5230
  %1 = bitcast i8* %0 to i32*, !dbg !5230
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #8, !dbg !5230, !srcloc !5232
  store i32 %2, i32* %ret, align 4, !dbg !5230
  %3 = load i32, i32* %ret, align 4, !dbg !5230
  ret i32 %3, !dbg !5230
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #4 !dbg !5233 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5236, metadata !DIExpression()), !dbg !5237
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5238, metadata !DIExpression()), !dbg !5237
  %0 = load i32, i32* %val.addr, align 4, !dbg !5237
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5237
  %2 = bitcast i8* %1 to i32*, !dbg !5237
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #8, !dbg !5237, !srcloc !5239
  ret void, !dbg !5237
}

; Function Attrs: noredzone
declare dso_local i32 @amd_cache_northbridges() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fix_northbridge(%struct.pci_dev* %nb, %struct.pci_dev* %agp, i16 zeroext %cap) #4 !dbg !5240 {
entry:
  %retval = alloca i32, align 4
  %nb.addr = alloca %struct.pci_dev*, align 8
  %agp.addr = alloca %struct.pci_dev*, align 8
  %cap.addr = alloca i16, align 2
  %aper = alloca i64, align 8
  %nb_aper = alloca i64, align 8
  %order = alloca i32, align 4
  %nb_order = alloca i32, align 4
  %nb_base = alloca i32, align 4
  %apsize = alloca i16, align 2
  store %struct.pci_dev* %nb, %struct.pci_dev** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %nb.addr, metadata !5243, metadata !DIExpression()), !dbg !5244
  store %struct.pci_dev* %agp, %struct.pci_dev** %agp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %agp.addr, metadata !5245, metadata !DIExpression()), !dbg !5246
  store i16 %cap, i16* %cap.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %cap.addr, metadata !5247, metadata !DIExpression()), !dbg !5248
  call void @llvm.dbg.declare(metadata i64* %aper, metadata !5249, metadata !DIExpression()), !dbg !5250
  call void @llvm.dbg.declare(metadata i64* %nb_aper, metadata !5251, metadata !DIExpression()), !dbg !5252
  call void @llvm.dbg.declare(metadata i32* %order, metadata !5253, metadata !DIExpression()), !dbg !5254
  store i32 0, i32* %order, align 4, !dbg !5254
  call void @llvm.dbg.declare(metadata i32* %nb_order, metadata !5255, metadata !DIExpression()), !dbg !5256
  call void @llvm.dbg.declare(metadata i32* %nb_base, metadata !5257, metadata !DIExpression()), !dbg !5258
  call void @llvm.dbg.declare(metadata i16* %apsize, metadata !5259, metadata !DIExpression()), !dbg !5260
  %0 = load %struct.pci_dev*, %struct.pci_dev** %nb.addr, align 8, !dbg !5261
  %call = call i32 @pci_read_config_dword(%struct.pci_dev* %0, i32 144, i32* %nb_order) #6, !dbg !5262
  %1 = load i32, i32* %nb_order, align 4, !dbg !5263
  %shr = lshr i32 %1, 1, !dbg !5264
  %and = and i32 %shr, 7, !dbg !5265
  store i32 %and, i32* %nb_order, align 4, !dbg !5266
  %2 = load %struct.pci_dev*, %struct.pci_dev** %nb.addr, align 8, !dbg !5267
  %call1 = call i32 @pci_read_config_dword(%struct.pci_dev* %2, i32 148, i32* %nb_base) #6, !dbg !5268
  %3 = load i32, i32* %nb_base, align 4, !dbg !5269
  %conv = zext i32 %3 to i64, !dbg !5270
  %shl = shl i64 %conv, 25, !dbg !5271
  store i64 %shl, i64* %nb_aper, align 8, !dbg !5272
  %4 = load %struct.pci_dev*, %struct.pci_dev** %agp.addr, align 8, !dbg !5273
  %5 = load i16, i16* %cap.addr, align 2, !dbg !5274
  %conv2 = zext i16 %5 to i32, !dbg !5274
  %add = add i32 %conv2, 20, !dbg !5275
  %call3 = call i32 @pci_read_config_word(%struct.pci_dev* %4, i32 %add, i16* %apsize) #6, !dbg !5276
  %6 = load i16, i16* %apsize, align 2, !dbg !5277
  %conv4 = zext i16 %6 to i32, !dbg !5277
  %cmp = icmp eq i32 %conv4, 65535, !dbg !5279
  br i1 %cmp, label %if.then, label %if.end9, !dbg !5280

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %nb_aper, align 8, !dbg !5281
  %8 = load i32, i32* %nb_order, align 4, !dbg !5284
  %shl6 = shl i32 33554432, %8, !dbg !5285
  %call7 = call i32 @agp_aperture_valid(i64 %7, i32 %shl6) #6, !dbg !5286
  %tobool = icmp ne i32 %call7, 0, !dbg !5286
  br i1 %tobool, label %if.then8, label %if.end, !dbg !5287

if.then8:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !5288
  br label %return, !dbg !5288

if.end:                                           ; preds = %if.then
  store i32 -1, i32* %retval, align 4, !dbg !5289
  br label %return, !dbg !5289

if.end9:                                          ; preds = %entry
  %9 = load i16, i16* %apsize, align 2, !dbg !5290
  %conv10 = zext i16 %9 to i32, !dbg !5290
  %and11 = and i32 %conv10, 4095, !dbg !5290
  %conv12 = trunc i32 %and11 to i16, !dbg !5290
  store i16 %conv12, i16* %apsize, align 2, !dbg !5290
  %10 = load i16, i16* %apsize, align 2, !dbg !5291
  %conv13 = zext i16 %10 to i32, !dbg !5291
  %and14 = and i32 %conv13, 255, !dbg !5293
  %tobool15 = icmp ne i32 %and14, 0, !dbg !5293
  br i1 %tobool15, label %if.then16, label %if.end19, !dbg !5294

if.then16:                                        ; preds = %if.end9
  %11 = load i16, i16* %apsize, align 2, !dbg !5295
  %conv17 = zext i16 %11 to i32, !dbg !5295
  %or = or i32 %conv17, 3840, !dbg !5295
  %conv18 = trunc i32 %or to i16, !dbg !5295
  store i16 %conv18, i16* %apsize, align 2, !dbg !5295
  br label %if.end19, !dbg !5296

if.end19:                                         ; preds = %if.then16, %if.end9
  %12 = load i16, i16* %apsize, align 2, !dbg !5297
  %13 = call i1 @llvm.is.constant.i16(i16 %12), !dbg !5297
  br i1 %13, label %cond.true, label %cond.false, !dbg !5297

cond.true:                                        ; preds = %if.end19
  %14 = load i16, i16* %apsize, align 2, !dbg !5297
  %conv20 = zext i16 %14 to i64, !dbg !5297
  %and21 = and i64 %conv20, 1, !dbg !5297
  %tobool22 = icmp ne i64 %and21, 0, !dbg !5297
  %lnot = xor i1 %tobool22, true, !dbg !5297
  %lnot23 = xor i1 %lnot, true, !dbg !5297
  %lnot.ext = zext i1 %lnot23 to i32, !dbg !5297
  %15 = load i16, i16* %apsize, align 2, !dbg !5297
  %conv24 = zext i16 %15 to i64, !dbg !5297
  %and25 = and i64 %conv24, 2, !dbg !5297
  %tobool26 = icmp ne i64 %and25, 0, !dbg !5297
  %lnot27 = xor i1 %tobool26, true, !dbg !5297
  %lnot29 = xor i1 %lnot27, true, !dbg !5297
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !5297
  %add31 = add i32 %lnot.ext, %lnot.ext30, !dbg !5297
  %16 = load i16, i16* %apsize, align 2, !dbg !5297
  %conv32 = zext i16 %16 to i64, !dbg !5297
  %and33 = and i64 %conv32, 4, !dbg !5297
  %tobool34 = icmp ne i64 %and33, 0, !dbg !5297
  %lnot35 = xor i1 %tobool34, true, !dbg !5297
  %lnot37 = xor i1 %lnot35, true, !dbg !5297
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !5297
  %add39 = add i32 %add31, %lnot.ext38, !dbg !5297
  %17 = load i16, i16* %apsize, align 2, !dbg !5297
  %conv40 = zext i16 %17 to i64, !dbg !5297
  %and41 = and i64 %conv40, 8, !dbg !5297
  %tobool42 = icmp ne i64 %and41, 0, !dbg !5297
  %lnot43 = xor i1 %tobool42, true, !dbg !5297
  %lnot45 = xor i1 %lnot43, true, !dbg !5297
  %lnot.ext46 = zext i1 %lnot45 to i32, !dbg !5297
  %add47 = add i32 %add39, %lnot.ext46, !dbg !5297
  %18 = load i16, i16* %apsize, align 2, !dbg !5297
  %conv48 = zext i16 %18 to i64, !dbg !5297
  %and49 = and i64 %conv48, 16, !dbg !5297
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5297
  %lnot51 = xor i1 %tobool50, true, !dbg !5297
  %lnot53 = xor i1 %lnot51, true, !dbg !5297
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !5297
  %add55 = add i32 %add47, %lnot.ext54, !dbg !5297
  %19 = load i16, i16* %apsize, align 2, !dbg !5297
  %conv56 = zext i16 %19 to i64, !dbg !5297
  %and57 = and i64 %conv56, 32, !dbg !5297
  %tobool58 = icmp ne i64 %and57, 0, !dbg !5297
  %lnot59 = xor i1 %tobool58, true, !dbg !5297
  %lnot61 = xor i1 %lnot59, true, !dbg !5297
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !5297
  %add63 = add i32 %add55, %lnot.ext62, !dbg !5297
  %20 = load i16, i16* %apsize, align 2, !dbg !5297
  %conv64 = zext i16 %20 to i64, !dbg !5297
  %and65 = and i64 %conv64, 64, !dbg !5297
  %tobool66 = icmp ne i64 %and65, 0, !dbg !5297
  %lnot67 = xor i1 %tobool66, true, !dbg !5297
  %lnot69 = xor i1 %lnot67, true, !dbg !5297
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !5297
  %add71 = add i32 %add63, %lnot.ext70, !dbg !5297
  %21 = load i16, i16* %apsize, align 2, !dbg !5297
  %conv72 = zext i16 %21 to i64, !dbg !5297
  %and73 = and i64 %conv72, 128, !dbg !5297
  %tobool74 = icmp ne i64 %and73, 0, !dbg !5297
  %lnot75 = xor i1 %tobool74, true, !dbg !5297
  %lnot77 = xor i1 %lnot75, true, !dbg !5297
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !5297
  %add79 = add i32 %add71, %lnot.ext78, !dbg !5297
  %22 = load i16, i16* %apsize, align 2, !dbg !5297
  %conv80 = zext i16 %22 to i32, !dbg !5297
  %shr81 = ashr i32 %conv80, 8, !dbg !5297
  %conv82 = sext i32 %shr81 to i64, !dbg !5297
  %and83 = and i64 %conv82, 1, !dbg !5297
  %tobool84 = icmp ne i64 %and83, 0, !dbg !5297
  %lnot85 = xor i1 %tobool84, true, !dbg !5297
  %lnot87 = xor i1 %lnot85, true, !dbg !5297
  %lnot.ext88 = zext i1 %lnot87 to i32, !dbg !5297
  %23 = load i16, i16* %apsize, align 2, !dbg !5297
  %conv89 = zext i16 %23 to i32, !dbg !5297
  %shr90 = ashr i32 %conv89, 8, !dbg !5297
  %conv91 = sext i32 %shr90 to i64, !dbg !5297
  %and92 = and i64 %conv91, 2, !dbg !5297
  %tobool93 = icmp ne i64 %and92, 0, !dbg !5297
  %lnot94 = xor i1 %tobool93, true, !dbg !5297
  %lnot96 = xor i1 %lnot94, true, !dbg !5297
  %lnot.ext97 = zext i1 %lnot96 to i32, !dbg !5297
  %add98 = add i32 %lnot.ext88, %lnot.ext97, !dbg !5297
  %24 = load i16, i16* %apsize, align 2, !dbg !5297
  %conv99 = zext i16 %24 to i32, !dbg !5297
  %shr100 = ashr i32 %conv99, 8, !dbg !5297
  %conv101 = sext i32 %shr100 to i64, !dbg !5297
  %and102 = and i64 %conv101, 4, !dbg !5297
  %tobool103 = icmp ne i64 %and102, 0, !dbg !5297
  %lnot104 = xor i1 %tobool103, true, !dbg !5297
  %lnot106 = xor i1 %lnot104, true, !dbg !5297
  %lnot.ext107 = zext i1 %lnot106 to i32, !dbg !5297
  %add108 = add i32 %add98, %lnot.ext107, !dbg !5297
  %25 = load i16, i16* %apsize, align 2, !dbg !5297
  %conv109 = zext i16 %25 to i32, !dbg !5297
  %shr110 = ashr i32 %conv109, 8, !dbg !5297
  %conv111 = sext i32 %shr110 to i64, !dbg !5297
  %and112 = and i64 %conv111, 8, !dbg !5297
  %tobool113 = icmp ne i64 %and112, 0, !dbg !5297
  %lnot114 = xor i1 %tobool113, true, !dbg !5297
  %lnot116 = xor i1 %lnot114, true, !dbg !5297
  %lnot.ext117 = zext i1 %lnot116 to i32, !dbg !5297
  %add118 = add i32 %add108, %lnot.ext117, !dbg !5297
  %26 = load i16, i16* %apsize, align 2, !dbg !5297
  %conv119 = zext i16 %26 to i32, !dbg !5297
  %shr120 = ashr i32 %conv119, 8, !dbg !5297
  %conv121 = sext i32 %shr120 to i64, !dbg !5297
  %and122 = and i64 %conv121, 16, !dbg !5297
  %tobool123 = icmp ne i64 %and122, 0, !dbg !5297
  %lnot124 = xor i1 %tobool123, true, !dbg !5297
  %lnot126 = xor i1 %lnot124, true, !dbg !5297
  %lnot.ext127 = zext i1 %lnot126 to i32, !dbg !5297
  %add128 = add i32 %add118, %lnot.ext127, !dbg !5297
  %27 = load i16, i16* %apsize, align 2, !dbg !5297
  %conv129 = zext i16 %27 to i32, !dbg !5297
  %shr130 = ashr i32 %conv129, 8, !dbg !5297
  %conv131 = sext i32 %shr130 to i64, !dbg !5297
  %and132 = and i64 %conv131, 32, !dbg !5297
  %tobool133 = icmp ne i64 %and132, 0, !dbg !5297
  %lnot134 = xor i1 %tobool133, true, !dbg !5297
  %lnot136 = xor i1 %lnot134, true, !dbg !5297
  %lnot.ext137 = zext i1 %lnot136 to i32, !dbg !5297
  %add138 = add i32 %add128, %lnot.ext137, !dbg !5297
  %28 = load i16, i16* %apsize, align 2, !dbg !5297
  %conv139 = zext i16 %28 to i32, !dbg !5297
  %shr140 = ashr i32 %conv139, 8, !dbg !5297
  %conv141 = sext i32 %shr140 to i64, !dbg !5297
  %and142 = and i64 %conv141, 64, !dbg !5297
  %tobool143 = icmp ne i64 %and142, 0, !dbg !5297
  %lnot144 = xor i1 %tobool143, true, !dbg !5297
  %lnot146 = xor i1 %lnot144, true, !dbg !5297
  %lnot.ext147 = zext i1 %lnot146 to i32, !dbg !5297
  %add148 = add i32 %add138, %lnot.ext147, !dbg !5297
  %29 = load i16, i16* %apsize, align 2, !dbg !5297
  %conv149 = zext i16 %29 to i32, !dbg !5297
  %shr150 = ashr i32 %conv149, 8, !dbg !5297
  %conv151 = sext i32 %shr150 to i64, !dbg !5297
  %and152 = and i64 %conv151, 128, !dbg !5297
  %tobool153 = icmp ne i64 %and152, 0, !dbg !5297
  %lnot154 = xor i1 %tobool153, true, !dbg !5297
  %lnot156 = xor i1 %lnot154, true, !dbg !5297
  %lnot.ext157 = zext i1 %lnot156 to i32, !dbg !5297
  %add158 = add i32 %add148, %lnot.ext157, !dbg !5297
  %add159 = add i32 %add79, %add158, !dbg !5297
  br label %cond.end, !dbg !5297

cond.false:                                       ; preds = %if.end19
  %30 = load i16, i16* %apsize, align 2, !dbg !5297
  %conv160 = zext i16 %30 to i32, !dbg !5297
  %call161 = call i32 @__arch_hweight16(i32 %conv160) #6, !dbg !5297
  br label %cond.end, !dbg !5297

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add159, %cond.true ], [ %call161, %cond.false ], !dbg !5297
  %sub = sub i32 7, %cond, !dbg !5298
  store i32 %sub, i32* %order, align 4, !dbg !5299
  %31 = load %struct.pci_dev*, %struct.pci_dev** %agp.addr, align 8, !dbg !5300
  %call162 = call i64 @pci_bus_address(%struct.pci_dev* %31, i32 0) #6, !dbg !5301
  store i64 %call162, i64* %aper, align 8, !dbg !5302
  %32 = load i32, i32* %order, align 4, !dbg !5303
  %cmp163 = icmp sge i32 %32, 0, !dbg !5305
  br i1 %cmp163, label %land.lhs.true, label %if.end172, !dbg !5306

land.lhs.true:                                    ; preds = %cond.end
  %33 = load i64, i64* %aper, align 8, !dbg !5307
  %34 = load i32, i32* %order, align 4, !dbg !5308
  %add165 = add i32 20, %34, !dbg !5309
  %sh_prom = zext i32 %add165 to i64, !dbg !5310
  %shl166 = shl i64 32, %sh_prom, !dbg !5310
  %add167 = add i64 %33, %shl166, !dbg !5311
  %cmp168 = icmp ugt i64 %add167, 4294967296, !dbg !5312
  br i1 %cmp168, label %if.then170, label %if.end172, !dbg !5313

if.then170:                                       ; preds = %land.lhs.true
  %35 = load %struct.pci_dev*, %struct.pci_dev** %agp.addr, align 8, !dbg !5314
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 41, !dbg !5314
  %36 = load i32, i32* %order, align 4, !dbg !5314
  %shl171 = shl i32 32, %36, !dbg !5314
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 %shl171) #7, !dbg !5314
  %37 = load i32, i32* %nb_order, align 4, !dbg !5316
  store i32 %37, i32* %order, align 4, !dbg !5317
  br label %if.end172, !dbg !5318

if.end172:                                        ; preds = %if.then170, %land.lhs.true, %cond.end
  %38 = load i32, i32* %nb_order, align 4, !dbg !5319
  %39 = load i32, i32* %order, align 4, !dbg !5321
  %cmp173 = icmp uge i32 %38, %39, !dbg !5322
  br i1 %cmp173, label %if.then175, label %if.end181, !dbg !5323

if.then175:                                       ; preds = %if.end172
  %40 = load i64, i64* %nb_aper, align 8, !dbg !5324
  %41 = load i32, i32* %nb_order, align 4, !dbg !5327
  %shl176 = shl i32 33554432, %41, !dbg !5328
  %call177 = call i32 @agp_aperture_valid(i64 %40, i32 %shl176) #6, !dbg !5329
  %tobool178 = icmp ne i32 %call177, 0, !dbg !5329
  br i1 %tobool178, label %if.then179, label %if.end180, !dbg !5330

if.then179:                                       ; preds = %if.then175
  store i32 0, i32* %retval, align 4, !dbg !5331
  br label %return, !dbg !5331

if.end180:                                        ; preds = %if.then175
  br label %if.end181, !dbg !5332

if.end181:                                        ; preds = %if.end180, %if.end172
  %42 = load %struct.pci_dev*, %struct.pci_dev** %agp.addr, align 8, !dbg !5333
  %dev182 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 41, !dbg !5333
  %43 = load i64, i64* %aper, align 8, !dbg !5333
  %44 = load i32, i32* %order, align 4, !dbg !5333
  %shl183 = shl i32 32, %44, !dbg !5333
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev182, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i64 %43, i32 %shl183) #7, !dbg !5333
  %45 = load i32, i32* %order, align 4, !dbg !5334
  %cmp184 = icmp slt i32 %45, 0, !dbg !5336
  br i1 %cmp184, label %if.then189, label %lor.lhs.false, !dbg !5337

lor.lhs.false:                                    ; preds = %if.end181
  %46 = load i64, i64* %aper, align 8, !dbg !5338
  %47 = load i32, i32* %order, align 4, !dbg !5339
  %shl186 = shl i32 33554432, %47, !dbg !5340
  %call187 = call i32 @agp_aperture_valid(i64 %46, i32 %shl186) #6, !dbg !5341
  %tobool188 = icmp ne i32 %call187, 0, !dbg !5341
  br i1 %tobool188, label %if.end190, label %if.then189, !dbg !5342

if.then189:                                       ; preds = %lor.lhs.false, %if.end181
  store i32 -1, i32* %retval, align 4, !dbg !5343
  br label %return, !dbg !5343

if.end190:                                        ; preds = %lor.lhs.false
  %48 = load %struct.pci_dev*, %struct.pci_dev** %nb.addr, align 8, !dbg !5344
  %49 = load i32, i32* %order, align 4, !dbg !5345
  call void @gart_set_size_and_enable(%struct.pci_dev* %48, i32 %49) #6, !dbg !5346
  %50 = load %struct.pci_dev*, %struct.pci_dev** %nb.addr, align 8, !dbg !5347
  %51 = load i64, i64* %aper, align 8, !dbg !5348
  %shr191 = lshr i64 %51, 25, !dbg !5349
  %conv192 = trunc i64 %shr191 to i32, !dbg !5348
  %call193 = call i32 @pci_write_config_dword(%struct.pci_dev* %50, i32 148, i32 %conv192) #6, !dbg !5350
  store i32 0, i32* %retval, align 4, !dbg !5351
  br label %return, !dbg !5351

return:                                           ; preds = %if.end190, %if.then189, %if.then179, %if.end, %if.then8
  %52 = load i32, i32* %retval, align 4, !dbg !5352
  ret i32 %52, !dbg !5352
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i16*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @agp_aperture_valid(i64 %aper, i32 %size) #4 !dbg !5353 {
entry:
  %retval = alloca i32, align 4
  %aper.addr = alloca i64, align 8
  %size.addr = alloca i32, align 4
  store i64 %aper, i64* %aper.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %aper.addr, metadata !5356, metadata !DIExpression()), !dbg !5357
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5358, metadata !DIExpression()), !dbg !5359
  %0 = load i64, i64* %aper.addr, align 8, !dbg !5360
  %1 = load i32, i32* %size.addr, align 4, !dbg !5362
  %call = call i32 @aperture_valid(i64 %0, i32 %1, i32 33554432) #6, !dbg !5363
  %tobool = icmp ne i32 %call, 0, !dbg !5363
  br i1 %tobool, label %if.end, label %if.then, !dbg !5364

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5365
  br label %return, !dbg !5365

if.end:                                           ; preds = %entry
  %2 = load %struct.resource*, %struct.resource** @aperture_resource, align 8, !dbg !5366
  %tobool1 = icmp ne %struct.resource* %2, null, !dbg !5366
  br i1 %tobool1, label %if.end6, label %land.lhs.true, !dbg !5368

land.lhs.true:                                    ; preds = %if.end
  %3 = load i64, i64* %aper.addr, align 8, !dbg !5369
  %4 = load i32, i32* %size.addr, align 4, !dbg !5369
  %conv = zext i32 %4 to i64, !dbg !5369
  %call2 = call %struct.resource* @__request_region(%struct.resource* @iomem_resource, i64 %3, i64 %conv, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 0) #6, !dbg !5369
  store %struct.resource* %call2, %struct.resource** @aperture_resource, align 8, !dbg !5370
  %tobool3 = icmp ne %struct.resource* %call2, null, !dbg !5370
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !5371

if.then4:                                         ; preds = %land.lhs.true
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i64 0, i64 0)) #7, !dbg !5372
  store i32 0, i32* %retval, align 4, !dbg !5374
  br label %return, !dbg !5374

if.end6:                                          ; preds = %land.lhs.true, %if.end
  store i32 1, i32* %retval, align 4, !dbg !5375
  br label %return, !dbg !5375

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5376
  ret i32 %5, !dbg !5376
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i16(i16) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__arch_hweight16(i32 %w) #4 !dbg !5377 {
entry:
  %w.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %w.addr.i, metadata !5381, metadata !DIExpression()), !dbg !5383
  %res.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %res.i, metadata !5385, metadata !DIExpression()), !dbg !5386
  %w.addr = alloca i32, align 4
  store i32 %w, i32* %w.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %w.addr, metadata !5387, metadata !DIExpression()), !dbg !5388
  %0 = load i32, i32* %w.addr, align 4, !dbg !5389
  %and = and i32 %0, 65535, !dbg !5390
  store i32 %and, i32* %w.addr.i, align 4
  %1 = load i32, i32* %w.addr.i, align 4, !dbg !5391
  %2 = call i32 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight32\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .word ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .byte 663b-662b\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntl $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i32 %1) #9, !dbg !5392, !srcloc !5393
  store i32 %2, i32* %res.i, align 4, !dbg !5392
  %3 = load i32, i32* %res.i, align 4, !dbg !5394
  ret i32 %3, !dbg !5395
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pci_bus_address(%struct.pci_dev* %pdev, i32 %bar) #4 !dbg !5396 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %bar.addr = alloca i32, align 4
  %region = alloca %struct.pci_bus_region, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5400, metadata !DIExpression()), !dbg !5401
  store i32 %bar, i32* %bar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bar.addr, metadata !5402, metadata !DIExpression()), !dbg !5403
  call void @llvm.dbg.declare(metadata %struct.pci_bus_region* %region, metadata !5404, metadata !DIExpression()), !dbg !5409
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5410
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 1, !dbg !5411
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !5411
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5412
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 44, !dbg !5413
  %3 = load i32, i32* %bar.addr, align 4, !dbg !5414
  %idxprom = sext i32 %3 to i64, !dbg !5412
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 %idxprom, !dbg !5412
  call void @pcibios_resource_to_bus(%struct.pci_bus* %1, %struct.pci_bus_region* %region, %struct.resource* %arrayidx) #6, !dbg !5415
  %start = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %region, i32 0, i32 0, !dbg !5416
  %4 = load i64, i64* %start, align 8, !dbg !5416
  ret i64 %4, !dbg !5417
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gart_set_size_and_enable(%struct.pci_dev* %dev, i32 %order) #4 !dbg !5418 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %order.addr = alloca i32, align 4
  %ctl = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5421, metadata !DIExpression()), !dbg !5422
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !5423, metadata !DIExpression()), !dbg !5424
  call void @llvm.dbg.declare(metadata i32* %ctl, metadata !5425, metadata !DIExpression()), !dbg !5426
  %0 = load i32, i32* %order.addr, align 4, !dbg !5427
  %shl = shl i32 %0, 1, !dbg !5428
  store i32 %shl, i32* %ctl, align 4, !dbg !5429
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5430
  %2 = load i32, i32* %ctl, align 4, !dbg !5431
  %call = call i32 @pci_write_config_dword(%struct.pci_dev* %1, i32 144, i32 %2) #6, !dbg !5432
  ret void, !dbg !5433
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @aperture_valid(i64 %aper_base, i32 %aper_size, i32 %min_size) #4 !dbg !5434 {
entry:
  %retval = alloca i32, align 4
  %aper_base.addr = alloca i64, align 8
  %aper_size.addr = alloca i32, align 4
  %min_size.addr = alloca i32, align 4
  store i64 %aper_base, i64* %aper_base.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %aper_base.addr, metadata !5437, metadata !DIExpression()), !dbg !5438
  store i32 %aper_size, i32* %aper_size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %aper_size.addr, metadata !5439, metadata !DIExpression()), !dbg !5440
  store i32 %min_size, i32* %min_size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %min_size.addr, metadata !5441, metadata !DIExpression()), !dbg !5442
  %0 = load i64, i64* %aper_base.addr, align 8, !dbg !5443
  %tobool = icmp ne i64 %0, 0, !dbg !5443
  br i1 %tobool, label %if.end, label %if.then, !dbg !5445

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5446
  br label %return, !dbg !5446

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %aper_base.addr, align 8, !dbg !5447
  %2 = load i32, i32* %aper_size.addr, align 4, !dbg !5449
  %conv = zext i32 %2 to i64, !dbg !5449
  %add = add i64 %1, %conv, !dbg !5450
  %cmp = icmp ugt i64 %add, 4294967296, !dbg !5451
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5452

if.then2:                                         ; preds = %if.end
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !5453
  store i32 0, i32* %retval, align 4, !dbg !5455
  br label %return, !dbg !5455

if.end3:                                          ; preds = %if.end
  %3 = load i64, i64* %aper_base.addr, align 8, !dbg !5456
  %4 = load i64, i64* %aper_base.addr, align 8, !dbg !5458
  %5 = load i32, i32* %aper_size.addr, align 4, !dbg !5459
  %conv4 = zext i32 %5 to i64, !dbg !5459
  %add5 = add i64 %4, %conv4, !dbg !5460
  %call6 = call zeroext i1 @e820__mapped_any(i64 %3, i64 %add5, i32 1) #6, !dbg !5461
  br i1 %call6, label %if.then7, label %if.end9, !dbg !5462

if.then7:                                         ; preds = %if.end3
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i64 0, i64 0)) #7, !dbg !5463
  store i32 0, i32* %retval, align 4, !dbg !5465
  br label %return, !dbg !5465

if.end9:                                          ; preds = %if.end3
  %6 = load i32, i32* %aper_size.addr, align 4, !dbg !5466
  %7 = load i32, i32* %min_size.addr, align 4, !dbg !5468
  %cmp10 = icmp ult i32 %6, %7, !dbg !5469
  br i1 %cmp10, label %if.then12, label %if.end15, !dbg !5470

if.then12:                                        ; preds = %if.end9
  %8 = load i32, i32* %aper_size.addr, align 4, !dbg !5471
  %shr = lshr i32 %8, 20, !dbg !5473
  %9 = load i32, i32* %min_size.addr, align 4, !dbg !5474
  %shr13 = lshr i32 %9, 20, !dbg !5475
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i64 0, i64 0), i32 %shr, i32 %shr13) #7, !dbg !5476
  store i32 0, i32* %retval, align 4, !dbg !5477
  br label %return, !dbg !5477

if.end15:                                         ; preds = %if.end9
  store i32 1, i32* %retval, align 4, !dbg !5478
  br label %return, !dbg !5478

return:                                           ; preds = %if.end15, %if.then12, %if.then7, %if.then2, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5479
  ret i32 %10, !dbg !5479
}

; Function Attrs: noredzone
declare dso_local %struct.resource* @__request_region(%struct.resource*, i64, i64, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @e820__mapped_any(i64, i64, i32) #2

; Function Attrs: noredzone
declare dso_local void @pcibios_resource_to_bus(%struct.pci_bus*, %struct.pci_bus_region*, %struct.resource*) #2

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @pci_get_slot(%struct.pci_bus*, i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @pci_dev_put(%struct.pci_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #4 !dbg !5480 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5483, metadata !DIExpression()), !dbg !5484
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5485, metadata !DIExpression()), !dbg !5486
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5487
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5488
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5489
  store i8* %0, i8** %driver_data, align 8, !dbg !5490
  ret void, !dbg !5491
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_get_drvdata(%struct.pci_dev* %pdev) #4 !dbg !5492 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5495, metadata !DIExpression()), !dbg !5496
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5497
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !5498
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #6, !dbg !5499
  ret i8* %call, !dbg !5500
}

; Function Attrs: noredzone
declare dso_local void @__release_region(%struct.resource*, i64, i64) #2

; Function Attrs: noredzone
declare dso_local void @agp_remove_bridge(%struct.agp_bridge_data*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #4 !dbg !5501 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5504, metadata !DIExpression()), !dbg !5505
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5506
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5507
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5507
  ret i8* %1, !dbg !5508
}

; Function Attrs: noredzone
declare dso_local i32 @pci_save_state(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_choose_state(%struct.pci_dev*, i32) #2

; Function Attrs: noredzone
declare dso_local void @pci_restore_state(%struct.pci_dev*) #2

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4281, !4282, !4283, !4284}
!llvm.ident = !{!4285}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "agp_amd64_pci_driver", scope: !2, file: !3, line: 741, type: !4007, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !123, globals: !3008, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/char/agp/amd64-agp.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !101, !106, !111}
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "aper_size_type", file: !94, line: 45, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "drivers/char/agp/agp.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99, !100}
!96 = !DIEnumerator(name: "U8_APER_SIZE", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "U16_APER_SIZE", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "U32_APER_SIZE", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "LVL2_APER_SIZE", value: 3, isUnsigned: true)
!100 = !DIEnumerator(name: "FIXED_APER_SIZE", value: 4, isUnsigned: true)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "chipset_type", file: !102, line: 35, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/agp_backend.h", directory: "/home/lizy2001/genbc/linux")
!103 = !{!104, !105}
!104 = !DIEnumerator(name: "NOT_SUPPORTED", value: 0, isUnsigned: true)
!105 = !DIEnumerator(name: "SUPPORTED", value: 1, isUnsigned: true)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !107, line: 10, baseType: !7, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!108 = !{!109, !110}
!109 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!110 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "e820_type", file: !112, line: 10, baseType: !7, size: 32, elements: !113)
!112 = !DIFile(filename: "./arch/x86/include/asm/e820/types.h", directory: "/home/lizy2001/genbc/linux")
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122}
!114 = !DIEnumerator(name: "E820_TYPE_RAM", value: 1, isUnsigned: true)
!115 = !DIEnumerator(name: "E820_TYPE_RESERVED", value: 2, isUnsigned: true)
!116 = !DIEnumerator(name: "E820_TYPE_ACPI", value: 3, isUnsigned: true)
!117 = !DIEnumerator(name: "E820_TYPE_NVS", value: 4, isUnsigned: true)
!118 = !DIEnumerator(name: "E820_TYPE_UNUSABLE", value: 5, isUnsigned: true)
!119 = !DIEnumerator(name: "E820_TYPE_PMEM", value: 7, isUnsigned: true)
!120 = !DIEnumerator(name: "E820_TYPE_PRAM", value: 12, isUnsigned: true)
!121 = !DIEnumerator(name: "E820_TYPE_SOFT_RESERVED", value: 4026531839, isUnsigned: true)
!122 = !DIEnumerator(name: "E820_TYPE_RESERVED_KERN", value: 128, isUnsigned: true)
!123 = !{!124, !127, !128, !140, !141, !136, !144, !146, !3004, !7, !132, !3006}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !126, line: 76, flags: DIFlagFwdDecl)
!126 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aper_size_info_32", file: !94, line: 78, size: 128, elements: !130)
!130 = !{!131, !133, !134, !135}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !129, file: !94, line: 79, baseType: !132, size: 32)
!132 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !129, file: !94, line: 80, baseType: !132, size: 32, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !129, file: !94, line: 81, baseType: !132, size: 32, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "size_value", scope: !129, file: !94, line: 82, baseType: !136, size: 32, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !137, line: 21, baseType: !138)
!137 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !139, line: 27, baseType: !7)
!139 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!140 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !137, line: 23, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !139, line: 31, baseType: !143)
!143 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !145, line: 143, baseType: !141)
!145 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !148, line: 68, size: 512, align: 128, elements: !149)
!148 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!149 = !{!150, !151, !2996, !3003}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !148, line: 69, baseType: !140, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, scope: !147, file: !148, line: 77, baseType: !152, size: 320, offset: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !148, line: 77, size: 320, elements: !153)
!153 = !{!154, !2871, !2875, !2901, !2909, !2915, !2927, !2995}
!154 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !148, line: 78, baseType: !155, size: 320)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !148, line: 78, size: 320, elements: !156)
!156 = !{!157, !163, !2869, !2870}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !155, file: !148, line: 84, baseType: !158, size: 128)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !145, line: 178, size: 128, elements: !159)
!159 = !{!160, !162}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !158, file: !145, line: 179, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !158, file: !145, line: 179, baseType: !161, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !155, file: !148, line: 86, baseType: !164, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !166)
!166 = !{!167, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2864, !2865, !2866, !2867, !2868}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !165, file: !44, line: 452, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !170)
!170 = !{!171, !174, !175, !184, !191, !192, !2695, !2696, !2697, !2698, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2739, !2747, !2748, !2749, !2759, !2760, !2761, !2762}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !169, file: !44, line: 611, baseType: !172, size: 16)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !145, line: 19, baseType: !173)
!173 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !169, file: !44, line: 612, baseType: !173, size: 16, offset: 16)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !169, file: !44, line: 613, baseType: !176, size: 32, offset: 32)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !177, line: 23, baseType: !178)
!177 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 21, size: 32, elements: !179)
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !178, file: !177, line: 22, baseType: !181, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !145, line: 32, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !183, line: 49, baseType: !7)
!183 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!184 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !169, file: !44, line: 614, baseType: !185, size: 32, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !177, line: 28, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 26, size: 32, elements: !187)
!187 = !{!188}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !186, file: !177, line: 27, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !145, line: 33, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !183, line: 50, baseType: !7)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !169, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !169, file: !44, line: 622, baseType: !193, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !196)
!196 = !{!197, !2569, !2582, !2586, !2592, !2596, !2600, !2604, !2608, !2612, !2616, !2617, !2621, !2625, !2645, !2671, !2675, !2681, !2686, !2690, !2691}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !195, file: !44, line: 1865, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!201, !168, !201, !7}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !203, line: 89, size: 1536, elements: !204)
!203 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!204 = !{!205, !206, !216, !224, !225, !241, !242, !246, !273, !347, !2553, !2554, !2555, !2561, !2562, !2563}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !202, file: !203, line: 91, baseType: !7, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !202, file: !203, line: 92, baseType: !207, size: 32, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !208, line: 277, baseType: !209)
!208 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !208, line: 277, size: 32, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !209, file: !208, line: 277, baseType: !212, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !208, line: 70, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !208, line: 65, size: 32, elements: !214)
!214 = !{!215}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !213, file: !208, line: 66, baseType: !7, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !202, file: !203, line: 93, baseType: !217, size: 128, offset: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !218, line: 38, size: 128, elements: !219)
!218 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!219 = !{!220, !222}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !217, file: !218, line: 39, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !217, file: !218, line: 39, baseType: !223, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !202, file: !203, line: 94, baseType: !201, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !202, file: !203, line: 95, baseType: !226, size: 128, offset: 256)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !203, line: 47, size: 128, elements: !227)
!227 = !{!228, !237}
!228 = !DIDerivedType(tag: DW_TAG_member, scope: !226, file: !203, line: 48, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !226, file: !203, line: 48, size: 64, elements: !230)
!230 = !{!231, !236}
!231 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !203, line: 49, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !229, file: !203, line: 49, size: 64, elements: !233)
!233 = !{!234, !235}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !232, file: !203, line: 50, baseType: !136, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !232, file: !203, line: 50, baseType: !136, size: 32, offset: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !229, file: !203, line: 52, baseType: !141, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !226, file: !203, line: 54, baseType: !238, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!240 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !202, file: !203, line: 96, baseType: !168, size: 64, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !202, file: !203, line: 98, baseType: !243, size: 256, offset: 448)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 256, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !202, file: !203, line: 101, baseType: !247, size: 32, offset: 704)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !248, line: 25, size: 32, elements: !249)
!248 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!249 = !{!250}
!250 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !248, line: 26, baseType: !251, size: 32)
!251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !247, file: !248, line: 26, size: 32, elements: !252)
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !248, line: 30, baseType: !254, size: 32)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !251, file: !248, line: 30, size: 32, elements: !255)
!255 = !{!256, !272}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !254, file: !248, line: 31, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !258, line: 83, baseType: !259)
!258 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !258, line: 71, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, scope: !259, file: !258, line: 72, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !259, file: !258, line: 72, elements: !263)
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !262, file: !258, line: 73, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !258, line: 20, elements: !266)
!266 = !{!267}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !265, file: !258, line: 21, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !269, line: 25, baseType: !270)
!269 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !269, line: 25, elements: !271)
!271 = !{}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !254, file: !248, line: 32, baseType: !132, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !202, file: !203, line: 102, baseType: !274, size: 64, offset: 768)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !203, line: 135, size: 1024, align: 512, elements: !277)
!277 = !{!278, !282, !283, !290, !299, !303, !307, !311, !312, !316, !321, !333, !341}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !276, file: !203, line: 136, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!132, !201, !7}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !276, file: !203, line: 137, baseType: !279, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !276, file: !203, line: 138, baseType: !284, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!132, !287, !289}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !276, file: !203, line: 139, baseType: !291, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!132, !287, !7, !294, !297}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!296 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !276, file: !203, line: 141, baseType: !300, size: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!132, !287}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !276, file: !203, line: 142, baseType: !304, size: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!132, !201}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !276, file: !203, line: 143, baseType: !308, size: 64, offset: 384)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !201}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !276, file: !203, line: 144, baseType: !308, size: 64, offset: 448)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !276, file: !203, line: 145, baseType: !313, size: 64, offset: 512)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !201, !168}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !276, file: !203, line: 146, baseType: !317, size: 64, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!320, !201, !320, !132}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !276, file: !203, line: 147, baseType: !322, size: 64, offset: 640)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!325, !327}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !203, line: 18, flags: DIFlagFwdDecl)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !329, line: 8, size: 128, elements: !330)
!329 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !328, file: !329, line: 9, baseType: !325, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !328, file: !329, line: 10, baseType: !201, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !276, file: !203, line: 148, baseType: !334, size: 64, offset: 704)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!132, !337, !339}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !145, line: 30, baseType: !340)
!340 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !276, file: !203, line: 149, baseType: !342, size: 64, offset: 768)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!201, !201, !345}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !202, file: !203, line: 103, baseType: !348, size: 64, offset: 832)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !350)
!350 = !{!351, !352, !355, !356, !357, !361, !410, !495, !597, !680, !684, !685, !686, !687, !688, !697, !698, !699, !704, !708, !709, !712, !716, !719, !720, !721, !762, !2482, !2483, !2484, !2485, !2486, !2487, !2490, !2492, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2520, !2521, !2522, !2523, !2524, !2527, !2528, !2529, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !349, file: !44, line: 1417, baseType: !158, size: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !349, file: !44, line: 1418, baseType: !353, size: 32, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !145, line: 16, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !145, line: 13, baseType: !136)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !349, file: !44, line: 1419, baseType: !240, size: 8, offset: 160)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !349, file: !44, line: 1420, baseType: !140, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !349, file: !44, line: 1421, baseType: !358, size: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !145, line: 46, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !183, line: 88, baseType: !360)
!360 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !349, file: !44, line: 1422, baseType: !362, size: 64, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !364)
!364 = !{!365, !366, !367, !374, !378, !382, !386, !387, !388, !398, !401, !402, !403, !407, !408, !409}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !363, file: !44, line: 2229, baseType: !294, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !363, file: !44, line: 2230, baseType: !132, size: 32, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !363, file: !44, line: 2238, baseType: !368, size: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!132, !371}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !373, line: 28, flags: DIFlagFwdDecl)
!373 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!374 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !363, file: !44, line: 2239, baseType: !375, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !363, file: !44, line: 2240, baseType: !379, size: 64, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!201, !362, !132, !294, !127}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !363, file: !44, line: 2242, baseType: !383, size: 64, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !348}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !363, file: !44, line: 2243, baseType: !124, size: 64, offset: 384)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !363, file: !44, line: 2244, baseType: !362, size: 64, offset: 448)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !363, file: !44, line: 2245, baseType: !389, size: 64, offset: 512)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !145, line: 182, size: 64, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !389, file: !145, line: 183, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !145, line: 186, size: 128, elements: !394)
!394 = !{!395, !396}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !393, file: !145, line: 187, baseType: !392, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !393, file: !145, line: 187, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !363, file: !44, line: 2247, baseType: !399, offset: 576)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !400, line: 187, elements: !271)
!400 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!401 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !363, file: !44, line: 2248, baseType: !399, offset: 576)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !363, file: !44, line: 2249, baseType: !399, offset: 576)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !363, file: !44, line: 2250, baseType: !404, offset: 576)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 3)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !363, file: !44, line: 2252, baseType: !399, offset: 576)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !363, file: !44, line: 2253, baseType: !399, offset: 576)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !363, file: !44, line: 2254, baseType: !399, offset: 576)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !349, file: !44, line: 1423, baseType: !411, size: 64, offset: 384)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !414)
!414 = !{!415, !419, !423, !424, !428, !434, !438, !439, !440, !444, !448, !449, !450, !451, !457, !462, !463, !470, !471, !472, !473, !478, !494}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !413, file: !44, line: 1936, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!168, !348}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !413, file: !44, line: 1937, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !168}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !413, file: !44, line: 1938, baseType: !420, size: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !413, file: !44, line: 1940, baseType: !425, size: 64, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !168, !132}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !413, file: !44, line: 1941, baseType: !429, size: 64, offset: 256)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!132, !168, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !413, file: !44, line: 1942, baseType: !435, size: 64, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!132, !168}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !413, file: !44, line: 1943, baseType: !420, size: 64, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !413, file: !44, line: 1944, baseType: !383, size: 64, offset: 448)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !413, file: !44, line: 1945, baseType: !441, size: 64, offset: 512)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!132, !348, !132}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !413, file: !44, line: 1946, baseType: !445, size: 64, offset: 576)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!132, !348}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !413, file: !44, line: 1947, baseType: !445, size: 64, offset: 640)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !413, file: !44, line: 1948, baseType: !445, size: 64, offset: 704)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !413, file: !44, line: 1949, baseType: !445, size: 64, offset: 768)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !413, file: !44, line: 1950, baseType: !452, size: 64, offset: 832)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!132, !201, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !413, file: !44, line: 1951, baseType: !458, size: 64, offset: 896)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!132, !348, !461, !320}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !413, file: !44, line: 1952, baseType: !383, size: 64, offset: 960)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !413, file: !44, line: 1954, baseType: !464, size: 64, offset: 1024)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!132, !467, !201}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !469, line: 539, flags: DIFlagFwdDecl)
!469 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!470 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !413, file: !44, line: 1955, baseType: !464, size: 64, offset: 1088)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !413, file: !44, line: 1956, baseType: !464, size: 64, offset: 1152)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !413, file: !44, line: 1957, baseType: !464, size: 64, offset: 1216)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !413, file: !44, line: 1963, baseType: !474, size: 64, offset: 1280)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!132, !348, !146, !477}
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !145, line: 148, baseType: !7)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !413, file: !44, line: 1964, baseType: !479, size: 64, offset: 1344)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!482, !348, !483}
!482 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !485, line: 12, size: 256, elements: !486)
!485 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!486 = !{!487, !488, !489, !490, !491}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !484, file: !485, line: 13, baseType: !477, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !484, file: !485, line: 16, baseType: !132, size: 32, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !484, file: !485, line: 23, baseType: !140, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !484, file: !485, line: 30, baseType: !140, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !484, file: !485, line: 33, baseType: !492, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !148, line: 27, flags: DIFlagFwdDecl)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !413, file: !44, line: 1966, baseType: !479, size: 64, offset: 1408)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !349, file: !44, line: 1424, baseType: !496, size: 64, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !499)
!499 = !{!500, !566, !570, !574, !575, !576, !577, !578, !583, !588, !592}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !498, file: !38, line: 323, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!132, !504}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !506)
!506 = !{!507, !508, !509, !510, !511, !526, !527, !532, !533, !549, !550, !551}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !505, file: !38, line: 295, baseType: !393, size: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !505, file: !38, line: 296, baseType: !158, size: 128, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !505, file: !38, line: 297, baseType: !158, size: 128, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !505, file: !38, line: 298, baseType: !158, size: 128, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !505, file: !38, line: 299, baseType: !512, size: 192, offset: 512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !513, line: 53, size: 192, elements: !514)
!513 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!514 = !{!515, !524, !525}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !512, file: !513, line: 54, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !517, line: 13, baseType: !518)
!517 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !145, line: 175, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !145, line: 173, size: 64, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !519, file: !145, line: 174, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !137, line: 22, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !139, line: 30, baseType: !360)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !512, file: !513, line: 55, baseType: !257, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !512, file: !513, line: 59, baseType: !158, size: 128, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !505, file: !38, line: 300, baseType: !257, offset: 704)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !505, file: !38, line: 301, baseType: !528, size: 32, offset: 704)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !145, line: 168, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !145, line: 166, size: 32, elements: !530)
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !529, file: !145, line: 167, baseType: !132, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !505, file: !38, line: 302, baseType: !348, size: 64, offset: 768)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !505, file: !38, line: 303, baseType: !534, size: 64, offset: 832)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !535)
!535 = !{!536, !548}
!536 = !DIDerivedType(tag: DW_TAG_member, scope: !534, file: !38, line: 69, baseType: !537, size: 32)
!537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !534, file: !38, line: 69, size: 32, elements: !538)
!538 = !{!539, !540, !541}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !537, file: !38, line: 70, baseType: !176, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !537, file: !38, line: 71, baseType: !185, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !537, file: !38, line: 72, baseType: !542, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !543, line: 24, baseType: !544)
!543 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !543, line: 22, size: 32, elements: !545)
!545 = !{!546}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !544, file: !543, line: 23, baseType: !547, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !543, line: 20, baseType: !182)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !534, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !505, file: !38, line: 304, baseType: !358, size: 64, offset: 896)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !505, file: !38, line: 305, baseType: !140, size: 64, offset: 960)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !505, file: !38, line: 306, baseType: !552, size: 576, offset: 1024)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !553)
!553 = !{!554, !556, !557, !558, !559, !560, !561, !562, !565}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !552, file: !38, line: 206, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !360)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !552, file: !38, line: 207, baseType: !555, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !552, file: !38, line: 208, baseType: !555, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !552, file: !38, line: 209, baseType: !555, size: 64, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !552, file: !38, line: 210, baseType: !555, size: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !552, file: !38, line: 211, baseType: !555, size: 64, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !552, file: !38, line: 212, baseType: !555, size: 64, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !552, file: !38, line: 213, baseType: !563, size: 64, offset: 448)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !564, line: 8, baseType: !523)
!564 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!565 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !552, file: !38, line: 214, baseType: !563, size: 64, offset: 512)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !498, file: !38, line: 324, baseType: !567, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!504, !348, !132}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !498, file: !38, line: 325, baseType: !571, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !504}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !498, file: !38, line: 326, baseType: !501, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !498, file: !38, line: 327, baseType: !501, size: 64, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !498, file: !38, line: 328, baseType: !501, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !498, file: !38, line: 329, baseType: !441, size: 64, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !498, file: !38, line: 332, baseType: !579, size: 64, offset: 448)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!582, !168}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !498, file: !38, line: 333, baseType: !584, size: 64, offset: 512)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!132, !168, !587}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !498, file: !38, line: 335, baseType: !589, size: 64, offset: 576)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!132, !168, !582}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !498, file: !38, line: 337, baseType: !593, size: 64, offset: 640)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!132, !348, !596}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !349, file: !44, line: 1425, baseType: !598, size: 64, offset: 512)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !601)
!601 = !{!602, !606, !607, !611, !612, !613, !628, !651, !655, !656, !679}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !600, file: !38, line: 429, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!132, !348, !132, !132, !337}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !600, file: !38, line: 430, baseType: !441, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !600, file: !38, line: 431, baseType: !608, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!132, !348, !7}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !600, file: !38, line: 432, baseType: !608, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !600, file: !38, line: 433, baseType: !441, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !600, file: !38, line: 434, baseType: !614, size: 64, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!132, !348, !132, !617}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !626, !627}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !618, file: !38, line: 416, baseType: !132, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !618, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !618, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !618, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !618, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !618, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !618, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !618, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !600, file: !38, line: 435, baseType: !629, size: 64, offset: 384)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!132, !348, !534, !632}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !634)
!634 = !{!635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !633, file: !38, line: 344, baseType: !132, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !633, file: !38, line: 345, baseType: !141, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !633, file: !38, line: 346, baseType: !141, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !633, file: !38, line: 347, baseType: !141, size: 64, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !633, file: !38, line: 348, baseType: !141, size: 64, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !633, file: !38, line: 349, baseType: !141, size: 64, offset: 320)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !633, file: !38, line: 350, baseType: !141, size: 64, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !633, file: !38, line: 351, baseType: !522, size: 64, offset: 448)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !633, file: !38, line: 353, baseType: !522, size: 64, offset: 512)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !633, file: !38, line: 354, baseType: !132, size: 32, offset: 576)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !633, file: !38, line: 355, baseType: !132, size: 32, offset: 608)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !633, file: !38, line: 356, baseType: !141, size: 64, offset: 640)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !633, file: !38, line: 357, baseType: !141, size: 64, offset: 704)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !633, file: !38, line: 358, baseType: !141, size: 64, offset: 768)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !633, file: !38, line: 359, baseType: !522, size: 64, offset: 832)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !633, file: !38, line: 360, baseType: !132, size: 32, offset: 896)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !600, file: !38, line: 436, baseType: !652, size: 64, offset: 448)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!132, !348, !596, !632}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !600, file: !38, line: 438, baseType: !629, size: 64, offset: 512)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !600, file: !38, line: 439, baseType: !657, size: 64, offset: 576)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!132, !348, !660}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !661, file: !38, line: 410, baseType: !7, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !661, file: !38, line: 411, baseType: !665, size: 1344, offset: 64)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 1344, elements: !405)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !667)
!667 = !{!668, !669, !670, !671, !672, !673, !674, !675, !676, !678}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !666, file: !38, line: 396, baseType: !7, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !666, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !666, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !666, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !666, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !666, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !666, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !666, file: !38, line: 404, baseType: !143, size: 64, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !666, file: !38, line: 405, baseType: !677, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !145, line: 126, baseType: !141)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !666, file: !38, line: 406, baseType: !677, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !600, file: !38, line: 440, baseType: !608, size: 64, offset: 640)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !349, file: !44, line: 1426, baseType: !681, size: 64, offset: 576)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !683)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !349, file: !44, line: 1427, baseType: !140, size: 64, offset: 640)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !349, file: !44, line: 1428, baseType: !140, size: 64, offset: 704)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !349, file: !44, line: 1429, baseType: !140, size: 64, offset: 768)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !349, file: !44, line: 1430, baseType: !201, size: 64, offset: 832)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !349, file: !44, line: 1431, baseType: !689, size: 256, offset: 896)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !690, line: 35, size: 256, elements: !691)
!690 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!691 = !{!692, !693, !694, !696}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !689, file: !690, line: 36, baseType: !516, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !689, file: !690, line: 42, baseType: !516, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !689, file: !690, line: 46, baseType: !695, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !258, line: 29, baseType: !265)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !689, file: !690, line: 47, baseType: !158, size: 128, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !349, file: !44, line: 1432, baseType: !132, size: 32, offset: 1152)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !349, file: !44, line: 1433, baseType: !528, size: 32, offset: 1184)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !349, file: !44, line: 1437, baseType: !700, size: 64, offset: 1216)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!703 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !349, file: !44, line: 1449, baseType: !705, size: 64, offset: 1280)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !218, line: 34, size: 64, elements: !706)
!706 = !{!707}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !705, file: !218, line: 35, baseType: !221, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !349, file: !44, line: 1450, baseType: !158, size: 128, offset: 1344)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !349, file: !44, line: 1451, baseType: !710, size: 64, offset: 1472)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !349, file: !44, line: 1452, baseType: !713, size: 64, offset: 1536)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !715, line: 40, flags: DIFlagFwdDecl)
!715 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!716 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !349, file: !44, line: 1453, baseType: !717, size: 64, offset: 1600)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !349, file: !44, line: 1454, baseType: !393, size: 128, offset: 1664)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !349, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !349, file: !44, line: 1456, baseType: !722, size: 2432, offset: 1856)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !723)
!723 = !{!724, !725, !726, !728, !760}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !722, file: !38, line: 519, baseType: !7, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !722, file: !38, line: 520, baseType: !689, size: 256, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !722, file: !38, line: 521, baseType: !727, size: 192, offset: 320)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 192, elements: !405)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !722, file: !38, line: 522, baseType: !729, size: 1728, offset: 512)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 1728, elements: !405)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !731)
!731 = !{!732, !752, !753, !754, !755, !756, !757, !758, !759}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !730, file: !38, line: 223, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !735)
!735 = !{!736, !737, !750, !751}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !734, file: !38, line: 444, baseType: !132, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !734, file: !38, line: 445, baseType: !738, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !740)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !741)
!741 = !{!742, !743, !744, !745, !746, !747, !748, !749}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !740, file: !38, line: 311, baseType: !441, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !740, file: !38, line: 312, baseType: !441, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !740, file: !38, line: 313, baseType: !441, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !740, file: !38, line: 314, baseType: !441, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !740, file: !38, line: 315, baseType: !501, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !740, file: !38, line: 316, baseType: !501, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !740, file: !38, line: 317, baseType: !501, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !740, file: !38, line: 318, baseType: !593, size: 64, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !734, file: !38, line: 446, baseType: !124, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !734, file: !38, line: 447, baseType: !733, size: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !730, file: !38, line: 224, baseType: !132, size: 32, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !730, file: !38, line: 226, baseType: !158, size: 128, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !730, file: !38, line: 227, baseType: !140, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !730, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !730, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !730, file: !38, line: 230, baseType: !555, size: 64, offset: 384)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !730, file: !38, line: 231, baseType: !555, size: 64, offset: 448)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !730, file: !38, line: 232, baseType: !127, size: 64, offset: 512)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !722, file: !38, line: 523, baseType: !761, size: 192, offset: 2240)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, size: 192, elements: !405)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !349, file: !44, line: 1458, baseType: !763, size: 2112, offset: 4288)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !764)
!764 = !{!765, !766, !773}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !763, file: !44, line: 1411, baseType: !132, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !763, file: !44, line: 1412, baseType: !767, size: 128, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !768, line: 40, baseType: !769)
!768 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !768, line: 36, size: 128, elements: !770)
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !769, file: !768, line: 37, baseType: !257)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !769, file: !768, line: 38, baseType: !158, size: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !763, file: !44, line: 1413, baseType: !774, size: 1920, offset: 192)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !775, size: 1920, elements: !405)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !776, line: 12, size: 640, elements: !777)
!776 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!777 = !{!778, !794, !796, !2480, !2481}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !775, file: !776, line: 13, baseType: !779, size: 320)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !780, line: 17, size: 320, elements: !781)
!780 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!781 = !{!782, !783, !784, !785}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !779, file: !780, line: 18, baseType: !132, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !779, file: !780, line: 19, baseType: !132, size: 32, offset: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !779, file: !780, line: 20, baseType: !767, size: 128, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !779, file: !780, line: 22, baseType: !786, size: 128, align: 64, offset: 192)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !145, line: 216, size: 128, align: 64, elements: !787)
!787 = !{!788, !790}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !786, file: !145, line: 217, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !786, file: !145, line: 218, baseType: !791, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !789}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !775, file: !776, line: 14, baseType: !795, size: 64, offset: 320)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !775, file: !776, line: 15, baseType: !797, size: 64, offset: 384)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !798, line: 16, size: 64, elements: !799)
!798 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !797, file: !798, line: 17, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !715, line: 640, size: 48640, elements: !803)
!803 = !{!804, !810, !812, !813, !819, !820, !821, !822, !823, !824, !825, !826, !830, !855, !866, !958, !959, !960, !971, !972, !974, !975, !1772, !1773, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1850, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1865, !1866, !1867, !1869, !1870, !1871, !1872, !1873, !1874, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1898, !1903, !1904, !1905, !1906, !1907, !1911, !1914, !1917, !1920, !1923, !1927, !2028, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2076, !2077, !2078, !2079, !2080, !2085, !2086, !2087, !2090, !2091, !2094, !2097, !2100, !2101, !2141, !2144, !2145, !2224, !2225, !2228, !2229, !2232, !2233, !2234, !2238, !2239, !2240, !2253, !2254, !2255, !2265, !2270, !2271, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !802, file: !715, line: 646, baseType: !805, size: 128)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !806, line: 56, size: 128, elements: !807)
!806 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!807 = !{!808, !809}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !805, file: !806, line: 57, baseType: !140, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !805, file: !806, line: 58, baseType: !136, size: 32, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !802, file: !715, line: 649, baseType: !811, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !482)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !802, file: !715, line: 657, baseType: !127, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !802, file: !715, line: 658, baseType: !814, size: 32, offset: 256)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !815, line: 113, baseType: !816)
!815 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !815, line: 111, size: 32, elements: !817)
!817 = !{!818}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !816, file: !815, line: 112, baseType: !528, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !802, file: !715, line: 660, baseType: !7, size: 32, offset: 288)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !802, file: !715, line: 661, baseType: !7, size: 32, offset: 320)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !802, file: !715, line: 684, baseType: !132, size: 32, offset: 352)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !802, file: !715, line: 686, baseType: !132, size: 32, offset: 384)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !802, file: !715, line: 687, baseType: !132, size: 32, offset: 416)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !802, file: !715, line: 688, baseType: !132, size: 32, offset: 448)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !802, file: !715, line: 689, baseType: !7, size: 32, offset: 480)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !802, file: !715, line: 691, baseType: !827, size: 64, offset: 512)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !829)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !715, line: 691, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !802, file: !715, line: 692, baseType: !831, size: 832, offset: 576)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !715, line: 451, size: 832, elements: !832)
!832 = !{!833, !838, !846, !847, !848, !849, !850, !851, !852, !853}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !831, file: !715, line: 453, baseType: !834, size: 128)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !715, line: 325, size: 128, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !834, file: !715, line: 326, baseType: !140, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !834, file: !715, line: 327, baseType: !136, size: 32, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !831, file: !715, line: 454, baseType: !839, size: 192, align: 64, offset: 128)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !840, line: 24, size: 192, align: 64, elements: !841)
!840 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!841 = !{!842, !843, !845}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !839, file: !840, line: 25, baseType: !140, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !839, file: !840, line: 26, baseType: !844, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !839, file: !840, line: 27, baseType: !844, size: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !831, file: !715, line: 455, baseType: !158, size: 128, offset: 320)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !831, file: !715, line: 456, baseType: !7, size: 32, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !831, file: !715, line: 458, baseType: !141, size: 64, offset: 512)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !831, file: !715, line: 459, baseType: !141, size: 64, offset: 576)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !831, file: !715, line: 460, baseType: !141, size: 64, offset: 640)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !831, file: !715, line: 461, baseType: !141, size: 64, offset: 704)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !831, file: !715, line: 463, baseType: !141, size: 64, offset: 768)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !831, file: !715, line: 465, baseType: !854, offset: 832)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !715, line: 415, elements: !271)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !802, file: !715, line: 693, baseType: !856, size: 384, offset: 1408)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !715, line: 489, size: 384, elements: !857)
!857 = !{!858, !859, !860, !861, !862, !863, !864}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !856, file: !715, line: 490, baseType: !158, size: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !856, file: !715, line: 491, baseType: !140, size: 64, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !856, file: !715, line: 492, baseType: !140, size: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !856, file: !715, line: 493, baseType: !7, size: 32, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !856, file: !715, line: 494, baseType: !173, size: 16, offset: 288)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !856, file: !715, line: 495, baseType: !173, size: 16, offset: 304)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !856, file: !715, line: 497, baseType: !865, size: 64, offset: 320)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !802, file: !715, line: 697, baseType: !867, size: 1792, offset: 1792)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !715, line: 507, size: 1792, elements: !868)
!868 = !{!869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !955, !956}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !867, file: !715, line: 508, baseType: !839, size: 192, align: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !867, file: !715, line: 515, baseType: !141, size: 64, offset: 192)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !867, file: !715, line: 516, baseType: !141, size: 64, offset: 256)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !867, file: !715, line: 517, baseType: !141, size: 64, offset: 320)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !867, file: !715, line: 518, baseType: !141, size: 64, offset: 384)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !867, file: !715, line: 519, baseType: !141, size: 64, offset: 448)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !867, file: !715, line: 526, baseType: !522, size: 64, offset: 512)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !867, file: !715, line: 527, baseType: !141, size: 64, offset: 576)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !867, file: !715, line: 528, baseType: !7, size: 32, offset: 640)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !867, file: !715, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !867, file: !715, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !867, file: !715, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !867, file: !715, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !867, file: !715, line: 563, baseType: !883, size: 512, offset: 704)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !884)
!884 = !{!885, !893, !894, !899, !949, !952, !953, !954}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !883, file: !20, line: 119, baseType: !886, size: 256)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !887, line: 9, size: 256, elements: !888)
!887 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !886, file: !887, line: 10, baseType: !839, size: 192, align: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !886, file: !887, line: 11, baseType: !891, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !892, line: 29, baseType: !522)
!892 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !883, file: !20, line: 120, baseType: !891, size: 64, offset: 256)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !883, file: !20, line: 121, baseType: !895, size: 64, offset: 320)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!19, !898}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !883, file: !20, line: 122, baseType: !900, size: 64, offset: 384)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !902)
!902 = !{!903, !923, !924, !927, !932, !933, !944, !948}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !901, file: !20, line: 160, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !906)
!906 = !{!907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !905, file: !20, line: 215, baseType: !695)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !905, file: !20, line: 216, baseType: !7, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !905, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !905, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !905, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !905, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !905, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !905, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !905, file: !20, line: 233, baseType: !891, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !905, file: !20, line: 234, baseType: !898, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !905, file: !20, line: 235, baseType: !891, size: 64, offset: 256)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !905, file: !20, line: 236, baseType: !898, size: 64, offset: 320)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !905, file: !20, line: 237, baseType: !920, size: 4096, offset: 512)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !901, size: 4096, elements: !921)
!921 = !{!922}
!922 = !DISubrange(count: 8)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !901, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !901, file: !20, line: 162, baseType: !925, size: 32, offset: 96)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !145, line: 27, baseType: !926)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !183, line: 96, baseType: !132)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !901, file: !20, line: 163, baseType: !928, size: 32, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !208, line: 276, baseType: !929)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !208, line: 276, size: 32, elements: !930)
!930 = !{!931}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !929, file: !208, line: 276, baseType: !212, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !901, file: !20, line: 164, baseType: !898, size: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !901, file: !20, line: 165, baseType: !934, size: 128, offset: 256)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !887, line: 14, size: 128, elements: !935)
!935 = !{!936}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !934, file: !887, line: 15, baseType: !937, size: 128)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !840, line: 125, size: 128, elements: !938)
!938 = !{!939, !943}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !937, file: !840, line: 126, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !840, line: 31, size: 64, elements: !941)
!941 = !{!942}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !940, file: !840, line: 32, baseType: !844, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !937, file: !840, line: 127, baseType: !844, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !901, file: !20, line: 166, baseType: !945, size: 64, offset: 384)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!891}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !901, file: !20, line: 167, baseType: !891, size: 64, offset: 448)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !883, file: !20, line: 123, baseType: !950, size: 8, offset: 448)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !137, line: 17, baseType: !951)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !139, line: 21, baseType: !240)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !883, file: !20, line: 124, baseType: !950, size: 8, offset: 456)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !883, file: !20, line: 125, baseType: !950, size: 8, offset: 464)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !883, file: !20, line: 126, baseType: !950, size: 8, offset: 472)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !867, file: !715, line: 572, baseType: !883, size: 512, offset: 1216)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !867, file: !715, line: 580, baseType: !957, size: 64, offset: 1728)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !802, file: !715, line: 721, baseType: !7, size: 32, offset: 3584)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !802, file: !715, line: 722, baseType: !132, size: 32, offset: 3616)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !802, file: !715, line: 723, baseType: !961, size: 64, offset: 3648)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !963)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !964, line: 17, baseType: !965)
!964 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !964, line: 17, size: 64, elements: !966)
!966 = !{!967}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !965, file: !964, line: 17, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !969)
!969 = !{!970}
!970 = !DISubrange(count: 1)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !802, file: !715, line: 724, baseType: !963, size: 64, offset: 3712)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !802, file: !715, line: 749, baseType: !973, offset: 3776)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !715, line: 290, elements: !271)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !802, file: !715, line: 751, baseType: !158, size: 128, offset: 3776)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !802, file: !715, line: 757, baseType: !976, size: 64, offset: 3904)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !148, line: 388, size: 7296, elements: !978)
!978 = !{!979, !1768}
!979 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !148, line: 389, baseType: !980, size: 7296)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !148, line: 389, size: 7296, elements: !981)
!981 = !{!982, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1670, !1676, !1679, !1718, !1719, !1741, !1742, !1745, !1746, !1747, !1750, !1751, !1752, !1755, !1767}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !980, file: !148, line: 390, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !148, line: 305, size: 1472, elements: !985)
!985 = !{!986, !987, !988, !989, !990, !991, !992, !993, !1000, !1001, !1006, !1007, !1010, !1095, !1096, !1618, !1619, !1620}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !984, file: !148, line: 308, baseType: !140, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !984, file: !148, line: 309, baseType: !140, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !984, file: !148, line: 313, baseType: !983, size: 64, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !984, file: !148, line: 313, baseType: !983, size: 64, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !984, file: !148, line: 315, baseType: !839, size: 192, align: 64, offset: 256)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !984, file: !148, line: 323, baseType: !140, size: 64, offset: 448)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !984, file: !148, line: 327, baseType: !976, size: 64, offset: 512)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !984, file: !148, line: 333, baseType: !994, size: 64, offset: 576)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !469, line: 284, baseType: !995)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !469, line: 284, size: 64, elements: !996)
!996 = !{!997}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !995, file: !469, line: 284, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !999, line: 19, baseType: !140)
!999 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !984, file: !148, line: 334, baseType: !140, size: 64, offset: 640)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !984, file: !148, line: 343, baseType: !1002, size: 256, offset: 704)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !984, file: !148, line: 340, size: 256, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1002, file: !148, line: 341, baseType: !839, size: 192, align: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1002, file: !148, line: 342, baseType: !140, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !984, file: !148, line: 351, baseType: !158, size: 128, offset: 960)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !984, file: !148, line: 353, baseType: !1008, size: 64, offset: 1088)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !148, line: 353, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !984, file: !148, line: 356, baseType: !1011, size: 64, offset: 1152)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1014)
!1014 = !{!1015, !1019, !1020, !1024, !1028, !1069, !1073, !1077, !1081, !1082, !1083, !1087, !1091}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1013, file: !14, line: 558, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null, !983}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1013, file: !14, line: 559, baseType: !1016, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1013, file: !14, line: 560, baseType: !1021, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!132, !983, !140}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1013, file: !14, line: 561, baseType: !1025, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!132, !983}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1013, file: !14, line: 562, baseType: !1029, size: 64, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!1032, !1033}
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !148, line: 682, baseType: !7)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1035)
!1035 = !{!1036, !1037, !1038, !1039, !1040, !1041, !1048, !1055, !1061, !1062, !1063, !1065, !1067}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1034, file: !14, line: 509, baseType: !983, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1034, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1034, file: !14, line: 511, baseType: !477, size: 32, offset: 96)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1034, file: !14, line: 512, baseType: !140, size: 64, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1034, file: !14, line: 513, baseType: !140, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1034, file: !14, line: 514, baseType: !1042, size: 64, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !469, line: 385, baseType: !1044)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !469, line: 385, size: 64, elements: !1045)
!1045 = !{!1046}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1044, file: !469, line: 385, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !999, line: 15, baseType: !140)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1034, file: !14, line: 516, baseType: !1049, size: 64, offset: 320)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !469, line: 359, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !469, line: 359, size: 64, elements: !1052)
!1052 = !{!1053}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1051, file: !469, line: 359, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !999, line: 16, baseType: !140)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1034, file: !14, line: 519, baseType: !1056, size: 64, offset: 384)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !999, line: 21, baseType: !1057)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !999, line: 21, size: 64, elements: !1058)
!1058 = !{!1059}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1057, file: !999, line: 21, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !999, line: 14, baseType: !140)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1034, file: !14, line: 521, baseType: !146, size: 64, offset: 448)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1034, file: !14, line: 522, baseType: !146, size: 64, offset: 512)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1034, file: !14, line: 528, baseType: !1064, size: 64, offset: 576)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1034, file: !14, line: 532, baseType: !1066, size: 64, offset: 640)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1034, file: !14, line: 536, baseType: !1068, size: 64, offset: 704)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !469, line: 509, baseType: !146)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1013, file: !14, line: 563, baseType: !1070, size: 64, offset: 320)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!1032, !1033, !13}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1013, file: !14, line: 565, baseType: !1074, size: 64, offset: 384)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !1033, !140, !140}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1013, file: !14, line: 567, baseType: !1078, size: 64, offset: 448)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!140, !983}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1013, file: !14, line: 571, baseType: !1029, size: 64, offset: 512)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1013, file: !14, line: 574, baseType: !1029, size: 64, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1013, file: !14, line: 579, baseType: !1084, size: 64, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!132, !983, !140, !127, !132, !132}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1013, file: !14, line: 585, baseType: !1088, size: 64, offset: 704)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!294, !983}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1013, file: !14, line: 615, baseType: !1092, size: 64, offset: 768)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!146, !983, !140}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !984, file: !148, line: 359, baseType: !140, size: 64, offset: 1216)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !984, file: !148, line: 361, baseType: !1097, size: 64, offset: 1280)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !1099)
!1099 = !{!1100, !1110, !1111, !1112, !1374, !1375, !1376, !1377, !1378, !1380, !1381, !1382, !1412, !1600, !1609, !1610, !1611, !1612, !1613, !1614, !1617}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !1098, file: !44, line: 920, baseType: !1101, size: 128)
!1101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1098, file: !44, line: 917, size: 128, elements: !1102)
!1102 = !{!1103, !1109}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !1101, file: !44, line: 918, baseType: !1104, size: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1105, line: 58, size: 64, elements: !1106)
!1105 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!1106 = !{!1107}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1104, file: !1105, line: 59, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !1101, file: !44, line: 919, baseType: !786, size: 128, align: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1098, file: !44, line: 921, baseType: !328, size: 128, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1098, file: !44, line: 922, baseType: !168, size: 64, offset: 256)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1098, file: !44, line: 923, baseType: !1113, size: 64, offset: 320)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1115)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !1116)
!1116 = !{!1117, !1118, !1122, !1133, !1137, !1165, !1166, !1170, !1183, !1184, !1192, !1196, !1197, !1201, !1202, !1206, !1211, !1212, !1216, !1220, !1329, !1333, !1337, !1341, !1342, !1348, !1352, !1357, !1361, !1365, !1369, !1373}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1115, file: !44, line: 1823, baseType: !124, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1115, file: !44, line: 1824, baseType: !1119, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!358, !1097, !358, !132}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1115, file: !44, line: 1825, baseType: !1123, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!1126, !1097, !320, !1129, !1132}
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !145, line: 60, baseType: !1127)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !183, line: 73, baseType: !1128)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !183, line: 15, baseType: !482)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !145, line: 55, baseType: !1130)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !183, line: 72, baseType: !1131)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !183, line: 16, baseType: !140)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1115, file: !44, line: 1826, baseType: !1134, size: 64, offset: 192)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!1126, !1097, !294, !1129, !1132}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1115, file: !44, line: 1827, baseType: !1138, size: 64, offset: 256)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!1126, !1141, !1163}
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !1143)
!1143 = !{!1144, !1145, !1146, !1150, !1151, !1152, !1155, !1156}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1142, file: !44, line: 321, baseType: !1097, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1142, file: !44, line: 326, baseType: !358, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1142, file: !44, line: 327, baseType: !1147, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null, !1141, !482, !482}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1142, file: !44, line: 328, baseType: !127, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1142, file: !44, line: 329, baseType: !132, size: 32, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1142, file: !44, line: 330, baseType: !1153, size: 16, offset: 288)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !137, line: 19, baseType: !1154)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !139, line: 24, baseType: !173)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1142, file: !44, line: 331, baseType: !1153, size: 16, offset: 304)
!1156 = !DIDerivedType(tag: DW_TAG_member, scope: !1142, file: !44, line: 332, baseType: !1157, size: 64, offset: 320)
!1157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1142, file: !44, line: 332, size: 64, elements: !1158)
!1158 = !{!1159, !1160}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1157, file: !44, line: 333, baseType: !7, size: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1157, file: !44, line: 334, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1115, file: !44, line: 1828, baseType: !1138, size: 64, offset: 320)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1115, file: !44, line: 1829, baseType: !1167, size: 64, offset: 384)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!132, !1141, !339}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1115, file: !44, line: 1830, baseType: !1171, size: 64, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!132, !1097, !1174}
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !1176)
!1176 = !{!1177, !1182}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1175, file: !44, line: 1777, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !1179)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!132, !1174, !294, !132, !358, !141, !7}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1175, file: !44, line: 1778, baseType: !358, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1115, file: !44, line: 1831, baseType: !1171, size: 64, offset: 512)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1115, file: !44, line: 1832, baseType: !1185, size: 64, offset: 576)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!1188, !1097, !1190}
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1189, line: 52, baseType: !7)
!1189 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !373, line: 27, flags: DIFlagFwdDecl)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1115, file: !44, line: 1833, baseType: !1193, size: 64, offset: 640)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!482, !1097, !7, !140}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1115, file: !44, line: 1834, baseType: !1193, size: 64, offset: 704)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1115, file: !44, line: 1835, baseType: !1198, size: 64, offset: 768)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!132, !1097, !983}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1115, file: !44, line: 1836, baseType: !140, size: 64, offset: 832)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1115, file: !44, line: 1837, baseType: !1203, size: 64, offset: 896)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!132, !168, !1097}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1115, file: !44, line: 1838, baseType: !1207, size: 64, offset: 960)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!132, !1097, !1210}
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !127)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1115, file: !44, line: 1839, baseType: !1203, size: 64, offset: 1024)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1115, file: !44, line: 1840, baseType: !1213, size: 64, offset: 1088)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!132, !1097, !358, !358, !132}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1115, file: !44, line: 1841, baseType: !1217, size: 64, offset: 1152)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!132, !132, !1097, !132}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1115, file: !44, line: 1842, baseType: !1221, size: 64, offset: 1216)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!132, !1097, !132, !1224}
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !1226)
!1226 = !{!1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1258, !1259, !1260, !1273, !1305}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1225, file: !44, line: 1063, baseType: !1224, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1225, file: !44, line: 1064, baseType: !158, size: 128, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1225, file: !44, line: 1065, baseType: !393, size: 128, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1225, file: !44, line: 1066, baseType: !158, size: 128, offset: 320)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1225, file: !44, line: 1069, baseType: !158, size: 128, offset: 448)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1225, file: !44, line: 1072, baseType: !1210, size: 64, offset: 576)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1225, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1225, file: !44, line: 1074, baseType: !240, size: 8, offset: 672)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1225, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1225, file: !44, line: 1076, baseType: !132, size: 32, offset: 736)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1225, file: !44, line: 1077, baseType: !767, size: 128, offset: 768)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1225, file: !44, line: 1078, baseType: !1097, size: 64, offset: 896)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1225, file: !44, line: 1079, baseType: !358, size: 64, offset: 960)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1225, file: !44, line: 1080, baseType: !358, size: 64, offset: 1024)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1225, file: !44, line: 1082, baseType: !1242, size: 64, offset: 1088)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !1244)
!1244 = !{!1245, !1253, !1254, !1255, !1256, !1257}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1243, file: !44, line: 1315, baseType: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1247, line: 20, baseType: !1248)
!1247 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1247, line: 11, elements: !1249)
!1249 = !{!1250}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1248, file: !1247, line: 12, baseType: !1251)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !269, line: 33, baseType: !1252)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !269, line: 31, elements: !271)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1243, file: !44, line: 1316, baseType: !132, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1243, file: !44, line: 1317, baseType: !132, size: 32, offset: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1243, file: !44, line: 1318, baseType: !1242, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1243, file: !44, line: 1319, baseType: !1097, size: 64, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1243, file: !44, line: 1320, baseType: !786, size: 128, align: 64, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1225, file: !44, line: 1084, baseType: !140, size: 64, offset: 1152)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1225, file: !44, line: 1085, baseType: !140, size: 64, offset: 1216)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1225, file: !44, line: 1087, baseType: !1261, size: 64, offset: 1280)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1263)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !1264)
!1264 = !{!1265, !1269}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1263, file: !44, line: 1012, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{null, !1224, !1224}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1263, file: !44, line: 1013, baseType: !1270, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{null, !1224}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1225, file: !44, line: 1088, baseType: !1274, size: 64, offset: 1344)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1276)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !1277)
!1277 = !{!1278, !1282, !1286, !1287, !1291, !1295, !1299, !1304}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1276, file: !44, line: 1017, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!1210, !1210}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1276, file: !44, line: 1018, baseType: !1283, size: 64, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{null, !1210}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1276, file: !44, line: 1019, baseType: !1270, size: 64, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1276, file: !44, line: 1020, baseType: !1288, size: 64, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!132, !1224, !132}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1276, file: !44, line: 1021, baseType: !1292, size: 64, offset: 256)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!339, !1224}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1276, file: !44, line: 1022, baseType: !1296, size: 64, offset: 320)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!132, !1224, !132, !161}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1276, file: !44, line: 1023, baseType: !1300, size: 64, offset: 384)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !1224, !1303}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1276, file: !44, line: 1024, baseType: !1292, size: 64, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1225, file: !44, line: 1097, baseType: !1306, size: 256, offset: 1408)
!1306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1225, file: !44, line: 1089, size: 256, elements: !1307)
!1307 = !{!1308, !1317, !1323}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1306, file: !44, line: 1090, baseType: !1309, size: 256)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1310, line: 10, size: 256, elements: !1311)
!1310 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1311 = !{!1312, !1313, !1316}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1309, file: !1310, line: 11, baseType: !136, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1309, file: !1310, line: 12, baseType: !1314, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1310, line: 5, flags: DIFlagFwdDecl)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1309, file: !1310, line: 13, baseType: !158, size: 128, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1306, file: !44, line: 1091, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1310, line: 17, size: 64, elements: !1319)
!1319 = !{!1320}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1318, file: !1310, line: 18, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1310, line: 16, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1306, file: !44, line: 1096, baseType: !1324, size: 192)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1306, file: !44, line: 1092, size: 192, elements: !1325)
!1325 = !{!1326, !1327, !1328}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1324, file: !44, line: 1093, baseType: !158, size: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1324, file: !44, line: 1094, baseType: !132, size: 32, offset: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1324, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1115, file: !44, line: 1843, baseType: !1330, size: 64, offset: 1280)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!1126, !1097, !146, !132, !1129, !1132, !132}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1115, file: !44, line: 1844, baseType: !1334, size: 64, offset: 1344)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!140, !1097, !140, !140, !140, !140}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1115, file: !44, line: 1845, baseType: !1338, size: 64, offset: 1408)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!132, !132}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1115, file: !44, line: 1846, baseType: !1221, size: 64, offset: 1472)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1115, file: !44, line: 1847, baseType: !1343, size: 64, offset: 1536)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!1126, !1346, !1097, !1132, !1129, !7}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !715, line: 53, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1115, file: !44, line: 1848, baseType: !1349, size: 64, offset: 1600)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!1126, !1097, !1132, !1346, !1129, !7}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1115, file: !44, line: 1849, baseType: !1353, size: 64, offset: 1664)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!132, !1097, !482, !1356, !1303}
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1115, file: !44, line: 1850, baseType: !1358, size: 64, offset: 1728)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!482, !1097, !132, !358, !358}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1115, file: !44, line: 1852, baseType: !1362, size: 64, offset: 1792)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{null, !467, !1097}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1115, file: !44, line: 1856, baseType: !1366, size: 64, offset: 1856)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!1126, !1097, !358, !1097, !358, !1129, !7}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1115, file: !44, line: 1858, baseType: !1370, size: 64, offset: 1920)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!358, !1097, !358, !1097, !358, !358, !7}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1115, file: !44, line: 1861, baseType: !1213, size: 64, offset: 1984)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1098, file: !44, line: 929, baseType: !257, offset: 384)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !1098, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1098, file: !44, line: 931, baseType: !516, size: 64, offset: 448)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1098, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1098, file: !44, line: 933, baseType: !1379, size: 32, offset: 544)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !145, line: 150, baseType: !7)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1098, file: !44, line: 934, baseType: !512, size: 192, offset: 576)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1098, file: !44, line: 935, baseType: !358, size: 64, offset: 768)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1098, file: !44, line: 936, baseType: !1383, size: 192, offset: 832)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !1384)
!1384 = !{!1385, !1386, !1408, !1409, !1410, !1411}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1383, file: !44, line: 886, baseType: !1246)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1383, file: !44, line: 887, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1389)
!1389 = !{!1390, !1391, !1392, !1393, !1397, !1398, !1399, !1400}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1388, file: !53, line: 61, baseType: !814, size: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1388, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1388, file: !53, line: 63, baseType: !257, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1388, file: !53, line: 65, baseType: !1394, size: 256, offset: 64)
!1394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 256, elements: !1395)
!1395 = !{!1396}
!1396 = !DISubrange(count: 4)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1388, file: !53, line: 66, baseType: !389, size: 64, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1388, file: !53, line: 68, baseType: !767, size: 128, offset: 384)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1388, file: !53, line: 69, baseType: !786, size: 128, align: 64, offset: 512)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1388, file: !53, line: 70, baseType: !1401, size: 128, offset: 640)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1402, size: 128, elements: !969)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1402, file: !53, line: 55, baseType: !132, size: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1402, file: !53, line: 56, baseType: !1406, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1383, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1383, file: !44, line: 889, baseType: !176, size: 32, offset: 96)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1383, file: !44, line: 889, baseType: !176, size: 32, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1383, file: !44, line: 890, baseType: !132, size: 32, offset: 160)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1098, file: !44, line: 937, baseType: !1413, size: 64, offset: 1024)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1415)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1416, line: 111, size: 1280, elements: !1417)
!1416 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1417 = !{!1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1437, !1438, !1439, !1440, !1441, !1442, !1553, !1554, !1555, !1556, !1582, !1585, !1595}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1415, file: !1416, line: 112, baseType: !528, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1415, file: !1416, line: 120, baseType: !176, size: 32, offset: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1415, file: !1416, line: 121, baseType: !185, size: 32, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1415, file: !1416, line: 122, baseType: !176, size: 32, offset: 96)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1415, file: !1416, line: 123, baseType: !185, size: 32, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1415, file: !1416, line: 124, baseType: !176, size: 32, offset: 160)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1415, file: !1416, line: 125, baseType: !185, size: 32, offset: 192)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1415, file: !1416, line: 126, baseType: !176, size: 32, offset: 224)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1415, file: !1416, line: 127, baseType: !185, size: 32, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1415, file: !1416, line: 128, baseType: !7, size: 32, offset: 288)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1415, file: !1416, line: 129, baseType: !1429, size: 64, offset: 320)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1430, line: 26, baseType: !1431)
!1430 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1430, line: 24, size: 64, elements: !1432)
!1432 = !{!1433}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1431, file: !1430, line: 25, baseType: !1434, size: 64)
!1434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !1435)
!1435 = !{!1436}
!1436 = !DISubrange(count: 2)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1415, file: !1416, line: 130, baseType: !1429, size: 64, offset: 384)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1415, file: !1416, line: 131, baseType: !1429, size: 64, offset: 448)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1415, file: !1416, line: 132, baseType: !1429, size: 64, offset: 512)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1415, file: !1416, line: 133, baseType: !1429, size: 64, offset: 576)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1415, file: !1416, line: 135, baseType: !240, size: 8, offset: 640)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1415, file: !1416, line: 137, baseType: !1443, size: 64, offset: 704)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1445, line: 189, size: 1664, elements: !1446)
!1445 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1446 = !{!1447, !1448, !1453, !1458, !1459, !1462, !1463, !1468, !1469, !1470, !1471, !1474, !1475, !1476, !1478, !1479, !1517, !1538}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1444, file: !1445, line: 190, baseType: !814, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1444, file: !1445, line: 191, baseType: !1449, size: 32, offset: 32)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1445, line: 28, baseType: !1450)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !145, line: 98, baseType: !1451)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !137, line: 20, baseType: !1452)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !139, line: 26, baseType: !132)
!1453 = !DIDerivedType(tag: DW_TAG_member, scope: !1444, file: !1445, line: 192, baseType: !1454, size: 192, offset: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1444, file: !1445, line: 192, size: 192, elements: !1455)
!1455 = !{!1456, !1457}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1454, file: !1445, line: 193, baseType: !158, size: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1454, file: !1445, line: 194, baseType: !839, size: 192, align: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1444, file: !1445, line: 199, baseType: !689, size: 256, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1444, file: !1445, line: 200, baseType: !1460, size: 64, offset: 512)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1445, line: 200, flags: DIFlagFwdDecl)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1444, file: !1445, line: 201, baseType: !127, size: 64, offset: 576)
!1463 = !DIDerivedType(tag: DW_TAG_member, scope: !1444, file: !1445, line: 202, baseType: !1464, size: 64, offset: 640)
!1464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1444, file: !1445, line: 202, size: 64, elements: !1465)
!1465 = !{!1466, !1467}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1464, file: !1445, line: 203, baseType: !563, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1464, file: !1445, line: 204, baseType: !563, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1444, file: !1445, line: 206, baseType: !563, size: 64, offset: 704)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1444, file: !1445, line: 207, baseType: !176, size: 32, offset: 768)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1444, file: !1445, line: 208, baseType: !185, size: 32, offset: 800)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1444, file: !1445, line: 209, baseType: !1472, size: 32, offset: 832)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1445, line: 31, baseType: !1473)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !145, line: 104, baseType: !136)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1444, file: !1445, line: 210, baseType: !173, size: 16, offset: 864)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1444, file: !1445, line: 211, baseType: !173, size: 16, offset: 880)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1444, file: !1445, line: 215, baseType: !1477, size: 16, offset: 896)
!1477 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1444, file: !1445, line: 222, baseType: !140, size: 64, offset: 960)
!1479 = !DIDerivedType(tag: DW_TAG_member, scope: !1444, file: !1445, line: 239, baseType: !1480, size: 320, offset: 1024)
!1480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1444, file: !1445, line: 239, size: 320, elements: !1481)
!1481 = !{!1482, !1509}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1480, file: !1445, line: 240, baseType: !1483, size: 320)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1445, line: 108, size: 320, elements: !1484)
!1484 = !{!1485, !1486, !1498, !1501, !1508}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1483, file: !1445, line: 110, baseType: !140, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, scope: !1483, file: !1445, line: 111, baseType: !1487, size: 64, offset: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1483, file: !1445, line: 111, size: 64, elements: !1488)
!1488 = !{!1489, !1497}
!1489 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !1445, line: 112, baseType: !1490, size: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1487, file: !1445, line: 112, size: 64, elements: !1491)
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1490, file: !1445, line: 114, baseType: !1153, size: 16)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1490, file: !1445, line: 115, baseType: !1494, size: 48, offset: 16)
!1494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 48, elements: !1495)
!1495 = !{!1496}
!1496 = !DISubrange(count: 6)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1487, file: !1445, line: 121, baseType: !140, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1483, file: !1445, line: 123, baseType: !1499, size: 64, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1445, line: 96, flags: DIFlagFwdDecl)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1483, file: !1445, line: 124, baseType: !1502, size: 64, offset: 192)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1445, line: 102, size: 192, elements: !1504)
!1504 = !{!1505, !1506, !1507}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1503, file: !1445, line: 103, baseType: !786, size: 128, align: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1503, file: !1445, line: 104, baseType: !814, size: 32, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1503, file: !1445, line: 105, baseType: !339, size: 8, offset: 160)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1483, file: !1445, line: 125, baseType: !294, size: 64, offset: 256)
!1509 = !DIDerivedType(tag: DW_TAG_member, scope: !1480, file: !1445, line: 241, baseType: !1510, size: 320)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1480, file: !1445, line: 241, size: 320, elements: !1511)
!1511 = !{!1512, !1513, !1514, !1515, !1516}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1510, file: !1445, line: 242, baseType: !140, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1510, file: !1445, line: 243, baseType: !140, size: 64, offset: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1510, file: !1445, line: 244, baseType: !1499, size: 64, offset: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1510, file: !1445, line: 245, baseType: !1502, size: 64, offset: 192)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1510, file: !1445, line: 246, baseType: !320, size: 64, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_member, scope: !1444, file: !1445, line: 254, baseType: !1518, size: 256, offset: 1344)
!1518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1444, file: !1445, line: 254, size: 256, elements: !1519)
!1519 = !{!1520, !1526}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1518, file: !1445, line: 255, baseType: !1521, size: 256)
!1521 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1445, line: 128, size: 256, elements: !1522)
!1522 = !{!1523, !1524}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1521, file: !1445, line: 129, baseType: !127, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1521, file: !1445, line: 130, baseType: !1525, size: 256)
!1525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !1395)
!1526 = !DIDerivedType(tag: DW_TAG_member, scope: !1518, file: !1445, line: 256, baseType: !1527, size: 256)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1518, file: !1445, line: 256, size: 256, elements: !1528)
!1528 = !{!1529, !1530}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1527, file: !1445, line: 258, baseType: !158, size: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1527, file: !1445, line: 259, baseType: !1531, size: 128, offset: 128)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1532, line: 22, size: 128, elements: !1533)
!1532 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1533 = !{!1534, !1537}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1531, file: !1532, line: 23, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1532, line: 23, flags: DIFlagFwdDecl)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1531, file: !1532, line: 24, baseType: !140, size: 64, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1444, file: !1445, line: 274, baseType: !1539, size: 64, offset: 1600)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1445, line: 170, size: 192, elements: !1541)
!1541 = !{!1542, !1551, !1552}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1540, file: !1445, line: 171, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1445, line: 165, baseType: !1544)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!132, !1443, !1547, !1549, !1443}
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1500)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1521)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1540, file: !1445, line: 172, baseType: !1443, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1540, file: !1445, line: 173, baseType: !1499, size: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1415, file: !1416, line: 138, baseType: !1443, size: 64, offset: 768)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1415, file: !1416, line: 139, baseType: !1443, size: 64, offset: 832)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1415, file: !1416, line: 140, baseType: !1443, size: 64, offset: 896)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1415, file: !1416, line: 145, baseType: !1557, size: 64, offset: 960)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1559, line: 13, size: 896, elements: !1560)
!1559 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1560 = !{!1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1558, file: !1559, line: 14, baseType: !814, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1558, file: !1559, line: 15, baseType: !528, size: 32, offset: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1558, file: !1559, line: 16, baseType: !528, size: 32, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1558, file: !1559, line: 21, baseType: !516, size: 64, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1558, file: !1559, line: 27, baseType: !140, size: 64, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1558, file: !1559, line: 28, baseType: !140, size: 64, offset: 256)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1558, file: !1559, line: 29, baseType: !516, size: 64, offset: 320)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1558, file: !1559, line: 32, baseType: !393, size: 128, offset: 384)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1558, file: !1559, line: 33, baseType: !176, size: 32, offset: 512)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1558, file: !1559, line: 37, baseType: !516, size: 64, offset: 576)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1558, file: !1559, line: 44, baseType: !1572, size: 256, offset: 640)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1573, line: 15, size: 256, elements: !1574)
!1573 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1574 = !{!1575, !1576, !1577, !1578, !1579, !1580, !1581}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1572, file: !1573, line: 16, baseType: !695)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1572, file: !1573, line: 18, baseType: !132, size: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1572, file: !1573, line: 19, baseType: !132, size: 32, offset: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1572, file: !1573, line: 20, baseType: !132, size: 32, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1572, file: !1573, line: 21, baseType: !132, size: 32, offset: 96)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1572, file: !1573, line: 22, baseType: !140, size: 64, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1572, file: !1573, line: 23, baseType: !140, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1415, file: !1416, line: 146, baseType: !1583, size: 64, offset: 1024)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !177, line: 18, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1415, file: !1416, line: 147, baseType: !1586, size: 64, offset: 1088)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1416, line: 25, size: 64, elements: !1588)
!1588 = !{!1589, !1590, !1591}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1587, file: !1416, line: 26, baseType: !528, size: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1587, file: !1416, line: 27, baseType: !132, size: 32, offset: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1587, file: !1416, line: 28, baseType: !1592, offset: 64)
!1592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, elements: !1593)
!1593 = !{!1594}
!1594 = !DISubrange(count: 0)
!1595 = !DIDerivedType(tag: DW_TAG_member, scope: !1415, file: !1416, line: 149, baseType: !1596, size: 128, offset: 1152)
!1596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1415, file: !1416, line: 149, size: 128, elements: !1597)
!1597 = !{!1598, !1599}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1596, file: !1416, line: 150, baseType: !132, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1596, file: !1416, line: 151, baseType: !786, size: 128, align: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1098, file: !44, line: 938, baseType: !1601, size: 256, offset: 1088)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !1602)
!1602 = !{!1603, !1604, !1605, !1606, !1607, !1608}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1601, file: !44, line: 897, baseType: !140, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1601, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1601, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1601, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1601, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1601, file: !44, line: 904, baseType: !358, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1098, file: !44, line: 940, baseType: !141, size: 64, offset: 1344)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1098, file: !44, line: 945, baseType: !127, size: 64, offset: 1408)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !1098, file: !44, line: 949, baseType: !158, size: 128, offset: 1472)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !1098, file: !44, line: 950, baseType: !158, size: 128, offset: 1600)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1098, file: !44, line: 952, baseType: !164, size: 64, offset: 1728)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1098, file: !44, line: 953, baseType: !1615, size: 32, offset: 1792)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1616, line: 8, baseType: !136)
!1616 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1098, file: !44, line: 954, baseType: !1615, size: 32, offset: 1824)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !984, file: !148, line: 362, baseType: !127, size: 64, offset: 1344)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !984, file: !148, line: 365, baseType: !516, size: 64, offset: 1408)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !984, file: !148, line: 373, baseType: !1621, offset: 1472)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !148, line: 296, elements: !271)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !980, file: !148, line: 391, baseType: !940, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !980, file: !148, line: 392, baseType: !141, size: 64, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !980, file: !148, line: 394, baseType: !1334, size: 64, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !980, file: !148, line: 398, baseType: !140, size: 64, offset: 256)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !980, file: !148, line: 399, baseType: !140, size: 64, offset: 320)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !980, file: !148, line: 405, baseType: !140, size: 64, offset: 384)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !980, file: !148, line: 406, baseType: !140, size: 64, offset: 448)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !980, file: !148, line: 407, baseType: !1630, size: 64, offset: 512)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !469, line: 286, baseType: !1632)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !469, line: 286, size: 64, elements: !1633)
!1633 = !{!1634}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1632, file: !469, line: 286, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !999, line: 18, baseType: !140)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !980, file: !148, line: 416, baseType: !528, size: 32, offset: 576)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !980, file: !148, line: 428, baseType: !528, size: 32, offset: 608)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !980, file: !148, line: 437, baseType: !528, size: 32, offset: 640)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !980, file: !148, line: 447, baseType: !528, size: 32, offset: 672)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !980, file: !148, line: 450, baseType: !516, size: 64, offset: 704)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !980, file: !148, line: 452, baseType: !132, size: 32, offset: 768)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !980, file: !148, line: 454, baseType: !257, offset: 800)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !980, file: !148, line: 457, baseType: !689, size: 256, offset: 832)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !980, file: !148, line: 459, baseType: !158, size: 128, offset: 1088)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !980, file: !148, line: 466, baseType: !140, size: 64, offset: 1216)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !980, file: !148, line: 467, baseType: !140, size: 64, offset: 1280)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !980, file: !148, line: 469, baseType: !140, size: 64, offset: 1344)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !980, file: !148, line: 470, baseType: !140, size: 64, offset: 1408)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !980, file: !148, line: 471, baseType: !518, size: 64, offset: 1472)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !980, file: !148, line: 472, baseType: !140, size: 64, offset: 1536)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !980, file: !148, line: 473, baseType: !140, size: 64, offset: 1600)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !980, file: !148, line: 474, baseType: !140, size: 64, offset: 1664)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !980, file: !148, line: 475, baseType: !140, size: 64, offset: 1728)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !980, file: !148, line: 477, baseType: !257, offset: 1792)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !980, file: !148, line: 478, baseType: !140, size: 64, offset: 1792)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !980, file: !148, line: 478, baseType: !140, size: 64, offset: 1856)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !980, file: !148, line: 478, baseType: !140, size: 64, offset: 1920)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !980, file: !148, line: 478, baseType: !140, size: 64, offset: 1984)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !980, file: !148, line: 479, baseType: !140, size: 64, offset: 2048)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !980, file: !148, line: 479, baseType: !140, size: 64, offset: 2112)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !980, file: !148, line: 479, baseType: !140, size: 64, offset: 2176)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !980, file: !148, line: 480, baseType: !140, size: 64, offset: 2240)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !980, file: !148, line: 480, baseType: !140, size: 64, offset: 2304)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !980, file: !148, line: 480, baseType: !140, size: 64, offset: 2368)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !980, file: !148, line: 480, baseType: !140, size: 64, offset: 2432)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !980, file: !148, line: 482, baseType: !1667, size: 2816, offset: 2496)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 2816, elements: !1668)
!1668 = !{!1669}
!1669 = !DISubrange(count: 44)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !980, file: !148, line: 488, baseType: !1671, size: 256, offset: 5312)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1672, line: 60, size: 256, elements: !1673)
!1672 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1673 = !{!1674}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1671, file: !1672, line: 61, baseType: !1675, size: 256)
!1675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 256, elements: !1395)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !980, file: !148, line: 490, baseType: !1677, size: 64, offset: 5568)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !148, line: 490, flags: DIFlagFwdDecl)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !980, file: !148, line: 493, baseType: !1680, size: 896, offset: 5632)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1681, line: 53, baseType: !1682)
!1681 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1681, line: 13, size: 896, elements: !1683)
!1683 = !{!1684, !1685, !1686, !1687, !1690, !1691, !1692, !1693, !1713, !1714, !1715}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1682, file: !1681, line: 18, baseType: !141, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1682, file: !1681, line: 28, baseType: !518, size: 64, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1682, file: !1681, line: 31, baseType: !689, size: 256, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1682, file: !1681, line: 32, baseType: !1688, size: 64, offset: 384)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1681, line: 32, flags: DIFlagFwdDecl)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1682, file: !1681, line: 37, baseType: !173, size: 16, offset: 448)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1682, file: !1681, line: 40, baseType: !512, size: 192, offset: 512)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1682, file: !1681, line: 41, baseType: !127, size: 64, offset: 704)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1682, file: !1681, line: 42, baseType: !1694, size: 64, offset: 768)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1696)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1697, line: 13, size: 896, elements: !1698)
!1697 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1698 = !{!1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1696, file: !1697, line: 14, baseType: !127, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1696, file: !1697, line: 15, baseType: !140, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1696, file: !1697, line: 17, baseType: !140, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1696, file: !1697, line: 17, baseType: !140, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1696, file: !1697, line: 19, baseType: !482, size: 64, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1696, file: !1697, line: 21, baseType: !482, size: 64, offset: 320)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1696, file: !1697, line: 22, baseType: !482, size: 64, offset: 384)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1696, file: !1697, line: 23, baseType: !482, size: 64, offset: 448)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1696, file: !1697, line: 24, baseType: !482, size: 64, offset: 512)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1696, file: !1697, line: 25, baseType: !482, size: 64, offset: 576)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1696, file: !1697, line: 26, baseType: !482, size: 64, offset: 640)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1696, file: !1697, line: 27, baseType: !482, size: 64, offset: 704)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1696, file: !1697, line: 28, baseType: !482, size: 64, offset: 768)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1696, file: !1697, line: 29, baseType: !482, size: 64, offset: 832)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1682, file: !1681, line: 44, baseType: !528, size: 32, offset: 832)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1682, file: !1681, line: 50, baseType: !1153, size: 16, offset: 864)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1682, file: !1681, line: 51, baseType: !1716, size: 16, offset: 880)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !137, line: 18, baseType: !1717)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !139, line: 23, baseType: !1477)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !980, file: !148, line: 495, baseType: !140, size: 64, offset: 6528)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !980, file: !148, line: 497, baseType: !1720, size: 64, offset: 6592)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !148, line: 381, size: 384, elements: !1722)
!1722 = !{!1723, !1724, !1730}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1721, file: !148, line: 382, baseType: !528, size: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1721, file: !148, line: 383, baseType: !1725, size: 128, offset: 64)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !148, line: 376, size: 128, elements: !1726)
!1726 = !{!1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1725, file: !148, line: 377, baseType: !801, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1725, file: !148, line: 378, baseType: !1729, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1721, file: !148, line: 384, baseType: !1731, size: 192, offset: 192)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1732, line: 26, size: 192, elements: !1733)
!1732 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1733 = !{!1734, !1735}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1731, file: !1732, line: 27, baseType: !7, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1731, file: !1732, line: 28, baseType: !1736, size: 128, offset: 64)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1737, line: 43, size: 128, elements: !1738)
!1737 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1736, file: !1737, line: 44, baseType: !695)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1736, file: !1737, line: 45, baseType: !158, size: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !980, file: !148, line: 500, baseType: !257, offset: 6656)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !980, file: !148, line: 501, baseType: !1743, size: 64, offset: 6656)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !148, line: 387, flags: DIFlagFwdDecl)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !980, file: !148, line: 516, baseType: !1583, size: 64, offset: 6720)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !980, file: !148, line: 519, baseType: !1097, size: 64, offset: 6784)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !980, file: !148, line: 521, baseType: !1748, size: 64, offset: 6848)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !148, line: 521, flags: DIFlagFwdDecl)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !980, file: !148, line: 545, baseType: !528, size: 32, offset: 6912)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !980, file: !148, line: 548, baseType: !339, size: 8, offset: 6944)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !980, file: !148, line: 550, baseType: !1753, offset: 6952)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1754, line: 142, elements: !271)
!1754 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !980, file: !148, line: 554, baseType: !1756, size: 256, offset: 6976)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1757, line: 102, size: 256, elements: !1758)
!1757 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1758 = !{!1759, !1760, !1761}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1756, file: !1757, line: 103, baseType: !516, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1756, file: !1757, line: 104, baseType: !158, size: 128, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1756, file: !1757, line: 105, baseType: !1762, size: 64, offset: 192)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1757, line: 21, baseType: !1763)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{null, !1766}
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !980, file: !148, line: 557, baseType: !136, size: 32, offset: 7232)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !977, file: !148, line: 565, baseType: !1769, offset: 7296)
!1769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, elements: !1770)
!1770 = !{!1771}
!1771 = !DISubrange(count: -1)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !802, file: !715, line: 758, baseType: !976, size: 64, offset: 3968)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !802, file: !715, line: 761, baseType: !1774, size: 320, offset: 4032)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1672, line: 34, size: 320, elements: !1775)
!1775 = !{!1776, !1777}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1774, file: !1672, line: 35, baseType: !141, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1774, file: !1672, line: 36, baseType: !1778, size: 256, offset: 64)
!1778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !983, size: 256, elements: !1395)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !802, file: !715, line: 766, baseType: !132, size: 32, offset: 4352)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !802, file: !715, line: 767, baseType: !132, size: 32, offset: 4384)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !802, file: !715, line: 768, baseType: !132, size: 32, offset: 4416)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !802, file: !715, line: 770, baseType: !132, size: 32, offset: 4448)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !802, file: !715, line: 772, baseType: !140, size: 64, offset: 4480)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !802, file: !715, line: 775, baseType: !7, size: 32, offset: 4544)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !802, file: !715, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !802, file: !715, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !802, file: !715, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !802, file: !715, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !802, file: !715, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !802, file: !715, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !802, file: !715, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !802, file: !715, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !802, file: !715, line: 831, baseType: !140, size: 64, offset: 4672)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !802, file: !715, line: 833, baseType: !1795, size: 384, offset: 4736)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1796)
!1796 = !{!1797, !1802}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1795, file: !25, line: 26, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!482, !1801}
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, scope: !1795, file: !25, line: 27, baseType: !1803, size: 320, offset: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1795, file: !25, line: 27, size: 320, elements: !1804)
!1804 = !{!1805, !1815, !1840}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1803, file: !25, line: 36, baseType: !1806, size: 320)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1803, file: !25, line: 29, size: 320, elements: !1807)
!1807 = !{!1808, !1810, !1811, !1812, !1813, !1814}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1806, file: !25, line: 30, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1806, file: !25, line: 31, baseType: !136, size: 32, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1806, file: !25, line: 32, baseType: !136, size: 32, offset: 96)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1806, file: !25, line: 33, baseType: !136, size: 32, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1806, file: !25, line: 34, baseType: !141, size: 64, offset: 192)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1806, file: !25, line: 35, baseType: !1809, size: 64, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1803, file: !25, line: 46, baseType: !1816, size: 192)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1803, file: !25, line: 38, size: 192, elements: !1817)
!1817 = !{!1818, !1819, !1820, !1839}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1816, file: !25, line: 39, baseType: !925, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1816, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, scope: !1816, file: !25, line: 41, baseType: !1821, size: 64, offset: 64)
!1821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1816, file: !25, line: 41, size: 64, elements: !1822)
!1822 = !{!1823, !1831}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1821, file: !25, line: 42, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1826, line: 7, size: 128, elements: !1827)
!1826 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1827 = !{!1828, !1830}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1825, file: !1826, line: 8, baseType: !1829, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !183, line: 93, baseType: !360)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1825, file: !1826, line: 9, baseType: !360, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1821, file: !25, line: 43, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1834, line: 7, size: 64, elements: !1835)
!1834 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1835 = !{!1836, !1838}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1833, file: !1834, line: 8, baseType: !1837, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1834, line: 5, baseType: !1451)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1833, file: !1834, line: 9, baseType: !1451, size: 32, offset: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1816, file: !25, line: 45, baseType: !141, size: 64, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1803, file: !25, line: 54, baseType: !1841, size: 256)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1803, file: !25, line: 48, size: 256, elements: !1842)
!1842 = !{!1843, !1846, !1847, !1848, !1849}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1841, file: !25, line: 49, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1841, file: !25, line: 50, baseType: !132, size: 32, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1841, file: !25, line: 51, baseType: !132, size: 32, offset: 96)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1841, file: !25, line: 52, baseType: !140, size: 64, offset: 128)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1841, file: !25, line: 53, baseType: !140, size: 64, offset: 192)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !802, file: !715, line: 835, baseType: !1851, size: 32, offset: 5120)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !145, line: 22, baseType: !1852)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !183, line: 28, baseType: !132)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !802, file: !715, line: 836, baseType: !1851, size: 32, offset: 5152)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !802, file: !715, line: 840, baseType: !140, size: 64, offset: 5184)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !802, file: !715, line: 849, baseType: !801, size: 64, offset: 5248)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !802, file: !715, line: 852, baseType: !801, size: 64, offset: 5312)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !802, file: !715, line: 857, baseType: !158, size: 128, offset: 5376)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !802, file: !715, line: 858, baseType: !158, size: 128, offset: 5504)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !802, file: !715, line: 859, baseType: !801, size: 64, offset: 5632)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !802, file: !715, line: 867, baseType: !158, size: 128, offset: 5696)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !802, file: !715, line: 868, baseType: !158, size: 128, offset: 5824)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !802, file: !715, line: 871, baseType: !1387, size: 64, offset: 5952)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !802, file: !715, line: 872, baseType: !1864, size: 512, offset: 6016)
!1864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 512, elements: !1395)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !802, file: !715, line: 873, baseType: !158, size: 128, offset: 6528)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !802, file: !715, line: 874, baseType: !158, size: 128, offset: 6656)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !802, file: !715, line: 876, baseType: !1868, size: 64, offset: 6784)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !802, file: !715, line: 879, baseType: !461, size: 64, offset: 6848)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !802, file: !715, line: 882, baseType: !461, size: 64, offset: 6912)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !802, file: !715, line: 884, baseType: !141, size: 64, offset: 6976)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !802, file: !715, line: 885, baseType: !141, size: 64, offset: 7040)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !802, file: !715, line: 890, baseType: !141, size: 64, offset: 7104)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !802, file: !715, line: 891, baseType: !1875, size: 128, offset: 7168)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !715, line: 242, size: 128, elements: !1876)
!1876 = !{!1877, !1878, !1879}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1875, file: !715, line: 244, baseType: !141, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1875, file: !715, line: 245, baseType: !141, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1875, file: !715, line: 246, baseType: !695, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !802, file: !715, line: 900, baseType: !140, size: 64, offset: 7296)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !802, file: !715, line: 901, baseType: !140, size: 64, offset: 7360)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !802, file: !715, line: 904, baseType: !141, size: 64, offset: 7424)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !802, file: !715, line: 907, baseType: !141, size: 64, offset: 7488)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !802, file: !715, line: 910, baseType: !140, size: 64, offset: 7552)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !802, file: !715, line: 911, baseType: !140, size: 64, offset: 7616)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !802, file: !715, line: 914, baseType: !1887, size: 640, offset: 7680)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1888, line: 123, size: 640, elements: !1889)
!1888 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1889 = !{!1890, !1896, !1897}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1887, file: !1888, line: 124, baseType: !1891, size: 576)
!1891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1892, size: 576, elements: !405)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1888, line: 108, size: 192, elements: !1893)
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1892, file: !1888, line: 109, baseType: !141, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1892, file: !1888, line: 110, baseType: !934, size: 128, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1887, file: !1888, line: 125, baseType: !7, size: 32, offset: 576)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1887, file: !1888, line: 126, baseType: !7, size: 32, offset: 608)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !802, file: !715, line: 917, baseType: !1899, size: 192, offset: 8320)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1888, line: 134, size: 192, elements: !1900)
!1900 = !{!1901, !1902}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1899, file: !1888, line: 135, baseType: !786, size: 128, align: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1899, file: !1888, line: 136, baseType: !7, size: 32, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !802, file: !715, line: 923, baseType: !1413, size: 64, offset: 8512)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !802, file: !715, line: 926, baseType: !1413, size: 64, offset: 8576)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !802, file: !715, line: 929, baseType: !1413, size: 64, offset: 8640)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !802, file: !715, line: 933, baseType: !1443, size: 64, offset: 8704)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !802, file: !715, line: 943, baseType: !1908, size: 128, offset: 8768)
!1908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 128, elements: !1909)
!1909 = !{!1910}
!1910 = !DISubrange(count: 16)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !802, file: !715, line: 945, baseType: !1912, size: 64, offset: 8896)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !715, line: 49, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !802, file: !715, line: 956, baseType: !1915, size: 64, offset: 8960)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !715, line: 45, flags: DIFlagFwdDecl)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !802, file: !715, line: 959, baseType: !1918, size: 64, offset: 9024)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !715, line: 959, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !802, file: !715, line: 962, baseType: !1921, size: 64, offset: 9088)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !715, line: 66, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !802, file: !715, line: 966, baseType: !1924, size: 64, offset: 9152)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1926, line: 35, flags: DIFlagFwdDecl)
!1926 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !802, file: !715, line: 969, baseType: !1928, size: 64, offset: 9216)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1930, line: 82, size: 7296, elements: !1931)
!1930 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1931 = !{!1932, !1933, !1934, !1935, !1936, !1937, !1938, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1967, !1976, !1977, !1979, !1980, !1981, !1984, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2014, !2015, !2022, !2023, !2024, !2025, !2026, !2027}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1929, file: !1930, line: 83, baseType: !814, size: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1929, file: !1930, line: 84, baseType: !528, size: 32, offset: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1929, file: !1930, line: 85, baseType: !132, size: 32, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1929, file: !1930, line: 86, baseType: !158, size: 128, offset: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1929, file: !1930, line: 88, baseType: !767, size: 128, offset: 256)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1929, file: !1930, line: 91, baseType: !801, size: 64, offset: 384)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1929, file: !1930, line: 94, baseType: !1939, size: 192, offset: 448)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1940, line: 30, size: 192, elements: !1941)
!1940 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1941 = !{!1942, !1943}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1939, file: !1940, line: 31, baseType: !158, size: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1939, file: !1940, line: 32, baseType: !1944, size: 64, offset: 128)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1945, line: 25, baseType: !1946)
!1945 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1945, line: 23, size: 64, elements: !1947)
!1947 = !{!1948}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1946, file: !1945, line: 24, baseType: !968, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1929, file: !1930, line: 97, baseType: !389, size: 64, offset: 640)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1929, file: !1930, line: 100, baseType: !132, size: 32, offset: 704)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1929, file: !1930, line: 106, baseType: !132, size: 32, offset: 736)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1929, file: !1930, line: 107, baseType: !801, size: 64, offset: 768)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1929, file: !1930, line: 110, baseType: !132, size: 32, offset: 832)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1929, file: !1930, line: 111, baseType: !7, size: 32, offset: 864)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1929, file: !1930, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1929, file: !1930, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1929, file: !1930, line: 128, baseType: !132, size: 32, offset: 928)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1929, file: !1930, line: 129, baseType: !158, size: 128, offset: 960)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1929, file: !1930, line: 132, baseType: !883, size: 512, offset: 1088)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1929, file: !1930, line: 133, baseType: !891, size: 64, offset: 1600)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1929, file: !1930, line: 140, baseType: !1962, size: 256, offset: 1664)
!1962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1963, size: 256, elements: !1435)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1930, line: 38, size: 128, elements: !1964)
!1964 = !{!1965, !1966}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1963, file: !1930, line: 39, baseType: !141, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1963, file: !1930, line: 40, baseType: !141, size: 64, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1929, file: !1930, line: 146, baseType: !1968, size: 192, offset: 1920)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1930, line: 66, size: 192, elements: !1969)
!1969 = !{!1970}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1968, file: !1930, line: 67, baseType: !1971, size: 192)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1930, line: 47, size: 192, elements: !1972)
!1972 = !{!1973, !1974, !1975}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1971, file: !1930, line: 48, baseType: !518, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1971, file: !1930, line: 49, baseType: !518, size: 64, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1971, file: !1930, line: 50, baseType: !518, size: 64, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1929, file: !1930, line: 150, baseType: !1887, size: 640, offset: 2112)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1929, file: !1930, line: 153, baseType: !1978, size: 256, offset: 2752)
!1978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1387, size: 256, elements: !1395)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1929, file: !1930, line: 159, baseType: !1387, size: 64, offset: 3008)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1929, file: !1930, line: 162, baseType: !132, size: 32, offset: 3072)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1929, file: !1930, line: 164, baseType: !1982, size: 64, offset: 3136)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1930, line: 164, flags: DIFlagFwdDecl)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1929, file: !1930, line: 175, baseType: !1985, size: 32, offset: 3200)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !208, line: 805, baseType: !1986)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !208, line: 798, size: 32, elements: !1987)
!1987 = !{!1988, !1989}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1986, file: !208, line: 803, baseType: !207, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1986, file: !208, line: 804, baseType: !257, offset: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1929, file: !1930, line: 176, baseType: !141, size: 64, offset: 3264)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1929, file: !1930, line: 176, baseType: !141, size: 64, offset: 3328)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1929, file: !1930, line: 176, baseType: !141, size: 64, offset: 3392)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1929, file: !1930, line: 176, baseType: !141, size: 64, offset: 3456)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1929, file: !1930, line: 177, baseType: !141, size: 64, offset: 3520)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1929, file: !1930, line: 178, baseType: !141, size: 64, offset: 3584)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1929, file: !1930, line: 179, baseType: !1875, size: 128, offset: 3648)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1929, file: !1930, line: 180, baseType: !140, size: 64, offset: 3776)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1929, file: !1930, line: 180, baseType: !140, size: 64, offset: 3840)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1929, file: !1930, line: 180, baseType: !140, size: 64, offset: 3904)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1929, file: !1930, line: 180, baseType: !140, size: 64, offset: 3968)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1929, file: !1930, line: 181, baseType: !140, size: 64, offset: 4032)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1929, file: !1930, line: 181, baseType: !140, size: 64, offset: 4096)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1929, file: !1930, line: 181, baseType: !140, size: 64, offset: 4160)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1929, file: !1930, line: 181, baseType: !140, size: 64, offset: 4224)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1929, file: !1930, line: 182, baseType: !140, size: 64, offset: 4288)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1929, file: !1930, line: 182, baseType: !140, size: 64, offset: 4352)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1929, file: !1930, line: 182, baseType: !140, size: 64, offset: 4416)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1929, file: !1930, line: 182, baseType: !140, size: 64, offset: 4480)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1929, file: !1930, line: 183, baseType: !140, size: 64, offset: 4544)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1929, file: !1930, line: 183, baseType: !140, size: 64, offset: 4608)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1929, file: !1930, line: 184, baseType: !2012, offset: 4672)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2013, line: 12, elements: !271)
!2013 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1929, file: !1930, line: 192, baseType: !143, size: 64, offset: 4672)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1929, file: !1930, line: 203, baseType: !2016, size: 2048, offset: 4736)
!2016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2017, size: 2048, elements: !1909)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2018, line: 43, size: 128, elements: !2019)
!2018 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2019 = !{!2020, !2021}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2017, file: !2018, line: 44, baseType: !1131, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2017, file: !2018, line: 45, baseType: !1131, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1929, file: !1930, line: 220, baseType: !339, size: 8, offset: 6784)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1929, file: !1930, line: 221, baseType: !1477, size: 16, offset: 6800)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1929, file: !1930, line: 222, baseType: !1477, size: 16, offset: 6816)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1929, file: !1930, line: 224, baseType: !976, size: 64, offset: 6848)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1929, file: !1930, line: 227, baseType: !512, size: 192, offset: 6912)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1929, file: !1930, line: 233, baseType: !512, size: 192, offset: 7104)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !802, file: !715, line: 970, baseType: !2029, size: 64, offset: 9280)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1930, line: 20, size: 16576, elements: !2031)
!2031 = !{!2032, !2033, !2034, !2035}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2030, file: !1930, line: 21, baseType: !257)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2030, file: !1930, line: 22, baseType: !814, size: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2030, file: !1930, line: 23, baseType: !767, size: 128, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2030, file: !1930, line: 24, baseType: !2036, size: 16384, offset: 192)
!2036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2037, size: 16384, elements: !2057)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1940, line: 49, size: 256, elements: !2038)
!2038 = !{!2039}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2037, file: !1940, line: 50, baseType: !2040, size: 256)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1940, line: 35, size: 256, elements: !2041)
!2041 = !{!2042, !2049, !2050, !2056}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2040, file: !1940, line: 37, baseType: !2043, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2044, line: 19, baseType: !2045)
!2044 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2044, line: 18, baseType: !2047)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{null, !132}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2040, file: !1940, line: 38, baseType: !140, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2040, file: !1940, line: 44, baseType: !2051, size: 64, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2044, line: 22, baseType: !2052)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2044, line: 21, baseType: !2054)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{null}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2040, file: !1940, line: 46, baseType: !1944, size: 64, offset: 192)
!2057 = !{!2058}
!2058 = !DISubrange(count: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !802, file: !715, line: 971, baseType: !1944, size: 64, offset: 9344)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !802, file: !715, line: 972, baseType: !1944, size: 64, offset: 9408)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !802, file: !715, line: 974, baseType: !1944, size: 64, offset: 9472)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !802, file: !715, line: 975, baseType: !1939, size: 192, offset: 9536)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !802, file: !715, line: 976, baseType: !140, size: 64, offset: 9728)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !802, file: !715, line: 977, baseType: !1129, size: 64, offset: 9792)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !802, file: !715, line: 978, baseType: !7, size: 32, offset: 9856)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !802, file: !715, line: 980, baseType: !789, size: 64, offset: 9920)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !802, file: !715, line: 989, baseType: !2068, size: 128, offset: 9984)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2069, line: 35, size: 128, elements: !2070)
!2069 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2070 = !{!2071, !2072, !2073}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2068, file: !2069, line: 36, baseType: !132, size: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2068, file: !2069, line: 37, baseType: !528, size: 32, offset: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2068, file: !2069, line: 38, baseType: !2074, size: 64, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2069, line: 23, flags: DIFlagFwdDecl)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !802, file: !715, line: 992, baseType: !141, size: 64, offset: 10112)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !802, file: !715, line: 993, baseType: !141, size: 64, offset: 10176)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !802, file: !715, line: 996, baseType: !257, offset: 10240)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !802, file: !715, line: 999, baseType: !695, offset: 10240)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !802, file: !715, line: 1001, baseType: !2081, size: 64, offset: 10240)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !715, line: 636, size: 64, elements: !2082)
!2082 = !{!2083}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2081, file: !715, line: 637, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !802, file: !715, line: 1005, baseType: !937, size: 128, offset: 10304)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !802, file: !715, line: 1007, baseType: !801, size: 64, offset: 10432)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !802, file: !715, line: 1009, baseType: !2088, size: 64, offset: 10496)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !715, line: 1009, flags: DIFlagFwdDecl)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !802, file: !715, line: 1043, baseType: !127, size: 64, offset: 10560)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !802, file: !715, line: 1046, baseType: !2092, size: 64, offset: 10624)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !715, line: 41, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !802, file: !715, line: 1050, baseType: !2095, size: 64, offset: 10688)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !715, line: 42, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !802, file: !715, line: 1054, baseType: !2098, size: 64, offset: 10752)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !715, line: 55, flags: DIFlagFwdDecl)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !802, file: !715, line: 1056, baseType: !713, size: 64, offset: 10816)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !802, file: !715, line: 1058, baseType: !2102, size: 64, offset: 10880)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2104, line: 99, size: 704, elements: !2105)
!2104 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2105 = !{!2106, !2107, !2108, !2109, !2110, !2111, !2118, !2139, !2140}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2103, file: !2104, line: 100, baseType: !516, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2103, file: !2104, line: 101, baseType: !528, size: 32, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2103, file: !2104, line: 102, baseType: !528, size: 32, offset: 96)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2103, file: !2104, line: 105, baseType: !257, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2103, file: !2104, line: 107, baseType: !173, size: 16, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2103, file: !2104, line: 109, baseType: !2112, size: 128, offset: 192)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2113, line: 292, size: 128, elements: !2114)
!2113 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!2114 = !{!2115, !2116, !2117}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2112, file: !2113, line: 293, baseType: !257)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2112, file: !2113, line: 295, baseType: !477, size: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2112, file: !2113, line: 296, baseType: !127, size: 64, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2103, file: !2104, line: 110, baseType: !2119, size: 64, offset: 320)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2104, line: 73, size: 448, elements: !2121)
!2121 = !{!2122, !2125, !2126, !2133, !2138}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2120, file: !2104, line: 74, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2104, line: 74, flags: DIFlagFwdDecl)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2120, file: !2104, line: 75, baseType: !2102, size: 64, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, scope: !2120, file: !2104, line: 83, baseType: !2127, size: 128, offset: 128)
!2127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2120, file: !2104, line: 83, size: 128, elements: !2128)
!2128 = !{!2129, !2130}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2127, file: !2104, line: 84, baseType: !158, size: 128)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2127, file: !2104, line: 85, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !148, line: 117, flags: DIFlagFwdDecl)
!2133 = !DIDerivedType(tag: DW_TAG_member, scope: !2120, file: !2104, line: 87, baseType: !2134, size: 128, offset: 256)
!2134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2120, file: !2104, line: 87, size: 128, elements: !2135)
!2135 = !{!2136, !2137}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2134, file: !2104, line: 88, baseType: !393, size: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2134, file: !2104, line: 89, baseType: !786, size: 128, align: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2120, file: !2104, line: 92, baseType: !7, size: 32, offset: 384)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2103, file: !2104, line: 111, baseType: !389, size: 64, offset: 384)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2103, file: !2104, line: 113, baseType: !1756, size: 256, offset: 448)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !802, file: !715, line: 1061, baseType: !2142, size: 64, offset: 10944)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !715, line: 43, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !802, file: !715, line: 1064, baseType: !140, size: 64, offset: 11008)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !802, file: !715, line: 1065, baseType: !2146, size: 64, offset: 11072)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1940, line: 14, baseType: !2148)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1940, line: 12, size: 384, elements: !2149)
!2149 = !{!2150}
!2150 = !DIDerivedType(tag: DW_TAG_member, scope: !2148, file: !1940, line: 13, baseType: !2151, size: 384)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2148, file: !1940, line: 13, size: 384, elements: !2152)
!2152 = !{!2153, !2154, !2155, !2156}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2151, file: !1940, line: 13, baseType: !132, size: 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2151, file: !1940, line: 13, baseType: !132, size: 32, offset: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2151, file: !1940, line: 13, baseType: !132, size: 32, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2151, file: !1940, line: 13, baseType: !2157, size: 256, offset: 128)
!2157 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2158, line: 32, size: 256, elements: !2159)
!2158 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2159 = !{!2160, !2165, !2178, !2184, !2193, !2213, !2218}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2157, file: !2158, line: 37, baseType: !2161, size: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2157, file: !2158, line: 34, size: 64, elements: !2162)
!2162 = !{!2163, !2164}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2161, file: !2158, line: 35, baseType: !1852, size: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2161, file: !2158, line: 36, baseType: !182, size: 32, offset: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2157, file: !2158, line: 45, baseType: !2166, size: 192)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2157, file: !2158, line: 40, size: 192, elements: !2167)
!2167 = !{!2168, !2170, !2171, !2177}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2166, file: !2158, line: 41, baseType: !2169, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !183, line: 95, baseType: !132)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2166, file: !2158, line: 42, baseType: !132, size: 32, offset: 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2166, file: !2158, line: 43, baseType: !2172, size: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2158, line: 11, baseType: !2173)
!2173 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2158, line: 8, size: 64, elements: !2174)
!2174 = !{!2175, !2176}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2173, file: !2158, line: 9, baseType: !132, size: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2173, file: !2158, line: 10, baseType: !127, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2166, file: !2158, line: 44, baseType: !132, size: 32, offset: 128)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2157, file: !2158, line: 52, baseType: !2179, size: 128)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2157, file: !2158, line: 48, size: 128, elements: !2180)
!2180 = !{!2181, !2182, !2183}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2179, file: !2158, line: 49, baseType: !1852, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2179, file: !2158, line: 50, baseType: !182, size: 32, offset: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2179, file: !2158, line: 51, baseType: !2172, size: 64, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2157, file: !2158, line: 61, baseType: !2185, size: 256)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2157, file: !2158, line: 55, size: 256, elements: !2186)
!2186 = !{!2187, !2188, !2189, !2190, !2192}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2185, file: !2158, line: 56, baseType: !1852, size: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2185, file: !2158, line: 57, baseType: !182, size: 32, offset: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2185, file: !2158, line: 58, baseType: !132, size: 32, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2185, file: !2158, line: 59, baseType: !2191, size: 64, offset: 128)
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !183, line: 94, baseType: !1128)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2185, file: !2158, line: 60, baseType: !2191, size: 64, offset: 192)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2157, file: !2158, line: 95, baseType: !2194, size: 256)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2157, file: !2158, line: 64, size: 256, elements: !2195)
!2195 = !{!2196, !2197}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2194, file: !2158, line: 65, baseType: !127, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, scope: !2194, file: !2158, line: 77, baseType: !2198, size: 192, offset: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2194, file: !2158, line: 77, size: 192, elements: !2199)
!2199 = !{!2200, !2201, !2208}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2198, file: !2158, line: 82, baseType: !1477, size: 16)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2198, file: !2158, line: 88, baseType: !2202, size: 192)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2198, file: !2158, line: 84, size: 192, elements: !2203)
!2203 = !{!2204, !2206, !2207}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2202, file: !2158, line: 85, baseType: !2205, size: 64)
!2205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 64, elements: !921)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2202, file: !2158, line: 86, baseType: !127, size: 64, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2202, file: !2158, line: 87, baseType: !127, size: 64, offset: 128)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2198, file: !2158, line: 93, baseType: !2209, size: 96)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2198, file: !2158, line: 90, size: 96, elements: !2210)
!2210 = !{!2211, !2212}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2209, file: !2158, line: 91, baseType: !2205, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2209, file: !2158, line: 92, baseType: !138, size: 32, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2157, file: !2158, line: 101, baseType: !2214, size: 128)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2157, file: !2158, line: 98, size: 128, elements: !2215)
!2215 = !{!2216, !2217}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2214, file: !2158, line: 99, baseType: !482, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2214, file: !2158, line: 100, baseType: !132, size: 32, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2157, file: !2158, line: 108, baseType: !2219, size: 128)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2157, file: !2158, line: 104, size: 128, elements: !2220)
!2220 = !{!2221, !2222, !2223}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2219, file: !2158, line: 105, baseType: !127, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2219, file: !2158, line: 106, baseType: !132, size: 32, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2219, file: !2158, line: 107, baseType: !7, size: 32, offset: 96)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !802, file: !715, line: 1067, baseType: !2012, offset: 11136)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !802, file: !715, line: 1099, baseType: !2226, size: 64, offset: 11136)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !715, line: 56, flags: DIFlagFwdDecl)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !802, file: !715, line: 1103, baseType: !158, size: 128, offset: 11200)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !802, file: !715, line: 1104, baseType: !2230, size: 64, offset: 11328)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !715, line: 46, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !802, file: !715, line: 1105, baseType: !512, size: 192, offset: 11392)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !802, file: !715, line: 1106, baseType: !7, size: 32, offset: 11584)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !802, file: !715, line: 1109, baseType: !2235, size: 128, offset: 11648)
!2235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2236, size: 128, elements: !1435)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !715, line: 51, flags: DIFlagFwdDecl)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !802, file: !715, line: 1110, baseType: !512, size: 192, offset: 11776)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !802, file: !715, line: 1111, baseType: !158, size: 128, offset: 11968)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !802, file: !715, line: 1173, baseType: !2241, size: 64, offset: 12096)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2243, line: 62, size: 256, align: 256, elements: !2244)
!2243 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2244 = !{!2245, !2246, !2247, !2252}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2242, file: !2243, line: 75, baseType: !138, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2242, file: !2243, line: 90, baseType: !138, size: 32, offset: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2242, file: !2243, line: 124, baseType: !2248, size: 64, offset: 64)
!2248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2242, file: !2243, line: 109, size: 64, elements: !2249)
!2249 = !{!2250, !2251}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2248, file: !2243, line: 110, baseType: !142, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2248, file: !2243, line: 112, baseType: !142, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2242, file: !2243, line: 144, baseType: !138, size: 32, offset: 128)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !802, file: !715, line: 1174, baseType: !136, size: 32, offset: 12160)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !802, file: !715, line: 1179, baseType: !140, size: 64, offset: 12224)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !802, file: !715, line: 1182, baseType: !2256, size: 128, offset: 12288)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1672, line: 76, size: 128, elements: !2257)
!2257 = !{!2258, !2263, !2264}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2256, file: !1672, line: 85, baseType: !2259, size: 64)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2260, line: 7, size: 64, elements: !2261)
!2260 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2261 = !{!2262}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2259, file: !2260, line: 12, baseType: !965, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2256, file: !1672, line: 88, baseType: !339, size: 8, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2256, file: !1672, line: 95, baseType: !339, size: 8, offset: 72)
!2265 = !DIDerivedType(tag: DW_TAG_member, scope: !802, file: !715, line: 1184, baseType: !2266, size: 128, offset: 12416)
!2266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !802, file: !715, line: 1184, size: 128, elements: !2267)
!2267 = !{!2268, !2269}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2266, file: !715, line: 1185, baseType: !814, size: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2266, file: !715, line: 1186, baseType: !786, size: 128, align: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !802, file: !715, line: 1190, baseType: !1346, size: 64, offset: 12544)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !802, file: !715, line: 1192, baseType: !2272, size: 128, offset: 12608)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1672, line: 64, size: 128, elements: !2273)
!2273 = !{!2274, !2275, !2276}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2272, file: !1672, line: 65, baseType: !146, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2272, file: !1672, line: 67, baseType: !138, size: 32, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2272, file: !1672, line: 68, baseType: !138, size: 32, offset: 96)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !802, file: !715, line: 1206, baseType: !132, size: 32, offset: 12736)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !802, file: !715, line: 1207, baseType: !132, size: 32, offset: 12768)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !802, file: !715, line: 1209, baseType: !140, size: 64, offset: 12800)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !802, file: !715, line: 1219, baseType: !141, size: 64, offset: 12864)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !802, file: !715, line: 1220, baseType: !141, size: 64, offset: 12928)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !802, file: !715, line: 1317, baseType: !132, size: 32, offset: 12992)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !802, file: !715, line: 1319, baseType: !801, size: 64, offset: 13056)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !802, file: !715, line: 1322, baseType: !2285, size: 64, offset: 13120)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2287, line: 56, size: 512, elements: !2288)
!2287 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2288 = !{!2289, !2290, !2291, !2292, !2293, !2295, !2296, !2298}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2286, file: !2287, line: 57, baseType: !2285, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2286, file: !2287, line: 58, baseType: !127, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2286, file: !2287, line: 59, baseType: !140, size: 64, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2286, file: !2287, line: 60, baseType: !140, size: 64, offset: 192)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2286, file: !2287, line: 61, baseType: !2294, size: 64, offset: 256)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2286, file: !2287, line: 62, baseType: !7, size: 32, offset: 320)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2286, file: !2287, line: 63, baseType: !2297, size: 64, offset: 384)
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !145, line: 153, baseType: !141)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2286, file: !2287, line: 64, baseType: !2299, size: 64, offset: 448)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !802, file: !715, line: 1326, baseType: !814, size: 32, offset: 13184)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !802, file: !715, line: 1342, baseType: !127, size: 64, offset: 13248)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !802, file: !715, line: 1343, baseType: !142, size: 64, offset: 13312)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !802, file: !715, line: 1344, baseType: !141, size: 64, offset: 13376)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !802, file: !715, line: 1345, baseType: !142, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !802, file: !715, line: 1346, baseType: !142, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !802, file: !715, line: 1347, baseType: !142, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !802, file: !715, line: 1348, baseType: !786, size: 128, align: 64, offset: 13504)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !802, file: !715, line: 1358, baseType: !2310, size: 34816, offset: 13824)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2311, line: 485, size: 34816, elements: !2312)
!2311 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2312 = !{!2313, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2342, !2343, !2344, !2345, !2346, !2347, !2350, !2351, !2352}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2310, file: !2311, line: 487, baseType: !2314, size: 192)
!2314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2315, size: 192, elements: !405)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2316, line: 16, size: 64, elements: !2317)
!2316 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2317 = !{!2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2315, file: !2316, line: 17, baseType: !1153, size: 16)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2315, file: !2316, line: 18, baseType: !1153, size: 16, offset: 16)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2315, file: !2316, line: 19, baseType: !1153, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2315, file: !2316, line: 19, baseType: !1153, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2315, file: !2316, line: 19, baseType: !1153, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2315, file: !2316, line: 19, baseType: !1153, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2315, file: !2316, line: 19, baseType: !1153, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2315, file: !2316, line: 20, baseType: !1153, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2315, file: !2316, line: 20, baseType: !1153, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2315, file: !2316, line: 20, baseType: !1153, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2315, file: !2316, line: 20, baseType: !1153, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2315, file: !2316, line: 20, baseType: !1153, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2315, file: !2316, line: 20, baseType: !1153, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2310, file: !2311, line: 491, baseType: !140, size: 64, offset: 192)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2310, file: !2311, line: 495, baseType: !173, size: 16, offset: 256)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2310, file: !2311, line: 496, baseType: !173, size: 16, offset: 272)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2310, file: !2311, line: 497, baseType: !173, size: 16, offset: 288)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2310, file: !2311, line: 498, baseType: !173, size: 16, offset: 304)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2310, file: !2311, line: 502, baseType: !140, size: 64, offset: 320)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2310, file: !2311, line: 503, baseType: !140, size: 64, offset: 384)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2310, file: !2311, line: 514, baseType: !2339, size: 256, offset: 448)
!2339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2340, size: 256, elements: !1395)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2311, line: 483, flags: DIFlagFwdDecl)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2310, file: !2311, line: 516, baseType: !140, size: 64, offset: 704)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2310, file: !2311, line: 518, baseType: !140, size: 64, offset: 768)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2310, file: !2311, line: 520, baseType: !140, size: 64, offset: 832)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2310, file: !2311, line: 521, baseType: !140, size: 64, offset: 896)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2310, file: !2311, line: 522, baseType: !140, size: 64, offset: 960)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2310, file: !2311, line: 528, baseType: !2348, size: 64, offset: 1024)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2311, line: 10, flags: DIFlagFwdDecl)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2310, file: !2311, line: 535, baseType: !140, size: 64, offset: 1088)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2310, file: !2311, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2310, file: !2311, line: 540, baseType: !2353, size: 33280, offset: 1536)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2354, line: 317, size: 33280, elements: !2355)
!2354 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2355 = !{!2356, !2357, !2358}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2353, file: !2354, line: 330, baseType: !7, size: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2353, file: !2354, line: 337, baseType: !140, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2353, file: !2354, line: 348, baseType: !2359, size: 32768, offset: 512)
!2359 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2354, line: 304, size: 32768, elements: !2360)
!2360 = !{!2361, !2376, !2413, !2463, !2476}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2359, file: !2354, line: 305, baseType: !2362, size: 896)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2354, line: 12, size: 896, elements: !2363)
!2363 = !{!2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2375}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2362, file: !2354, line: 13, baseType: !136, size: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2362, file: !2354, line: 14, baseType: !136, size: 32, offset: 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2362, file: !2354, line: 15, baseType: !136, size: 32, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2362, file: !2354, line: 16, baseType: !136, size: 32, offset: 96)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2362, file: !2354, line: 17, baseType: !136, size: 32, offset: 128)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2362, file: !2354, line: 18, baseType: !136, size: 32, offset: 160)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2362, file: !2354, line: 19, baseType: !136, size: 32, offset: 192)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2362, file: !2354, line: 22, baseType: !2372, size: 640, offset: 224)
!2372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 640, elements: !2373)
!2373 = !{!2374}
!2374 = !DISubrange(count: 20)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2362, file: !2354, line: 25, baseType: !136, size: 32, offset: 864)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2359, file: !2354, line: 306, baseType: !2377, size: 4096, align: 128)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2354, line: 34, size: 4096, align: 128, elements: !2378)
!2378 = !{!2379, !2380, !2381, !2382, !2383, !2398, !2399, !2400, !2402, !2404, !2408}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2377, file: !2354, line: 35, baseType: !1153, size: 16)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2377, file: !2354, line: 36, baseType: !1153, size: 16, offset: 16)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2377, file: !2354, line: 37, baseType: !1153, size: 16, offset: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2377, file: !2354, line: 38, baseType: !1153, size: 16, offset: 48)
!2383 = !DIDerivedType(tag: DW_TAG_member, scope: !2377, file: !2354, line: 39, baseType: !2384, size: 128, offset: 64)
!2384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2377, file: !2354, line: 39, size: 128, elements: !2385)
!2385 = !{!2386, !2391}
!2386 = !DIDerivedType(tag: DW_TAG_member, scope: !2384, file: !2354, line: 40, baseType: !2387, size: 128)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2384, file: !2354, line: 40, size: 128, elements: !2388)
!2388 = !{!2389, !2390}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2387, file: !2354, line: 41, baseType: !141, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2387, file: !2354, line: 42, baseType: !141, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, scope: !2384, file: !2354, line: 44, baseType: !2392, size: 128)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2384, file: !2354, line: 44, size: 128, elements: !2393)
!2393 = !{!2394, !2395, !2396, !2397}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2392, file: !2354, line: 45, baseType: !136, size: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2392, file: !2354, line: 46, baseType: !136, size: 32, offset: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2392, file: !2354, line: 47, baseType: !136, size: 32, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2392, file: !2354, line: 48, baseType: !136, size: 32, offset: 96)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2377, file: !2354, line: 51, baseType: !136, size: 32, offset: 192)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2377, file: !2354, line: 52, baseType: !136, size: 32, offset: 224)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2377, file: !2354, line: 55, baseType: !2401, size: 1024, offset: 256)
!2401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 1024, elements: !244)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2377, file: !2354, line: 58, baseType: !2403, size: 2048, offset: 1280)
!2403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 2048, elements: !2057)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2377, file: !2354, line: 60, baseType: !2405, size: 384, offset: 3328)
!2405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 384, elements: !2406)
!2406 = !{!2407}
!2407 = !DISubrange(count: 12)
!2408 = !DIDerivedType(tag: DW_TAG_member, scope: !2377, file: !2354, line: 62, baseType: !2409, size: 384, offset: 3712)
!2409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2377, file: !2354, line: 62, size: 384, elements: !2410)
!2410 = !{!2411, !2412}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2409, file: !2354, line: 63, baseType: !2405, size: 384)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2409, file: !2354, line: 64, baseType: !2405, size: 384)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2359, file: !2354, line: 307, baseType: !2414, size: 1088)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2354, line: 79, size: 1088, elements: !2415)
!2415 = !{!2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2462}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2414, file: !2354, line: 80, baseType: !136, size: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2414, file: !2354, line: 81, baseType: !136, size: 32, offset: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2414, file: !2354, line: 82, baseType: !136, size: 32, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2414, file: !2354, line: 83, baseType: !136, size: 32, offset: 96)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2414, file: !2354, line: 84, baseType: !136, size: 32, offset: 128)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2414, file: !2354, line: 85, baseType: !136, size: 32, offset: 160)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2414, file: !2354, line: 86, baseType: !136, size: 32, offset: 192)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2414, file: !2354, line: 88, baseType: !2372, size: 640, offset: 224)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2414, file: !2354, line: 89, baseType: !950, size: 8, offset: 864)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2414, file: !2354, line: 90, baseType: !950, size: 8, offset: 872)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2414, file: !2354, line: 91, baseType: !950, size: 8, offset: 880)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2414, file: !2354, line: 92, baseType: !950, size: 8, offset: 888)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2414, file: !2354, line: 93, baseType: !950, size: 8, offset: 896)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2414, file: !2354, line: 94, baseType: !950, size: 8, offset: 904)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2414, file: !2354, line: 95, baseType: !2431, size: 64, offset: 960)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2433, line: 11, size: 128, elements: !2434)
!2433 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2434 = !{!2435, !2436}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2432, file: !2433, line: 12, baseType: !482, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2432, file: !2433, line: 13, baseType: !2437, size: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2439, line: 56, size: 1344, elements: !2440)
!2439 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2440 = !{!2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2438, file: !2439, line: 61, baseType: !140, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2438, file: !2439, line: 62, baseType: !140, size: 64, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2438, file: !2439, line: 63, baseType: !140, size: 64, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2438, file: !2439, line: 64, baseType: !140, size: 64, offset: 192)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2438, file: !2439, line: 65, baseType: !140, size: 64, offset: 256)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2438, file: !2439, line: 66, baseType: !140, size: 64, offset: 320)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2438, file: !2439, line: 68, baseType: !140, size: 64, offset: 384)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2438, file: !2439, line: 69, baseType: !140, size: 64, offset: 448)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2438, file: !2439, line: 70, baseType: !140, size: 64, offset: 512)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2438, file: !2439, line: 71, baseType: !140, size: 64, offset: 576)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2438, file: !2439, line: 72, baseType: !140, size: 64, offset: 640)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2438, file: !2439, line: 73, baseType: !140, size: 64, offset: 704)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2438, file: !2439, line: 74, baseType: !140, size: 64, offset: 768)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2438, file: !2439, line: 75, baseType: !140, size: 64, offset: 832)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2438, file: !2439, line: 76, baseType: !140, size: 64, offset: 896)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2438, file: !2439, line: 81, baseType: !140, size: 64, offset: 960)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2438, file: !2439, line: 83, baseType: !140, size: 64, offset: 1024)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2438, file: !2439, line: 84, baseType: !140, size: 64, offset: 1088)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2438, file: !2439, line: 85, baseType: !140, size: 64, offset: 1152)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2438, file: !2439, line: 86, baseType: !140, size: 64, offset: 1216)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2438, file: !2439, line: 87, baseType: !140, size: 64, offset: 1280)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2414, file: !2354, line: 96, baseType: !136, size: 32, offset: 1024)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2359, file: !2354, line: 308, baseType: !2464, size: 4608, align: 512)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2354, line: 289, size: 4608, align: 512, elements: !2465)
!2465 = !{!2466, !2467, !2474}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2464, file: !2354, line: 290, baseType: !2377, size: 4096, align: 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2464, file: !2354, line: 291, baseType: !2468, size: 512, offset: 4096)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2354, line: 268, size: 512, elements: !2469)
!2469 = !{!2470, !2471, !2472}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2468, file: !2354, line: 269, baseType: !141, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2468, file: !2354, line: 270, baseType: !141, size: 64, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2468, file: !2354, line: 271, baseType: !2473, size: 384, offset: 128)
!2473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 384, elements: !1495)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2464, file: !2354, line: 292, baseType: !2475, offset: 4608)
!2475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !950, elements: !1593)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2359, file: !2354, line: 309, baseType: !2477, size: 32768)
!2477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !950, size: 32768, elements: !2478)
!2478 = !{!2479}
!2479 = !DISubrange(count: 4096)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !775, file: !776, line: 16, baseType: !767, size: 128, offset: 448)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !775, file: !776, line: 17, baseType: !528, size: 32, offset: 576)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !349, file: !44, line: 1465, baseType: !127, size: 64, offset: 6400)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !349, file: !44, line: 1468, baseType: !136, size: 32, offset: 6464)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !349, file: !44, line: 1470, baseType: !563, size: 64, offset: 6528)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !349, file: !44, line: 1471, baseType: !563, size: 64, offset: 6592)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !349, file: !44, line: 1473, baseType: !138, size: 32, offset: 6656)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !349, file: !44, line: 1474, baseType: !2488, size: 64, offset: 6720)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !349, file: !44, line: 1477, baseType: !2491, size: 256, offset: 6784)
!2491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 256, elements: !244)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !349, file: !44, line: 1478, baseType: !2493, size: 128, offset: 7040)
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2494, line: 18, baseType: !2495)
!2494 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2494, line: 16, size: 128, elements: !2496)
!2496 = !{!2497}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2495, file: !2494, line: 17, baseType: !2498, size: 128)
!2498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !951, size: 128, elements: !1909)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !349, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !349, file: !44, line: 1481, baseType: !1379, size: 32, offset: 7200)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !349, file: !44, line: 1487, baseType: !512, size: 192, offset: 7232)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !349, file: !44, line: 1493, baseType: !294, size: 64, offset: 7424)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !349, file: !44, line: 1495, baseType: !274, size: 64, offset: 7488)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !349, file: !44, line: 1500, baseType: !132, size: 32, offset: 7552)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !349, file: !44, line: 1502, baseType: !2506, size: 448, offset: 7616)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !485, line: 60, size: 448, elements: !2507)
!2507 = !{!2508, !2513, !2514, !2515, !2516, !2517, !2518}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2506, file: !485, line: 61, baseType: !2509, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!140, !2512, !483}
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2506, file: !485, line: 63, baseType: !2509, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2506, file: !485, line: 66, baseType: !482, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2506, file: !485, line: 67, baseType: !132, size: 32, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2506, file: !485, line: 68, baseType: !7, size: 32, offset: 224)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2506, file: !485, line: 71, baseType: !158, size: 128, offset: 256)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2506, file: !485, line: 77, baseType: !2519, size: 64, offset: 384)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !349, file: !44, line: 1505, baseType: !516, size: 64, offset: 8064)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !349, file: !44, line: 1508, baseType: !516, size: 64, offset: 8128)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !349, file: !44, line: 1511, baseType: !132, size: 32, offset: 8192)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !349, file: !44, line: 1514, baseType: !1615, size: 32, offset: 8224)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !349, file: !44, line: 1517, baseType: !2525, size: 64, offset: 8256)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1757, line: 18, flags: DIFlagFwdDecl)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !349, file: !44, line: 1518, baseType: !389, size: 64, offset: 8320)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !349, file: !44, line: 1525, baseType: !1583, size: 64, offset: 8384)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !349, file: !44, line: 1532, baseType: !2530, size: 64, offset: 8448)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2531, line: 52, size: 64, elements: !2532)
!2531 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2532 = !{!2533}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2530, file: !2531, line: 53, baseType: !2534, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2531, line: 40, size: 256, elements: !2536)
!2536 = !{!2537, !2538, !2543}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2535, file: !2531, line: 42, baseType: !257)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2535, file: !2531, line: 44, baseType: !2539, size: 192)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2531, line: 28, size: 192, elements: !2540)
!2540 = !{!2541, !2542}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2539, file: !2531, line: 29, baseType: !158, size: 128)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2539, file: !2531, line: 31, baseType: !482, size: 64, offset: 128)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2535, file: !2531, line: 49, baseType: !482, size: 64, offset: 192)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !349, file: !44, line: 1533, baseType: !2530, size: 64, offset: 8512)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !349, file: !44, line: 1534, baseType: !786, size: 128, align: 64, offset: 8576)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !349, file: !44, line: 1535, baseType: !1756, size: 256, offset: 8704)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !349, file: !44, line: 1537, baseType: !512, size: 192, offset: 8960)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !349, file: !44, line: 1542, baseType: !132, size: 32, offset: 9152)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !349, file: !44, line: 1545, baseType: !257, offset: 9184)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !349, file: !44, line: 1546, baseType: !158, size: 128, offset: 9216)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !349, file: !44, line: 1548, baseType: !257, offset: 9344)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !349, file: !44, line: 1549, baseType: !158, size: 128, offset: 9344)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !202, file: !203, line: 104, baseType: !140, size: 64, offset: 896)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !202, file: !203, line: 105, baseType: !127, size: 64, offset: 960)
!2555 = !DIDerivedType(tag: DW_TAG_member, scope: !202, file: !203, line: 107, baseType: !2556, size: 128, offset: 1024)
!2556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !202, file: !203, line: 107, size: 128, elements: !2557)
!2557 = !{!2558, !2559}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2556, file: !203, line: 108, baseType: !158, size: 128)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2556, file: !203, line: 109, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !202, file: !203, line: 111, baseType: !158, size: 128, offset: 1152)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !202, file: !203, line: 112, baseType: !158, size: 128, offset: 1280)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !202, file: !203, line: 120, baseType: !2564, size: 128, offset: 1408)
!2564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !202, file: !203, line: 116, size: 128, elements: !2565)
!2565 = !{!2566, !2567, !2568}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2564, file: !203, line: 117, baseType: !393, size: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2564, file: !203, line: 118, baseType: !217, size: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2564, file: !203, line: 119, baseType: !786, size: 128, align: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !195, file: !44, line: 1866, baseType: !2570, size: 64, offset: 64)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!294, !201, !168, !2573}
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2575, line: 10, size: 128, elements: !2576)
!2575 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!2576 = !{!2577, !2581}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2574, file: !2575, line: 11, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{null, !127}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2574, file: !2575, line: 12, baseType: !127, size: 64, offset: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !195, file: !44, line: 1867, baseType: !2583, size: 64, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!132, !168, !132}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !195, file: !44, line: 1868, baseType: !2587, size: 64, offset: 192)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!2590, !168, !132}
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !195, file: !44, line: 1870, baseType: !2593, size: 64, offset: 256)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!132, !201, !320, !132}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !195, file: !44, line: 1872, baseType: !2597, size: 64, offset: 320)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!132, !168, !201, !172, !339}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !195, file: !44, line: 1873, baseType: !2601, size: 64, offset: 384)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!132, !201, !168, !201}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !195, file: !44, line: 1874, baseType: !2605, size: 64, offset: 448)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!132, !168, !201}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !195, file: !44, line: 1875, baseType: !2609, size: 64, offset: 512)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!132, !168, !201, !294}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !195, file: !44, line: 1876, baseType: !2613, size: 64, offset: 576)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!132, !168, !201, !172}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !195, file: !44, line: 1877, baseType: !2605, size: 64, offset: 640)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !195, file: !44, line: 1878, baseType: !2618, size: 64, offset: 704)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!132, !168, !201, !172, !353}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !195, file: !44, line: 1879, baseType: !2622, size: 64, offset: 768)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!132, !168, !201, !168, !201, !7}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !195, file: !44, line: 1881, baseType: !2626, size: 64, offset: 832)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!132, !201, !2629}
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !2631)
!2631 = !{!2632, !2633, !2634, !2635, !2636, !2637, !2642, !2643, !2644}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2630, file: !44, line: 220, baseType: !7, size: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2630, file: !44, line: 221, baseType: !172, size: 16, offset: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2630, file: !44, line: 222, baseType: !176, size: 32, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2630, file: !44, line: 223, baseType: !185, size: 32, offset: 96)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2630, file: !44, line: 224, baseType: !358, size: 64, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2630, file: !44, line: 225, baseType: !2638, size: 128, offset: 192)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !564, line: 13, size: 128, elements: !2639)
!2639 = !{!2640, !2641}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2638, file: !564, line: 14, baseType: !563, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2638, file: !564, line: 15, baseType: !482, size: 64, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2630, file: !44, line: 226, baseType: !2638, size: 128, offset: 320)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2630, file: !44, line: 227, baseType: !2638, size: 128, offset: 448)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2630, file: !44, line: 234, baseType: !1097, size: 64, offset: 576)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !195, file: !44, line: 1882, baseType: !2646, size: 64, offset: 896)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!132, !337, !2649, !136, !7}
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !2651, line: 22, size: 1152, elements: !2652)
!2651 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!2652 = !{!2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !2650, file: !2651, line: 23, baseType: !136, size: 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2650, file: !2651, line: 24, baseType: !172, size: 16, offset: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !2650, file: !2651, line: 25, baseType: !7, size: 32, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2650, file: !2651, line: 26, baseType: !1473, size: 32, offset: 96)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2650, file: !2651, line: 27, baseType: !141, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !2650, file: !2651, line: 28, baseType: !141, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2650, file: !2651, line: 37, baseType: !141, size: 64, offset: 256)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2650, file: !2651, line: 38, baseType: !353, size: 32, offset: 320)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !2650, file: !2651, line: 39, baseType: !353, size: 32, offset: 352)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2650, file: !2651, line: 40, baseType: !176, size: 32, offset: 384)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2650, file: !2651, line: 41, baseType: !185, size: 32, offset: 416)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2650, file: !2651, line: 42, baseType: !358, size: 64, offset: 448)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !2650, file: !2651, line: 43, baseType: !2638, size: 128, offset: 512)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !2650, file: !2651, line: 44, baseType: !2638, size: 128, offset: 640)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2650, file: !2651, line: 45, baseType: !2638, size: 128, offset: 768)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !2650, file: !2651, line: 46, baseType: !2638, size: 128, offset: 896)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2650, file: !2651, line: 47, baseType: !141, size: 64, offset: 1024)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !2650, file: !2651, line: 48, baseType: !141, size: 64, offset: 1088)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !195, file: !44, line: 1883, baseType: !2672, size: 64, offset: 960)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!1126, !201, !320, !1129}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !195, file: !44, line: 1884, baseType: !2676, size: 64, offset: 1024)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!132, !168, !2679, !141, !141}
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !195, file: !44, line: 1886, baseType: !2682, size: 64, offset: 1088)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!132, !168, !2685, !132}
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !195, file: !44, line: 1887, baseType: !2687, size: 64, offset: 1152)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!132, !168, !201, !1097, !7, !172}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !195, file: !44, line: 1890, baseType: !2613, size: 64, offset: 1216)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !195, file: !44, line: 1891, baseType: !2692, size: 64, offset: 1280)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!132, !168, !2590, !132}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !169, file: !44, line: 623, baseType: !348, size: 64, offset: 192)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !169, file: !44, line: 624, baseType: !164, size: 64, offset: 256)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !169, file: !44, line: 631, baseType: !140, size: 64, offset: 320)
!2698 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !44, line: 639, baseType: !2699, size: 32, offset: 384)
!2699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !169, file: !44, line: 639, size: 32, elements: !2700)
!2700 = !{!2701, !2703}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2699, file: !44, line: 640, baseType: !2702, size: 32)
!2702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2699, file: !44, line: 641, baseType: !7, size: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !169, file: !44, line: 643, baseType: !353, size: 32, offset: 416)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !169, file: !44, line: 644, baseType: !358, size: 64, offset: 448)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !169, file: !44, line: 645, baseType: !2638, size: 128, offset: 512)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !169, file: !44, line: 646, baseType: !2638, size: 128, offset: 640)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !169, file: !44, line: 647, baseType: !2638, size: 128, offset: 768)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !169, file: !44, line: 648, baseType: !257, offset: 896)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !169, file: !44, line: 649, baseType: !173, size: 16, offset: 896)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !169, file: !44, line: 650, baseType: !950, size: 8, offset: 912)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !169, file: !44, line: 651, baseType: !950, size: 8, offset: 920)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !169, file: !44, line: 652, baseType: !677, size: 64, offset: 960)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !169, file: !44, line: 659, baseType: !140, size: 64, offset: 1024)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !169, file: !44, line: 660, baseType: !689, size: 256, offset: 1088)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !169, file: !44, line: 662, baseType: !140, size: 64, offset: 1344)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !169, file: !44, line: 663, baseType: !140, size: 64, offset: 1408)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !169, file: !44, line: 665, baseType: !393, size: 128, offset: 1472)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !169, file: !44, line: 666, baseType: !158, size: 128, offset: 1600)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !169, file: !44, line: 675, baseType: !158, size: 128, offset: 1728)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !169, file: !44, line: 676, baseType: !158, size: 128, offset: 1856)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !169, file: !44, line: 677, baseType: !158, size: 128, offset: 1984)
!2723 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !44, line: 678, baseType: !2724, size: 128, offset: 2112)
!2724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !169, file: !44, line: 678, size: 128, elements: !2725)
!2725 = !{!2726, !2727}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2724, file: !44, line: 679, baseType: !389, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2724, file: !44, line: 680, baseType: !786, size: 128, align: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !169, file: !44, line: 682, baseType: !518, size: 64, offset: 2240)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !169, file: !44, line: 683, baseType: !518, size: 64, offset: 2304)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !169, file: !44, line: 684, baseType: !528, size: 32, offset: 2368)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !169, file: !44, line: 685, baseType: !528, size: 32, offset: 2400)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !169, file: !44, line: 686, baseType: !528, size: 32, offset: 2432)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !169, file: !44, line: 688, baseType: !528, size: 32, offset: 2464)
!2734 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !44, line: 690, baseType: !2735, size: 64, offset: 2496)
!2735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !169, file: !44, line: 690, size: 64, elements: !2736)
!2736 = !{!2737, !2738}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2735, file: !44, line: 691, baseType: !1113, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2735, file: !44, line: 692, baseType: !420, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !169, file: !44, line: 694, baseType: !2740, size: 64, offset: 2560)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !2742)
!2742 = !{!2743, !2744, !2745, !2746}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2741, file: !44, line: 1101, baseType: !257)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2741, file: !44, line: 1102, baseType: !158, size: 128)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2741, file: !44, line: 1103, baseType: !158, size: 128, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2741, file: !44, line: 1104, baseType: !158, size: 128, offset: 256)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !169, file: !44, line: 695, baseType: !165, size: 1216, align: 64, offset: 2624)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !169, file: !44, line: 696, baseType: !158, size: 128, offset: 3840)
!2749 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !44, line: 697, baseType: !2750, size: 64, offset: 3968)
!2750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !169, file: !44, line: 697, size: 64, elements: !2751)
!2751 = !{!2752, !2753, !2754, !2757, !2758}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2750, file: !44, line: 698, baseType: !1346, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2750, file: !44, line: 699, baseType: !710, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2750, file: !44, line: 700, baseType: !2755, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2750, file: !44, line: 701, baseType: !320, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2750, file: !44, line: 702, baseType: !7, size: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !169, file: !44, line: 705, baseType: !138, size: 32, offset: 4032)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !169, file: !44, line: 708, baseType: !138, size: 32, offset: 4064)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !169, file: !44, line: 709, baseType: !2488, size: 64, offset: 4096)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !169, file: !44, line: 720, baseType: !127, size: 64, offset: 4160)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !165, file: !44, line: 453, baseType: !2112, size: 128, offset: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !165, file: !44, line: 454, baseType: !477, size: 32, offset: 192)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !165, file: !44, line: 455, baseType: !528, size: 32, offset: 224)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !165, file: !44, line: 460, baseType: !937, size: 128, offset: 256)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !165, file: !44, line: 461, baseType: !689, size: 256, offset: 384)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !165, file: !44, line: 462, baseType: !140, size: 64, offset: 640)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !165, file: !44, line: 463, baseType: !140, size: 64, offset: 704)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !165, file: !44, line: 464, baseType: !140, size: 64, offset: 768)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !165, file: !44, line: 465, baseType: !2772, size: 64, offset: 832)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2774)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !2775)
!2775 = !{!2776, !2780, !2784, !2788, !2792, !2796, !2802, !2806, !2810, !2815, !2819, !2823, !2827, !2828, !2832, !2838, !2839, !2840, !2844, !2849, !2853, !2860}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2774, file: !44, line: 368, baseType: !2777, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!132, !146, !432}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !2774, file: !44, line: 369, baseType: !2781, size: 64, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!132, !1097, !146}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2774, file: !44, line: 372, baseType: !2785, size: 64, offset: 128)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!132, !164, !432}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !2774, file: !44, line: 375, baseType: !2789, size: 64, offset: 192)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!132, !146}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !2774, file: !44, line: 381, baseType: !2793, size: 64, offset: 256)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!132, !1097, !164, !161, !7}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2774, file: !44, line: 383, baseType: !2797, size: 64, offset: 320)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{null, !2800}
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2774, file: !44, line: 385, baseType: !2803, size: 64, offset: 384)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!132, !1097, !164, !358, !7, !7, !2294, !1303}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2774, file: !44, line: 388, baseType: !2807, size: 64, offset: 448)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!132, !1097, !164, !358, !7, !7, !146, !127}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2774, file: !44, line: 393, baseType: !2811, size: 64, offset: 512)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!2814, !164, !2814}
!2814 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !145, line: 125, baseType: !141)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !2774, file: !44, line: 394, baseType: !2816, size: 64, offset: 576)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{null, !146, !7, !7}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !2774, file: !44, line: 395, baseType: !2820, size: 64, offset: 640)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!132, !146, !477}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !2774, file: !44, line: 396, baseType: !2824, size: 64, offset: 704)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{null, !146}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2774, file: !44, line: 397, baseType: !1138, size: 64, offset: 768)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !2774, file: !44, line: 402, baseType: !2829, size: 64, offset: 832)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!132, !164, !146, !146, !5}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !2774, file: !44, line: 404, baseType: !2833, size: 64, offset: 896)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!339, !146, !2836}
!2836 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !2837, line: 305, baseType: !7)
!2837 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !2774, file: !44, line: 405, baseType: !2824, size: 64, offset: 960)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !2774, file: !44, line: 406, baseType: !2789, size: 64, offset: 1024)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2774, file: !44, line: 407, baseType: !2841, size: 64, offset: 1088)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!132, !146, !140, !140}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2774, file: !44, line: 409, baseType: !2845, size: 64, offset: 1152)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{null, !146, !2848, !2848}
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2774, file: !44, line: 410, baseType: !2850, size: 64, offset: 1216)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!132, !164, !146}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2774, file: !44, line: 413, baseType: !2854, size: 64, offset: 1280)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!132, !2857, !1097, !2859}
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2774, file: !44, line: 415, baseType: !2861, size: 64, offset: 1344)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{null, !1097}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !165, file: !44, line: 466, baseType: !140, size: 64, offset: 896)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !165, file: !44, line: 467, baseType: !1615, size: 32, offset: 960)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !165, file: !44, line: 468, baseType: !257, offset: 992)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !165, file: !44, line: 469, baseType: !158, size: 128, offset: 1024)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !165, file: !44, line: 470, baseType: !127, size: 64, offset: 1152)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !155, file: !148, line: 87, baseType: !140, size: 64, offset: 192)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !155, file: !148, line: 94, baseType: !140, size: 64, offset: 256)
!2871 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !148, line: 96, baseType: !2872, size: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !148, line: 96, size: 64, elements: !2873)
!2873 = !{!2874}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2872, file: !148, line: 101, baseType: !144, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !148, line: 103, baseType: !2876, size: 320)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !148, line: 103, size: 320, elements: !2877)
!2877 = !{!2878, !2888, !2889, !2890}
!2878 = !DIDerivedType(tag: DW_TAG_member, scope: !2876, file: !148, line: 104, baseType: !2879, size: 128)
!2879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2876, file: !148, line: 104, size: 128, elements: !2880)
!2880 = !{!2881, !2882}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !2879, file: !148, line: 105, baseType: !158, size: 128)
!2882 = !DIDerivedType(tag: DW_TAG_member, scope: !2879, file: !148, line: 106, baseType: !2883, size: 128)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2879, file: !148, line: 106, size: 128, elements: !2884)
!2884 = !{!2885, !2886, !2887}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2883, file: !148, line: 107, baseType: !146, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2883, file: !148, line: 109, baseType: !132, size: 32, offset: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !2883, file: !148, line: 110, baseType: !132, size: 32, offset: 96)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !2876, file: !148, line: 117, baseType: !2131, size: 64, offset: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !2876, file: !148, line: 119, baseType: !127, size: 64, offset: 192)
!2890 = !DIDerivedType(tag: DW_TAG_member, scope: !2876, file: !148, line: 120, baseType: !2891, size: 64, offset: 256)
!2891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2876, file: !148, line: 120, size: 64, elements: !2892)
!2892 = !{!2893, !2894, !2895}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !2891, file: !148, line: 121, baseType: !127, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2891, file: !148, line: 122, baseType: !140, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, scope: !2891, file: !148, line: 123, baseType: !2896, size: 32)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2891, file: !148, line: 123, size: 32, elements: !2897)
!2897 = !{!2898, !2899, !2900}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !2896, file: !148, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2896, file: !148, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2896, file: !148, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2901 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !148, line: 130, baseType: !2902, size: 192)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !148, line: 130, size: 192, elements: !2903)
!2903 = !{!2904, !2905, !2906, !2907, !2908}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2902, file: !148, line: 131, baseType: !140, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !2902, file: !148, line: 134, baseType: !240, size: 8, offset: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !2902, file: !148, line: 135, baseType: !240, size: 8, offset: 72)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !2902, file: !148, line: 136, baseType: !528, size: 32, offset: 96)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !2902, file: !148, line: 137, baseType: !7, size: 32, offset: 128)
!2909 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !148, line: 139, baseType: !2910, size: 256)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !148, line: 139, size: 256, elements: !2911)
!2911 = !{!2912, !2913, !2914}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !2910, file: !148, line: 140, baseType: !140, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !2910, file: !148, line: 141, baseType: !528, size: 32, offset: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !2910, file: !148, line: 143, baseType: !158, size: 128, offset: 128)
!2915 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !148, line: 145, baseType: !2916, size: 256)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !148, line: 145, size: 256, elements: !2917)
!2917 = !{!2918, !2919, !2920, !2921, !2926}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !2916, file: !148, line: 146, baseType: !140, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !2916, file: !148, line: 147, baseType: !1068, size: 64, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !2916, file: !148, line: 148, baseType: !140, size: 64, offset: 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, scope: !2916, file: !148, line: 149, baseType: !2922, size: 64, offset: 192)
!2922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2916, file: !148, line: 149, size: 64, elements: !2923)
!2923 = !{!2924, !2925}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !2922, file: !148, line: 150, baseType: !976, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !2922, file: !148, line: 151, baseType: !528, size: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2916, file: !148, line: 156, baseType: !257, offset: 256)
!2927 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !148, line: 159, baseType: !2928, size: 128)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !148, line: 159, size: 128, elements: !2929)
!2929 = !{!2930, !2994}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2928, file: !148, line: 161, baseType: !2931, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2933)
!2933 = !{!2934, !2944, !2965, !2966, !2967, !2968, !2969, !2981, !2982, !2983}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2932, file: !31, line: 111, baseType: !2935, size: 384)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2936)
!2936 = !{!2937, !2939, !2940, !2941, !2942, !2943}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2935, file: !31, line: 20, baseType: !2938, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2935, file: !31, line: 21, baseType: !2938, size: 64, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2935, file: !31, line: 22, baseType: !2938, size: 64, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2935, file: !31, line: 23, baseType: !140, size: 64, offset: 192)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2935, file: !31, line: 24, baseType: !140, size: 64, offset: 256)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2935, file: !31, line: 25, baseType: !140, size: 64, offset: 320)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2932, file: !31, line: 112, baseType: !2945, size: 64, offset: 384)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2947, line: 105, size: 128, elements: !2948)
!2947 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2948 = !{!2949, !2950}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2946, file: !2947, line: 110, baseType: !140, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2946, file: !2947, line: 118, baseType: !2951, size: 64, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2947, line: 95, size: 448, elements: !2953)
!2953 = !{!2954, !2955, !2960, !2961, !2962, !2963, !2964}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2952, file: !2947, line: 96, baseType: !516, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2952, file: !2947, line: 97, baseType: !2956, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2947, line: 60, baseType: !2958)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{null, !2945}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2952, file: !2947, line: 98, baseType: !2956, size: 64, offset: 128)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2952, file: !2947, line: 99, baseType: !339, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2952, file: !2947, line: 100, baseType: !339, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2952, file: !2947, line: 101, baseType: !786, size: 128, align: 64, offset: 256)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2952, file: !2947, line: 102, baseType: !2945, size: 64, offset: 384)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2932, file: !31, line: 113, baseType: !2946, size: 128, offset: 448)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2932, file: !31, line: 114, baseType: !1731, size: 192, offset: 576)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2932, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2932, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2932, file: !31, line: 117, baseType: !2970, size: 64, offset: 832)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2972)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2973)
!2973 = !{!2974, !2975, !2979, !2980}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2972, file: !31, line: 73, baseType: !2824, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2972, file: !31, line: 78, baseType: !2976, size: 64, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{null, !2931}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2972, file: !31, line: 83, baseType: !2976, size: 64, offset: 128)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2972, file: !31, line: 89, baseType: !1029, size: 64, offset: 192)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2932, file: !31, line: 118, baseType: !127, size: 64, offset: 896)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2932, file: !31, line: 119, baseType: !132, size: 32, offset: 960)
!2983 = !DIDerivedType(tag: DW_TAG_member, scope: !2932, file: !31, line: 120, baseType: !2984, size: 128, offset: 1024)
!2984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2932, file: !31, line: 120, size: 128, elements: !2985)
!2985 = !{!2986, !2992}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2984, file: !31, line: 121, baseType: !2987, size: 128)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2988, line: 6, size: 128, elements: !2989)
!2988 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2989 = !{!2990, !2991}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2987, file: !2988, line: 7, baseType: !141, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2987, file: !2988, line: 8, baseType: !141, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2984, file: !31, line: 122, baseType: !2993)
!2993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2987, elements: !1593)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2928, file: !148, line: 162, baseType: !127, size: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !152, file: !148, line: 176, baseType: !786, size: 128, align: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, scope: !147, file: !148, line: 179, baseType: !2997, size: 32, offset: 384)
!2997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !148, line: 179, size: 32, elements: !2998)
!2998 = !{!2999, !3000, !3001, !3002}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2997, file: !148, line: 184, baseType: !528, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2997, file: !148, line: 192, baseType: !7, size: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2997, file: !148, line: 194, baseType: !7, size: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2997, file: !148, line: 195, baseType: !132, size: 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !147, file: !148, line: 199, baseType: !528, size: 32, offset: 416)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !3007, line: 155, baseType: !132)
!3007 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!3008 = !{!3009, !3011, !3016, !3021, !3073, !3076, !3081, !3086, !3101, !0, !3103, !3120, !4255, !4261, !4264, !4269, !4271, !4273, !4276}
!3009 = !DIGlobalVariableExpression(var: !3010, expr: !DIExpression())
!3010 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_agp_amd64_mod_init236", scope: !2, file: !3, line: 814, type: !127, isLocal: true, isDefinition: true)
!3011 = !DIGlobalVariableExpression(var: !3012, expr: !DIExpression())
!3012 = distinct !DIGlobalVariable(name: "__exitcall_agp_amd64_cleanup", scope: !2, file: !3, line: 815, type: !3013, isLocal: true, isDefinition: true)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3014, line: 117, baseType: !3015)
!3014 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!3016 = !DIGlobalVariableExpression(var: !3017, expr: !DIExpression())
!3017 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author237", scope: !2, file: !3, line: 817, type: !3018, isLocal: true, isDefinition: true, align: 8)
!3018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 320, elements: !3019)
!3019 = !{!3020}
!3020 = !DISubrange(count: 40)
!3021 = !DIGlobalVariableExpression(var: !3022, expr: !DIExpression())
!3022 = distinct !DIGlobalVariable(name: "__param_agp_try_unsupported", scope: !2, file: !3, line: 818, type: !3023, isLocal: true, isDefinition: true, align: 64)
!3023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3024)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3025, line: 69, size: 320, elements: !3026)
!3025 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!3026 = !{!3027, !3028, !3029, !3045, !3047, !3051, !3052}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3024, file: !3025, line: 70, baseType: !294, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3024, file: !3025, line: 71, baseType: !124, size: 64, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3024, file: !3025, line: 72, baseType: !3030, size: 64, offset: 128)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3032)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3025, line: 47, size: 256, elements: !3033)
!3033 = !{!3034, !3035, !3040, !3044}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3032, file: !3025, line: 49, baseType: !7, size: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3032, file: !3025, line: 51, baseType: !3036, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!132, !294, !3039}
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3032, file: !3025, line: 53, baseType: !3041, size: 64, offset: 128)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!132, !320, !3039}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3032, file: !3025, line: 55, baseType: !2578, size: 64, offset: 192)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3024, file: !3025, line: 73, baseType: !3046, size: 16, offset: 192)
!3046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1153)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3024, file: !3025, line: 74, baseType: !3048, size: 8, offset: 208)
!3048 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !137, line: 16, baseType: !3049)
!3049 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !139, line: 20, baseType: !3050)
!3050 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3024, file: !3025, line: 75, baseType: !950, size: 8, offset: 216)
!3052 = !DIDerivedType(tag: DW_TAG_member, scope: !3024, file: !3025, line: 76, baseType: !3053, size: 64, offset: 256)
!3053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3024, file: !3025, line: 76, size: 64, elements: !3054)
!3054 = !{!3055, !3056, !3063}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3053, file: !3025, line: 77, baseType: !127, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3053, file: !3025, line: 78, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3059)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3025, line: 86, size: 128, elements: !3060)
!3060 = !{!3061, !3062}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3059, file: !3025, line: 87, baseType: !7, size: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3059, file: !3025, line: 88, baseType: !320, size: 64, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3053, file: !3025, line: 79, baseType: !3064, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3066)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3025, line: 92, size: 256, elements: !3067)
!3067 = !{!3068, !3069, !3070, !3071, !3072}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3066, file: !3025, line: 94, baseType: !7, size: 32)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3066, file: !3025, line: 95, baseType: !7, size: 32, offset: 32)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3066, file: !3025, line: 96, baseType: !795, size: 64, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3066, file: !3025, line: 97, baseType: !3030, size: 64, offset: 128)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3066, file: !3025, line: 98, baseType: !127, size: 64, offset: 192)
!3073 = !DIGlobalVariableExpression(var: !3074, expr: !DIExpression())
!3074 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_agp_try_unsupportedtype238", scope: !2, file: !3, line: 818, type: !3075, isLocal: true, isDefinition: true, align: 8)
!3075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 352, elements: !1668)
!3076 = !DIGlobalVariableExpression(var: !3077, expr: !DIExpression())
!3077 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file239", scope: !2, file: !3, line: 819, type: !3078, isLocal: true, isDefinition: true, align: 8)
!3078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 336, elements: !3079)
!3079 = !{!3080}
!3080 = !DISubrange(count: 42)
!3081 = !DIGlobalVariableExpression(var: !3082, expr: !DIExpression())
!3082 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license240", scope: !2, file: !3, line: 819, type: !3083, isLocal: true, isDefinition: true, align: 8)
!3083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 176, elements: !3084)
!3084 = !{!3085}
!3085 = !DISubrange(count: 22)
!3086 = !DIGlobalVariableExpression(var: !3087, expr: !DIExpression())
!3087 = distinct !DIGlobalVariable(name: "aperture_resource", scope: !2, file: !3, line: 36, type: !3088, isLocal: true, isDefinition: true)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !3090, line: 20, size: 512, elements: !3091)
!3090 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!3091 = !{!3092, !3094, !3095, !3096, !3097, !3098, !3099, !3100}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3089, file: !3090, line: 21, baseType: !3093, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !145, line: 158, baseType: !2297)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3089, file: !3090, line: 22, baseType: !3093, size: 64, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3089, file: !3090, line: 23, baseType: !294, size: 64, offset: 128)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3089, file: !3090, line: 24, baseType: !140, size: 64, offset: 192)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3089, file: !3090, line: 25, baseType: !140, size: 64, offset: 256)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3089, file: !3090, line: 26, baseType: !3088, size: 64, offset: 320)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3089, file: !3090, line: 26, baseType: !3088, size: 64, offset: 384)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3089, file: !3090, line: 26, baseType: !3088, size: 64, offset: 448)
!3101 = !DIGlobalVariableExpression(var: !3102, expr: !DIExpression())
!3102 = distinct !DIGlobalVariable(name: "agp_bridges_found", scope: !2, file: !3, line: 38, type: !132, isLocal: true, isDefinition: true)
!3103 = !DIGlobalVariableExpression(var: !3104, expr: !DIExpression())
!3104 = distinct !DIGlobalVariable(name: "agp_amd64_pci_table", scope: !2, file: !3, line: 614, type: !3105, isLocal: true, isDefinition: true)
!3105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3106, size: 3584, elements: !3118)
!3106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3107)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3108, line: 38, size: 256, elements: !3109)
!3108 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3109 = !{!3110, !3111, !3112, !3113, !3114, !3115, !3116}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3107, file: !3108, line: 39, baseType: !138, size: 32)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3107, file: !3108, line: 39, baseType: !138, size: 32, offset: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !3107, file: !3108, line: 40, baseType: !138, size: 32, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !3107, file: !3108, line: 40, baseType: !138, size: 32, offset: 96)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3107, file: !3108, line: 41, baseType: !138, size: 32, offset: 128)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !3107, file: !3108, line: 41, baseType: !138, size: 32, offset: 160)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3107, file: !3108, line: 42, baseType: !3117, size: 64, offset: 192)
!3117 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3108, line: 14, baseType: !140)
!3118 = !{!3119}
!3119 = !DISubrange(count: 14)
!3120 = !DIGlobalVariableExpression(var: !3121, expr: !DIExpression())
!3121 = distinct !DIGlobalVariable(name: "amd_8151_driver", scope: !2, file: !3, line: 216, type: !3122, isLocal: true, isDefinition: true)
!3122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3123)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "agp_bridge_driver", file: !94, line: 97, size: 1472, elements: !3124)
!3124 = !{!3125, !3126, !3127, !3128, !3129, !3130, !3131, !3138, !3142, !3143, !4184, !4185, !4218, !4222, !4223, !4227, !4228, !4232, !4233, !4237, !4238, !4242, !4246, !4250, !4251}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3123, file: !94, line: 98, baseType: !124, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "aperture_sizes", scope: !3123, file: !94, line: 99, baseType: !2299, size: 64, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "num_aperture_sizes", scope: !3123, file: !94, line: 100, baseType: !132, size: 32, offset: 128)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "size_type", scope: !3123, file: !94, line: 101, baseType: !93, size: 32, offset: 160)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "cant_use_aperture", scope: !3123, file: !94, line: 102, baseType: !339, size: 8, offset: 192)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "needs_scratch_page", scope: !3123, file: !94, line: 103, baseType: !339, size: 8, offset: 200)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "masks", scope: !3123, file: !94, line: 104, baseType: !3132, size: 64, offset: 256)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3134)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gatt_mask", file: !94, line: 53, size: 128, elements: !3135)
!3135 = !{!3136, !3137}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3134, file: !94, line: 54, baseType: !140, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3134, file: !94, line: 55, baseType: !136, size: 32, offset: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "fetch_size", scope: !3123, file: !94, line: 105, baseType: !3139, size: 64, offset: 320)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!132}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "configure", scope: !3123, file: !94, line: 106, baseType: !3139, size: 64, offset: 384)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "agp_enable", scope: !3123, file: !94, line: 107, baseType: !3144, size: 64, offset: 448)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{null, !3147, !136}
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "agp_bridge_data", file: !94, line: 125, size: 1600, elements: !3149)
!3149 = !{!3150, !3157, !3159, !3160, !3161, !3162, !3163, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3148, file: !94, line: 126, baseType: !3151, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3153)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "agp_version", file: !102, line: 40, size: 32, elements: !3154)
!3154 = !{!3155, !3156}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3153, file: !102, line: 41, baseType: !1153, size: 16)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3153, file: !102, line: 42, baseType: !1153, size: 16, offset: 16)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3148, file: !94, line: 127, baseType: !3158, size: 64, offset: 64)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3148, file: !94, line: 128, baseType: !1011, size: 64, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "previous_size", scope: !3148, file: !94, line: 129, baseType: !127, size: 64, offset: 192)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "current_size", scope: !3148, file: !94, line: 130, baseType: !127, size: 64, offset: 256)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private_data", scope: !3148, file: !94, line: 131, baseType: !127, size: 64, offset: 320)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3148, file: !94, line: 132, baseType: !3164, size: 64, offset: 384)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !3007, line: 309, size: 19264, elements: !3166)
!3166 = !{!3167, !3168, !3974, !3975, !3976, !3977, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4005, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4135, !4136, !4138, !4139, !4140, !4141, !4143, !4144, !4145, !4148, !4155, !4156, !4157, !4158, !4159, !4160, !4161}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !3165, file: !3007, line: 310, baseType: !158, size: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3165, file: !3007, line: 311, baseType: !3169, size: 64, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !3007, line: 605, size: 8064, elements: !3171)
!3171 = !{!3172, !3173, !3174, !3175, !3176, !3177, !3178, !3180, !3181, !3182, !3206, !3209, !3210, !3214, !3215, !3216, !3217, !3218, !3222, !3223, !3225, !3970, !3971, !3972, !3973}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3170, file: !3007, line: 606, baseType: !158, size: 128)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3170, file: !3007, line: 607, baseType: !3169, size: 64, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3170, file: !3007, line: 608, baseType: !158, size: 128, offset: 192)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !3170, file: !3007, line: 609, baseType: !158, size: 128, offset: 320)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3170, file: !3007, line: 610, baseType: !3164, size: 64, offset: 448)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !3170, file: !3007, line: 611, baseType: !158, size: 128, offset: 512)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !3170, file: !3007, line: 613, baseType: !3179, size: 256, offset: 640)
!3179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3088, size: 256, elements: !1395)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3170, file: !3007, line: 614, baseType: !158, size: 128, offset: 896)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !3170, file: !3007, line: 615, baseType: !3089, size: 512, offset: 1024)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3170, file: !3007, line: 617, baseType: !3183, size: 64, offset: 1536)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !3007, line: 731, size: 320, elements: !3185)
!3185 = !{!3186, !3190, !3194, !3198, !3202}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !3184, file: !3007, line: 732, baseType: !3187, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!132, !3169}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !3184, file: !3007, line: 733, baseType: !3191, size: 64, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{null, !3169}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !3184, file: !3007, line: 734, baseType: !3195, size: 64, offset: 128)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!127, !3169, !7, !132}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3184, file: !3007, line: 735, baseType: !3199, size: 64, offset: 192)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!132, !3169, !7, !132, !132, !1809}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3184, file: !3007, line: 736, baseType: !3203, size: 64, offset: 256)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!132, !3169, !7, !132, !132, !136}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3170, file: !3007, line: 618, baseType: !3207, size: 64, offset: 1600)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !3007, line: 537, flags: DIFlagFwdDecl)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !3170, file: !3007, line: 619, baseType: !127, size: 64, offset: 1664)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !3170, file: !3007, line: 620, baseType: !3211, size: 64, offset: 1728)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3213, line: 123, flags: DIFlagFwdDecl)
!3213 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3170, file: !3007, line: 622, baseType: !240, size: 8, offset: 1792)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !3170, file: !3007, line: 623, baseType: !240, size: 8, offset: 1800)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !3170, file: !3007, line: 624, baseType: !240, size: 8, offset: 1808)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !3170, file: !3007, line: 625, baseType: !240, size: 8, offset: 1816)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3170, file: !3007, line: 630, baseType: !3219, size: 384, offset: 1824)
!3219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 384, elements: !3220)
!3220 = !{!3221}
!3221 = !DISubrange(count: 48)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !3170, file: !3007, line: 632, baseType: !173, size: 16, offset: 2208)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !3170, file: !3007, line: 633, baseType: !3224, size: 16, offset: 2224)
!3224 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !3007, line: 237, baseType: !173)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !3170, file: !3007, line: 634, baseType: !3226, size: 64, offset: 2240)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !3228)
!3228 = !{!3229, !3526, !3527, !3530, !3531, !3582, !3671, !3672, !3673, !3674, !3675, !3684, !3789, !3802, !3805, !3806, !3810, !3812, !3813, !3814, !3818, !3824, !3825, !3828, !3832, !3922, !3923, !3924, !3925, !3926, !3958, !3959, !3960, !3963, !3966, !3967, !3968, !3969}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3227, file: !73, line: 462, baseType: !3230, size: 512)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3231, line: 64, size: 512, elements: !3232)
!3231 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3232 = !{!3233, !3234, !3235, !3237, !3277, !3377, !3516, !3521, !3522, !3523, !3524, !3525}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3230, file: !3231, line: 65, baseType: !294, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3230, file: !3231, line: 66, baseType: !158, size: 128, offset: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3230, file: !3231, line: 67, baseType: !3236, size: 64, offset: 192)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3230, file: !3231, line: 68, baseType: !3238, size: 64, offset: 256)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3231, line: 192, size: 704, elements: !3240)
!3240 = !{!3241, !3242, !3243, !3244}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3239, file: !3231, line: 193, baseType: !158, size: 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3239, file: !3231, line: 194, baseType: !257, offset: 128)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3239, file: !3231, line: 195, baseType: !3230, size: 512, offset: 128)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3239, file: !3231, line: 196, baseType: !3245, size: 64, offset: 640)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3247)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3231, line: 156, size: 192, elements: !3248)
!3248 = !{!3249, !3254, !3259}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3247, file: !3231, line: 157, baseType: !3250, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3251)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!132, !3238, !3236}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3247, file: !3231, line: 158, baseType: !3255, size: 64, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3256)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!294, !3238, !3236}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3247, file: !3231, line: 159, baseType: !3260, size: 64, offset: 128)
!3260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3261)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!132, !3238, !3236, !3264}
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3231, line: 148, size: 20736, elements: !3266)
!3266 = !{!3267, !3269, !3271, !3272, !3276}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3265, file: !3231, line: 149, baseType: !3268, size: 192)
!3268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 192, elements: !405)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3265, file: !3231, line: 150, baseType: !3270, size: 4096, offset: 192)
!3270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 4096, elements: !2057)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3265, file: !3231, line: 151, baseType: !132, size: 32, offset: 4288)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3265, file: !3231, line: 152, baseType: !3273, size: 16384, offset: 4320)
!3273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 16384, elements: !3274)
!3274 = !{!3275}
!3275 = !DISubrange(count: 2048)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3265, file: !3231, line: 153, baseType: !132, size: 32, offset: 20704)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3230, file: !3231, line: 69, baseType: !3278, size: 64, offset: 320)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3231, line: 138, size: 448, elements: !3280)
!3280 = !{!3281, !3285, !3304, !3306, !3339, !3367, !3371}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3279, file: !3231, line: 139, baseType: !3282, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{null, !3236}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3279, file: !3231, line: 140, baseType: !3286, size: 64, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3288)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3289, line: 230, size: 128, elements: !3290)
!3289 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3290 = !{!3291, !3300}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3288, file: !3289, line: 231, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!1126, !3236, !3295, !320}
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3289, line: 30, size: 128, elements: !3297)
!3297 = !{!3298, !3299}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3296, file: !3289, line: 31, baseType: !294, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3296, file: !3289, line: 32, baseType: !172, size: 16, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3288, file: !3289, line: 232, baseType: !3301, size: 64, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!1126, !3236, !3295, !294, !1129}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3279, file: !3231, line: 141, baseType: !3305, size: 64, offset: 128)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3279, file: !3231, line: 142, baseType: !3307, size: 64, offset: 192)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3310)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3289, line: 84, size: 320, elements: !3311)
!3311 = !{!3312, !3313, !3317, !3336, !3337}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3310, file: !3289, line: 85, baseType: !294, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3310, file: !3289, line: 86, baseType: !3314, size: 64, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!172, !3236, !3295, !132}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3310, file: !3289, line: 88, baseType: !3318, size: 64, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!172, !3236, !3321, !132}
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3289, line: 168, size: 448, elements: !3323)
!3323 = !{!3324, !3325, !3326, !3327, !3331, !3332}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3322, file: !3289, line: 169, baseType: !3296, size: 128)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3322, file: !3289, line: 170, baseType: !1129, size: 64, offset: 128)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3322, file: !3289, line: 171, baseType: !127, size: 64, offset: 192)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3322, file: !3289, line: 172, baseType: !3328, size: 64, offset: 256)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!1126, !1097, !3236, !3321, !320, !358, !1129}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3322, file: !3289, line: 174, baseType: !3328, size: 64, offset: 320)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3322, file: !3289, line: 176, baseType: !3333, size: 64, offset: 384)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!132, !1097, !3236, !3321, !983}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3310, file: !3289, line: 90, baseType: !3305, size: 64, offset: 192)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3310, file: !3289, line: 91, baseType: !3338, size: 64, offset: 256)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3279, file: !3231, line: 143, baseType: !3340, size: 64, offset: 256)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!3343, !3236}
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3345)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3346)
!3346 = !{!3347, !3348, !3352, !3356, !3362, !3366}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3345, file: !61, line: 40, baseType: !60, size: 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3345, file: !61, line: 41, baseType: !3349, size: 64, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!339}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3345, file: !61, line: 42, baseType: !3353, size: 64, offset: 128)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!127}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3345, file: !61, line: 43, baseType: !3357, size: 64, offset: 192)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!2299, !3360}
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3345, file: !61, line: 44, baseType: !3363, size: 64, offset: 256)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!2299}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3345, file: !61, line: 45, baseType: !2578, size: 64, offset: 320)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3279, file: !3231, line: 144, baseType: !3368, size: 64, offset: 320)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!2299, !3236}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3279, file: !3231, line: 145, baseType: !3372, size: 64, offset: 384)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{null, !3236, !3375, !3376}
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3230, file: !3231, line: 70, baseType: !3378, size: 64, offset: 384)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !373, line: 123, size: 1024, elements: !3380)
!3380 = !{!3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3509, !3510, !3511, !3512, !3513}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3379, file: !373, line: 124, baseType: !528, size: 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3379, file: !373, line: 125, baseType: !528, size: 32, offset: 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3379, file: !373, line: 135, baseType: !3378, size: 64, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3379, file: !373, line: 136, baseType: !294, size: 64, offset: 128)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3379, file: !373, line: 138, baseType: !839, size: 192, align: 64, offset: 192)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3379, file: !373, line: 140, baseType: !2299, size: 64, offset: 384)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3379, file: !373, line: 141, baseType: !7, size: 32, offset: 448)
!3388 = !DIDerivedType(tag: DW_TAG_member, scope: !3379, file: !373, line: 142, baseType: !3389, size: 256, offset: 512)
!3389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3379, file: !373, line: 142, size: 256, elements: !3390)
!3390 = !{!3391, !3437, !3441}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3389, file: !373, line: 143, baseType: !3392, size: 192)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !373, line: 91, size: 192, elements: !3393)
!3393 = !{!3394, !3395, !3396}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3392, file: !373, line: 92, baseType: !140, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3392, file: !373, line: 94, baseType: !940, size: 64, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3392, file: !373, line: 100, baseType: !3397, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !373, line: 180, size: 704, elements: !3399)
!3399 = !{!3400, !3401, !3402, !3409, !3410, !3411, !3435, !3436}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3398, file: !373, line: 182, baseType: !3378, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3398, file: !373, line: 183, baseType: !7, size: 32, offset: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3398, file: !373, line: 186, baseType: !3403, size: 192, offset: 128)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3404, line: 19, size: 192, elements: !3405)
!3404 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3405 = !{!3406, !3407, !3408}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3403, file: !3404, line: 20, baseType: !2112, size: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3403, file: !3404, line: 21, baseType: !7, size: 32, offset: 128)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3403, file: !3404, line: 22, baseType: !7, size: 32, offset: 160)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3398, file: !373, line: 187, baseType: !136, size: 32, offset: 320)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3398, file: !373, line: 188, baseType: !136, size: 32, offset: 352)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3398, file: !373, line: 189, baseType: !3412, size: 64, offset: 384)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !373, line: 168, size: 320, elements: !3414)
!3414 = !{!3415, !3419, !3423, !3427, !3431}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3413, file: !373, line: 169, baseType: !3416, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!132, !467, !3397}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3413, file: !373, line: 171, baseType: !3420, size: 64, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!132, !3378, !294, !172}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3413, file: !373, line: 173, baseType: !3424, size: 64, offset: 128)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!132, !3378}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3413, file: !373, line: 174, baseType: !3428, size: 64, offset: 192)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!132, !3378, !3378, !294}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3413, file: !373, line: 176, baseType: !3432, size: 64, offset: 256)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!132, !467, !3378, !3397}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3398, file: !373, line: 192, baseType: !158, size: 128, offset: 448)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3398, file: !373, line: 194, baseType: !767, size: 128, offset: 576)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3389, file: !373, line: 144, baseType: !3438, size: 64)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !373, line: 103, size: 64, elements: !3439)
!3439 = !{!3440}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3438, file: !373, line: 104, baseType: !3378, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3389, file: !373, line: 145, baseType: !3442, size: 256)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !373, line: 107, size: 256, elements: !3443)
!3443 = !{!3444, !3504, !3507, !3508}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3442, file: !373, line: 108, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3447)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !373, line: 217, size: 768, elements: !3448)
!3448 = !{!3449, !3469, !3473, !3477, !3481, !3485, !3489, !3493, !3494, !3495, !3496, !3500}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3447, file: !373, line: 222, baseType: !3450, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!132, !3453}
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !373, line: 197, size: 1088, elements: !3455)
!3455 = !{!3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3454, file: !373, line: 199, baseType: !3378, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3454, file: !373, line: 200, baseType: !1097, size: 64, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3454, file: !373, line: 201, baseType: !467, size: 64, offset: 128)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3454, file: !373, line: 202, baseType: !127, size: 64, offset: 192)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3454, file: !373, line: 205, baseType: !512, size: 192, offset: 256)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3454, file: !373, line: 206, baseType: !512, size: 192, offset: 448)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3454, file: !373, line: 207, baseType: !132, size: 32, offset: 640)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3454, file: !373, line: 208, baseType: !158, size: 128, offset: 704)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3454, file: !373, line: 209, baseType: !320, size: 64, offset: 832)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3454, file: !373, line: 211, baseType: !1129, size: 64, offset: 896)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3454, file: !373, line: 212, baseType: !339, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3454, file: !373, line: 213, baseType: !339, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3454, file: !373, line: 214, baseType: !1011, size: 64, offset: 1024)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3447, file: !373, line: 223, baseType: !3470, size: 64, offset: 64)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{null, !3453}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3447, file: !373, line: 236, baseType: !3474, size: 64, offset: 128)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!132, !467, !127}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3447, file: !373, line: 238, baseType: !3478, size: 64, offset: 192)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!127, !467, !1132}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3447, file: !373, line: 239, baseType: !3482, size: 64, offset: 256)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!127, !467, !127, !1132}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3447, file: !373, line: 240, baseType: !3486, size: 64, offset: 320)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{null, !467, !127}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3447, file: !373, line: 242, baseType: !3490, size: 64, offset: 384)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!1126, !3453, !320, !1129, !358}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3447, file: !373, line: 252, baseType: !1129, size: 64, offset: 448)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3447, file: !373, line: 259, baseType: !339, size: 8, offset: 512)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3447, file: !373, line: 260, baseType: !3490, size: 64, offset: 576)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3447, file: !373, line: 263, baseType: !3497, size: 64, offset: 640)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!1188, !3453, !1190}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3447, file: !373, line: 266, baseType: !3501, size: 64, offset: 704)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!132, !3453, !983}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3442, file: !373, line: 109, baseType: !3505, size: 64, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !373, line: 31, flags: DIFlagFwdDecl)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3442, file: !373, line: 110, baseType: !358, size: 64, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3442, file: !373, line: 111, baseType: !3378, size: 64, offset: 192)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3379, file: !373, line: 148, baseType: !127, size: 64, offset: 768)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3379, file: !373, line: 154, baseType: !141, size: 64, offset: 832)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3379, file: !373, line: 156, baseType: !173, size: 16, offset: 896)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3379, file: !373, line: 157, baseType: !172, size: 16, offset: 912)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3379, file: !373, line: 158, baseType: !3514, size: 64, offset: 960)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !373, line: 32, flags: DIFlagFwdDecl)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3230, file: !3231, line: 71, baseType: !3517, size: 32, offset: 448)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3518, line: 19, size: 32, elements: !3519)
!3518 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3519 = !{!3520}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3517, file: !3518, line: 20, baseType: !814, size: 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3230, file: !3231, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3230, file: !3231, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3230, file: !3231, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3230, file: !3231, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3230, file: !3231, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3227, file: !73, line: 463, baseType: !3226, size: 64, offset: 512)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3227, file: !73, line: 465, baseType: !3528, size: 64, offset: 576)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3227, file: !73, line: 467, baseType: !294, size: 64, offset: 640)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3227, file: !73, line: 468, baseType: !3532, size: 64, offset: 704)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3534)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3535)
!3535 = !{!3536, !3537, !3538, !3542, !3547, !3551}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3534, file: !73, line: 88, baseType: !294, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3534, file: !73, line: 89, baseType: !3307, size: 64, offset: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3534, file: !73, line: 90, baseType: !3539, size: 64, offset: 128)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!132, !3226, !3264}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3534, file: !73, line: 91, baseType: !3543, size: 64, offset: 192)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!320, !3226, !3546, !3375, !3376}
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3534, file: !73, line: 93, baseType: !3548, size: 64, offset: 256)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{null, !3226}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3534, file: !73, line: 95, baseType: !3552, size: 64, offset: 320)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3554)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3555)
!3555 = !{!3556, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3554, file: !80, line: 279, baseType: !3557, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!132, !3226}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3554, file: !80, line: 280, baseType: !3548, size: 64, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3554, file: !80, line: 281, baseType: !3557, size: 64, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3554, file: !80, line: 282, baseType: !3557, size: 64, offset: 192)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3554, file: !80, line: 283, baseType: !3557, size: 64, offset: 256)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3554, file: !80, line: 284, baseType: !3557, size: 64, offset: 320)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3554, file: !80, line: 285, baseType: !3557, size: 64, offset: 384)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3554, file: !80, line: 286, baseType: !3557, size: 64, offset: 448)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3554, file: !80, line: 287, baseType: !3557, size: 64, offset: 512)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3554, file: !80, line: 288, baseType: !3557, size: 64, offset: 576)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3554, file: !80, line: 289, baseType: !3557, size: 64, offset: 640)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3554, file: !80, line: 290, baseType: !3557, size: 64, offset: 704)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3554, file: !80, line: 291, baseType: !3557, size: 64, offset: 768)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3554, file: !80, line: 292, baseType: !3557, size: 64, offset: 832)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3554, file: !80, line: 293, baseType: !3557, size: 64, offset: 896)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3554, file: !80, line: 294, baseType: !3557, size: 64, offset: 960)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3554, file: !80, line: 295, baseType: !3557, size: 64, offset: 1024)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3554, file: !80, line: 296, baseType: !3557, size: 64, offset: 1088)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3554, file: !80, line: 297, baseType: !3557, size: 64, offset: 1152)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3554, file: !80, line: 298, baseType: !3557, size: 64, offset: 1216)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3554, file: !80, line: 299, baseType: !3557, size: 64, offset: 1280)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3554, file: !80, line: 300, baseType: !3557, size: 64, offset: 1344)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3554, file: !80, line: 301, baseType: !3557, size: 64, offset: 1408)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3227, file: !73, line: 470, baseType: !3583, size: 64, offset: 768)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3585, line: 82, size: 1408, elements: !3586)
!3585 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3586 = !{!3587, !3588, !3589, !3590, !3591, !3592, !3593, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3666, !3669, !3670}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3584, file: !3585, line: 83, baseType: !294, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3584, file: !3585, line: 84, baseType: !294, size: 64, offset: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3584, file: !3585, line: 85, baseType: !3226, size: 64, offset: 128)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3584, file: !3585, line: 86, baseType: !3307, size: 64, offset: 192)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3584, file: !3585, line: 87, baseType: !3307, size: 64, offset: 256)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3584, file: !3585, line: 88, baseType: !3307, size: 64, offset: 320)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3584, file: !3585, line: 90, baseType: !3594, size: 64, offset: 384)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!132, !3226, !3597}
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3599)
!3599 = !{!3600, !3601, !3602, !3603, !3604, !3605, !3606, !3618, !3630, !3631, !3632, !3633, !3634, !3642, !3643, !3644, !3645, !3646, !3647}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3598, file: !67, line: 96, baseType: !294, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3598, file: !67, line: 97, baseType: !3583, size: 64, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3598, file: !67, line: 99, baseType: !124, size: 64, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3598, file: !67, line: 100, baseType: !294, size: 64, offset: 192)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3598, file: !67, line: 102, baseType: !339, size: 8, offset: 256)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3598, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3598, file: !67, line: 105, baseType: !3607, size: 64, offset: 320)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3609)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3108, line: 262, size: 1600, elements: !3610)
!3610 = !{!3611, !3612, !3613, !3617}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3609, file: !3108, line: 263, baseType: !2491, size: 256)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3609, file: !3108, line: 264, baseType: !2491, size: 256, offset: 256)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3609, file: !3108, line: 265, baseType: !3614, size: 1024, offset: 512)
!3614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 1024, elements: !3615)
!3615 = !{!3616}
!3616 = !DISubrange(count: 128)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3609, file: !3108, line: 266, baseType: !2299, size: 64, offset: 1536)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3598, file: !67, line: 106, baseType: !3619, size: 64, offset: 384)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3621)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3108, line: 210, size: 256, elements: !3622)
!3622 = !{!3623, !3627, !3628, !3629}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3621, file: !3108, line: 211, baseType: !3624, size: 72)
!3624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !951, size: 72, elements: !3625)
!3625 = !{!3626}
!3626 = !DISubrange(count: 9)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3621, file: !3108, line: 212, baseType: !3117, size: 64, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3621, file: !3108, line: 213, baseType: !138, size: 32, offset: 192)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3621, file: !3108, line: 214, baseType: !138, size: 32, offset: 224)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3598, file: !67, line: 108, baseType: !3557, size: 64, offset: 448)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3598, file: !67, line: 109, baseType: !3548, size: 64, offset: 512)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3598, file: !67, line: 110, baseType: !3557, size: 64, offset: 576)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3598, file: !67, line: 111, baseType: !3548, size: 64, offset: 640)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3598, file: !67, line: 112, baseType: !3635, size: 64, offset: 704)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!132, !3226, !3638}
!3638 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3639)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3640)
!3640 = !{!3641}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3639, file: !80, line: 51, baseType: !132, size: 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3598, file: !67, line: 113, baseType: !3557, size: 64, offset: 768)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3598, file: !67, line: 114, baseType: !3307, size: 64, offset: 832)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3598, file: !67, line: 115, baseType: !3307, size: 64, offset: 896)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3598, file: !67, line: 117, baseType: !3552, size: 64, offset: 960)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3598, file: !67, line: 118, baseType: !3548, size: 64, offset: 1024)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3598, file: !67, line: 120, baseType: !3648, size: 64, offset: 1088)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3584, file: !3585, line: 91, baseType: !3539, size: 64, offset: 448)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3584, file: !3585, line: 92, baseType: !3557, size: 64, offset: 512)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3584, file: !3585, line: 93, baseType: !3548, size: 64, offset: 576)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3584, file: !3585, line: 94, baseType: !3557, size: 64, offset: 640)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3584, file: !3585, line: 95, baseType: !3548, size: 64, offset: 704)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3584, file: !3585, line: 97, baseType: !3557, size: 64, offset: 768)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3584, file: !3585, line: 98, baseType: !3557, size: 64, offset: 832)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3584, file: !3585, line: 100, baseType: !3635, size: 64, offset: 896)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3584, file: !3585, line: 101, baseType: !3557, size: 64, offset: 960)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3584, file: !3585, line: 103, baseType: !3557, size: 64, offset: 1024)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3584, file: !3585, line: 105, baseType: !3557, size: 64, offset: 1088)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3584, file: !3585, line: 107, baseType: !3552, size: 64, offset: 1152)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3584, file: !3585, line: 109, baseType: !3663, size: 64, offset: 1216)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3665)
!3665 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3585, line: 109, flags: DIFlagFwdDecl)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3584, file: !3585, line: 111, baseType: !3667, size: 64, offset: 1280)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3585, line: 111, flags: DIFlagFwdDecl)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3584, file: !3585, line: 112, baseType: !399, offset: 1344)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3584, file: !3585, line: 114, baseType: !339, size: 8, offset: 1344)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3227, file: !73, line: 471, baseType: !3597, size: 64, offset: 832)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3227, file: !73, line: 473, baseType: !127, size: 64, offset: 896)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3227, file: !73, line: 475, baseType: !127, size: 64, offset: 960)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3227, file: !73, line: 480, baseType: !512, size: 192, offset: 1024)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3227, file: !73, line: 484, baseType: !3676, size: 576, offset: 1216)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3677)
!3677 = !{!3678, !3679, !3680, !3681, !3682, !3683}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3676, file: !73, line: 362, baseType: !158, size: 128)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3676, file: !73, line: 363, baseType: !158, size: 128, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3676, file: !73, line: 364, baseType: !158, size: 128, offset: 256)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3676, file: !73, line: 365, baseType: !158, size: 128, offset: 384)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3676, file: !73, line: 366, baseType: !339, size: 8, offset: 512)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3676, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3227, file: !73, line: 485, baseType: !3685, size: 2304, offset: 1792)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3686)
!3686 = !{!3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3782, !3786}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3685, file: !80, line: 566, baseType: !3638, size: 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3685, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3685, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3685, file: !80, line: 569, baseType: !339, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3685, file: !80, line: 570, baseType: !339, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3685, file: !80, line: 571, baseType: !339, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3685, file: !80, line: 572, baseType: !339, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3685, file: !80, line: 573, baseType: !339, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3685, file: !80, line: 574, baseType: !339, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3685, file: !80, line: 575, baseType: !339, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3685, file: !80, line: 576, baseType: !339, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3685, file: !80, line: 577, baseType: !136, size: 32, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3685, file: !80, line: 578, baseType: !257, offset: 96)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3685, file: !80, line: 580, baseType: !158, size: 128, offset: 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3685, file: !80, line: 581, baseType: !1731, size: 192, offset: 256)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3685, file: !80, line: 582, baseType: !3703, size: 64, offset: 448)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3705, line: 43, size: 1472, elements: !3706)
!3705 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3706 = !{!3707, !3708, !3709, !3710, !3711, !3714, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3704, file: !3705, line: 44, baseType: !294, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3704, file: !3705, line: 45, baseType: !132, size: 32, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3704, file: !3705, line: 46, baseType: !158, size: 128, offset: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3704, file: !3705, line: 47, baseType: !257, offset: 256)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3704, file: !3705, line: 48, baseType: !3712, size: 64, offset: 256)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3704, file: !3705, line: 49, baseType: !3715, size: 320, offset: 320)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3716, line: 11, size: 320, elements: !3717)
!3716 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3717 = !{!3718, !3719, !3720, !3725}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3715, file: !3716, line: 16, baseType: !393, size: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3715, file: !3716, line: 17, baseType: !140, size: 64, offset: 128)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3715, file: !3716, line: 18, baseType: !3721, size: 64, offset: 192)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{null, !3724}
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3715, file: !3716, line: 19, baseType: !136, size: 32, offset: 256)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3704, file: !3705, line: 50, baseType: !140, size: 64, offset: 640)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3704, file: !3705, line: 51, baseType: !891, size: 64, offset: 704)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3704, file: !3705, line: 52, baseType: !891, size: 64, offset: 768)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3704, file: !3705, line: 53, baseType: !891, size: 64, offset: 832)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3704, file: !3705, line: 54, baseType: !891, size: 64, offset: 896)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3704, file: !3705, line: 55, baseType: !891, size: 64, offset: 960)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3704, file: !3705, line: 56, baseType: !140, size: 64, offset: 1024)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3704, file: !3705, line: 57, baseType: !140, size: 64, offset: 1088)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3704, file: !3705, line: 58, baseType: !140, size: 64, offset: 1152)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3704, file: !3705, line: 59, baseType: !140, size: 64, offset: 1216)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3704, file: !3705, line: 60, baseType: !140, size: 64, offset: 1280)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3704, file: !3705, line: 61, baseType: !3226, size: 64, offset: 1344)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3704, file: !3705, line: 62, baseType: !339, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3704, file: !3705, line: 63, baseType: !339, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3685, file: !80, line: 583, baseType: !339, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3685, file: !80, line: 584, baseType: !339, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3685, file: !80, line: 585, baseType: !339, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3685, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3685, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3685, file: !80, line: 592, baseType: !883, size: 512, offset: 576)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3685, file: !80, line: 593, baseType: !141, size: 64, offset: 1088)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3685, file: !80, line: 594, baseType: !1756, size: 256, offset: 1152)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3685, file: !80, line: 595, baseType: !767, size: 128, offset: 1408)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3685, file: !80, line: 596, baseType: !3712, size: 64, offset: 1536)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3685, file: !80, line: 597, baseType: !528, size: 32, offset: 1600)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3685, file: !80, line: 598, baseType: !528, size: 32, offset: 1632)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3685, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3685, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3685, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3685, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3685, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3685, file: !80, line: 604, baseType: !339, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3685, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3685, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3685, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3685, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3685, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3685, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3685, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3685, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3685, file: !80, line: 613, baseType: !132, size: 32, offset: 1792)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3685, file: !80, line: 614, baseType: !132, size: 32, offset: 1824)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3685, file: !80, line: 615, baseType: !141, size: 64, offset: 1856)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3685, file: !80, line: 616, baseType: !141, size: 64, offset: 1920)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3685, file: !80, line: 617, baseType: !141, size: 64, offset: 1984)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3685, file: !80, line: 618, baseType: !141, size: 64, offset: 2048)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3685, file: !80, line: 620, baseType: !3773, size: 64, offset: 2112)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3775)
!3775 = !{!3776, !3777, !3778, !3779}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3774, file: !80, line: 537, baseType: !257)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3774, file: !80, line: 538, baseType: !7, size: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3774, file: !80, line: 540, baseType: !158, size: 128, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3774, file: !80, line: 543, baseType: !3780, size: 64, offset: 192)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3685, file: !80, line: 621, baseType: !3783, size: 64, offset: 2176)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{null, !3226, !1451}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3685, file: !80, line: 622, baseType: !3787, size: 64, offset: 2240)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3227, file: !73, line: 486, baseType: !3790, size: 64, offset: 4096)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3792)
!3792 = !{!3793, !3794, !3795, !3799, !3800, !3801}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3791, file: !80, line: 643, baseType: !3554, size: 1472)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3791, file: !80, line: 644, baseType: !3557, size: 64, offset: 1472)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3791, file: !80, line: 645, baseType: !3796, size: 64, offset: 1536)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{null, !3226, !339}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3791, file: !80, line: 646, baseType: !3557, size: 64, offset: 1600)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3791, file: !80, line: 647, baseType: !3548, size: 64, offset: 1664)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3791, file: !80, line: 648, baseType: !3548, size: 64, offset: 1728)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3227, file: !73, line: 493, baseType: !3803, size: 64, offset: 4160)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3227, file: !73, line: 499, baseType: !158, size: 128, offset: 4224)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3227, file: !73, line: 502, baseType: !3807, size: 64, offset: 4352)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3809)
!3809 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3227, file: !73, line: 504, baseType: !3811, size: 64, offset: 4416)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3227, file: !73, line: 505, baseType: !141, size: 64, offset: 4480)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3227, file: !73, line: 510, baseType: !141, size: 64, offset: 4544)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3227, file: !73, line: 511, baseType: !3815, size: 64, offset: 4608)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3817)
!3817 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3227, file: !73, line: 513, baseType: !3819, size: 64, offset: 4672)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3821)
!3821 = !{!3822, !3823}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3820, file: !73, line: 293, baseType: !7, size: 32)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3820, file: !73, line: 294, baseType: !140, size: 64, offset: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3227, file: !73, line: 515, baseType: !158, size: 128, offset: 4736)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3227, file: !73, line: 526, baseType: !3826, offset: 4864)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3827, line: 5, elements: !271)
!3827 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3227, file: !73, line: 528, baseType: !3829, size: 64, offset: 4864)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3831, line: 14, flags: DIFlagFwdDecl)
!3831 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3227, file: !73, line: 529, baseType: !3833, size: 64, offset: 4928)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3835, line: 17, size: 192, elements: !3836)
!3835 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3836 = !{!3837, !3838, !3921}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3834, file: !3835, line: 18, baseType: !3833, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3834, file: !3835, line: 19, baseType: !3839, size: 64, offset: 64)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3841)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3835, line: 110, size: 1152, elements: !3842)
!3842 = !{!3843, !3847, !3851, !3857, !3863, !3867, !3871, !3876, !3880, !3881, !3885, !3889, !3893, !3904, !3905, !3906, !3907, !3917}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3841, file: !3835, line: 111, baseType: !3844, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!3833, !3833}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3841, file: !3835, line: 112, baseType: !3848, size: 64, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{null, !3833}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3841, file: !3835, line: 113, baseType: !3852, size: 64, offset: 128)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!339, !3855}
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3834)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3841, file: !3835, line: 114, baseType: !3858, size: 64, offset: 192)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!2299, !3855, !3861}
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3227)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3841, file: !3835, line: 116, baseType: !3864, size: 64, offset: 256)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!339, !3855, !294}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3841, file: !3835, line: 118, baseType: !3868, size: 64, offset: 320)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!132, !3855, !294, !7, !127, !1129}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3841, file: !3835, line: 123, baseType: !3872, size: 64, offset: 384)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!132, !3855, !294, !3875, !1129}
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3841, file: !3835, line: 126, baseType: !3877, size: 64, offset: 448)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!294, !3855}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3841, file: !3835, line: 127, baseType: !3877, size: 64, offset: 512)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3841, file: !3835, line: 128, baseType: !3882, size: 64, offset: 576)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!3833, !3855}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3841, file: !3835, line: 130, baseType: !3886, size: 64, offset: 640)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!3833, !3855, !3833}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3841, file: !3835, line: 133, baseType: !3890, size: 64, offset: 704)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!3833, !3855, !294}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3841, file: !3835, line: 135, baseType: !3894, size: 64, offset: 768)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!132, !3855, !294, !294, !7, !7, !3897}
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3835, line: 43, size: 640, elements: !3899)
!3899 = !{!3900, !3901, !3902}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3898, file: !3835, line: 44, baseType: !3833, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3898, file: !3835, line: 45, baseType: !7, size: 32, offset: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3898, file: !3835, line: 46, baseType: !3903, size: 512, offset: 128)
!3903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 512, elements: !921)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3841, file: !3835, line: 140, baseType: !3886, size: 64, offset: 832)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3841, file: !3835, line: 143, baseType: !3882, size: 64, offset: 896)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3841, file: !3835, line: 145, baseType: !3844, size: 64, offset: 960)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3841, file: !3835, line: 146, baseType: !3908, size: 64, offset: 1024)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!132, !3855, !3911}
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3835, line: 29, size: 128, elements: !3913)
!3913 = !{!3914, !3915, !3916}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3912, file: !3835, line: 30, baseType: !7, size: 32)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3912, file: !3835, line: 31, baseType: !7, size: 32, offset: 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3912, file: !3835, line: 32, baseType: !3855, size: 64, offset: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3841, file: !3835, line: 148, baseType: !3918, size: 64, offset: 1088)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!132, !3855, !3226}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3834, file: !3835, line: 20, baseType: !3226, size: 64, offset: 128)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3227, file: !73, line: 534, baseType: !353, size: 32, offset: 4992)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3227, file: !73, line: 535, baseType: !136, size: 32, offset: 5024)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3227, file: !73, line: 537, baseType: !257, offset: 5056)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3227, file: !73, line: 538, baseType: !158, size: 128, offset: 5056)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3227, file: !73, line: 540, baseType: !3927, size: 64, offset: 5184)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3929, line: 54, size: 960, elements: !3930)
!3929 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3930 = !{!3931, !3932, !3933, !3934, !3935, !3936, !3937, !3941, !3945, !3946, !3947, !3948, !3952, !3956, !3957}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3928, file: !3929, line: 55, baseType: !294, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3928, file: !3929, line: 56, baseType: !124, size: 64, offset: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3928, file: !3929, line: 58, baseType: !3307, size: 64, offset: 128)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3928, file: !3929, line: 59, baseType: !3307, size: 64, offset: 192)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3928, file: !3929, line: 60, baseType: !3236, size: 64, offset: 256)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3928, file: !3929, line: 62, baseType: !3539, size: 64, offset: 320)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3928, file: !3929, line: 63, baseType: !3938, size: 64, offset: 384)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!320, !3226, !3546}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3928, file: !3929, line: 65, baseType: !3942, size: 64, offset: 448)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{null, !3927}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3928, file: !3929, line: 66, baseType: !3548, size: 64, offset: 512)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3928, file: !3929, line: 68, baseType: !3557, size: 64, offset: 576)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3928, file: !3929, line: 70, baseType: !3343, size: 64, offset: 640)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3928, file: !3929, line: 71, baseType: !3949, size: 64, offset: 704)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!2299, !3226}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3928, file: !3929, line: 73, baseType: !3953, size: 64, offset: 768)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{null, !3226, !3375, !3376}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3928, file: !3929, line: 75, baseType: !3552, size: 64, offset: 832)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3928, file: !3929, line: 77, baseType: !3667, size: 64, offset: 896)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3227, file: !73, line: 541, baseType: !3307, size: 64, offset: 5248)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3227, file: !73, line: 543, baseType: !3548, size: 64, offset: 5312)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3227, file: !73, line: 544, baseType: !3961, size: 64, offset: 5376)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3227, file: !73, line: 545, baseType: !3964, size: 64, offset: 5440)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3227, file: !73, line: 547, baseType: !339, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3227, file: !73, line: 548, baseType: !339, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3227, file: !73, line: 549, baseType: !339, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3227, file: !73, line: 550, baseType: !339, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3170, file: !3007, line: 635, baseType: !3227, size: 5568, offset: 2304)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !3170, file: !3007, line: 636, baseType: !3321, size: 64, offset: 7872)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !3170, file: !3007, line: 637, baseType: !3321, size: 64, offset: 7936)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !3170, file: !3007, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !3165, file: !3007, line: 312, baseType: !3169, size: 64, offset: 192)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !3165, file: !3007, line: 314, baseType: !127, size: 64, offset: 256)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !3165, file: !3007, line: 315, baseType: !3211, size: 64, offset: 320)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !3165, file: !3007, line: 316, baseType: !3978, size: 64, offset: 384)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !3007, line: 69, size: 832, elements: !3980)
!3980 = !{!3981, !3982, !3983, !3986, !3987}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3979, file: !3007, line: 70, baseType: !3169, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3979, file: !3007, line: 71, baseType: !158, size: 128, offset: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !3979, file: !3007, line: 72, baseType: !3984, size: 64, offset: 192)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !3007, line: 72, flags: DIFlagFwdDecl)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3979, file: !3007, line: 73, baseType: !240, size: 8, offset: 256)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3979, file: !3007, line: 74, baseType: !3230, size: 512, offset: 320)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !3165, file: !3007, line: 318, baseType: !7, size: 32, offset: 448)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3165, file: !3007, line: 319, baseType: !173, size: 16, offset: 480)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3165, file: !3007, line: 320, baseType: !173, size: 16, offset: 496)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !3165, file: !3007, line: 321, baseType: !173, size: 16, offset: 512)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !3165, file: !3007, line: 322, baseType: !173, size: 16, offset: 528)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3165, file: !3007, line: 323, baseType: !7, size: 32, offset: 544)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !3165, file: !3007, line: 324, baseType: !950, size: 8, offset: 576)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !3165, file: !3007, line: 325, baseType: !950, size: 8, offset: 584)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !3165, file: !3007, line: 330, baseType: !950, size: 8, offset: 592)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !3165, file: !3007, line: 331, baseType: !950, size: 8, offset: 600)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !3165, file: !3007, line: 332, baseType: !950, size: 8, offset: 608)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !3165, file: !3007, line: 333, baseType: !950, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !3165, file: !3007, line: 334, baseType: !950, size: 8, offset: 624)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !3165, file: !3007, line: 335, baseType: !950, size: 8, offset: 632)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !3165, file: !3007, line: 336, baseType: !1153, size: 16, offset: 640)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !3165, file: !3007, line: 337, baseType: !4004, size: 64, offset: 704)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3165, file: !3007, line: 339, baseType: !4006, size: 64, offset: 768)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !3007, line: 858, size: 2048, elements: !4008)
!4008 = !{!4009, !4010, !4011, !4013, !4017, !4021, !4025, !4029, !4030, !4034, !4053, !4054, !4055}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4007, file: !3007, line: 859, baseType: !158, size: 128)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4007, file: !3007, line: 860, baseType: !294, size: 64, offset: 128)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4007, file: !3007, line: 861, baseType: !4012, size: 64, offset: 192)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4007, file: !3007, line: 862, baseType: !4014, size: 64, offset: 256)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!132, !3164, !4012}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4007, file: !3007, line: 863, baseType: !4018, size: 64, offset: 320)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{null, !3164}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4007, file: !3007, line: 864, baseType: !4022, size: 64, offset: 384)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!132, !3164, !3638}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4007, file: !3007, line: 865, baseType: !4026, size: 64, offset: 448)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!132, !3164}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4007, file: !3007, line: 866, baseType: !4018, size: 64, offset: 512)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4007, file: !3007, line: 867, baseType: !4031, size: 64, offset: 576)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!132, !3164, !132}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4007, file: !3007, line: 868, baseType: !4035, size: 64, offset: 640)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4037)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !3007, line: 795, size: 384, elements: !4038)
!4038 = !{!4039, !4045, !4049, !4050, !4051, !4052}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4037, file: !3007, line: 797, baseType: !4040, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!4043, !3164, !4044}
!4043 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !3007, line: 772, baseType: !7)
!4044 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !3007, line: 180, baseType: !7)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4037, file: !3007, line: 801, baseType: !4046, size: 64, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!4043, !3164}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4037, file: !3007, line: 804, baseType: !4046, size: 64, offset: 128)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4037, file: !3007, line: 807, baseType: !4018, size: 64, offset: 192)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4037, file: !3007, line: 808, baseType: !4018, size: 64, offset: 256)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4037, file: !3007, line: 811, baseType: !4018, size: 64, offset: 320)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4007, file: !3007, line: 869, baseType: !3307, size: 64, offset: 704)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4007, file: !3007, line: 870, baseType: !3598, size: 1152, offset: 768)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4007, file: !3007, line: 871, baseType: !4056, size: 128, offset: 1920)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !3007, line: 759, size: 128, elements: !4057)
!4057 = !{!4058, !4059}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4056, file: !3007, line: 760, baseType: !257)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4056, file: !3007, line: 761, baseType: !158, size: 128)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3165, file: !3007, line: 340, baseType: !141, size: 64, offset: 832)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3165, file: !3007, line: 346, baseType: !3820, size: 128, offset: 896)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !3165, file: !3007, line: 348, baseType: !3006, size: 32, offset: 1024)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !3165, file: !3007, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !3165, file: !3007, line: 352, baseType: !950, size: 8, offset: 1064)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !3165, file: !3007, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !3165, file: !3007, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !3165, file: !3007, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !3165, file: !3007, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !3165, file: !3007, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !3165, file: !3007, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !3165, file: !3007, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !3165, file: !3007, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !3165, file: !3007, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !3165, file: !3007, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !3165, file: !3007, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !3165, file: !3007, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !3165, file: !3007, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !3165, file: !3007, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !3165, file: !3007, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !3165, file: !3007, line: 376, baseType: !7, size: 32, offset: 1120)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !3165, file: !3007, line: 377, baseType: !7, size: 32, offset: 1152)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !3165, file: !3007, line: 380, baseType: !4083, size: 64, offset: 1216)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !3007, line: 303, flags: DIFlagFwdDecl)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !3165, file: !3007, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !3165, file: !3007, line: 383, baseType: !132, size: 32, offset: 1312)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !3165, file: !3007, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !3165, file: !3007, line: 387, baseType: !4044, size: 32, offset: 1376)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3165, file: !3007, line: 388, baseType: !3227, size: 5568, offset: 1408)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !3165, file: !3007, line: 390, baseType: !132, size: 32, offset: 6976)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3165, file: !3007, line: 396, baseType: !7, size: 32, offset: 7008)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !3165, file: !3007, line: 397, baseType: !4093, size: 8704, offset: 7040)
!4093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3089, size: 8704, elements: !4094)
!4094 = !{!4095}
!4095 = !DISubrange(count: 17)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !3165, file: !3007, line: 399, baseType: !339, size: 8, offset: 15744)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !3165, file: !3007, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !3165, file: !3007, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !3165, file: !3007, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !3165, file: !3007, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !3165, file: !3007, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !3165, file: !3007, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !3165, file: !3007, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !3165, file: !3007, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !3165, file: !3007, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !3165, file: !3007, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !3165, file: !3007, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !3165, file: !3007, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !3165, file: !3007, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !3165, file: !3007, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !3165, file: !3007, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !3165, file: !3007, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !3165, file: !3007, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !3165, file: !3007, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !3165, file: !3007, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !3165, file: !3007, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !3165, file: !3007, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !3165, file: !3007, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !3165, file: !3007, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !3165, file: !3007, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !3165, file: !3007, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !3165, file: !3007, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !3165, file: !3007, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !3165, file: !3007, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !3165, file: !3007, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !3165, file: !3007, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !3165, file: !3007, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !3165, file: !3007, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !3165, file: !3007, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !3165, file: !3007, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !3165, file: !3007, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !3165, file: !3007, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !3165, file: !3007, line: 450, baseType: !4134, size: 16, offset: 15792)
!4134 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !3007, line: 206, baseType: !173)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !3165, file: !3007, line: 451, baseType: !528, size: 32, offset: 15808)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !3165, file: !3007, line: 453, baseType: !4137, size: 512, offset: 15840)
!4137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 512, elements: !1909)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !3165, file: !3007, line: 454, baseType: !389, size: 64, offset: 16384)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !3165, file: !3007, line: 455, baseType: !3321, size: 64, offset: 16448)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !3165, file: !3007, line: 456, baseType: !132, size: 32, offset: 16512)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !3165, file: !3007, line: 457, baseType: !4142, size: 1088, offset: 16576)
!4142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3321, size: 1088, elements: !4094)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !3165, file: !3007, line: 458, baseType: !4142, size: 1088, offset: 17664)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !3165, file: !3007, line: 469, baseType: !3307, size: 64, offset: 18752)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !3165, file: !3007, line: 471, baseType: !4146, size: 64, offset: 18816)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !3007, line: 304, flags: DIFlagFwdDecl)
!4148 = !DIDerivedType(tag: DW_TAG_member, scope: !3165, file: !3007, line: 478, baseType: !4149, size: 64, offset: 18880)
!4149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3165, file: !3007, line: 478, size: 64, elements: !4150)
!4150 = !{!4151, !4154}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4149, file: !3007, line: 479, baseType: !4152, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !3007, line: 305, flags: DIFlagFwdDecl)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4149, file: !3007, line: 480, baseType: !3164, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !3165, file: !3007, line: 482, baseType: !1153, size: 16, offset: 18944)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !3165, file: !3007, line: 483, baseType: !950, size: 8, offset: 18960)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !3165, file: !3007, line: 497, baseType: !1153, size: 16, offset: 18976)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !3165, file: !3007, line: 498, baseType: !2297, size: 64, offset: 19008)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !3165, file: !3007, line: 499, baseType: !1129, size: 64, offset: 19072)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !3165, file: !3007, line: 500, baseType: !320, size: 64, offset: 19136)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !3165, file: !3007, line: 502, baseType: !140, size: 64, offset: 19200)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "gatt_table", scope: !3148, file: !94, line: 133, baseType: !1809, size: 64, offset: 448)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "gatt_table_real", scope: !3148, file: !94, line: 134, baseType: !1809, size: 64, offset: 512)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_page", scope: !3148, file: !94, line: 135, baseType: !140, size: 64, offset: 576)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_page_page", scope: !3148, file: !94, line: 136, baseType: !146, size: 64, offset: 640)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_page_dma", scope: !3148, file: !94, line: 137, baseType: !144, size: 64, offset: 704)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "gart_bus_addr", scope: !3148, file: !94, line: 138, baseType: !140, size: 64, offset: 768)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "gatt_bus_addr", scope: !3148, file: !94, line: 139, baseType: !140, size: 64, offset: 832)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3148, file: !94, line: 140, baseType: !136, size: 32, offset: 896)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3148, file: !94, line: 141, baseType: !101, size: 32, offset: 928)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "key_list", scope: !3148, file: !94, line: 142, baseType: !4004, size: 64, offset: 960)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "current_memory_agp", scope: !3148, file: !94, line: 143, baseType: !528, size: 32, offset: 1024)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "agp_in_use", scope: !3148, file: !94, line: 144, baseType: !528, size: 32, offset: 1056)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_agp", scope: !3148, file: !94, line: 145, baseType: !132, size: 32, offset: 1088)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "aperture_size_idx", scope: !3148, file: !94, line: 146, baseType: !132, size: 32, offset: 1120)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "capndx", scope: !3148, file: !94, line: 147, baseType: !132, size: 32, offset: 1152)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3148, file: !94, line: 148, baseType: !132, size: 32, offset: 1184)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "major_version", scope: !3148, file: !94, line: 149, baseType: !296, size: 8, offset: 1216)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "minor_version", scope: !3148, file: !94, line: 150, baseType: !296, size: 8, offset: 1224)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3148, file: !94, line: 151, baseType: !158, size: 128, offset: 1280)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "apbase_config", scope: !3148, file: !94, line: 152, baseType: !136, size: 32, offset: 1408)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "mapped_list", scope: !3148, file: !94, line: 154, baseType: !158, size: 128, offset: 1472)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "mapped_lock", scope: !3148, file: !94, line: 155, baseType: !257, offset: 1600)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3123, file: !94, line: 108, baseType: !3015, size: 64, offset: 512)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush", scope: !3123, file: !94, line: 109, baseType: !4186, size: 64, offset: 576)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{null, !4189}
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "agp_memory", file: !102, line: 69, size: 832, elements: !4191)
!4191 = !{!4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4202, !4203, !4204, !4205, !4206, !4207, !4217}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4190, file: !102, line: 70, baseType: !4189, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !4190, file: !102, line: 71, baseType: !4189, size: 64, offset: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4190, file: !102, line: 72, baseType: !3147, size: 64, offset: 128)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4190, file: !102, line: 73, baseType: !2294, size: 64, offset: 192)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "page_count", scope: !4190, file: !102, line: 74, baseType: !1129, size: 64, offset: 256)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4190, file: !102, line: 75, baseType: !132, size: 32, offset: 320)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "num_scratch_pages", scope: !4190, file: !102, line: 76, baseType: !132, size: 32, offset: 352)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "pg_start", scope: !4190, file: !102, line: 77, baseType: !4200, size: 64, offset: 384)
!4200 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !145, line: 21, baseType: !4201)
!4201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_off_t", file: !183, line: 87, baseType: !1128)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4190, file: !102, line: 78, baseType: !136, size: 32, offset: 448)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "physical", scope: !4190, file: !102, line: 79, baseType: !136, size: 32, offset: 480)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "is_bound", scope: !4190, file: !102, line: 80, baseType: !339, size: 8, offset: 512)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "is_flushed", scope: !4190, file: !102, line: 81, baseType: !339, size: 8, offset: 520)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "mapped_list", scope: !4190, file: !102, line: 83, baseType: !158, size: 128, offset: 576)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "sg_list", scope: !4190, file: !102, line: 85, baseType: !4208, size: 64, offset: 704)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4210, line: 11, size: 256, elements: !4211)
!4210 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!4211 = !{!4212, !4213, !4214, !4215, !4216}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4209, file: !4210, line: 12, baseType: !140, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4209, file: !4210, line: 13, baseType: !7, size: 32, offset: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4209, file: !4210, line: 14, baseType: !7, size: 32, offset: 96)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4209, file: !4210, line: 15, baseType: !144, size: 64, offset: 128)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4209, file: !4210, line: 17, baseType: !7, size: 32, offset: 192)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "num_sg", scope: !4190, file: !102, line: 86, baseType: !132, size: 32, offset: 768)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "mask_memory", scope: !3123, file: !94, line: 110, baseType: !4219, size: 64, offset: 640)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!140, !3147, !144, !132}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "cache_flush", scope: !3123, file: !94, line: 111, baseType: !3015, size: 64, offset: 704)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "create_gatt_table", scope: !3123, file: !94, line: 112, baseType: !4224, size: 64, offset: 768)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!132, !3147}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "free_gatt_table", scope: !3123, file: !94, line: 113, baseType: !4224, size: 64, offset: 832)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "insert_memory", scope: !3123, file: !94, line: 114, baseType: !4229, size: 64, offset: 896)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!132, !4189, !4200, !132}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "remove_memory", scope: !3123, file: !94, line: 115, baseType: !4229, size: 64, offset: 960)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_by_type", scope: !3123, file: !94, line: 116, baseType: !4234, size: 64, offset: 1024)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!4189, !1129, !132}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "free_by_type", scope: !3123, file: !94, line: 117, baseType: !4186, size: 64, offset: 1088)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "agp_alloc_page", scope: !3123, file: !94, line: 118, baseType: !4239, size: 64, offset: 1152)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!146, !3147}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "agp_alloc_pages", scope: !3123, file: !94, line: 119, baseType: !4243, size: 64, offset: 1216)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!132, !3147, !4189, !1129}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "agp_destroy_page", scope: !3123, file: !94, line: 120, baseType: !4247, size: 64, offset: 1280)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{null, !146, !132}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "agp_destroy_pages", scope: !3123, file: !94, line: 121, baseType: !4186, size: 64, offset: 1344)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "agp_type_to_mask_type", scope: !3123, file: !94, line: 122, baseType: !4252, size: 64, offset: 1408)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!132, !3147, !132}
!4255 = !DIGlobalVariableExpression(var: !4256, expr: !DIExpression())
!4256 = distinct !DIGlobalVariable(name: "amd_8151_sizes", scope: !2, file: !3, line: 169, type: !4257, isLocal: true, isDefinition: true)
!4257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4258, size: 896, elements: !4259)
!4258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!4259 = !{!4260}
!4260 = !DISubrange(count: 7)
!4261 = !DIGlobalVariableExpression(var: !4262, expr: !DIExpression())
!4262 = distinct !DIGlobalVariable(name: "amd64_aperture_sizes", scope: !2, file: !3, line: 103, type: !4263, isLocal: true, isDefinition: true)
!4263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 896, elements: !4259)
!4264 = !DIGlobalVariableExpression(var: !4265, expr: !DIExpression())
!4265 = distinct !DIGlobalVariable(name: "nforce3_sizes", scope: !2, file: !3, line: 441, type: !4266, isLocal: true, isDefinition: true)
!4266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4258, size: 640, elements: !4267)
!4267 = !{!4268}
!4268 = !DISubrange(count: 5)
!4269 = !DIGlobalVariableExpression(var: !4270, expr: !DIExpression())
!4270 = distinct !DIGlobalVariable(name: "uli_sizes", scope: !2, file: !3, line: 380, type: !4257, isLocal: true, isDefinition: true)
!4271 = !DIGlobalVariableExpression(var: !4272, expr: !DIExpression())
!4272 = distinct !DIGlobalVariable(name: "agp_try_unsupported", scope: !2, file: !3, line: 37, type: !339, isLocal: true, isDefinition: true)
!4273 = !DIGlobalVariableExpression(var: !4274, expr: !DIExpression())
!4274 = distinct !DIGlobalVariable(name: "agp_amd64_pci_promisc_table", scope: !2, file: !3, line: 736, type: !4275, isLocal: true, isDefinition: true)
!4275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3106, size: 512, elements: !1435)
!4276 = !DIGlobalVariableExpression(var: !4277, expr: !DIExpression())
!4277 = distinct !DIGlobalVariable(name: "__param_str_agp_try_unsupported", scope: !2, file: !3, line: 818, type: !4278, isLocal: true, isDefinition: true)
!4278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 240, elements: !4279)
!4279 = !{!4280}
!4280 = !DISubrange(count: 30)
!4281 = !{i32 7, !"Dwarf Version", i32 4}
!4282 = !{i32 2, !"Debug Info Version", i32 3}
!4283 = !{i32 1, !"wchar_size", i32 2}
!4284 = !{i32 1, !"Code Model", i32 2}
!4285 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4286 = distinct !DISubprogram(name: "agp_amd64_init", scope: !3, file: !3, line: 754, type: !3140, scopeLine: 755, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4287 = !DILocalVariable(name: "err", scope: !4286, file: !3, line: 756, type: !132)
!4288 = !DILocation(line: 756, column: 6, scope: !4286)
!4289 = !DILocation(line: 758, column: 6, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4286, file: !3, line: 758, column: 6)
!4291 = !DILocation(line: 758, column: 6, scope: !4286)
!4292 = !DILocation(line: 759, column: 3, scope: !4290)
!4293 = !DILocation(line: 761, column: 8, scope: !4286)
!4294 = !DILocation(line: 761, column: 6, scope: !4286)
!4295 = !DILocation(line: 762, column: 6, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4286, file: !3, line: 762, column: 6)
!4297 = !DILocation(line: 762, column: 10, scope: !4296)
!4298 = !DILocation(line: 762, column: 6, scope: !4286)
!4299 = !DILocation(line: 763, column: 10, scope: !4296)
!4300 = !DILocation(line: 763, column: 3, scope: !4296)
!4301 = !DILocation(line: 765, column: 6, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4286, file: !3, line: 765, column: 6)
!4303 = !DILocation(line: 765, column: 24, scope: !4302)
!4304 = !DILocation(line: 765, column: 6, scope: !4286)
!4305 = !DILocation(line: 766, column: 8, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4307, file: !3, line: 766, column: 7)
!4307 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 765, column: 30)
!4308 = !DILocation(line: 766, column: 28, scope: !4306)
!4309 = !DILocation(line: 766, column: 32, scope: !4306)
!4310 = !DILocation(line: 766, column: 7, scope: !4307)
!4311 = !DILocation(line: 767, column: 4, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 766, column: 58)
!4313 = !DILocation(line: 771, column: 4, scope: !4312)
!4314 = !DILocation(line: 773, column: 4, scope: !4312)
!4315 = !DILocation(line: 774, column: 4, scope: !4312)
!4316 = !DILocation(line: 778, column: 8, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4307, file: !3, line: 778, column: 7)
!4318 = !DILocation(line: 778, column: 7, scope: !4307)
!4319 = !DILocation(line: 779, column: 4, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 778, column: 22)
!4321 = !DILocation(line: 780, column: 4, scope: !4320)
!4322 = !DILocation(line: 784, column: 33, scope: !4307)
!4323 = !DILocation(line: 785, column: 9, scope: !4307)
!4324 = !DILocation(line: 785, column: 7, scope: !4307)
!4325 = !DILocation(line: 786, column: 7, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4307, file: !3, line: 786, column: 7)
!4327 = !DILocation(line: 786, column: 11, scope: !4326)
!4328 = !DILocation(line: 786, column: 16, scope: !4326)
!4329 = !DILocation(line: 786, column: 19, scope: !4326)
!4330 = !DILocation(line: 786, column: 37, scope: !4326)
!4331 = !DILocation(line: 786, column: 7, scope: !4307)
!4332 = !DILocation(line: 787, column: 4, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4326, file: !3, line: 786, column: 43)
!4334 = !DILocation(line: 788, column: 8, scope: !4333)
!4335 = !DILocation(line: 789, column: 3, scope: !4333)
!4336 = !DILocation(line: 790, column: 2, scope: !4307)
!4337 = !DILocation(line: 791, column: 9, scope: !4286)
!4338 = !DILocation(line: 791, column: 2, scope: !4286)
!4339 = !DILocation(line: 792, column: 1, scope: !4286)
!4340 = distinct !DISubprogram(name: "agp_amd64_cleanup", scope: !3, file: !3, line: 803, type: !2054, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4341 = !DILocation(line: 809, column: 6, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4340, file: !3, line: 809, column: 6)
!4343 = !DILocation(line: 809, column: 6, scope: !4340)
!4344 = !DILocation(line: 810, column: 20, scope: !4342)
!4345 = !DILocation(line: 810, column: 3, scope: !4342)
!4346 = !DILocation(line: 811, column: 2, scope: !4340)
!4347 = !DILocation(line: 812, column: 1, scope: !4340)
!4348 = distinct !DISubprogram(name: "agp_amd64_mod_init", scope: !3, file: !3, line: 794, type: !3140, scopeLine: 795, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4349 = !DILocation(line: 800, column: 9, scope: !4348)
!4350 = !DILocation(line: 800, column: 2, scope: !4348)
!4351 = distinct !DISubprogram(name: "agp_amd64_probe", scope: !3, file: !3, line: 513, type: !4015, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4352 = !DILocalVariable(name: "pdev", arg: 1, scope: !4351, file: !3, line: 513, type: !3164)
!4353 = !DILocation(line: 513, column: 44, scope: !4351)
!4354 = !DILocalVariable(name: "ent", arg: 2, scope: !4351, file: !3, line: 514, type: !4012)
!4355 = !DILocation(line: 514, column: 35, scope: !4351)
!4356 = !DILocalVariable(name: "bridge", scope: !4351, file: !3, line: 516, type: !3147)
!4357 = !DILocation(line: 516, column: 26, scope: !4351)
!4358 = !DILocalVariable(name: "cap_ptr", scope: !4351, file: !3, line: 517, type: !950)
!4359 = !DILocation(line: 517, column: 5, scope: !4351)
!4360 = !DILocalVariable(name: "err", scope: !4351, file: !3, line: 518, type: !132)
!4361 = !DILocation(line: 518, column: 6, scope: !4351)
!4362 = !DILocation(line: 521, column: 6, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 521, column: 6)
!4364 = !DILocation(line: 521, column: 6, scope: !4351)
!4365 = !DILocation(line: 522, column: 3, scope: !4363)
!4366 = !DILocation(line: 524, column: 32, scope: !4351)
!4367 = !DILocation(line: 524, column: 12, scope: !4351)
!4368 = !DILocation(line: 524, column: 10, scope: !4351)
!4369 = !DILocation(line: 525, column: 7, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 525, column: 6)
!4371 = !DILocation(line: 525, column: 6, scope: !4351)
!4372 = !DILocation(line: 526, column: 3, scope: !4370)
!4373 = !DILocation(line: 530, column: 11, scope: !4351)
!4374 = !DILocation(line: 530, column: 9, scope: !4351)
!4375 = !DILocation(line: 531, column: 7, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 531, column: 6)
!4377 = !DILocation(line: 531, column: 6, scope: !4351)
!4378 = !DILocation(line: 532, column: 3, scope: !4376)
!4379 = !DILocation(line: 534, column: 6, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 534, column: 6)
!4381 = !DILocation(line: 534, column: 12, scope: !4380)
!4382 = !DILocation(line: 534, column: 19, scope: !4380)
!4383 = !DILocation(line: 534, column: 40, scope: !4380)
!4384 = !DILocation(line: 535, column: 6, scope: !4380)
!4385 = !DILocation(line: 535, column: 12, scope: !4380)
!4386 = !DILocation(line: 535, column: 19, scope: !4380)
!4387 = !DILocation(line: 534, column: 6, scope: !4351)
!4388 = !DILocation(line: 536, column: 16, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 535, column: 48)
!4390 = !DILocation(line: 536, column: 22, scope: !4389)
!4391 = !DILocation(line: 536, column: 3, scope: !4389)
!4392 = !DILocation(line: 537, column: 2, scope: !4389)
!4393 = !DILocation(line: 538, column: 3, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 537, column: 9)
!4395 = !DILocation(line: 542, column: 2, scope: !4351)
!4396 = !DILocation(line: 542, column: 10, scope: !4351)
!4397 = !DILocation(line: 542, column: 17, scope: !4351)
!4398 = !DILocation(line: 543, column: 16, scope: !4351)
!4399 = !DILocation(line: 543, column: 2, scope: !4351)
!4400 = !DILocation(line: 543, column: 10, scope: !4351)
!4401 = !DILocation(line: 543, column: 14, scope: !4351)
!4402 = !DILocation(line: 544, column: 19, scope: !4351)
!4403 = !DILocation(line: 544, column: 2, scope: !4351)
!4404 = !DILocation(line: 544, column: 10, scope: !4351)
!4405 = !DILocation(line: 544, column: 17, scope: !4351)
!4406 = !DILocation(line: 547, column: 24, scope: !4351)
!4407 = !DILocation(line: 547, column: 30, scope: !4351)
!4408 = !DILocation(line: 547, column: 38, scope: !4351)
!4409 = !DILocation(line: 547, column: 44, scope: !4351)
!4410 = !DILocation(line: 547, column: 62, scope: !4351)
!4411 = !DILocation(line: 547, column: 70, scope: !4351)
!4412 = !DILocation(line: 547, column: 2, scope: !4351)
!4413 = !DILocation(line: 549, column: 16, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 549, column: 6)
!4415 = !DILocation(line: 549, column: 22, scope: !4414)
!4416 = !DILocation(line: 549, column: 6, scope: !4414)
!4417 = !DILocation(line: 549, column: 31, scope: !4414)
!4418 = !DILocation(line: 549, column: 6, scope: !4351)
!4419 = !DILocation(line: 550, column: 18, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4414, file: !3, line: 549, column: 38)
!4421 = !DILocation(line: 550, column: 3, scope: !4420)
!4422 = !DILocation(line: 551, column: 3, scope: !4420)
!4423 = !DILocation(line: 554, column: 6, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 554, column: 6)
!4425 = !DILocation(line: 554, column: 12, scope: !4424)
!4426 = !DILocation(line: 554, column: 19, scope: !4424)
!4427 = !DILocation(line: 554, column: 6, scope: !4351)
!4428 = !DILocalVariable(name: "ret", scope: !4429, file: !3, line: 555, type: !132)
!4429 = distinct !DILexicalBlock(scope: !4424, file: !3, line: 554, column: 44)
!4430 = !DILocation(line: 555, column: 7, scope: !4429)
!4431 = !DILocation(line: 555, column: 30, scope: !4429)
!4432 = !DILocation(line: 555, column: 13, scope: !4429)
!4433 = !DILocation(line: 556, column: 7, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 556, column: 7)
!4435 = !DILocation(line: 556, column: 7, scope: !4429)
!4436 = !DILocation(line: 557, column: 19, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4434, file: !3, line: 556, column: 12)
!4438 = !DILocation(line: 557, column: 4, scope: !4437)
!4439 = !DILocation(line: 558, column: 11, scope: !4437)
!4440 = !DILocation(line: 558, column: 4, scope: !4437)
!4441 = !DILocation(line: 560, column: 2, scope: !4429)
!4442 = !DILocation(line: 562, column: 6, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 562, column: 6)
!4444 = !DILocation(line: 562, column: 12, scope: !4443)
!4445 = !DILocation(line: 562, column: 19, scope: !4443)
!4446 = !DILocation(line: 562, column: 6, scope: !4351)
!4447 = !DILocalVariable(name: "ret", scope: !4448, file: !3, line: 563, type: !132)
!4448 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 562, column: 40)
!4449 = !DILocation(line: 563, column: 7, scope: !4448)
!4450 = !DILocation(line: 563, column: 26, scope: !4448)
!4451 = !DILocation(line: 563, column: 13, scope: !4448)
!4452 = !DILocation(line: 564, column: 7, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4448, file: !3, line: 564, column: 7)
!4454 = !DILocation(line: 564, column: 7, scope: !4448)
!4455 = !DILocation(line: 565, column: 19, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 564, column: 12)
!4457 = !DILocation(line: 565, column: 4, scope: !4456)
!4458 = !DILocation(line: 566, column: 11, scope: !4456)
!4459 = !DILocation(line: 566, column: 4, scope: !4456)
!4460 = !DILocation(line: 568, column: 2, scope: !4448)
!4461 = !DILocation(line: 570, column: 18, scope: !4351)
!4462 = !DILocation(line: 570, column: 24, scope: !4351)
!4463 = !DILocation(line: 570, column: 2, scope: !4351)
!4464 = !DILocation(line: 571, column: 23, scope: !4351)
!4465 = !DILocation(line: 571, column: 8, scope: !4351)
!4466 = !DILocation(line: 571, column: 6, scope: !4351)
!4467 = !DILocation(line: 572, column: 6, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 572, column: 6)
!4469 = !DILocation(line: 572, column: 10, scope: !4468)
!4470 = !DILocation(line: 572, column: 6, scope: !4351)
!4471 = !DILocation(line: 573, column: 10, scope: !4468)
!4472 = !DILocation(line: 573, column: 3, scope: !4468)
!4473 = !DILocation(line: 575, column: 19, scope: !4351)
!4474 = !DILocation(line: 576, column: 2, scope: !4351)
!4475 = !DILocation(line: 577, column: 1, scope: !4351)
!4476 = distinct !DISubprogram(name: "agp_amd64_remove", scope: !3, file: !3, line: 579, type: !4019, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4477 = !DILocalVariable(name: "pdev", arg: 1, scope: !4476, file: !3, line: 579, type: !3164)
!4478 = !DILocation(line: 579, column: 46, scope: !4476)
!4479 = !DILocalVariable(name: "bridge", scope: !4476, file: !3, line: 581, type: !3147)
!4480 = !DILocation(line: 581, column: 26, scope: !4476)
!4481 = !DILocation(line: 581, column: 51, scope: !4476)
!4482 = !DILocation(line: 581, column: 35, scope: !4476)
!4483 = !DILocation(line: 583, column: 2, scope: !4476)
!4484 = !DILocation(line: 585, column: 20, scope: !4476)
!4485 = !DILocation(line: 585, column: 2, scope: !4476)
!4486 = !DILocation(line: 586, column: 17, scope: !4476)
!4487 = !DILocation(line: 586, column: 2, scope: !4476)
!4488 = !DILocation(line: 588, column: 19, scope: !4476)
!4489 = !DILocation(line: 589, column: 1, scope: !4476)
!4490 = distinct !DISubprogram(name: "agp_amd64_suspend", scope: !3, file: !3, line: 593, type: !4023, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4491 = !DILocalVariable(name: "pdev", arg: 1, scope: !4490, file: !3, line: 593, type: !3164)
!4492 = !DILocation(line: 593, column: 46, scope: !4490)
!4493 = !DILocalVariable(name: "state", arg: 2, scope: !4490, file: !3, line: 593, type: !3638)
!4494 = !DILocation(line: 593, column: 65, scope: !4490)
!4495 = !DILocation(line: 595, column: 17, scope: !4490)
!4496 = !DILocation(line: 595, column: 2, scope: !4490)
!4497 = !DILocation(line: 596, column: 22, scope: !4490)
!4498 = !DILocation(line: 596, column: 45, scope: !4490)
!4499 = !DILocation(line: 596, column: 28, scope: !4490)
!4500 = !DILocation(line: 596, column: 2, scope: !4490)
!4501 = !DILocation(line: 598, column: 2, scope: !4490)
!4502 = distinct !DISubprogram(name: "agp_amd64_resume", scope: !3, file: !3, line: 601, type: !4027, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4503 = !DILocalVariable(name: "pdev", arg: 1, scope: !4502, file: !3, line: 601, type: !3164)
!4504 = !DILocation(line: 601, column: 45, scope: !4502)
!4505 = !DILocation(line: 603, column: 22, scope: !4502)
!4506 = !DILocation(line: 603, column: 2, scope: !4502)
!4507 = !DILocation(line: 604, column: 20, scope: !4502)
!4508 = !DILocation(line: 604, column: 2, scope: !4502)
!4509 = !DILocation(line: 606, column: 6, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 606, column: 6)
!4511 = !DILocation(line: 606, column: 12, scope: !4510)
!4512 = !DILocation(line: 606, column: 19, scope: !4510)
!4513 = !DILocation(line: 606, column: 6, scope: !4502)
!4514 = !DILocation(line: 607, column: 20, scope: !4510)
!4515 = !DILocation(line: 607, column: 3, scope: !4510)
!4516 = !DILocation(line: 609, column: 9, scope: !4502)
!4517 = !DILocation(line: 609, column: 2, scope: !4502)
!4518 = distinct !DISubprogram(name: "amd8151_init", scope: !3, file: !3, line: 352, type: !4519, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{null, !3164, !3147}
!4521 = !DILocalVariable(name: "pdev", arg: 1, scope: !4518, file: !3, line: 352, type: !3164)
!4522 = !DILocation(line: 352, column: 42, scope: !4518)
!4523 = !DILocalVariable(name: "bridge", arg: 2, scope: !4518, file: !3, line: 352, type: !3147)
!4524 = !DILocation(line: 352, column: 72, scope: !4518)
!4525 = !DILocalVariable(name: "revstring", scope: !4518, file: !3, line: 354, type: !320)
!4526 = !DILocation(line: 354, column: 8, scope: !4518)
!4527 = !DILocation(line: 356, column: 10, scope: !4518)
!4528 = !DILocation(line: 356, column: 16, scope: !4518)
!4529 = !DILocation(line: 356, column: 2, scope: !4518)
!4530 = !DILocation(line: 357, column: 22, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4518, file: !3, line: 356, column: 26)
!4532 = !DILocation(line: 357, column: 29, scope: !4531)
!4533 = !DILocation(line: 358, column: 22, scope: !4531)
!4534 = !DILocation(line: 358, column: 29, scope: !4531)
!4535 = !DILocation(line: 359, column: 22, scope: !4531)
!4536 = !DILocation(line: 359, column: 29, scope: !4531)
!4537 = !DILocation(line: 360, column: 22, scope: !4531)
!4538 = !DILocation(line: 360, column: 29, scope: !4531)
!4539 = !DILocation(line: 361, column: 22, scope: !4531)
!4540 = !DILocation(line: 361, column: 29, scope: !4531)
!4541 = !DILocation(line: 362, column: 22, scope: !4531)
!4542 = !DILocation(line: 362, column: 29, scope: !4531)
!4543 = !DILocation(line: 363, column: 22, scope: !4531)
!4544 = !DILocation(line: 363, column: 29, scope: !4531)
!4545 = !DILocation(line: 366, column: 2, scope: !4518)
!4546 = !DILocation(line: 372, column: 6, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4518, file: !3, line: 372, column: 6)
!4548 = !DILocation(line: 372, column: 12, scope: !4547)
!4549 = !DILocation(line: 372, column: 21, scope: !4547)
!4550 = !DILocation(line: 372, column: 6, scope: !4518)
!4551 = !DILocation(line: 373, column: 3, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 372, column: 29)
!4553 = !DILocation(line: 374, column: 3, scope: !4552)
!4554 = !DILocation(line: 374, column: 11, scope: !4552)
!4555 = !DILocation(line: 374, column: 25, scope: !4552)
!4556 = !DILocation(line: 375, column: 3, scope: !4552)
!4557 = !DILocation(line: 375, column: 11, scope: !4552)
!4558 = !DILocation(line: 375, column: 25, scope: !4552)
!4559 = !DILocation(line: 376, column: 2, scope: !4552)
!4560 = !DILocation(line: 377, column: 1, scope: !4518)
!4561 = distinct !DISubprogram(name: "cache_nbs", scope: !3, file: !3, line: 326, type: !4562, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!132, !3164, !136}
!4564 = !DILocalVariable(name: "pdev", arg: 1, scope: !4561, file: !3, line: 326, type: !3164)
!4565 = !DILocation(line: 326, column: 38, scope: !4561)
!4566 = !DILocalVariable(name: "cap_ptr", arg: 2, scope: !4561, file: !3, line: 326, type: !136)
!4567 = !DILocation(line: 326, column: 48, scope: !4561)
!4568 = !DILocalVariable(name: "i", scope: !4561, file: !3, line: 328, type: !132)
!4569 = !DILocation(line: 328, column: 6, scope: !4561)
!4570 = !DILocation(line: 330, column: 6, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 330, column: 6)
!4572 = !DILocation(line: 330, column: 31, scope: !4571)
!4573 = !DILocation(line: 330, column: 6, scope: !4561)
!4574 = !DILocation(line: 331, column: 3, scope: !4571)
!4575 = !DILocation(line: 333, column: 7, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 333, column: 6)
!4577 = !DILocation(line: 333, column: 6, scope: !4561)
!4578 = !DILocation(line: 334, column: 3, scope: !4576)
!4579 = !DILocation(line: 336, column: 4, scope: !4561)
!4580 = !DILocation(line: 337, column: 9, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 337, column: 2)
!4582 = !DILocation(line: 337, column: 7, scope: !4581)
!4583 = !DILocation(line: 337, column: 14, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 337, column: 2)
!4585 = !DILocation(line: 337, column: 18, scope: !4584)
!4586 = !DILocation(line: 337, column: 16, scope: !4584)
!4587 = !DILocation(line: 337, column: 2, scope: !4581)
!4588 = !DILocalVariable(name: "dev", scope: !4589, file: !3, line: 338, type: !3164)
!4589 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 337, column: 37)
!4590 = !DILocation(line: 338, column: 19, scope: !4589)
!4591 = !DILocation(line: 338, column: 40, scope: !4589)
!4592 = !DILocation(line: 338, column: 25, scope: !4589)
!4593 = !DILocation(line: 338, column: 44, scope: !4589)
!4594 = !DILocation(line: 339, column: 23, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4589, file: !3, line: 339, column: 7)
!4596 = !DILocation(line: 339, column: 28, scope: !4595)
!4597 = !DILocation(line: 339, column: 34, scope: !4595)
!4598 = !DILocation(line: 339, column: 7, scope: !4595)
!4599 = !DILocation(line: 339, column: 43, scope: !4595)
!4600 = !DILocation(line: 339, column: 7, scope: !4589)
!4601 = !DILocation(line: 340, column: 4, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4595, file: !3, line: 339, column: 48)
!4603 = !DILocation(line: 343, column: 4, scope: !4602)
!4604 = !DILocation(line: 345, column: 4, scope: !4602)
!4605 = !DILocation(line: 347, column: 2, scope: !4589)
!4606 = !DILocation(line: 337, column: 33, scope: !4584)
!4607 = !DILocation(line: 337, column: 2, scope: !4584)
!4608 = distinct !{!4608, !4587, !4609}
!4609 = !DILocation(line: 347, column: 2, scope: !4581)
!4610 = !DILocation(line: 348, column: 2, scope: !4561)
!4611 = !DILocation(line: 349, column: 1, scope: !4561)
!4612 = distinct !DISubprogram(name: "nforce3_agp_init", scope: !3, file: !3, line: 452, type: !4027, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4613 = !DILocalVariable(name: "pdev", arg: 1, scope: !4612, file: !3, line: 452, type: !3164)
!4614 = !DILocation(line: 452, column: 45, scope: !4612)
!4615 = !DILocalVariable(name: "tmp", scope: !4612, file: !3, line: 454, type: !136)
!4616 = !DILocation(line: 454, column: 6, scope: !4612)
!4617 = !DILocalVariable(name: "apbase", scope: !4612, file: !3, line: 454, type: !136)
!4618 = !DILocation(line: 454, column: 11, scope: !4612)
!4619 = !DILocalVariable(name: "apbar", scope: !4612, file: !3, line: 454, type: !136)
!4620 = !DILocation(line: 454, column: 19, scope: !4612)
!4621 = !DILocalVariable(name: "aplimit", scope: !4612, file: !3, line: 454, type: !136)
!4622 = !DILocation(line: 454, column: 26, scope: !4612)
!4623 = !DILocalVariable(name: "dev1", scope: !4612, file: !3, line: 455, type: !3164)
!4624 = !DILocation(line: 455, column: 18, scope: !4612)
!4625 = !DILocalVariable(name: "i", scope: !4612, file: !3, line: 456, type: !132)
!4626 = !DILocation(line: 456, column: 6, scope: !4612)
!4627 = !DILocalVariable(name: "ret", scope: !4612, file: !3, line: 456, type: !132)
!4628 = !DILocation(line: 456, column: 9, scope: !4612)
!4629 = !DILocalVariable(name: "size", scope: !4612, file: !3, line: 457, type: !7)
!4630 = !DILocation(line: 457, column: 11, scope: !4612)
!4631 = !DILocation(line: 457, column: 18, scope: !4612)
!4632 = !DILocation(line: 459, column: 2, scope: !4612)
!4633 = !DILocation(line: 461, column: 22, scope: !4612)
!4634 = !DILocation(line: 461, column: 28, scope: !4612)
!4635 = !DILocation(line: 461, column: 9, scope: !4612)
!4636 = !DILocation(line: 461, column: 7, scope: !4612)
!4637 = !DILocation(line: 462, column: 6, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4612, file: !3, line: 462, column: 6)
!4639 = !DILocation(line: 462, column: 11, scope: !4638)
!4640 = !DILocation(line: 462, column: 6, scope: !4612)
!4641 = !DILocation(line: 463, column: 3, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4638, file: !3, line: 462, column: 20)
!4643 = !DILocation(line: 464, column: 3, scope: !4642)
!4644 = !DILocation(line: 467, column: 9, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4612, file: !3, line: 467, column: 2)
!4646 = !DILocation(line: 467, column: 7, scope: !4645)
!4647 = !DILocation(line: 467, column: 14, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4645, file: !3, line: 467, column: 2)
!4649 = !DILocation(line: 467, column: 16, scope: !4648)
!4650 = !DILocation(line: 467, column: 2, scope: !4645)
!4651 = !DILocation(line: 468, column: 21, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 468, column: 7)
!4653 = !DILocation(line: 468, column: 7, scope: !4652)
!4654 = !DILocation(line: 468, column: 24, scope: !4652)
!4655 = !DILocation(line: 468, column: 32, scope: !4652)
!4656 = !DILocation(line: 468, column: 29, scope: !4652)
!4657 = !DILocation(line: 468, column: 7, scope: !4648)
!4658 = !DILocation(line: 469, column: 4, scope: !4652)
!4659 = !DILocation(line: 467, column: 46, scope: !4648)
!4660 = !DILocation(line: 467, column: 2, scope: !4648)
!4661 = distinct !{!4661, !4650, !4662}
!4662 = !DILocation(line: 469, column: 4, scope: !4645)
!4663 = !DILocation(line: 471, column: 6, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4612, file: !3, line: 471, column: 6)
!4665 = !DILocation(line: 471, column: 8, scope: !4664)
!4666 = !DILocation(line: 471, column: 6, scope: !4612)
!4667 = !DILocation(line: 472, column: 3, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 471, column: 38)
!4669 = !DILocation(line: 473, column: 7, scope: !4668)
!4670 = !DILocation(line: 474, column: 3, scope: !4668)
!4671 = !DILocation(line: 477, column: 24, scope: !4612)
!4672 = !DILocation(line: 477, column: 2, scope: !4612)
!4673 = !DILocation(line: 478, column: 6, scope: !4612)
!4674 = !DILocation(line: 479, column: 23, scope: !4612)
!4675 = !DILocation(line: 479, column: 9, scope: !4612)
!4676 = !DILocation(line: 479, column: 26, scope: !4612)
!4677 = !DILocation(line: 479, column: 6, scope: !4612)
!4678 = !DILocation(line: 480, column: 25, scope: !4612)
!4679 = !DILocation(line: 480, column: 55, scope: !4612)
!4680 = !DILocation(line: 480, column: 2, scope: !4612)
!4681 = !DILocation(line: 483, column: 25, scope: !4612)
!4682 = !DILocation(line: 483, column: 44, scope: !4612)
!4683 = !DILocation(line: 483, column: 2, scope: !4612)
!4684 = !DILocation(line: 487, column: 8, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4612, file: !3, line: 487, column: 7)
!4686 = !DILocation(line: 487, column: 15, scope: !4685)
!4687 = !DILocation(line: 487, column: 25, scope: !4685)
!4688 = !DILocation(line: 487, column: 7, scope: !4612)
!4689 = !DILocation(line: 488, column: 3, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 487, column: 40)
!4691 = !DILocation(line: 489, column: 7, scope: !4690)
!4692 = !DILocation(line: 490, column: 3, scope: !4690)
!4693 = !DILocation(line: 493, column: 12, scope: !4612)
!4694 = !DILocation(line: 493, column: 19, scope: !4612)
!4695 = !DILocation(line: 493, column: 29, scope: !4612)
!4696 = !DILocation(line: 493, column: 9, scope: !4612)
!4697 = !DILocation(line: 495, column: 24, scope: !4612)
!4698 = !DILocation(line: 495, column: 2, scope: !4612)
!4699 = !DILocation(line: 496, column: 8, scope: !4612)
!4700 = !DILocation(line: 497, column: 11, scope: !4612)
!4701 = !DILocation(line: 497, column: 8, scope: !4612)
!4702 = !DILocation(line: 498, column: 25, scope: !4612)
!4703 = !DILocation(line: 498, column: 55, scope: !4612)
!4704 = !DILocation(line: 498, column: 2, scope: !4612)
!4705 = !DILocation(line: 500, column: 12, scope: !4612)
!4706 = !DILocation(line: 500, column: 22, scope: !4612)
!4707 = !DILocation(line: 500, column: 27, scope: !4612)
!4708 = !DILocation(line: 500, column: 34, scope: !4612)
!4709 = !DILocation(line: 500, column: 19, scope: !4612)
!4710 = !DILocation(line: 500, column: 42, scope: !4612)
!4711 = !DILocation(line: 500, column: 10, scope: !4612)
!4712 = !DILocation(line: 501, column: 25, scope: !4612)
!4713 = !DILocation(line: 501, column: 56, scope: !4612)
!4714 = !DILocation(line: 501, column: 2, scope: !4612)
!4715 = !DILocation(line: 502, column: 25, scope: !4612)
!4716 = !DILocation(line: 502, column: 57, scope: !4612)
!4717 = !DILocation(line: 502, column: 2, scope: !4612)
!4718 = !DILocation(line: 503, column: 25, scope: !4612)
!4719 = !DILocation(line: 503, column: 56, scope: !4612)
!4720 = !DILocation(line: 503, column: 2, scope: !4612)
!4721 = !DILocation(line: 504, column: 25, scope: !4612)
!4722 = !DILocation(line: 504, column: 57, scope: !4612)
!4723 = !DILocation(line: 504, column: 2, scope: !4612)
!4724 = !DILocation(line: 506, column: 6, scope: !4612)
!4725 = !DILocation(line: 506, column: 2, scope: !4612)
!4726 = !DILabel(scope: !4612, name: "put", file: !3, line: 507)
!4727 = !DILocation(line: 507, column: 1, scope: !4612)
!4728 = !DILocation(line: 508, column: 14, scope: !4612)
!4729 = !DILocation(line: 508, column: 2, scope: !4612)
!4730 = !DILocation(line: 510, column: 9, scope: !4612)
!4731 = !DILocation(line: 510, column: 2, scope: !4612)
!4732 = !DILocation(line: 511, column: 1, scope: !4612)
!4733 = distinct !DISubprogram(name: "uli_agp_init", scope: !3, file: !3, line: 390, type: !4027, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4734 = !DILocalVariable(name: "pdev", arg: 1, scope: !4733, file: !3, line: 390, type: !3164)
!4735 = !DILocation(line: 390, column: 41, scope: !4733)
!4736 = !DILocalVariable(name: "httfea", scope: !4733, file: !3, line: 392, type: !136)
!4737 = !DILocation(line: 392, column: 6, scope: !4733)
!4738 = !DILocalVariable(name: "baseaddr", scope: !4733, file: !3, line: 392, type: !136)
!4739 = !DILocation(line: 392, column: 13, scope: !4733)
!4740 = !DILocalVariable(name: "enuscr", scope: !4733, file: !3, line: 392, type: !136)
!4741 = !DILocation(line: 392, column: 22, scope: !4733)
!4742 = !DILocalVariable(name: "dev1", scope: !4733, file: !3, line: 393, type: !3164)
!4743 = !DILocation(line: 393, column: 18, scope: !4733)
!4744 = !DILocalVariable(name: "i", scope: !4733, file: !3, line: 394, type: !132)
!4745 = !DILocation(line: 394, column: 6, scope: !4733)
!4746 = !DILocalVariable(name: "ret", scope: !4733, file: !3, line: 394, type: !132)
!4747 = !DILocation(line: 394, column: 9, scope: !4733)
!4748 = !DILocalVariable(name: "size", scope: !4733, file: !3, line: 395, type: !7)
!4749 = !DILocation(line: 395, column: 11, scope: !4733)
!4750 = !DILocation(line: 395, column: 18, scope: !4733)
!4751 = !DILocation(line: 397, column: 2, scope: !4733)
!4752 = !DILocation(line: 398, column: 23, scope: !4733)
!4753 = !DILocation(line: 398, column: 29, scope: !4733)
!4754 = !DILocation(line: 398, column: 9, scope: !4733)
!4755 = !DILocation(line: 398, column: 7, scope: !4733)
!4756 = !DILocation(line: 399, column: 6, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4733, file: !3, line: 399, column: 6)
!4758 = !DILocation(line: 399, column: 11, scope: !4757)
!4759 = !DILocation(line: 399, column: 6, scope: !4733)
!4760 = !DILocation(line: 400, column: 3, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 399, column: 20)
!4762 = !DILocation(line: 401, column: 3, scope: !4761)
!4763 = !DILocation(line: 404, column: 9, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4733, file: !3, line: 404, column: 2)
!4765 = !DILocation(line: 404, column: 7, scope: !4764)
!4766 = !DILocation(line: 404, column: 14, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4764, file: !3, line: 404, column: 2)
!4768 = !DILocation(line: 404, column: 16, scope: !4767)
!4769 = !DILocation(line: 404, column: 2, scope: !4764)
!4770 = !DILocation(line: 405, column: 17, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 405, column: 7)
!4772 = !DILocation(line: 405, column: 7, scope: !4771)
!4773 = !DILocation(line: 405, column: 20, scope: !4771)
!4774 = !DILocation(line: 405, column: 28, scope: !4771)
!4775 = !DILocation(line: 405, column: 25, scope: !4771)
!4776 = !DILocation(line: 405, column: 7, scope: !4767)
!4777 = !DILocation(line: 406, column: 4, scope: !4771)
!4778 = !DILocation(line: 404, column: 42, scope: !4767)
!4779 = !DILocation(line: 404, column: 2, scope: !4767)
!4780 = distinct !{!4780, !4769, !4781}
!4781 = !DILocation(line: 406, column: 4, scope: !4764)
!4782 = !DILocation(line: 408, column: 6, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4733, file: !3, line: 408, column: 6)
!4784 = !DILocation(line: 408, column: 8, scope: !4783)
!4785 = !DILocation(line: 408, column: 6, scope: !4733)
!4786 = !DILocation(line: 409, column: 3, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 408, column: 34)
!4788 = !DILocation(line: 410, column: 7, scope: !4787)
!4789 = !DILocation(line: 411, column: 3, scope: !4787)
!4790 = !DILocation(line: 415, column: 25, scope: !4733)
!4791 = !DILocation(line: 415, column: 44, scope: !4733)
!4792 = !DILocation(line: 415, column: 2, scope: !4733)
!4793 = !DILocation(line: 419, column: 7, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4733, file: !3, line: 419, column: 6)
!4795 = !DILocation(line: 419, column: 14, scope: !4794)
!4796 = !DILocation(line: 419, column: 24, scope: !4794)
!4797 = !DILocation(line: 419, column: 6, scope: !4733)
!4798 = !DILocation(line: 420, column: 7, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 419, column: 38)
!4800 = !DILocation(line: 421, column: 3, scope: !4799)
!4801 = !DILocation(line: 424, column: 12, scope: !4733)
!4802 = !DILocation(line: 424, column: 18, scope: !4733)
!4803 = !DILocation(line: 424, column: 28, scope: !4733)
!4804 = !DILocation(line: 424, column: 9, scope: !4733)
!4805 = !DILocation(line: 426, column: 24, scope: !4733)
!4806 = !DILocation(line: 426, column: 2, scope: !4733)
!4807 = !DILocation(line: 427, column: 10, scope: !4733)
!4808 = !DILocation(line: 428, column: 13, scope: !4733)
!4809 = !DILocation(line: 428, column: 10, scope: !4733)
!4810 = !DILocation(line: 429, column: 25, scope: !4733)
!4811 = !DILocation(line: 429, column: 53, scope: !4733)
!4812 = !DILocation(line: 429, column: 2, scope: !4733)
!4813 = !DILocation(line: 431, column: 10, scope: !4733)
!4814 = !DILocation(line: 431, column: 19, scope: !4733)
!4815 = !DILocation(line: 431, column: 24, scope: !4733)
!4816 = !DILocation(line: 431, column: 31, scope: !4733)
!4817 = !DILocation(line: 431, column: 16, scope: !4733)
!4818 = !DILocation(line: 431, column: 39, scope: !4733)
!4819 = !DILocation(line: 431, column: 8, scope: !4733)
!4820 = !DILocation(line: 432, column: 25, scope: !4733)
!4821 = !DILocation(line: 432, column: 55, scope: !4733)
!4822 = !DILocation(line: 432, column: 2, scope: !4733)
!4823 = !DILocation(line: 433, column: 25, scope: !4733)
!4824 = !DILocation(line: 433, column: 55, scope: !4733)
!4825 = !DILocation(line: 433, column: 2, scope: !4733)
!4826 = !DILocation(line: 434, column: 6, scope: !4733)
!4827 = !DILocation(line: 434, column: 2, scope: !4733)
!4828 = !DILabel(scope: !4733, name: "put", file: !3, line: 435)
!4829 = !DILocation(line: 435, column: 1, scope: !4733)
!4830 = !DILocation(line: 436, column: 14, scope: !4733)
!4831 = !DILocation(line: 436, column: 2, scope: !4733)
!4832 = !DILocation(line: 437, column: 9, scope: !4733)
!4833 = !DILocation(line: 437, column: 2, scope: !4733)
!4834 = !DILocation(line: 438, column: 1, scope: !4733)
!4835 = distinct !DISubprogram(name: "pci_set_drvdata", scope: !3007, file: !3007, line: 1870, type: !4836, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{null, !3164, !127}
!4838 = !DILocalVariable(name: "pdev", arg: 1, scope: !4835, file: !3007, line: 1870, type: !3164)
!4839 = !DILocation(line: 1870, column: 52, scope: !4835)
!4840 = !DILocalVariable(name: "data", arg: 2, scope: !4835, file: !3007, line: 1870, type: !127)
!4841 = !DILocation(line: 1870, column: 64, scope: !4835)
!4842 = !DILocation(line: 1872, column: 19, scope: !4835)
!4843 = !DILocation(line: 1872, column: 25, scope: !4835)
!4844 = !DILocation(line: 1872, column: 30, scope: !4835)
!4845 = !DILocation(line: 1872, column: 2, scope: !4835)
!4846 = !DILocation(line: 1873, column: 1, scope: !4835)
!4847 = distinct !DISubprogram(name: "amd64_fetch_size", scope: !3, file: !3, line: 121, type: !3140, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4848 = !DILocalVariable(name: "dev", scope: !4847, file: !3, line: 123, type: !3164)
!4849 = !DILocation(line: 123, column: 18, scope: !4847)
!4850 = !DILocalVariable(name: "i", scope: !4847, file: !3, line: 124, type: !132)
!4851 = !DILocation(line: 124, column: 6, scope: !4847)
!4852 = !DILocalVariable(name: "temp", scope: !4847, file: !3, line: 125, type: !136)
!4853 = !DILocation(line: 125, column: 6, scope: !4847)
!4854 = !DILocalVariable(name: "values", scope: !4847, file: !3, line: 126, type: !128)
!4855 = !DILocation(line: 126, column: 28, scope: !4847)
!4856 = !DILocation(line: 128, column: 8, scope: !4847)
!4857 = !DILocation(line: 128, column: 27, scope: !4847)
!4858 = !DILocation(line: 128, column: 6, scope: !4847)
!4859 = !DILocation(line: 129, column: 6, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 129, column: 6)
!4861 = !DILocation(line: 129, column: 9, scope: !4860)
!4862 = !DILocation(line: 129, column: 6, scope: !4847)
!4863 = !DILocation(line: 130, column: 3, scope: !4860)
!4864 = !DILocation(line: 132, column: 24, scope: !4847)
!4865 = !DILocation(line: 132, column: 2, scope: !4847)
!4866 = !DILocation(line: 133, column: 10, scope: !4847)
!4867 = !DILocation(line: 133, column: 15, scope: !4847)
!4868 = !DILocation(line: 133, column: 7, scope: !4847)
!4869 = !DILocation(line: 134, column: 9, scope: !4847)
!4870 = !DILocation(line: 136, column: 9, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 136, column: 2)
!4872 = !DILocation(line: 136, column: 7, scope: !4871)
!4873 = !DILocation(line: 136, column: 14, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 136, column: 2)
!4875 = !DILocation(line: 136, column: 18, scope: !4874)
!4876 = !DILocation(line: 136, column: 30, scope: !4874)
!4877 = !DILocation(line: 136, column: 38, scope: !4874)
!4878 = !DILocation(line: 136, column: 16, scope: !4874)
!4879 = !DILocation(line: 136, column: 2, scope: !4871)
!4880 = !DILocation(line: 137, column: 7, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4882, file: !3, line: 137, column: 7)
!4882 = distinct !DILexicalBlock(scope: !4874, file: !3, line: 136, column: 63)
!4883 = !DILocation(line: 137, column: 15, scope: !4881)
!4884 = !DILocation(line: 137, column: 22, scope: !4881)
!4885 = !DILocation(line: 137, column: 25, scope: !4881)
!4886 = !DILocation(line: 137, column: 12, scope: !4881)
!4887 = !DILocation(line: 137, column: 7, scope: !4882)
!4888 = !DILocation(line: 139, column: 45, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 137, column: 37)
!4890 = !DILocation(line: 139, column: 54, scope: !4889)
!4891 = !DILocation(line: 139, column: 52, scope: !4889)
!4892 = !DILocation(line: 139, column: 35, scope: !4889)
!4893 = !DILocation(line: 139, column: 8, scope: !4889)
!4894 = !DILocation(line: 139, column: 20, scope: !4889)
!4895 = !DILocation(line: 139, column: 33, scope: !4889)
!4896 = !DILocation(line: 138, column: 4, scope: !4889)
!4897 = !DILocation(line: 138, column: 16, scope: !4889)
!4898 = !DILocation(line: 138, column: 30, scope: !4889)
!4899 = !DILocation(line: 141, column: 36, scope: !4889)
!4900 = !DILocation(line: 141, column: 4, scope: !4889)
!4901 = !DILocation(line: 141, column: 16, scope: !4889)
!4902 = !DILocation(line: 141, column: 34, scope: !4889)
!4903 = !DILocation(line: 142, column: 11, scope: !4889)
!4904 = !DILocation(line: 142, column: 18, scope: !4889)
!4905 = !DILocation(line: 142, column: 21, scope: !4889)
!4906 = !DILocation(line: 142, column: 4, scope: !4889)
!4907 = !DILocation(line: 144, column: 2, scope: !4882)
!4908 = !DILocation(line: 136, column: 59, scope: !4874)
!4909 = !DILocation(line: 136, column: 2, scope: !4874)
!4910 = distinct !{!4910, !4879, !4911}
!4911 = !DILocation(line: 144, column: 2, scope: !4871)
!4912 = !DILocation(line: 145, column: 2, scope: !4847)
!4913 = !DILocation(line: 146, column: 1, scope: !4847)
!4914 = distinct !DISubprogram(name: "amd_8151_configure", scope: !3, file: !3, line: 180, type: !3140, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4915 = !DILocalVariable(name: "gatt_bus", scope: !4914, file: !3, line: 182, type: !140)
!4916 = !DILocation(line: 182, column: 16, scope: !4914)
!4917 = !DILocation(line: 182, column: 40, scope: !4914)
!4918 = !DILocation(line: 182, column: 52, scope: !4914)
!4919 = !DILocation(line: 182, column: 27, scope: !4914)
!4920 = !DILocalVariable(name: "i", scope: !4914, file: !3, line: 183, type: !132)
!4921 = !DILocation(line: 183, column: 6, scope: !4914)
!4922 = !DILocation(line: 185, column: 7, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4914, file: !3, line: 185, column: 6)
!4924 = !DILocation(line: 185, column: 6, scope: !4914)
!4925 = !DILocation(line: 186, column: 3, scope: !4923)
!4926 = !DILocation(line: 189, column: 9, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4914, file: !3, line: 189, column: 2)
!4928 = !DILocation(line: 189, column: 7, scope: !4927)
!4929 = !DILocation(line: 189, column: 14, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4927, file: !3, line: 189, column: 2)
!4931 = !DILocation(line: 189, column: 18, scope: !4930)
!4932 = !DILocation(line: 189, column: 16, scope: !4930)
!4933 = !DILocation(line: 189, column: 2, scope: !4927)
!4934 = !DILocation(line: 191, column: 35, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4930, file: !3, line: 189, column: 37)
!4936 = !DILocation(line: 191, column: 20, scope: !4935)
!4937 = !DILocation(line: 191, column: 39, scope: !4935)
!4938 = !DILocation(line: 191, column: 45, scope: !4935)
!4939 = !DILocation(line: 191, column: 4, scope: !4935)
!4940 = !DILocation(line: 190, column: 3, scope: !4935)
!4941 = !DILocation(line: 190, column: 15, scope: !4935)
!4942 = !DILocation(line: 190, column: 29, scope: !4935)
!4943 = !DILocation(line: 192, column: 2, scope: !4935)
!4944 = !DILocation(line: 189, column: 33, scope: !4930)
!4945 = !DILocation(line: 189, column: 2, scope: !4930)
!4946 = distinct !{!4946, !4933, !4947}
!4947 = !DILocation(line: 192, column: 2, scope: !4927)
!4948 = !DILocation(line: 193, column: 2, scope: !4914)
!4949 = !DILocation(line: 194, column: 2, scope: !4914)
!4950 = !DILocation(line: 195, column: 1, scope: !4914)
!4951 = distinct !DISubprogram(name: "amd64_cleanup", scope: !3, file: !3, line: 198, type: !2054, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4952 = !DILocalVariable(name: "tmp", scope: !4951, file: !3, line: 200, type: !136)
!4953 = !DILocation(line: 200, column: 6, scope: !4951)
!4954 = !DILocalVariable(name: "i", scope: !4951, file: !3, line: 201, type: !132)
!4955 = !DILocation(line: 201, column: 6, scope: !4951)
!4956 = !DILocation(line: 203, column: 7, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4951, file: !3, line: 203, column: 6)
!4958 = !DILocation(line: 203, column: 6, scope: !4951)
!4959 = !DILocation(line: 204, column: 3, scope: !4957)
!4960 = !DILocation(line: 206, column: 9, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4951, file: !3, line: 206, column: 2)
!4962 = !DILocation(line: 206, column: 7, scope: !4961)
!4963 = !DILocation(line: 206, column: 14, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 206, column: 2)
!4965 = !DILocation(line: 206, column: 18, scope: !4964)
!4966 = !DILocation(line: 206, column: 16, scope: !4964)
!4967 = !DILocation(line: 206, column: 2, scope: !4961)
!4968 = !DILocalVariable(name: "dev", scope: !4969, file: !3, line: 207, type: !3164)
!4969 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 206, column: 37)
!4970 = !DILocation(line: 207, column: 19, scope: !4969)
!4971 = !DILocation(line: 207, column: 40, scope: !4969)
!4972 = !DILocation(line: 207, column: 25, scope: !4969)
!4973 = !DILocation(line: 207, column: 44, scope: !4969)
!4974 = !DILocation(line: 209, column: 25, scope: !4969)
!4975 = !DILocation(line: 209, column: 3, scope: !4969)
!4976 = !DILocation(line: 210, column: 7, scope: !4969)
!4977 = !DILocation(line: 211, column: 26, scope: !4969)
!4978 = !DILocation(line: 211, column: 54, scope: !4969)
!4979 = !DILocation(line: 211, column: 3, scope: !4969)
!4980 = !DILocation(line: 212, column: 2, scope: !4969)
!4981 = !DILocation(line: 206, column: 33, scope: !4964)
!4982 = !DILocation(line: 206, column: 2, scope: !4964)
!4983 = distinct !{!4983, !4967, !4984}
!4984 = !DILocation(line: 212, column: 2, scope: !4961)
!4985 = !DILocation(line: 213, column: 1, scope: !4951)
!4986 = distinct !DISubprogram(name: "amd64_tlbflush", scope: !3, file: !3, line: 40, type: !4187, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4987 = !DILocalVariable(name: "temp", arg: 1, scope: !4986, file: !3, line: 40, type: !4189)
!4988 = !DILocation(line: 40, column: 47, scope: !4986)
!4989 = !DILocation(line: 42, column: 2, scope: !4986)
!4990 = !DILocation(line: 43, column: 1, scope: !4986)
!4991 = distinct !DISubprogram(name: "amd64_insert_memory", scope: !3, file: !3, line: 45, type: !4230, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4992 = !DILocalVariable(name: "mem", arg: 1, scope: !4991, file: !3, line: 45, type: !4189)
!4993 = !DILocation(line: 45, column: 51, scope: !4991)
!4994 = !DILocalVariable(name: "pg_start", arg: 2, scope: !4991, file: !3, line: 45, type: !4200)
!4995 = !DILocation(line: 45, column: 62, scope: !4991)
!4996 = !DILocalVariable(name: "type", arg: 3, scope: !4991, file: !3, line: 45, type: !132)
!4997 = !DILocation(line: 45, column: 76, scope: !4991)
!4998 = !DILocalVariable(name: "i", scope: !4991, file: !3, line: 47, type: !132)
!4999 = !DILocation(line: 47, column: 6, scope: !4991)
!5000 = !DILocalVariable(name: "j", scope: !4991, file: !3, line: 47, type: !132)
!5001 = !DILocation(line: 47, column: 9, scope: !4991)
!5002 = !DILocalVariable(name: "num_entries", scope: !4991, file: !3, line: 47, type: !132)
!5003 = !DILocation(line: 47, column: 12, scope: !4991)
!5004 = !DILocalVariable(name: "tmp", scope: !4991, file: !3, line: 48, type: !360)
!5005 = !DILocation(line: 48, column: 12, scope: !4991)
!5006 = !DILocalVariable(name: "mask_type", scope: !4991, file: !3, line: 49, type: !132)
!5007 = !DILocation(line: 49, column: 6, scope: !4991)
!5008 = !DILocalVariable(name: "bridge", scope: !4991, file: !3, line: 50, type: !3147)
!5009 = !DILocation(line: 50, column: 26, scope: !4991)
!5010 = !DILocation(line: 50, column: 35, scope: !4991)
!5011 = !DILocation(line: 50, column: 40, scope: !4991)
!5012 = !DILocalVariable(name: "pte", scope: !4991, file: !3, line: 51, type: !136)
!5013 = !DILocation(line: 51, column: 6, scope: !4991)
!5014 = !DILocation(line: 53, column: 16, scope: !4991)
!5015 = !DILocation(line: 53, column: 14, scope: !4991)
!5016 = !DILocation(line: 55, column: 6, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 55, column: 6)
!5018 = !DILocation(line: 55, column: 14, scope: !5017)
!5019 = !DILocation(line: 55, column: 19, scope: !5017)
!5020 = !DILocation(line: 55, column: 11, scope: !5017)
!5021 = !DILocation(line: 55, column: 6, scope: !4991)
!5022 = !DILocation(line: 56, column: 3, scope: !5017)
!5023 = !DILocation(line: 57, column: 14, scope: !4991)
!5024 = !DILocation(line: 57, column: 22, scope: !4991)
!5025 = !DILocation(line: 57, column: 30, scope: !4991)
!5026 = !DILocation(line: 57, column: 52, scope: !4991)
!5027 = !DILocation(line: 57, column: 60, scope: !4991)
!5028 = !DILocation(line: 57, column: 12, scope: !4991)
!5029 = !DILocation(line: 58, column: 6, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 58, column: 6)
!5031 = !DILocation(line: 58, column: 16, scope: !5030)
!5032 = !DILocation(line: 58, column: 6, scope: !4991)
!5033 = !DILocation(line: 59, column: 3, scope: !5030)
!5034 = !DILocation(line: 64, column: 22, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 64, column: 6)
!5036 = !DILocation(line: 64, column: 33, scope: !5035)
!5037 = !DILocation(line: 64, column: 38, scope: !5035)
!5038 = !DILocation(line: 64, column: 31, scope: !5035)
!5039 = !DILocation(line: 64, column: 52, scope: !5035)
!5040 = !DILocation(line: 64, column: 50, scope: !5035)
!5041 = !DILocation(line: 64, column: 6, scope: !4991)
!5042 = !DILocation(line: 65, column: 3, scope: !5035)
!5043 = !DILocation(line: 67, column: 6, scope: !4991)
!5044 = !DILocation(line: 67, column: 4, scope: !4991)
!5045 = !DILocation(line: 70, column: 2, scope: !4991)
!5046 = !DILocation(line: 70, column: 9, scope: !4991)
!5047 = !DILocation(line: 70, column: 14, scope: !4991)
!5048 = !DILocation(line: 70, column: 25, scope: !4991)
!5049 = !DILocation(line: 70, column: 30, scope: !4991)
!5050 = !DILocation(line: 70, column: 23, scope: !4991)
!5051 = !DILocation(line: 70, column: 11, scope: !4991)
!5052 = !DILocation(line: 71, column: 8, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 71, column: 7)
!5054 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 70, column: 43)
!5055 = !DILocation(line: 71, column: 7, scope: !5054)
!5056 = !DILocation(line: 72, column: 4, scope: !5053)
!5057 = !DILocation(line: 73, column: 4, scope: !5054)
!5058 = distinct !{!5058, !5045, !5059}
!5059 = !DILocation(line: 74, column: 2, scope: !4991)
!5060 = !DILocation(line: 76, column: 7, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 76, column: 6)
!5062 = !DILocation(line: 76, column: 12, scope: !5061)
!5063 = !DILocation(line: 76, column: 6, scope: !4991)
!5064 = !DILocation(line: 77, column: 3, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 76, column: 24)
!5066 = !DILocation(line: 78, column: 3, scope: !5065)
!5067 = !DILocation(line: 78, column: 8, scope: !5065)
!5068 = !DILocation(line: 78, column: 19, scope: !5065)
!5069 = !DILocation(line: 79, column: 2, scope: !5065)
!5070 = !DILocation(line: 81, column: 9, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 81, column: 2)
!5072 = !DILocation(line: 81, column: 18, scope: !5071)
!5073 = !DILocation(line: 81, column: 16, scope: !5071)
!5074 = !DILocation(line: 81, column: 7, scope: !5071)
!5075 = !DILocation(line: 81, column: 28, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 81, column: 2)
!5077 = !DILocation(line: 81, column: 32, scope: !5076)
!5078 = !DILocation(line: 81, column: 37, scope: !5076)
!5079 = !DILocation(line: 81, column: 30, scope: !5076)
!5080 = !DILocation(line: 81, column: 2, scope: !5071)
!5081 = !DILocation(line: 82, column: 9, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5076, file: !3, line: 81, column: 59)
!5083 = !DILocation(line: 82, column: 21, scope: !5082)
!5084 = !DILocation(line: 82, column: 29, scope: !5082)
!5085 = !DILocation(line: 82, column: 41, scope: !5082)
!5086 = !DILocation(line: 83, column: 13, scope: !5082)
!5087 = !DILocation(line: 84, column: 13, scope: !5082)
!5088 = !DILocation(line: 82, column: 7, scope: !5082)
!5089 = !DILocation(line: 86, column: 3, scope: !5082)
!5090 = !DILocation(line: 86, column: 3, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5092, file: !3, line: 86, column: 3)
!5092 = distinct !DILexicalBlock(scope: !5082, file: !3, line: 86, column: 3)
!5093 = !DILocation(line: 86, column: 3, scope: !5092)
!5094 = !DILocation(line: 86, column: 3, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !5091, file: !3, line: 86, column: 3)
!5096 = !DILocation(line: 86, column: 3, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5095, file: !3, line: 86, column: 3)
!5098 = !DILocation(line: 86, column: 3, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5095, file: !3, line: 86, column: 3)
!5100 = !{i32 -2141703224, i32 -2141703195, i32 -2141703149, i32 -2141703091, i32 -2141703037, i32 -2141702983, i32 -2141702928, i32 -2141702897}
!5101 = !DILocation(line: 86, column: 3, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5103, file: !3, line: 86, column: 3)
!5103 = distinct !DILexicalBlock(scope: !5095, file: !3, line: 86, column: 3)
!5104 = !{i32 -2141702447, i32 -2141702440, i32 -2141702386, i32 -2141702355, i32 -2141702325}
!5105 = !DILocation(line: 86, column: 3, scope: !5103)
!5106 = !DILocation(line: 87, column: 10, scope: !5082)
!5107 = !DILocation(line: 87, column: 14, scope: !5082)
!5108 = !DILocation(line: 87, column: 39, scope: !5082)
!5109 = !DILocation(line: 87, column: 9, scope: !5082)
!5110 = !DILocation(line: 87, column: 7, scope: !5082)
!5111 = !DILocation(line: 88, column: 10, scope: !5082)
!5112 = !DILocation(line: 88, column: 14, scope: !5082)
!5113 = !DILocation(line: 88, column: 7, scope: !5082)
!5114 = !DILocation(line: 89, column: 7, scope: !5082)
!5115 = !DILocation(line: 91, column: 10, scope: !5082)
!5116 = !DILocation(line: 91, column: 15, scope: !5082)
!5117 = !DILocation(line: 91, column: 27, scope: !5082)
!5118 = !DILocation(line: 91, column: 38, scope: !5082)
!5119 = !DILocation(line: 91, column: 37, scope: !5082)
!5120 = !DILocation(line: 91, column: 3, scope: !5082)
!5121 = !DILocation(line: 92, column: 9, scope: !5082)
!5122 = !DILocation(line: 92, column: 21, scope: !5082)
!5123 = !DILocation(line: 92, column: 32, scope: !5082)
!5124 = !DILocation(line: 92, column: 31, scope: !5082)
!5125 = !DILocation(line: 92, column: 3, scope: !5082)
!5126 = !DILocation(line: 93, column: 2, scope: !5082)
!5127 = !DILocation(line: 81, column: 50, scope: !5076)
!5128 = !DILocation(line: 81, column: 55, scope: !5076)
!5129 = !DILocation(line: 81, column: 2, scope: !5076)
!5130 = distinct !{!5130, !5080, !5131}
!5131 = !DILocation(line: 93, column: 2, scope: !5071)
!5132 = !DILocation(line: 94, column: 17, scope: !4991)
!5133 = !DILocation(line: 94, column: 2, scope: !4991)
!5134 = !DILocation(line: 95, column: 2, scope: !4991)
!5135 = !DILocation(line: 96, column: 1, scope: !4991)
!5136 = distinct !DISubprogram(name: "virt_to_phys", scope: !5137, file: !5137, line: 129, type: !5138, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5137 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!5138 = !DISubroutineType(types: !5139)
!5139 = !{!2297, !5140}
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5142 = !DILocalVariable(name: "address", arg: 1, scope: !5136, file: !5137, line: 129, type: !5140)
!5143 = !DILocation(line: 129, column: 55, scope: !5136)
!5144 = !DILocation(line: 131, column: 9, scope: !5136)
!5145 = !DILocation(line: 131, column: 2, scope: !5136)
!5146 = distinct !DISubprogram(name: "amd64_configure", scope: !3, file: !3, line: 152, type: !5147, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5147 = !DISubroutineType(types: !5148)
!5148 = !{!141, !3164, !141}
!5149 = !DILocalVariable(name: "hammer", arg: 1, scope: !5146, file: !3, line: 152, type: !3164)
!5150 = !DILocation(line: 152, column: 44, scope: !5146)
!5151 = !DILocalVariable(name: "gatt_table", arg: 2, scope: !5146, file: !3, line: 152, type: !141)
!5152 = !DILocation(line: 152, column: 56, scope: !5146)
!5153 = !DILocalVariable(name: "aperturebase", scope: !5146, file: !3, line: 154, type: !141)
!5154 = !DILocation(line: 154, column: 6, scope: !5146)
!5155 = !DILocalVariable(name: "tmp", scope: !5146, file: !3, line: 155, type: !136)
!5156 = !DILocation(line: 155, column: 6, scope: !5146)
!5157 = !DILocalVariable(name: "aper_base", scope: !5146, file: !3, line: 156, type: !141)
!5158 = !DILocation(line: 156, column: 6, scope: !5146)
!5159 = !DILocation(line: 159, column: 24, scope: !5146)
!5160 = !DILocation(line: 159, column: 2, scope: !5146)
!5161 = !DILocation(line: 160, column: 22, scope: !5146)
!5162 = !DILocation(line: 160, column: 17, scope: !5146)
!5163 = !DILocation(line: 160, column: 26, scope: !5146)
!5164 = !DILocation(line: 160, column: 15, scope: !5146)
!5165 = !DILocation(line: 161, column: 15, scope: !5146)
!5166 = !DILocation(line: 161, column: 28, scope: !5146)
!5167 = !DILocation(line: 161, column: 12, scope: !5146)
!5168 = !DILocation(line: 163, column: 26, scope: !5146)
!5169 = !DILocation(line: 163, column: 34, scope: !5146)
!5170 = !DILocation(line: 163, column: 2, scope: !5146)
!5171 = !DILocation(line: 165, column: 9, scope: !5146)
!5172 = !DILocation(line: 165, column: 2, scope: !5146)
!5173 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !5174, file: !5174, line: 18, type: !5175, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5174 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/lizy2001/genbc/linux")
!5175 = !DISubroutineType(types: !5176)
!5176 = !{!140, !140}
!5177 = !DILocalVariable(name: "x", arg: 1, scope: !5173, file: !5174, line: 18, type: !140)
!5178 = !DILocation(line: 18, column: 63, scope: !5173)
!5179 = !DILocalVariable(name: "y", scope: !5173, file: !5174, line: 20, type: !140)
!5180 = !DILocation(line: 20, column: 16, scope: !5173)
!5181 = !DILocation(line: 20, column: 20, scope: !5173)
!5182 = !DILocation(line: 20, column: 22, scope: !5173)
!5183 = !DILocation(line: 23, column: 6, scope: !5173)
!5184 = !DILocation(line: 23, column: 12, scope: !5173)
!5185 = !DILocation(line: 23, column: 16, scope: !5173)
!5186 = !DILocation(line: 23, column: 14, scope: !5173)
!5187 = !DILocation(line: 23, column: 11, scope: !5173)
!5188 = !DILocation(line: 23, column: 21, scope: !5173)
!5189 = !DILocation(line: 23, column: 55, scope: !5173)
!5190 = !DILocation(line: 23, column: 53, scope: !5173)
!5191 = !DILocation(line: 23, column: 8, scope: !5173)
!5192 = !DILocation(line: 23, column: 4, scope: !5173)
!5193 = !DILocation(line: 25, column: 9, scope: !5173)
!5194 = !DILocation(line: 25, column: 2, scope: !5173)
!5195 = distinct !DISubprogram(name: "enable_gart_translation", scope: !5196, file: !5196, line: 75, type: !5197, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5196 = !DIFile(filename: "./arch/x86/include/asm/gart.h", directory: "/home/lizy2001/genbc/linux")
!5197 = !DISubroutineType(types: !5198)
!5198 = !{null, !3164, !141}
!5199 = !DILocalVariable(name: "dev", arg: 1, scope: !5195, file: !5196, line: 75, type: !3164)
!5200 = !DILocation(line: 75, column: 60, scope: !5195)
!5201 = !DILocalVariable(name: "addr", arg: 2, scope: !5195, file: !5196, line: 75, type: !141)
!5202 = !DILocation(line: 75, column: 69, scope: !5195)
!5203 = !DILocalVariable(name: "tmp", scope: !5195, file: !5196, line: 77, type: !136)
!5204 = !DILocation(line: 77, column: 6, scope: !5195)
!5205 = !DILocalVariable(name: "ctl", scope: !5195, file: !5196, line: 77, type: !136)
!5206 = !DILocation(line: 77, column: 11, scope: !5195)
!5207 = !DILocation(line: 80, column: 7, scope: !5195)
!5208 = !DILocation(line: 81, column: 14, scope: !5195)
!5209 = !DILocation(line: 81, column: 8, scope: !5195)
!5210 = !DILocation(line: 81, column: 18, scope: !5195)
!5211 = !DILocation(line: 81, column: 6, scope: !5195)
!5212 = !DILocation(line: 82, column: 6, scope: !5195)
!5213 = !DILocation(line: 83, column: 25, scope: !5195)
!5214 = !DILocation(line: 83, column: 51, scope: !5195)
!5215 = !DILocation(line: 83, column: 2, scope: !5195)
!5216 = !DILocation(line: 86, column: 24, scope: !5195)
!5217 = !DILocation(line: 86, column: 2, scope: !5195)
!5218 = !DILocation(line: 87, column: 6, scope: !5195)
!5219 = !DILocation(line: 88, column: 6, scope: !5195)
!5220 = !DILocation(line: 89, column: 25, scope: !5195)
!5221 = !DILocation(line: 89, column: 53, scope: !5195)
!5222 = !DILocation(line: 89, column: 2, scope: !5195)
!5223 = !DILocation(line: 90, column: 1, scope: !5195)
!5224 = distinct !DISubprogram(name: "readl", scope: !5137, file: !5137, line: 59, type: !5225, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5225 = !DISubroutineType(types: !5226)
!5226 = !{!7, !5227}
!5227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5228, size: 64)
!5228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5141)
!5229 = !DILocalVariable(name: "addr", arg: 1, scope: !5224, file: !5137, line: 59, type: !5227)
!5230 = !DILocation(line: 59, column: 1, scope: !5224)
!5231 = !DILocalVariable(name: "ret", scope: !5224, file: !5137, line: 59, type: !7)
!5232 = !{i32 -2143416033}
!5233 = distinct !DISubprogram(name: "writel", scope: !5137, file: !5137, line: 67, type: !5234, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5234 = !DISubroutineType(types: !5235)
!5235 = !{null, !7, !5140}
!5236 = !DILocalVariable(name: "val", arg: 1, scope: !5233, file: !5137, line: 67, type: !7)
!5237 = !DILocation(line: 67, column: 1, scope: !5233)
!5238 = !DILocalVariable(name: "addr", arg: 2, scope: !5233, file: !5137, line: 67, type: !5140)
!5239 = !{i32 -2143413640}
!5240 = distinct !DISubprogram(name: "fix_northbridge", scope: !3, file: !3, line: 271, type: !5241, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5241 = !DISubroutineType(types: !5242)
!5242 = !{!132, !3164, !3164, !1153}
!5243 = !DILocalVariable(name: "nb", arg: 1, scope: !5240, file: !3, line: 271, type: !3164)
!5244 = !DILocation(line: 271, column: 44, scope: !5240)
!5245 = !DILocalVariable(name: "agp", arg: 2, scope: !5240, file: !3, line: 271, type: !3164)
!5246 = !DILocation(line: 271, column: 64, scope: !5240)
!5247 = !DILocalVariable(name: "cap", arg: 3, scope: !5240, file: !3, line: 271, type: !1153)
!5248 = !DILocation(line: 271, column: 73, scope: !5240)
!5249 = !DILocalVariable(name: "aper", scope: !5240, file: !3, line: 273, type: !141)
!5250 = !DILocation(line: 273, column: 6, scope: !5240)
!5251 = !DILocalVariable(name: "nb_aper", scope: !5240, file: !3, line: 273, type: !141)
!5252 = !DILocation(line: 273, column: 12, scope: !5240)
!5253 = !DILocalVariable(name: "order", scope: !5240, file: !3, line: 274, type: !132)
!5254 = !DILocation(line: 274, column: 6, scope: !5240)
!5255 = !DILocalVariable(name: "nb_order", scope: !5240, file: !3, line: 275, type: !136)
!5256 = !DILocation(line: 275, column: 6, scope: !5240)
!5257 = !DILocalVariable(name: "nb_base", scope: !5240, file: !3, line: 275, type: !136)
!5258 = !DILocation(line: 275, column: 16, scope: !5240)
!5259 = !DILocalVariable(name: "apsize", scope: !5240, file: !3, line: 276, type: !1153)
!5260 = !DILocation(line: 276, column: 6, scope: !5240)
!5261 = !DILocation(line: 278, column: 24, scope: !5240)
!5262 = !DILocation(line: 278, column: 2, scope: !5240)
!5263 = !DILocation(line: 279, column: 14, scope: !5240)
!5264 = !DILocation(line: 279, column: 23, scope: !5240)
!5265 = !DILocation(line: 279, column: 29, scope: !5240)
!5266 = !DILocation(line: 279, column: 11, scope: !5240)
!5267 = !DILocation(line: 280, column: 24, scope: !5240)
!5268 = !DILocation(line: 280, column: 2, scope: !5240)
!5269 = !DILocation(line: 281, column: 17, scope: !5240)
!5270 = !DILocation(line: 281, column: 12, scope: !5240)
!5271 = !DILocation(line: 281, column: 25, scope: !5240)
!5272 = !DILocation(line: 281, column: 10, scope: !5240)
!5273 = !DILocation(line: 285, column: 23, scope: !5240)
!5274 = !DILocation(line: 285, column: 28, scope: !5240)
!5275 = !DILocation(line: 285, column: 31, scope: !5240)
!5276 = !DILocation(line: 285, column: 2, scope: !5240)
!5277 = !DILocation(line: 286, column: 6, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 286, column: 6)
!5279 = !DILocation(line: 286, column: 13, scope: !5278)
!5280 = !DILocation(line: 286, column: 6, scope: !5240)
!5281 = !DILocation(line: 287, column: 26, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 287, column: 7)
!5283 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 286, column: 24)
!5284 = !DILocation(line: 287, column: 51, scope: !5282)
!5285 = !DILocation(line: 287, column: 49, scope: !5282)
!5286 = !DILocation(line: 287, column: 7, scope: !5282)
!5287 = !DILocation(line: 287, column: 7, scope: !5283)
!5288 = !DILocation(line: 288, column: 4, scope: !5282)
!5289 = !DILocation(line: 289, column: 3, scope: !5283)
!5290 = !DILocation(line: 292, column: 9, scope: !5240)
!5291 = !DILocation(line: 294, column: 6, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 294, column: 6)
!5293 = !DILocation(line: 294, column: 13, scope: !5292)
!5294 = !DILocation(line: 294, column: 6, scope: !5240)
!5295 = !DILocation(line: 295, column: 10, scope: !5292)
!5296 = !DILocation(line: 295, column: 3, scope: !5292)
!5297 = !DILocation(line: 296, column: 14, scope: !5240)
!5298 = !DILocation(line: 296, column: 12, scope: !5240)
!5299 = !DILocation(line: 296, column: 8, scope: !5240)
!5300 = !DILocation(line: 298, column: 25, scope: !5240)
!5301 = !DILocation(line: 298, column: 9, scope: !5240)
!5302 = !DILocation(line: 298, column: 7, scope: !5240)
!5303 = !DILocation(line: 304, column: 6, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 304, column: 6)
!5305 = !DILocation(line: 304, column: 12, scope: !5304)
!5306 = !DILocation(line: 304, column: 16, scope: !5304)
!5307 = !DILocation(line: 304, column: 19, scope: !5304)
!5308 = !DILocation(line: 304, column: 40, scope: !5304)
!5309 = !DILocation(line: 304, column: 38, scope: !5304)
!5310 = !DILocation(line: 304, column: 32, scope: !5304)
!5311 = !DILocation(line: 304, column: 24, scope: !5304)
!5312 = !DILocation(line: 304, column: 48, scope: !5304)
!5313 = !DILocation(line: 304, column: 6, scope: !5240)
!5314 = !DILocation(line: 305, column: 3, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5304, file: !3, line: 304, column: 66)
!5316 = !DILocation(line: 307, column: 11, scope: !5315)
!5317 = !DILocation(line: 307, column: 9, scope: !5315)
!5318 = !DILocation(line: 308, column: 2, scope: !5315)
!5319 = !DILocation(line: 310, column: 6, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 310, column: 6)
!5321 = !DILocation(line: 310, column: 18, scope: !5320)
!5322 = !DILocation(line: 310, column: 15, scope: !5320)
!5323 = !DILocation(line: 310, column: 6, scope: !5240)
!5324 = !DILocation(line: 311, column: 26, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 311, column: 7)
!5326 = distinct !DILexicalBlock(scope: !5320, file: !3, line: 310, column: 25)
!5327 = !DILocation(line: 311, column: 51, scope: !5325)
!5328 = !DILocation(line: 311, column: 49, scope: !5325)
!5329 = !DILocation(line: 311, column: 7, scope: !5325)
!5330 = !DILocation(line: 311, column: 7, scope: !5326)
!5331 = !DILocation(line: 312, column: 4, scope: !5325)
!5332 = !DILocation(line: 313, column: 2, scope: !5326)
!5333 = !DILocation(line: 315, column: 2, scope: !5240)
!5334 = !DILocation(line: 317, column: 6, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 317, column: 6)
!5336 = !DILocation(line: 317, column: 12, scope: !5335)
!5337 = !DILocation(line: 317, column: 16, scope: !5335)
!5338 = !DILocation(line: 317, column: 39, scope: !5335)
!5339 = !DILocation(line: 317, column: 61, scope: !5335)
!5340 = !DILocation(line: 317, column: 59, scope: !5335)
!5341 = !DILocation(line: 317, column: 20, scope: !5335)
!5342 = !DILocation(line: 317, column: 6, scope: !5240)
!5343 = !DILocation(line: 318, column: 3, scope: !5335)
!5344 = !DILocation(line: 320, column: 27, scope: !5240)
!5345 = !DILocation(line: 320, column: 31, scope: !5240)
!5346 = !DILocation(line: 320, column: 2, scope: !5240)
!5347 = !DILocation(line: 321, column: 25, scope: !5240)
!5348 = !DILocation(line: 321, column: 53, scope: !5240)
!5349 = !DILocation(line: 321, column: 58, scope: !5240)
!5350 = !DILocation(line: 321, column: 2, scope: !5240)
!5351 = !DILocation(line: 323, column: 2, scope: !5240)
!5352 = !DILocation(line: 324, column: 1, scope: !5240)
!5353 = distinct !DISubprogram(name: "agp_aperture_valid", scope: !3, file: !3, line: 244, type: !5354, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5354 = !DISubroutineType(types: !5355)
!5355 = !{!132, !141, !136}
!5356 = !DILocalVariable(name: "aper", arg: 1, scope: !5353, file: !3, line: 244, type: !141)
!5357 = !DILocation(line: 244, column: 35, scope: !5353)
!5358 = !DILocalVariable(name: "size", arg: 2, scope: !5353, file: !3, line: 244, type: !136)
!5359 = !DILocation(line: 244, column: 45, scope: !5353)
!5360 = !DILocation(line: 246, column: 22, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5353, file: !3, line: 246, column: 6)
!5362 = !DILocation(line: 246, column: 28, scope: !5361)
!5363 = !DILocation(line: 246, column: 7, scope: !5361)
!5364 = !DILocation(line: 246, column: 6, scope: !5353)
!5365 = !DILocation(line: 247, column: 3, scope: !5361)
!5366 = !DILocation(line: 254, column: 7, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5353, file: !3, line: 254, column: 6)
!5368 = !DILocation(line: 254, column: 25, scope: !5367)
!5369 = !DILocation(line: 255, column: 28, scope: !5367)
!5370 = !DILocation(line: 255, column: 26, scope: !5367)
!5371 = !DILocation(line: 254, column: 6, scope: !5353)
!5372 = !DILocation(line: 256, column: 3, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5367, file: !3, line: 255, column: 73)
!5374 = !DILocation(line: 257, column: 3, scope: !5373)
!5375 = !DILocation(line: 259, column: 2, scope: !5353)
!5376 = !DILocation(line: 260, column: 1, scope: !5353)
!5377 = distinct !DISubprogram(name: "__arch_hweight16", scope: !5378, file: !5378, line: 26, type: !5379, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5378 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/lizy2001/genbc/linux")
!5379 = !DISubroutineType(types: !5380)
!5380 = !{!7, !7}
!5381 = !DILocalVariable(name: "w", arg: 1, scope: !5382, file: !5378, line: 15, type: !7)
!5382 = distinct !DISubprogram(name: "__arch_hweight32", scope: !5378, file: !5378, line: 15, type: !5379, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5383 = !DILocation(line: 15, column: 67, scope: !5382, inlinedAt: !5384)
!5384 = distinct !DILocation(line: 28, column: 9, scope: !5377)
!5385 = !DILocalVariable(name: "res", scope: !5382, file: !5378, line: 17, type: !7)
!5386 = !DILocation(line: 17, column: 15, scope: !5382, inlinedAt: !5384)
!5387 = !DILocalVariable(name: "w", arg: 1, scope: !5377, file: !5378, line: 26, type: !7)
!5388 = !DILocation(line: 26, column: 58, scope: !5377)
!5389 = !DILocation(line: 28, column: 26, scope: !5377)
!5390 = !DILocation(line: 28, column: 28, scope: !5377)
!5391 = !DILocation(line: 21, column: 15, scope: !5382, inlinedAt: !5384)
!5392 = !DILocation(line: 19, column: 2, scope: !5382, inlinedAt: !5384)
!5393 = !{i32 -2147086291, i32 -2147086263, i32 -2147086257, i32 -2147086241, i32 -2147086225, i32 -2147086198, i32 -2147085865, i32 -2147086583, i32 -2147085859, i32 -2147085811, i32 -2147085747, i32 -2147085685, i32 -2147085628, i32 -2147085572, i32 -2147086503, i32 -2147086478, i32 -2147085338, i32 -2147085208, i32 -2147085277, i32 -2147085194, i32 -2147086378}
!5394 = !DILocation(line: 23, column: 9, scope: !5382, inlinedAt: !5384)
!5395 = !DILocation(line: 28, column: 2, scope: !5377)
!5396 = distinct !DISubprogram(name: "pci_bus_address", scope: !3007, file: !3007, line: 1364, type: !5397, scopeLine: 1365, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5397 = !DISubroutineType(types: !5398)
!5398 = !{!5399, !3164, !132}
!5399 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_addr_t", file: !3007, line: 749, baseType: !141)
!5400 = !DILocalVariable(name: "pdev", arg: 1, scope: !5396, file: !3007, line: 1364, type: !3164)
!5401 = !DILocation(line: 1364, column: 62, scope: !5396)
!5402 = !DILocalVariable(name: "bar", arg: 2, scope: !5396, file: !3007, line: 1364, type: !132)
!5403 = !DILocation(line: 1364, column: 72, scope: !5396)
!5404 = !DILocalVariable(name: "region", scope: !5396, file: !3007, line: 1366, type: !5405)
!5405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus_region", file: !3007, line: 754, size: 128, elements: !5406)
!5406 = !{!5407, !5408}
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5405, file: !3007, line: 755, baseType: !5399, size: 64)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5405, file: !3007, line: 756, baseType: !5399, size: 64, offset: 64)
!5409 = !DILocation(line: 1366, column: 24, scope: !5396)
!5410 = !DILocation(line: 1368, column: 26, scope: !5396)
!5411 = !DILocation(line: 1368, column: 32, scope: !5396)
!5412 = !DILocation(line: 1368, column: 47, scope: !5396)
!5413 = !DILocation(line: 1368, column: 53, scope: !5396)
!5414 = !DILocation(line: 1368, column: 62, scope: !5396)
!5415 = !DILocation(line: 1368, column: 2, scope: !5396)
!5416 = !DILocation(line: 1369, column: 16, scope: !5396)
!5417 = !DILocation(line: 1369, column: 2, scope: !5396)
!5418 = distinct !DISubprogram(name: "gart_set_size_and_enable", scope: !5196, file: !5196, line: 62, type: !5419, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5419 = !DISubroutineType(types: !5420)
!5420 = !{null, !3164, !136}
!5421 = !DILocalVariable(name: "dev", arg: 1, scope: !5418, file: !5196, line: 62, type: !3164)
!5422 = !DILocation(line: 62, column: 61, scope: !5418)
!5423 = !DILocalVariable(name: "order", arg: 2, scope: !5418, file: !5196, line: 62, type: !136)
!5424 = !DILocation(line: 62, column: 70, scope: !5418)
!5425 = !DILocalVariable(name: "ctl", scope: !5418, file: !5196, line: 64, type: !136)
!5426 = !DILocation(line: 64, column: 6, scope: !5418)
!5427 = !DILocation(line: 70, column: 8, scope: !5418)
!5428 = !DILocation(line: 70, column: 14, scope: !5418)
!5429 = !DILocation(line: 70, column: 6, scope: !5418)
!5430 = !DILocation(line: 72, column: 25, scope: !5418)
!5431 = !DILocation(line: 72, column: 53, scope: !5418)
!5432 = !DILocation(line: 72, column: 2, scope: !5418)
!5433 = !DILocation(line: 73, column: 1, scope: !5418)
!5434 = distinct !DISubprogram(name: "aperture_valid", scope: !5196, file: !5196, line: 92, type: !5435, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5435 = !DISubroutineType(types: !5436)
!5436 = !{!132, !141, !136, !136}
!5437 = !DILocalVariable(name: "aper_base", arg: 1, scope: !5434, file: !5196, line: 92, type: !141)
!5438 = !DILocation(line: 92, column: 38, scope: !5434)
!5439 = !DILocalVariable(name: "aper_size", arg: 2, scope: !5434, file: !5196, line: 92, type: !136)
!5440 = !DILocation(line: 92, column: 53, scope: !5434)
!5441 = !DILocalVariable(name: "min_size", arg: 3, scope: !5434, file: !5196, line: 92, type: !136)
!5442 = !DILocation(line: 92, column: 68, scope: !5434)
!5443 = !DILocation(line: 94, column: 7, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5434, file: !5196, line: 94, column: 6)
!5445 = !DILocation(line: 94, column: 6, scope: !5434)
!5446 = !DILocation(line: 95, column: 3, scope: !5444)
!5447 = !DILocation(line: 97, column: 6, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5434, file: !5196, line: 97, column: 6)
!5449 = !DILocation(line: 97, column: 18, scope: !5448)
!5450 = !DILocation(line: 97, column: 16, scope: !5448)
!5451 = !DILocation(line: 97, column: 28, scope: !5448)
!5452 = !DILocation(line: 97, column: 6, scope: !5434)
!5453 = !DILocation(line: 98, column: 3, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5448, file: !5196, line: 97, column: 46)
!5455 = !DILocation(line: 99, column: 3, scope: !5454)
!5456 = !DILocation(line: 101, column: 23, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5434, file: !5196, line: 101, column: 6)
!5458 = !DILocation(line: 101, column: 34, scope: !5457)
!5459 = !DILocation(line: 101, column: 46, scope: !5457)
!5460 = !DILocation(line: 101, column: 44, scope: !5457)
!5461 = !DILocation(line: 101, column: 6, scope: !5457)
!5462 = !DILocation(line: 101, column: 6, scope: !5434)
!5463 = !DILocation(line: 102, column: 3, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5457, file: !5196, line: 101, column: 73)
!5465 = !DILocation(line: 103, column: 3, scope: !5464)
!5466 = !DILocation(line: 105, column: 6, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5434, file: !5196, line: 105, column: 6)
!5468 = !DILocation(line: 105, column: 18, scope: !5467)
!5469 = !DILocation(line: 105, column: 16, scope: !5467)
!5470 = !DILocation(line: 105, column: 6, scope: !5434)
!5471 = !DILocation(line: 107, column: 6, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5467, file: !5196, line: 105, column: 28)
!5473 = !DILocation(line: 107, column: 15, scope: !5472)
!5474 = !DILocation(line: 107, column: 21, scope: !5472)
!5475 = !DILocation(line: 107, column: 29, scope: !5472)
!5476 = !DILocation(line: 106, column: 3, scope: !5472)
!5477 = !DILocation(line: 108, column: 3, scope: !5472)
!5478 = !DILocation(line: 111, column: 2, scope: !5434)
!5479 = !DILocation(line: 112, column: 1, scope: !5434)
!5480 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !5481, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5481 = !DISubroutineType(types: !5482)
!5482 = !{null, !3226, !127}
!5483 = !DILocalVariable(name: "dev", arg: 1, scope: !5480, file: !73, line: 660, type: !3226)
!5484 = !DILocation(line: 660, column: 51, scope: !5480)
!5485 = !DILocalVariable(name: "data", arg: 2, scope: !5480, file: !73, line: 660, type: !127)
!5486 = !DILocation(line: 660, column: 62, scope: !5480)
!5487 = !DILocation(line: 662, column: 21, scope: !5480)
!5488 = !DILocation(line: 662, column: 2, scope: !5480)
!5489 = !DILocation(line: 662, column: 7, scope: !5480)
!5490 = !DILocation(line: 662, column: 19, scope: !5480)
!5491 = !DILocation(line: 663, column: 1, scope: !5480)
!5492 = distinct !DISubprogram(name: "pci_get_drvdata", scope: !3007, file: !3007, line: 1865, type: !5493, scopeLine: 1866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5493 = !DISubroutineType(types: !5494)
!5494 = !{!127, !3164}
!5495 = !DILocalVariable(name: "pdev", arg: 1, scope: !5492, file: !3007, line: 1865, type: !3164)
!5496 = !DILocation(line: 1865, column: 53, scope: !5492)
!5497 = !DILocation(line: 1867, column: 26, scope: !5492)
!5498 = !DILocation(line: 1867, column: 32, scope: !5492)
!5499 = !DILocation(line: 1867, column: 9, scope: !5492)
!5500 = !DILocation(line: 1867, column: 2, scope: !5492)
!5501 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !5502, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5502 = !DISubroutineType(types: !5503)
!5503 = !{!127, !3861}
!5504 = !DILocalVariable(name: "dev", arg: 1, scope: !5501, file: !73, line: 655, type: !3861)
!5505 = !DILocation(line: 655, column: 58, scope: !5501)
!5506 = !DILocation(line: 657, column: 9, scope: !5501)
!5507 = !DILocation(line: 657, column: 14, scope: !5501)
!5508 = !DILocation(line: 657, column: 2, scope: !5501)
